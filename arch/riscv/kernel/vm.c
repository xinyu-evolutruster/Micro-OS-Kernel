#include "vm.h"
#include "mm.h"
#include "device.h"
#include "symbol.h"

pagetable_t kpgtbl;
unsigned long long uphy_text_start = 0x84000000;
unsigned long long uvirt_text_start = 0x0;
unsigned long long user_stack = PA2VA(0x0) - PAGE_SIZE; // virtual stack

void kvminit() {
  
  kpgtbl = (pagetable_t) kalloc();
  memset(kpgtbl, 0, PAGE_SIZE);
    
  // map devices
  uint64 uart = PA2VA(get_device_addr(UART_MMIO));
  kvmmap(kpgtbl, uart, VA2PA(uart), get_device_size(UART_MMIO), (PTE_R | PTE_W));

  uint64 poweroff = PA2VA(get_device_addr(POWEROFF_MMIO));
  kvmmap(kpgtbl, poweroff, VA2PA(poweroff), get_device_size(POWEROFF_MMIO), (PTE_R | PTE_W));

  // map kernel text executable and read-only.
  kvmmap(kpgtbl, (uint64)&text_start, VA2PA((uint64)&text_start), (uint64)&text_end - (uint64)&text_start, (PTE_R | PTE_X));
  // map kernel data and the physical RAM we'll make use of.
  kvmmap(kpgtbl, (uint64)&rodata_start, VA2PA((uint64)&rodata_start), (uint64)&rodata_end - (uint64)&rodata_start, (PTE_R));
  kvmmap(kpgtbl, (uint64)&data_start, VA2PA((uint64)&data_start), (uint64)PHY_END - VA2PA((uint64)&data_start), (PTE_R | PTE_W));
  
  // lab5 new
  // map user program
  kvmmap(kpgtbl, uvirt_text_start, uphy_text_start, PAGE_SIZE, (PTE_R | PTE_X | PTE_W | PTE_U));
  //uvirt_text_start = 0x0, uphy_text_start = 0x84000000

  // map user (global) data
  // kvmmap(kpgtbl, uvirt_text_start + PAGE_SIZE, uphy_text_start + PAGE_SIZE, PAGE_SIZE, (PTE_R | PTE_W));
  // map user stack
  kvmmap(kpgtbl, user_stack, (uint64)kalloc(), PAGE_SIZE, (PTE_R | PTE_W | PTE_U));
  
  // map kernel stacks
  write_csr(satp, MAKE_SATP(kpgtbl));
  asm volatile("sfence.vma");
}

// Return the address of the PTE in page table pagetable
// that corresponds to virtual address va.  If alloc!=0,
// create any required page-table pages.
pte_t * walk(pagetable_t pagetable, uint64 va, int alloc)
{

  for(int level = 2; level > 0; level--) {
    pte_t *pte = &pagetable[PX(level, va)];
    if(*pte & PTE_V) {
      pagetable = (pagetable_t)PTE2PA(*pte);
    } else {
      if(!alloc || (pagetable = (pagetable_t)kalloc()) == 0)
        return 0;
      memset(pagetable, 0, PAGE_SIZE);
      *pte = PA2PTE(pagetable) | PTE_V;
    }
  }
  return &pagetable[PX(0, va)];
}

// Create PTEs for virtual addresses starting at va that refer to
// physical addresses starting at pa. va and size might not
// be page-aligned. Returns 0 on success, -1 if walk() couldn't
// allocate a needed page-table page.
int mappages(pagetable_t pagetable, uint64 va, uint64 size, uint64 pa, int perm)
{
  uint64 a, last;
  pte_t *pte;

  a = PAGE_DOWN(va);
  last = PAGE_DOWN(va + size - 1);
  for(;;){
    if((pte = walk(pagetable, a, PAGE_ALLOC)) == 0)
      return -1;
    if(*pte & PTE_V)
      panic("remap");
    *pte = PA2PTE(pa) | perm | PTE_V;
    if(a == last)
      break;
    a += PAGE_SIZE;
    pa += PAGE_SIZE;
  }
  return 0;
}

// add a mapping to the kernel page table.
void kvmmap(pagetable_t kpgtbl, uint64 va, uint64 pa, uint64 sz, int perm)
{
  if(mappages(kpgtbl, va, sz, pa, perm) != 0)
    panic("kvmmap");
}