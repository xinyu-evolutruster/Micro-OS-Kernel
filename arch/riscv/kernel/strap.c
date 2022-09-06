#include "stdio.h"
#include "stddef.h"
#include "sched.h"
#include "types.h"
#define uLL unsigned long long

// typedef unsigned long  uintptr_t;
// typedef __SIZE_TYPE__ size_t;
// #define __SIZE_TYPE__ long unsigned int

/**
 * 
 * RISC-V Register set reference
 * 
 * x0 		- zero
 * x1 		- ra
 * x2 		- sp
 * x3 		- gp
 * x4 		- tp
 * x5-7 	- t0-2
 * x8		- s0/fp
 * x9		- s1
 * x10-11	- a0-1	**
 * x12-17	- a2-7	**
 * x18-27	- s2-11
 * x28-31	- t3-6
 * 
 */ 

/**
 * 
 * System call reference
 * 
 * PARAMETERs: FROM LEFT TO RIGHT : a0, a1, a2...
 * 
 * 64 - sys_write(unsigned int fd, const char* buf, size_t count)
 * a0: fd (output to screen->stdout, fd = 1)
 * a1: buf (starting address)
 * a2: count (length of the string)
 * return value: length printed, in *a0*
 * 
 * 172 - sys_getpid()
 * return value: pid of current process, in *a0*
 * 
 */ 

int count = 0;
int reg_size = 0x8;
int rega_offset = 0;
extern struct task_struct* current;

/*
 	// #include "stdio.h"
	// #include "sched.h"
	// #define uLL unsigned long long
	// int count = 0;
	void handler_s(uLL cause, uLL epc )
	{
		if (cause >> 63) {		// interrupt
			if ( ( (cause << 1) >> 1 ) == 5 ) {	// supervisor timer interrupt
				asm volatile("ecall");
				do_timer();
			}
		}
		return;
	}
*/

void handler_s(uLL scause, uLL sepc, uintptr_t *regs)
{
	uintptr_t a0 = 0;
	uintptr_t a1 = 0;
	uintptr_t a2 = 0;
	uintptr_t a7 = 0;

	// printf("Hello, in handler_s\n");

	if (scause >> 63) {		// interrupt
		if ( ( (scause << 1) >> 1 ) == 5 ) {	// supervisor timer interrupt
			asm volatile("ecall");
			do_timer();
		}
	}
	else {				    // exception (ecall)
		// Environmental call from U-mode: Exception code = 8
		// Reference: Table 4.2, page 66
		if ( scause == 8 ) {
			/*
			printf("Hello, User mode\n");
			printf("uintptr_t *regs = 0x%lx\n", (uint64)regs);
			int i = 0;
			for (i = 0; i < 8; i++) {
				printf("%ld ", *(regs + i));
			}
			printf("\n");
			*/
			// system calls
			a7 = *(regs + 7);
			if (a7 == 172) {     // sys_getpid()
				// assembly
				// temporarily hard-coded
				// printf("Hello, getpid\n");
				long pid = current->pid;
				// __asm__("add sp, zero, %0"  : : "r"((next->thread).sp));
				asm volatile("add a0, zero, %0" : : "r"(pid));
			}
			else if (a7 == 64) { // sys_write
				// assembly
				// temporarily hard-coded
				char* buf = (char*)(*(regs + 1));
				/*
				printf("buf(address) is 0x%lx\n", (uint64)buf);
				int i;
				for (i = 0; i < 8; i++) {
					printf("%d ", (int)buf[i]);
				}
				printf("\n");
				*/
				printf("%s", buf);
			}
		}
	}
	return;
}
