export
CROSS_=riscv64-unknown-elf-
CC=${CROSS_}gcc
LD=${CROSS_}ld
OBJCOPY=${CROSS_}objcopy

DEBUG ?= true

ISA=rv64imafd
ABI=lp64

INCLUDE = -I$(shell pwd)/include -I$(shell pwd)/arch/riscv/include
CF = -g -march=$(ISA) -mabi=$(ABI) -mcmodel=medany -ffunction-sections -fdata-sections -nostartfiles -nostdlib -nostdinc -fno-builtin -static -lgcc -fno-PIC -fPIE 
CF_M = -g -march=$(ISA) -mabi=$(ABI) -mcmodel=medany -ffunction-sections -fdata-sections -nostartfiles -nostdlib -nostdinc -fno-builtin -static -lgcc
# TASK_MM = -DPRIORITY
TASK_MM = -DSJF

CFLAG = ${CF} ${INCLUDE} ${TASK_MM}  -DUSER_MODE

ifneq ($(DEBUG), )  
CFLAG += -DDEBUG_LOG
endif

all: vmlinux

.PHONY: vmlinux run debug clean
vmlinux:
	${MAKE} -C init all
	${MAKE} -C lib all
	${MAKE} -C driver all
	${MAKE} -C arch/riscv all
	${LD} -T arch/riscv/kernel/vmlinux.lds arch/riscv/kernel/*.o init/*.o lib/*.o driver/*.o -o vmlinux
	$(shell test -d arch/riscv/boot || mkdir -p arch/riscv/boot)
	${OBJCOPY} -O binary vmlinux arch/riscv/boot/Image
	nm vmlinux > System.map

run: vmlinux
	@qemu-system-riscv64 -nographic -machine virt -kernel vmlinux -D log -initrd hello.bin

debug: vmlinux
	@qemu-system-riscv64 -nographic -machine virt -kernel vmlinux -S -s -D log -initrd hello.bin

clean:
	${MAKE} -C init clean
	${MAKE} -C lib clean
	${MAKE} -C arch/riscv clean
	$(shell test -f vmlinux && rm vmlinux)
	$(shell test -f System.map && rm System.map)

