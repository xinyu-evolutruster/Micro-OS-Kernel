.section .text.entry

.global trap_s
.global __to_user
.extern handler_s
.extern text_init_done
.equ reg_size, 0x8
.align 2

trap_s:
	# save 32 registers and spec
	addi sp, sp, -33*reg_size
	sd x1, 1*reg_size(sp)
	sd x2, 2*reg_size(sp)
	sd x3, 3*reg_size(sp)
	sd x4, 4*reg_size(sp)
	sd x5, 5*reg_size(sp)
	sd x6, 6*reg_size(sp)
	sd x7, 7*reg_size(sp)
	sd x8, 8*reg_size(sp)
	sd x9, 9*reg_size(sp)
	sd x10, 10*reg_size(sp)
	sd x11, 11*reg_size(sp)
	sd x12, 12*reg_size(sp)
	sd x13, 13*reg_size(sp)
	sd x14, 14*reg_size(sp)
	sd x15, 15*reg_size(sp)
	sd x16, 16*reg_size(sp)
	sd x17, 17*reg_size(sp)
	sd x18, 18*reg_size(sp)
	sd x19, 19*reg_size(sp)
	sd x20, 20*reg_size(sp)
	sd x21, 21*reg_size(sp)
	sd x22, 22*reg_size(sp)
	sd x23, 23*reg_size(sp)
	sd x24, 24*reg_size(sp)
	sd x25, 25*reg_size(sp)
	sd x26, 26*reg_size(sp)
	sd x27, 27*reg_size(sp)
	sd x28, 28*reg_size(sp)
	sd x29, 29*reg_size(sp)
	sd x30, 30*reg_size(sp)
	sd x31, 31*reg_size(sp)

	csrr t0, sepc
	sd t0, 32*reg_size(sp)

	# swap with sscratch
	# sscratch: kernel stack
	ld t0, task_init_done
	beqz t0, trap_s_next
	add tp, sp, zero       # tp = sp
	csrrw sp, sscratch, sp # swap sp and mscratch

trap_s_next:
	# call handler
	csrr a0, scause  # par1
	csrr a1, sepc    # par2
	add a2, tp, 10*reg_size # par3
	call handler_s

	ld t0, task_init_done
	beqz t0, trap_s_int_end
	# swap back
	csrrw sp, sscratch, sp
	# test scause
	csrr t0, scause
	srli t0, t0, 63
	beqz t0, trap_s_ex_end

trap_s_int_end:
	# load sepc and 32 registers
	ld x10, 10*reg_size(sp)
trap_s_ex_end:
	ld t0, 32*reg_size(sp)
	csrw sepc, t0

	ld x1, 1*reg_size(sp)
	ld x2, 2*reg_size(sp)
	ld x3, 3*reg_size(sp)
	ld x4, 4*reg_size(sp)
	ld x5, 5*reg_size(sp)
	ld x6, 6*reg_size(sp)
	ld x7, 7*reg_size(sp)
	ld x8, 8*reg_size(sp)
	ld x9, 9*reg_size(sp)
	ld x11, 11*reg_size(sp)
	ld x12, 12*reg_size(sp)
	ld x13, 13*reg_size(sp)
	ld x14, 14*reg_size(sp)
	ld x15, 15*reg_size(sp)
	ld x16, 16*reg_size(sp)
	ld x17, 17*reg_size(sp)
	ld x18, 18*reg_size(sp)
	ld x19, 19*reg_size(sp)
	ld x20, 20*reg_size(sp)
	ld x21, 21*reg_size(sp)
	ld x22, 22*reg_size(sp)
	ld x23, 23*reg_size(sp)
	ld x24, 24*reg_size(sp)
	ld x25, 25*reg_size(sp)
	ld x26, 26*reg_size(sp)
	ld x27, 27*reg_size(sp)
	ld x28, 28*reg_size(sp)
	ld x29, 29*reg_size(sp)
	ld x30, 30*reg_size(sp)
	ld x31, 31*reg_size(sp)
	addi sp, sp, 33*reg_size

	csrr t0, sepc
	add t0, t0, 4
	csrw sepc, t0

	sret


/*
 * Integer register context switch
 * The callee-saved registers must be saved and restored.
 *
 *   a0: previous task_struct (must be preserved across the switch)
 *   a1: next task_struct
 *
 * The value of a0 and a1 must be preserved by this function, as that's how
 * arguments are passed to schedule_tail.
 */
 .globl __switch_to
__switch_to:
	/* Save context into prev->thread */
	li    a4,  40
	add   a3, a0, a4
	add   a4, a1, a4
	sd ra,  0*reg_size(a3)
	sd sp,  1*reg_size(a3)
	sd s0,  2*reg_size(a3)
	sd s1,  3*reg_size(a3)
	sd s2,  4*reg_size(a3)
	sd s3,  5*reg_size(a3)
	sd s4,  6*reg_size(a3)
	sd s5,  7*reg_size(a3)
	sd s6,  8*reg_size(a3)
	sd s7,  9*reg_size(a3)
	sd s8,  10*reg_size(a3)
	sd s9,  11*reg_size(a3)
	sd s10, 12*reg_size(a3)
	sd s11, 13*reg_size(a3)
	/* sepc */
	csrr t0, sepc # put the value of sepc in t0
	sd t0,  14*reg_size(a3)
	/* sscratch */
	# csrr t0, sscratch
	# csrr tp, sscratch
	# csrw sscratch, sp
	csrr t0, sscratch
	# restore sp
	# weird...
	# add t0, t0, 32*reg_size
	sd t0,  15*reg_size(a3)
	add t0, zero, zero

	/* Restore context from next->thread */
    ld ra,  0*reg_size(a4)
	ld sp,  1*reg_size(a4)
	ld s0,  2*reg_size(a4)
	ld s1,  3*reg_size(a4)
	ld s2,  4*reg_size(a4)
	ld s3,  5*reg_size(a4)
	ld s4,  6*reg_size(a4)
	ld s5,  7*reg_size(a4)
	ld s6,  8*reg_size(a4)
	ld s7,  9*reg_size(a4)
	ld s8,  10*reg_size(a4)
	ld s9,  11*reg_size(a4)
	ld s10, 12*reg_size(a4)
	ld s11, 13*reg_size(a4)
	/* sepc */
	ld t0,  14*reg_size(a4)
	csrw sepc, t0
	/* sscratch */
	ld t0,  15*reg_size(a4)
	csrw sscratch, t0
	/* user stack */
	# add sp, tp, zero
	# add sp, sp, 33*reg_size

	li t1, 0x1 << 8
	csrc sstatus, t1
	add t1, zero, zero

	/* reset satp */
	ld t0,  16*reg_size(a4) # pgtbl, root page table (address)
	srli t0, t0, 12
	li t1, 8 << 60
	or t0, t0, t1
	csrw satp, t0
	sfence.vma

	/* temp */
	# la ra, __sret

	ret

 	.globl __sret
__sret:
	# la  t0, dead_loop
	# csrw sepc, t0
	# swap back
	csrrw sp, sscratch, sp

	li t1, 0x1 << 8
	csrc sstatus, t1
	add t1, zero, zero

	sret

	.global __to_user
__to_user:
	# The SPP bit indicates the privilege level at which a hart 
	# was executing before entering supervisor mode. 
	# When a trap is taken, SPP is set to 0 if the trap originated 
	# from user mode, or 1 otherwise.
	# SPP is the *8th* bit in *sstatus* register
	li t1, 0x1 << 8
	csrc sstatus, t1

	# The SIE bit enables or disables all interrupts in supervisor mode.
	# SIE is the *1st* bit in *sstatus* register
	li t1, 0x1
	csrs sstatus, t1

	# The SPIE bit indicates whether supervisor interrupts were enabled
	# prior to trapping into supervisor mode. When a trap is taken into
	# supervisor mode, SPIE is set to SIE, and SIE is set to 0. When
	# an SRET instruction is executed, SIE is set to SPIE, then SPIE 
	# is set to 1.
	# SPIE is the *5th* bit in *sstatus* register
	li t1, 0x1 << 5
	csrs sstatus, t1

	# sscratch <- sp (currently kernel stack)
	csrw sscratch, sp

	# sp <- user stack (virtual address)
	li t1, 0xffffffdf80000000
	add sp, zero, t1

	# user mode test program is loaded to virtual address 0x0
	add ra, zero, zero

	csrw sepc, zero

	li t1, 0x8000000000080fff
	csrw satp, t1	
	sfence.vma

	sret
