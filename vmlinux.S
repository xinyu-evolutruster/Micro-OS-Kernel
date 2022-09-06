
./vmlinux:     file format elf64-littleriscv


Disassembly of section .text:

ffffffe000000000 <_start>:
ffffffe000000000:	00000297          	auipc	t0,0x0
ffffffe000000004:	15828293          	addi	t0,t0,344 # ffffffe000000158 <trap_m>
ffffffe000000008:	30529073          	csrw	mtvec,t0
ffffffe00000000c:	00800313          	li	t1,8
ffffffe000000010:	30033073          	csrc	mstatus,t1
ffffffe000000014:	00000297          	auipc	t0,0x0
ffffffe000000018:	0e028293          	addi	t0,t0,224 # ffffffe0000000f4 <s_mode>
ffffffe00000001c:	34129073          	csrw	mepc,t0
ffffffe000000020:	08000293          	li	t0,128
ffffffe000000024:	3002a073          	csrs	mstatus,t0
ffffffe000000028:	300022f3          	csrr	t0,mstatus
ffffffe00000002c:	00100313          	li	t1,1
ffffffe000000030:	00b31313          	slli	t1,t1,0xb
ffffffe000000034:	0062e2b3          	or	t0,t0,t1
ffffffe000000038:	00131313          	slli	t1,t1,0x1
ffffffe00000003c:	fff34313          	not	t1,t1
ffffffe000000040:	0062f2b3          	and	t0,t0,t1
ffffffe000000044:	30029073          	csrw	mstatus,t0
ffffffe000000048:	0200c2b7          	lui	t0,0x200c
ffffffe00000004c:	ff82829b          	addiw	t0,t0,-8
ffffffe000000050:	0002b303          	ld	t1,0(t0) # 200c000 <mtime+0x8>
ffffffe000000054:	000102b7          	lui	t0,0x10
ffffffe000000058:	00628333          	add	t1,t0,t1
ffffffe00000005c:	020042b7          	lui	t0,0x2004
ffffffe000000060:	0062b023          	sd	t1,0(t0) # 2004000 <mtimecmp>
ffffffe000000064:	00100293          	li	t0,1
ffffffe000000068:	00529293          	slli	t0,t0,0x5
ffffffe00000006c:	30302373          	csrr	t1,mideleg
ffffffe000000070:	00536333          	or	t1,t1,t0
ffffffe000000074:	30331073          	csrw	mideleg,t1
ffffffe000000078:	10000313          	li	t1,256
ffffffe00000007c:	30232073          	csrs	medeleg,t1
ffffffe000000080:	00040337          	lui	t1,0x40
ffffffe000000084:	10032073          	csrs	sstatus,t1
ffffffe000000088:	00200293          	li	t0,2
ffffffe00000008c:	10002373          	csrr	t1,sstatus
ffffffe000000090:	00536333          	or	t1,t1,t0
ffffffe000000094:	10031073          	csrw	sstatus,t1
ffffffe000000098:	02000293          	li	t0,32
ffffffe00000009c:	10402373          	csrr	t1,sie
ffffffe0000000a0:	00536333          	or	t1,t1,t0
ffffffe0000000a4:	10431073          	csrw	sie,t1
ffffffe0000000a8:	00200293          	li	t0,2
ffffffe0000000ac:	1042a073          	csrs	sie,t0
ffffffe0000000b0:	00800293          	li	t0,8
ffffffe0000000b4:	30002373          	csrr	t1,mstatus
ffffffe0000000b8:	00536333          	or	t1,t1,t0
ffffffe0000000bc:	30031073          	csrw	mstatus,t1
ffffffe0000000c0:	08000293          	li	t0,128
ffffffe0000000c4:	30402373          	csrr	t1,mie
ffffffe0000000c8:	00536333          	or	t1,t1,t0
ffffffe0000000cc:	30431073          	csrw	mie,t1
ffffffe0000000d0:	00080337          	lui	t1,0x80
ffffffe0000000d4:	30032073          	csrs	mstatus,t1
ffffffe0000000d8:	00008297          	auipc	t0,0x8
ffffffe0000000dc:	f2828293          	addi	t0,t0,-216 # ffffffe000008000 <_end>
ffffffe0000000e0:	00100313          	li	t1,1
ffffffe0000000e4:	00c31313          	slli	t1,t1,0xc
ffffffe0000000e8:	406282b3          	sub	t0,t0,t1
ffffffe0000000ec:	34029073          	csrw	mscratch,t0
ffffffe0000000f0:	30200073          	mret

ffffffe0000000f4 <s_mode>:
ffffffe0000000f4:	00000297          	auipc	t0,0x0
ffffffe0000000f8:	20828293          	addi	t0,t0,520 # ffffffe0000002fc <trap_s>
ffffffe0000000fc:	10529073          	csrw	stvec,t0
ffffffe000000100:	00004297          	auipc	t0,0x4
ffffffe000000104:	f0028293          	addi	t0,t0,-256 # ffffffe000004000 <data_start>
ffffffe000000108:	00c2d293          	srli	t0,t0,0xc
ffffffe00000010c:	fff0031b          	addiw	t1,zero,-1
ffffffe000000110:	03f31313          	slli	t1,t1,0x3f
ffffffe000000114:	0062e2b3          	or	t0,t0,t1
ffffffe000000118:	18029073          	csrw	satp,t0
ffffffe00000011c:	12000073          	sfence.vma
ffffffe000000120:	00000297          	auipc	t0,0x0
ffffffe000000124:	1dc28293          	addi	t0,t0,476 # ffffffe0000002fc <trap_s>
ffffffe000000128:	fbf0031b          	addiw	t1,zero,-65
ffffffe00000012c:	01f31313          	slli	t1,t1,0x1f
ffffffe000000130:	006282b3          	add	t0,t0,t1
ffffffe000000134:	10529073          	csrw	stvec,t0
ffffffe000000138:	00008117          	auipc	sp,0x8
ffffffe00000013c:	ec810113          	addi	sp,sp,-312 # ffffffe000008000 <_end>
ffffffe000000140:	00610133          	add	sp,sp,t1
ffffffe000000144:	14011073          	csrw	sscratch,sp
ffffffe000000148:	00000297          	auipc	t0,0x0
ffffffe00000014c:	47428293          	addi	t0,t0,1140 # ffffffe0000005bc <start_kernel>
ffffffe000000150:	006282b3          	add	t0,t0,t1
ffffffe000000154:	00028067          	jr	t0

ffffffe000000158 <trap_m>:
ffffffe000000158:	34021273          	csrrw	tp,mscratch,tp
ffffffe00000015c:	02523423          	sd	t0,40(tp) # 28 <reg_size+0x20>
ffffffe000000160:	00010293          	mv	t0,sp
ffffffe000000164:	00020113          	mv	sp,tp
ffffffe000000168:	00513823          	sd	t0,16(sp)
ffffffe00000016c:	34021273          	csrrw	tp,mscratch,tp
ffffffe000000170:	00113423          	sd	ra,8(sp)
ffffffe000000174:	00313c23          	sd	gp,24(sp)
ffffffe000000178:	02413023          	sd	tp,32(sp)
ffffffe00000017c:	02613823          	sd	t1,48(sp)
ffffffe000000180:	02713c23          	sd	t2,56(sp)
ffffffe000000184:	04813023          	sd	s0,64(sp)
ffffffe000000188:	04913423          	sd	s1,72(sp)
ffffffe00000018c:	04a13823          	sd	a0,80(sp)
ffffffe000000190:	04b13c23          	sd	a1,88(sp)
ffffffe000000194:	06c13023          	sd	a2,96(sp)
ffffffe000000198:	06d13423          	sd	a3,104(sp)
ffffffe00000019c:	06e13823          	sd	a4,112(sp)
ffffffe0000001a0:	06f13c23          	sd	a5,120(sp)
ffffffe0000001a4:	09013023          	sd	a6,128(sp)
ffffffe0000001a8:	09113423          	sd	a7,136(sp)
ffffffe0000001ac:	09213823          	sd	s2,144(sp)
ffffffe0000001b0:	09313c23          	sd	s3,152(sp)
ffffffe0000001b4:	0b413023          	sd	s4,160(sp)
ffffffe0000001b8:	0b513423          	sd	s5,168(sp)
ffffffe0000001bc:	0b613823          	sd	s6,176(sp)
ffffffe0000001c0:	0b713c23          	sd	s7,184(sp)
ffffffe0000001c4:	0d813023          	sd	s8,192(sp)
ffffffe0000001c8:	0d913423          	sd	s9,200(sp)
ffffffe0000001cc:	0da13823          	sd	s10,208(sp)
ffffffe0000001d0:	0db13c23          	sd	s11,216(sp)
ffffffe0000001d4:	0fc13023          	sd	t3,224(sp)
ffffffe0000001d8:	0fd13423          	sd	t4,232(sp)
ffffffe0000001dc:	0fe13823          	sd	t5,240(sp)
ffffffe0000001e0:	0ff13c23          	sd	t6,248(sp)

ffffffe0000001e4 <handler_m>:
ffffffe0000001e4:	342022f3          	csrr	t0,mcause
ffffffe0000001e8:	00100313          	li	t1,1
ffffffe0000001ec:	03f31313          	slli	t1,t1,0x3f
ffffffe0000001f0:	00537333          	and	t1,t1,t0
ffffffe0000001f4:	00129293          	slli	t0,t0,0x1
ffffffe0000001f8:	0012d293          	srli	t0,t0,0x1
ffffffe0000001fc:	02030a63          	beqz	t1,ffffffe000000230 <exception_m>

ffffffe000000200 <interrupt_m>:
ffffffe000000200:	00700313          	li	t1,7
ffffffe000000204:	06531a63          	bne	t1,t0,ffffffe000000278 <handler_m_done>
ffffffe000000208:	08000293          	li	t0,128
ffffffe00000020c:	fff2c293          	not	t0,t0
ffffffe000000210:	30402373          	csrr	t1,mie
ffffffe000000214:	00537333          	and	t1,t1,t0
ffffffe000000218:	30431073          	csrw	mie,t1
ffffffe00000021c:	02000293          	li	t0,32
ffffffe000000220:	34402373          	csrr	t1,mip
ffffffe000000224:	00536333          	or	t1,t1,t0
ffffffe000000228:	34431073          	csrw	mip,t1
ffffffe00000022c:	04c0006f          	j	ffffffe000000278 <handler_m_done>

ffffffe000000230 <exception_m>:
ffffffe000000230:	00900313          	li	t1,9
ffffffe000000234:	04531263          	bne	t1,t0,ffffffe000000278 <handler_m_done>
ffffffe000000238:	0200c2b7          	lui	t0,0x200c
ffffffe00000023c:	ff82829b          	addiw	t0,t0,-8
ffffffe000000240:	0002b303          	ld	t1,0(t0) # 200c000 <mtime+0x8>
ffffffe000000244:	00fff3b7          	lui	t2,0xfff
ffffffe000000248:	00730333          	add	t1,t1,t2
ffffffe00000024c:	020042b7          	lui	t0,0x2004
ffffffe000000250:	0062b023          	sd	t1,0(t0) # 2004000 <mtimecmp>
ffffffe000000254:	08000293          	li	t0,128
ffffffe000000258:	30402373          	csrr	t1,mie
ffffffe00000025c:	00536333          	or	t1,t1,t0
ffffffe000000260:	30431073          	csrw	mie,t1
ffffffe000000264:	02000293          	li	t0,32
ffffffe000000268:	3442b073          	csrc	mip,t0
ffffffe00000026c:	341022f3          	csrr	t0,mepc
ffffffe000000270:	00428293          	addi	t0,t0,4
ffffffe000000274:	34129073          	csrw	mepc,t0

ffffffe000000278 <handler_m_done>:
ffffffe000000278:	00813083          	ld	ra,8(sp)
ffffffe00000027c:	01813183          	ld	gp,24(sp)
ffffffe000000280:	02013203          	ld	tp,32(sp)
ffffffe000000284:	03013303          	ld	t1,48(sp)
ffffffe000000288:	03813383          	ld	t2,56(sp)
ffffffe00000028c:	04013403          	ld	s0,64(sp)
ffffffe000000290:	04813483          	ld	s1,72(sp)
ffffffe000000294:	05013503          	ld	a0,80(sp)
ffffffe000000298:	05813583          	ld	a1,88(sp)
ffffffe00000029c:	06013603          	ld	a2,96(sp)
ffffffe0000002a0:	06813683          	ld	a3,104(sp)
ffffffe0000002a4:	07013703          	ld	a4,112(sp)
ffffffe0000002a8:	07813783          	ld	a5,120(sp)
ffffffe0000002ac:	08013803          	ld	a6,128(sp)
ffffffe0000002b0:	08813883          	ld	a7,136(sp)
ffffffe0000002b4:	09013903          	ld	s2,144(sp)
ffffffe0000002b8:	09813983          	ld	s3,152(sp)
ffffffe0000002bc:	0a013a03          	ld	s4,160(sp)
ffffffe0000002c0:	0a813a83          	ld	s5,168(sp)
ffffffe0000002c4:	0b013b03          	ld	s6,176(sp)
ffffffe0000002c8:	0b813b83          	ld	s7,184(sp)
ffffffe0000002cc:	0c013c03          	ld	s8,192(sp)
ffffffe0000002d0:	0c813c83          	ld	s9,200(sp)
ffffffe0000002d4:	0d013d03          	ld	s10,208(sp)
ffffffe0000002d8:	0d813d83          	ld	s11,216(sp)
ffffffe0000002dc:	0e013e03          	ld	t3,224(sp)
ffffffe0000002e0:	0e813e83          	ld	t4,232(sp)
ffffffe0000002e4:	0f013f03          	ld	t5,240(sp)
ffffffe0000002e8:	0f813f83          	ld	t6,248(sp)
ffffffe0000002ec:	02813283          	ld	t0,40(sp)
ffffffe0000002f0:	01013103          	ld	sp,16(sp)
ffffffe0000002f4:	30200073          	mret
ffffffe0000002f8:	0000                	unimp
	...

ffffffe0000002fc <trap_s>:
ffffffe0000002fc:	ef810113          	addi	sp,sp,-264
ffffffe000000300:	00113423          	sd	ra,8(sp)
ffffffe000000304:	00213823          	sd	sp,16(sp)
ffffffe000000308:	00313c23          	sd	gp,24(sp)
ffffffe00000030c:	02413023          	sd	tp,32(sp)
ffffffe000000310:	02513423          	sd	t0,40(sp)
ffffffe000000314:	02613823          	sd	t1,48(sp)
ffffffe000000318:	02713c23          	sd	t2,56(sp)
ffffffe00000031c:	04813023          	sd	s0,64(sp)
ffffffe000000320:	04913423          	sd	s1,72(sp)
ffffffe000000324:	04a13823          	sd	a0,80(sp)
ffffffe000000328:	04b13c23          	sd	a1,88(sp)
ffffffe00000032c:	06c13023          	sd	a2,96(sp)
ffffffe000000330:	06d13423          	sd	a3,104(sp)
ffffffe000000334:	06e13823          	sd	a4,112(sp)
ffffffe000000338:	06f13c23          	sd	a5,120(sp)
ffffffe00000033c:	09013023          	sd	a6,128(sp)
ffffffe000000340:	09113423          	sd	a7,136(sp)
ffffffe000000344:	09213823          	sd	s2,144(sp)
ffffffe000000348:	09313c23          	sd	s3,152(sp)
ffffffe00000034c:	0b413023          	sd	s4,160(sp)
ffffffe000000350:	0b513423          	sd	s5,168(sp)
ffffffe000000354:	0b613823          	sd	s6,176(sp)
ffffffe000000358:	0b713c23          	sd	s7,184(sp)
ffffffe00000035c:	0d813023          	sd	s8,192(sp)
ffffffe000000360:	0d913423          	sd	s9,200(sp)
ffffffe000000364:	0da13823          	sd	s10,208(sp)
ffffffe000000368:	0db13c23          	sd	s11,216(sp)
ffffffe00000036c:	0fc13023          	sd	t3,224(sp)
ffffffe000000370:	0fd13423          	sd	t4,232(sp)
ffffffe000000374:	0fe13823          	sd	t5,240(sp)
ffffffe000000378:	0ff13c23          	sd	t6,248(sp)
ffffffe00000037c:	141022f3          	csrr	t0,sepc
ffffffe000000380:	10513023          	sd	t0,256(sp)
ffffffe000000384:	00005297          	auipc	t0,0x5
ffffffe000000388:	e8c2b283          	ld	t0,-372(t0) # ffffffe000005210 <task_init_done>
ffffffe00000038c:	00028663          	beqz	t0,ffffffe000000398 <trap_s_next>
ffffffe000000390:	00010233          	add	tp,sp,zero
ffffffe000000394:	14011173          	csrrw	sp,sscratch,sp

ffffffe000000398 <trap_s_next>:
ffffffe000000398:	14202573          	csrr	a0,scause
ffffffe00000039c:	141025f3          	csrr	a1,sepc
ffffffe0000003a0:	05020613          	addi	a2,tp,80 # 50 <reg_size+0x48>
ffffffe0000003a4:	4d5000ef          	jal	ra,ffffffe000001078 <handler_s>
ffffffe0000003a8:	00005297          	auipc	t0,0x5
ffffffe0000003ac:	e682b283          	ld	t0,-408(t0) # ffffffe000005210 <task_init_done>
ffffffe0000003b0:	00028a63          	beqz	t0,ffffffe0000003c4 <trap_s_int_end>
ffffffe0000003b4:	14011173          	csrrw	sp,sscratch,sp
ffffffe0000003b8:	142022f3          	csrr	t0,scause
ffffffe0000003bc:	03f2d293          	srli	t0,t0,0x3f
ffffffe0000003c0:	00028463          	beqz	t0,ffffffe0000003c8 <trap_s_ex_end>

ffffffe0000003c4 <trap_s_int_end>:
ffffffe0000003c4:	05013503          	ld	a0,80(sp)

ffffffe0000003c8 <trap_s_ex_end>:
ffffffe0000003c8:	10013283          	ld	t0,256(sp)
ffffffe0000003cc:	14129073          	csrw	sepc,t0
ffffffe0000003d0:	00813083          	ld	ra,8(sp)
ffffffe0000003d4:	01013103          	ld	sp,16(sp)
ffffffe0000003d8:	01813183          	ld	gp,24(sp)
ffffffe0000003dc:	02013203          	ld	tp,32(sp)
ffffffe0000003e0:	02813283          	ld	t0,40(sp)
ffffffe0000003e4:	03013303          	ld	t1,48(sp)
ffffffe0000003e8:	03813383          	ld	t2,56(sp)
ffffffe0000003ec:	04013403          	ld	s0,64(sp)
ffffffe0000003f0:	04813483          	ld	s1,72(sp)
ffffffe0000003f4:	05813583          	ld	a1,88(sp)
ffffffe0000003f8:	06013603          	ld	a2,96(sp)
ffffffe0000003fc:	06813683          	ld	a3,104(sp)
ffffffe000000400:	07013703          	ld	a4,112(sp)
ffffffe000000404:	07813783          	ld	a5,120(sp)
ffffffe000000408:	08013803          	ld	a6,128(sp)
ffffffe00000040c:	08813883          	ld	a7,136(sp)
ffffffe000000410:	09013903          	ld	s2,144(sp)
ffffffe000000414:	09813983          	ld	s3,152(sp)
ffffffe000000418:	0a013a03          	ld	s4,160(sp)
ffffffe00000041c:	0a813a83          	ld	s5,168(sp)
ffffffe000000420:	0b013b03          	ld	s6,176(sp)
ffffffe000000424:	0b813b83          	ld	s7,184(sp)
ffffffe000000428:	0c013c03          	ld	s8,192(sp)
ffffffe00000042c:	0c813c83          	ld	s9,200(sp)
ffffffe000000430:	0d013d03          	ld	s10,208(sp)
ffffffe000000434:	0d813d83          	ld	s11,216(sp)
ffffffe000000438:	0e013e03          	ld	t3,224(sp)
ffffffe00000043c:	0e813e83          	ld	t4,232(sp)
ffffffe000000440:	0f013f03          	ld	t5,240(sp)
ffffffe000000444:	0f813f83          	ld	t6,248(sp)
ffffffe000000448:	10810113          	addi	sp,sp,264
ffffffe00000044c:	141022f3          	csrr	t0,sepc
ffffffe000000450:	00428293          	addi	t0,t0,4
ffffffe000000454:	14129073          	csrw	sepc,t0
ffffffe000000458:	10200073          	sret

ffffffe00000045c <__switch_to>:
ffffffe00000045c:	02800713          	li	a4,40
ffffffe000000460:	00e506b3          	add	a3,a0,a4
ffffffe000000464:	00e58733          	add	a4,a1,a4
ffffffe000000468:	0016b023          	sd	ra,0(a3)
ffffffe00000046c:	0026b423          	sd	sp,8(a3)
ffffffe000000470:	0086b823          	sd	s0,16(a3)
ffffffe000000474:	0096bc23          	sd	s1,24(a3)
ffffffe000000478:	0326b023          	sd	s2,32(a3)
ffffffe00000047c:	0336b423          	sd	s3,40(a3)
ffffffe000000480:	0346b823          	sd	s4,48(a3)
ffffffe000000484:	0356bc23          	sd	s5,56(a3)
ffffffe000000488:	0566b023          	sd	s6,64(a3)
ffffffe00000048c:	0576b423          	sd	s7,72(a3)
ffffffe000000490:	0586b823          	sd	s8,80(a3)
ffffffe000000494:	0596bc23          	sd	s9,88(a3)
ffffffe000000498:	07a6b023          	sd	s10,96(a3)
ffffffe00000049c:	07b6b423          	sd	s11,104(a3)
ffffffe0000004a0:	14002273          	csrr	tp,sscratch
ffffffe0000004a4:	14011073          	csrw	sscratch,sp
ffffffe0000004a8:	140022f3          	csrr	t0,sscratch
ffffffe0000004ac:	0656bc23          	sd	t0,120(a3)
ffffffe0000004b0:	000002b3          	add	t0,zero,zero
ffffffe0000004b4:	00073083          	ld	ra,0(a4)
ffffffe0000004b8:	00873103          	ld	sp,8(a4)
ffffffe0000004bc:	01073403          	ld	s0,16(a4)
ffffffe0000004c0:	01873483          	ld	s1,24(a4)
ffffffe0000004c4:	02073903          	ld	s2,32(a4)
ffffffe0000004c8:	02873983          	ld	s3,40(a4)
ffffffe0000004cc:	03073a03          	ld	s4,48(a4)
ffffffe0000004d0:	03873a83          	ld	s5,56(a4)
ffffffe0000004d4:	04073b03          	ld	s6,64(a4)
ffffffe0000004d8:	04873b83          	ld	s7,72(a4)
ffffffe0000004dc:	05073c03          	ld	s8,80(a4)
ffffffe0000004e0:	05873c83          	ld	s9,88(a4)
ffffffe0000004e4:	06073d03          	ld	s10,96(a4)
ffffffe0000004e8:	06873d83          	ld	s11,104(a4)
ffffffe0000004ec:	07073283          	ld	t0,112(a4)
ffffffe0000004f0:	14129073          	csrw	sepc,t0
ffffffe0000004f4:	07873283          	ld	t0,120(a4)
ffffffe0000004f8:	14029073          	csrw	sscratch,t0
ffffffe0000004fc:	00020133          	add	sp,tp,zero
ffffffe000000500:	08073283          	ld	t0,128(a4)
ffffffe000000504:	00c2d293          	srli	t0,t0,0xc
ffffffe000000508:	fff0031b          	addiw	t1,zero,-1
ffffffe00000050c:	03f31313          	slli	t1,t1,0x3f
ffffffe000000510:	0062e2b3          	or	t0,t0,t1
ffffffe000000514:	18029073          	csrw	satp,t0
ffffffe000000518:	12000073          	sfence.vma
ffffffe00000051c:	00008067          	ret

ffffffe000000520 <__sret>:
ffffffe000000520:	10000313          	li	t1,256
ffffffe000000524:	10033073          	csrc	sstatus,t1
ffffffe000000528:	00000333          	add	t1,zero,zero
ffffffe00000052c:	10200073          	sret

ffffffe000000530 <__to_user>:
ffffffe000000530:	10000313          	li	t1,256
ffffffe000000534:	10033073          	csrc	sstatus,t1
ffffffe000000538:	00100313          	li	t1,1
ffffffe00000053c:	10032073          	csrs	sstatus,t1
ffffffe000000540:	02000313          	li	t1,32
ffffffe000000544:	10032073          	csrs	sstatus,t1
ffffffe000000548:	14011073          	csrw	sscratch,sp
ffffffe00000054c:	fbf0031b          	addiw	t1,zero,-65
ffffffe000000550:	01f31313          	slli	t1,t1,0x1f
ffffffe000000554:	00600133          	add	sp,zero,t1
ffffffe000000558:	000000b3          	add	ra,zero,zero
ffffffe00000055c:	14101073          	csrw	sepc,zero
ffffffe000000560:	fff0031b          	addiw	t1,zero,-1
ffffffe000000564:	03331313          	slli	t1,t1,0x33
ffffffe000000568:	08130313          	addi	t1,t1,129 # 80081 <reg_size+0x80079>
ffffffe00000056c:	00c31313          	slli	t1,t1,0xc
ffffffe000000570:	fff30313          	addi	t1,t1,-1
ffffffe000000574:	18031073          	csrw	satp,t1
ffffffe000000578:	12000073          	sfence.vma
ffffffe00000057c:	10200073          	sret

ffffffe000000580 <device_init>:
ffffffe000000580:	ff010113          	addi	sp,sp,-16
ffffffe000000584:	00113423          	sd	ra,8(sp)
ffffffe000000588:	00813023          	sd	s0,0(sp)
ffffffe00000058c:	01010413          	addi	s0,sp,16
ffffffe000000590:	00004517          	auipc	a0,0x4
ffffffe000000594:	77853503          	ld	a0,1912(a0) # ffffffe000004d08 <_GLOBAL_OFFSET_TABLE_+0x20>
ffffffe000000598:	31d010ef          	jal	ra,ffffffe0000020b4 <register_console>
ffffffe00000059c:	00004517          	auipc	a0,0x4
ffffffe0000005a0:	79453503          	ld	a0,1940(a0) # ffffffe000004d30 <_GLOBAL_OFFSET_TABLE_+0x48>
ffffffe0000005a4:	361010ef          	jal	ra,ffffffe000002104 <register_poweroff>
ffffffe0000005a8:	00000013          	nop
ffffffe0000005ac:	00813083          	ld	ra,8(sp)
ffffffe0000005b0:	00013403          	ld	s0,0(sp)
ffffffe0000005b4:	01010113          	addi	sp,sp,16
ffffffe0000005b8:	00008067          	ret

ffffffe0000005bc <start_kernel>:
ffffffe0000005bc:	ff010113          	addi	sp,sp,-16
ffffffe0000005c0:	00113423          	sd	ra,8(sp)
ffffffe0000005c4:	00813023          	sd	s0,0(sp)
ffffffe0000005c8:	01010413          	addi	s0,sp,16
ffffffe0000005cc:	00004717          	auipc	a4,0x4
ffffffe0000005d0:	74473703          	ld	a4,1860(a4) # ffffffe000004d10 <_GLOBAL_OFFSET_TABLE_+0x28>
ffffffe0000005d4:	00004797          	auipc	a5,0x4
ffffffe0000005d8:	7447b783          	ld	a5,1860(a5) # ffffffe000004d18 <_GLOBAL_OFFSET_TABLE_+0x30>
ffffffe0000005dc:	40f707b3          	sub	a5,a4,a5
ffffffe0000005e0:	4037d793          	srai	a5,a5,0x3
ffffffe0000005e4:	0007879b          	sext.w	a5,a5
ffffffe0000005e8:	00078613          	mv	a2,a5
ffffffe0000005ec:	00000593          	li	a1,0
ffffffe0000005f0:	00004517          	auipc	a0,0x4
ffffffe0000005f4:	72853503          	ld	a0,1832(a0) # ffffffe000004d18 <_GLOBAL_OFFSET_TABLE_+0x30>
ffffffe0000005f8:	241010ef          	jal	ra,ffffffe000002038 <memset>
ffffffe0000005fc:	f85ff0ef          	jal	ra,ffffffe000000580 <device_init>
ffffffe000000600:	00003697          	auipc	a3,0x3
ffffffe000000604:	a9868693          	addi	a3,a3,-1384 # ffffffe000003098 <__func__.0>
ffffffe000000608:	01e00613          	li	a2,30
ffffffe00000060c:	00003597          	auipc	a1,0x3
ffffffe000000610:	9f458593          	addi	a1,a1,-1548 # ffffffe000003000 <rodata_start>
ffffffe000000614:	00003517          	auipc	a0,0x3
ffffffe000000618:	9f450513          	addi	a0,a0,-1548 # ffffffe000003008 <rodata_start+0x8>
ffffffe00000061c:	644010ef          	jal	ra,ffffffe000001c60 <printf>
ffffffe000000620:	084000ef          	jal	ra,ffffffe0000006a4 <kinit>
ffffffe000000624:	00003697          	auipc	a3,0x3
ffffffe000000628:	a7468693          	addi	a3,a3,-1420 # ffffffe000003098 <__func__.0>
ffffffe00000062c:	02100613          	li	a2,33
ffffffe000000630:	00003597          	auipc	a1,0x3
ffffffe000000634:	9d058593          	addi	a1,a1,-1584 # ffffffe000003000 <rodata_start>
ffffffe000000638:	00003517          	auipc	a0,0x3
ffffffe00000063c:	9f050513          	addi	a0,a0,-1552 # ffffffe000003028 <rodata_start+0x28>
ffffffe000000640:	620010ef          	jal	ra,ffffffe000001c60 <printf>
ffffffe000000644:	2fd000ef          	jal	ra,ffffffe000001140 <kvminit>
ffffffe000000648:	00003697          	auipc	a3,0x3
ffffffe00000064c:	a5068693          	addi	a3,a3,-1456 # ffffffe000003098 <__func__.0>
ffffffe000000650:	02400613          	li	a2,36
ffffffe000000654:	00003597          	auipc	a1,0x3
ffffffe000000658:	9ac58593          	addi	a1,a1,-1620 # ffffffe000003000 <rodata_start>
ffffffe00000065c:	00003517          	auipc	a0,0x3
ffffffe000000660:	9ec50513          	addi	a0,a0,-1556 # ffffffe000003048 <rodata_start+0x48>
ffffffe000000664:	5fc010ef          	jal	ra,ffffffe000001c60 <printf>
ffffffe000000668:	00003517          	auipc	a0,0x3
ffffffe00000066c:	a0050513          	addi	a0,a0,-1536 # ffffffe000003068 <rodata_start+0x68>
ffffffe000000670:	5f0010ef          	jal	ra,ffffffe000001c60 <printf>
ffffffe000000674:	248000ef          	jal	ra,ffffffe0000008bc <task_init>
ffffffe000000678:	00003697          	auipc	a3,0x3
ffffffe00000067c:	a2068693          	addi	a3,a3,-1504 # ffffffe000003098 <__func__.0>
ffffffe000000680:	02a00613          	li	a2,42
ffffffe000000684:	00003597          	auipc	a1,0x3
ffffffe000000688:	97c58593          	addi	a1,a1,-1668 # ffffffe000003000 <rodata_start>
ffffffe00000068c:	00003517          	auipc	a0,0x3
ffffffe000000690:	9ec50513          	addi	a0,a0,-1556 # ffffffe000003078 <rodata_start+0x78>
ffffffe000000694:	5cc010ef          	jal	ra,ffffffe000001c60 <printf>
ffffffe000000698:	e99ff0ef          	jal	ra,ffffffe000000530 <__to_user>
ffffffe00000069c:	00000513          	li	a0,0
ffffffe0000006a0:	7f5000ef          	jal	ra,ffffffe000001694 <exit>

ffffffe0000006a4 <kinit>:
ffffffe0000006a4:	fe010113          	addi	sp,sp,-32
ffffffe0000006a8:	00113c23          	sd	ra,24(sp)
ffffffe0000006ac:	00813823          	sd	s0,16(sp)
ffffffe0000006b0:	02010413          	addi	s0,sp,32
ffffffe0000006b4:	00004717          	auipc	a4,0x4
ffffffe0000006b8:	69473703          	ld	a4,1684(a4) # ffffffe000004d48 <_GLOBAL_OFFSET_TABLE_+0x60>
ffffffe0000006bc:	00003797          	auipc	a5,0x3
ffffffe0000006c0:	a3478793          	addi	a5,a5,-1484 # ffffffe0000030f0 <__func__.0+0x58>
ffffffe0000006c4:	0007b783          	ld	a5,0(a5)
ffffffe0000006c8:	00f70733          	add	a4,a4,a5
ffffffe0000006cc:	fffff7b7          	lui	a5,0xfffff
ffffffe0000006d0:	00f777b3          	and	a5,a4,a5
ffffffe0000006d4:	fef43423          	sd	a5,-24(s0)
ffffffe0000006d8:	01c0006f          	j	ffffffe0000006f4 <kinit+0x50>
ffffffe0000006dc:	fe843503          	ld	a0,-24(s0)
ffffffe0000006e0:	048000ef          	jal	ra,ffffffe000000728 <kfree>
ffffffe0000006e4:	fe843703          	ld	a4,-24(s0)
ffffffe0000006e8:	000017b7          	lui	a5,0x1
ffffffe0000006ec:	00f707b3          	add	a5,a4,a5
ffffffe0000006f0:	fef43423          	sd	a5,-24(s0)
ffffffe0000006f4:	fe843703          	ld	a4,-24(s0)
ffffffe0000006f8:	000017b7          	lui	a5,0x1
ffffffe0000006fc:	00f707b3          	add	a5,a4,a5
ffffffe000000700:	00078713          	mv	a4,a5
ffffffe000000704:	08100793          	li	a5,129
ffffffe000000708:	01879793          	slli	a5,a5,0x18
ffffffe00000070c:	fce7f8e3          	bgeu	a5,a4,ffffffe0000006dc <kinit+0x38>
ffffffe000000710:	00000013          	nop
ffffffe000000714:	00000013          	nop
ffffffe000000718:	01813083          	ld	ra,24(sp)
ffffffe00000071c:	01013403          	ld	s0,16(sp)
ffffffe000000720:	02010113          	addi	sp,sp,32
ffffffe000000724:	00008067          	ret

ffffffe000000728 <kfree>:
ffffffe000000728:	fd010113          	addi	sp,sp,-48
ffffffe00000072c:	02113423          	sd	ra,40(sp)
ffffffe000000730:	02813023          	sd	s0,32(sp)
ffffffe000000734:	03010413          	addi	s0,sp,48
ffffffe000000738:	fca43c23          	sd	a0,-40(s0)
ffffffe00000073c:	fd843703          	ld	a4,-40(s0)
ffffffe000000740:	fffff7b7          	lui	a5,0xfffff
ffffffe000000744:	00f777b3          	and	a5,a4,a5
ffffffe000000748:	fcf43c23          	sd	a5,-40(s0)
ffffffe00000074c:	fd843703          	ld	a4,-40(s0)
ffffffe000000750:	00004697          	auipc	a3,0x4
ffffffe000000754:	5f86b683          	ld	a3,1528(a3) # ffffffe000004d48 <_GLOBAL_OFFSET_TABLE_+0x60>
ffffffe000000758:	04100793          	li	a5,65
ffffffe00000075c:	01f79793          	slli	a5,a5,0x1f
ffffffe000000760:	00f687b3          	add	a5,a3,a5
ffffffe000000764:	00f76a63          	bltu	a4,a5,ffffffe000000778 <kfree+0x50>
ffffffe000000768:	fd843703          	ld	a4,-40(s0)
ffffffe00000076c:	08100793          	li	a5,129
ffffffe000000770:	01879793          	slli	a5,a5,0x18
ffffffe000000774:	00f76863          	bltu	a4,a5,ffffffe000000784 <kfree+0x5c>
ffffffe000000778:	00003517          	auipc	a0,0x3
ffffffe00000077c:	93050513          	addi	a0,a0,-1744 # ffffffe0000030a8 <__func__.0+0x10>
ffffffe000000780:	560010ef          	jal	ra,ffffffe000001ce0 <panic>
ffffffe000000784:	fd843783          	ld	a5,-40(s0)
ffffffe000000788:	fef43423          	sd	a5,-24(s0)
ffffffe00000078c:	00005797          	auipc	a5,0x5
ffffffe000000790:	87478793          	addi	a5,a5,-1932 # ffffffe000005000 <phypage_list_top>
ffffffe000000794:	0007b703          	ld	a4,0(a5)
ffffffe000000798:	fe843783          	ld	a5,-24(s0)
ffffffe00000079c:	00e7b023          	sd	a4,0(a5)
ffffffe0000007a0:	00005797          	auipc	a5,0x5
ffffffe0000007a4:	86078793          	addi	a5,a5,-1952 # ffffffe000005000 <phypage_list_top>
ffffffe0000007a8:	fe843703          	ld	a4,-24(s0)
ffffffe0000007ac:	00e7b023          	sd	a4,0(a5)
ffffffe0000007b0:	00000013          	nop
ffffffe0000007b4:	02813083          	ld	ra,40(sp)
ffffffe0000007b8:	02013403          	ld	s0,32(sp)
ffffffe0000007bc:	03010113          	addi	sp,sp,48
ffffffe0000007c0:	00008067          	ret

ffffffe0000007c4 <kalloc>:
ffffffe0000007c4:	fe010113          	addi	sp,sp,-32
ffffffe0000007c8:	00113c23          	sd	ra,24(sp)
ffffffe0000007cc:	00813823          	sd	s0,16(sp)
ffffffe0000007d0:	02010413          	addi	s0,sp,32
ffffffe0000007d4:	00005797          	auipc	a5,0x5
ffffffe0000007d8:	82c78793          	addi	a5,a5,-2004 # ffffffe000005000 <phypage_list_top>
ffffffe0000007dc:	0007b783          	ld	a5,0(a5)
ffffffe0000007e0:	fef43423          	sd	a5,-24(s0)
ffffffe0000007e4:	fe843783          	ld	a5,-24(s0)
ffffffe0000007e8:	02078663          	beqz	a5,ffffffe000000814 <kalloc+0x50>
ffffffe0000007ec:	fe843783          	ld	a5,-24(s0)
ffffffe0000007f0:	0007b703          	ld	a4,0(a5)
ffffffe0000007f4:	00005797          	auipc	a5,0x5
ffffffe0000007f8:	80c78793          	addi	a5,a5,-2036 # ffffffe000005000 <phypage_list_top>
ffffffe0000007fc:	00e7b023          	sd	a4,0(a5)
ffffffe000000800:	00001637          	lui	a2,0x1
ffffffe000000804:	00f00593          	li	a1,15
ffffffe000000808:	fe843503          	ld	a0,-24(s0)
ffffffe00000080c:	02d010ef          	jal	ra,ffffffe000002038 <memset>
ffffffe000000810:	0100006f          	j	ffffffe000000820 <kalloc+0x5c>
ffffffe000000814:	00003517          	auipc	a0,0x3
ffffffe000000818:	8bc50513          	addi	a0,a0,-1860 # ffffffe0000030d0 <__func__.0+0x38>
ffffffe00000081c:	4c4010ef          	jal	ra,ffffffe000001ce0 <panic>
ffffffe000000820:	fe843783          	ld	a5,-24(s0)
ffffffe000000824:	00078513          	mv	a0,a5
ffffffe000000828:	01813083          	ld	ra,24(sp)
ffffffe00000082c:	01013403          	ld	s0,16(sp)
ffffffe000000830:	02010113          	addi	sp,sp,32
ffffffe000000834:	00008067          	ret

ffffffe000000838 <alloc_page>:
ffffffe000000838:	fe010113          	addi	sp,sp,-32
ffffffe00000083c:	00113c23          	sd	ra,24(sp)
ffffffe000000840:	00813823          	sd	s0,16(sp)
ffffffe000000844:	02010413          	addi	s0,sp,32
ffffffe000000848:	00004797          	auipc	a5,0x4
ffffffe00000084c:	7b878793          	addi	a5,a5,1976 # ffffffe000005000 <phypage_list_top>
ffffffe000000850:	0007b783          	ld	a5,0(a5)
ffffffe000000854:	00078713          	mv	a4,a5
ffffffe000000858:	fbf00793          	li	a5,-65
ffffffe00000085c:	01f79793          	slli	a5,a5,0x1f
ffffffe000000860:	00f707b3          	add	a5,a4,a5
ffffffe000000864:	fef43423          	sd	a5,-24(s0)
ffffffe000000868:	fe843783          	ld	a5,-24(s0)
ffffffe00000086c:	02078663          	beqz	a5,ffffffe000000898 <alloc_page+0x60>
ffffffe000000870:	fe843783          	ld	a5,-24(s0)
ffffffe000000874:	0007b703          	ld	a4,0(a5)
ffffffe000000878:	00004797          	auipc	a5,0x4
ffffffe00000087c:	78878793          	addi	a5,a5,1928 # ffffffe000005000 <phypage_list_top>
ffffffe000000880:	00e7b023          	sd	a4,0(a5)
ffffffe000000884:	00001637          	lui	a2,0x1
ffffffe000000888:	00f00593          	li	a1,15
ffffffe00000088c:	fe843503          	ld	a0,-24(s0)
ffffffe000000890:	7a8010ef          	jal	ra,ffffffe000002038 <memset>
ffffffe000000894:	0100006f          	j	ffffffe0000008a4 <alloc_page+0x6c>
ffffffe000000898:	00003517          	auipc	a0,0x3
ffffffe00000089c:	83850513          	addi	a0,a0,-1992 # ffffffe0000030d0 <__func__.0+0x38>
ffffffe0000008a0:	440010ef          	jal	ra,ffffffe000001ce0 <panic>
ffffffe0000008a4:	fe843783          	ld	a5,-24(s0)
ffffffe0000008a8:	00078513          	mv	a0,a5
ffffffe0000008ac:	01813083          	ld	ra,24(sp)
ffffffe0000008b0:	01013403          	ld	s0,16(sp)
ffffffe0000008b4:	02010113          	addi	sp,sp,32
ffffffe0000008b8:	00008067          	ret

ffffffe0000008bc <task_init>:
ffffffe0000008bc:	fd010113          	addi	sp,sp,-48
ffffffe0000008c0:	02113423          	sd	ra,40(sp)
ffffffe0000008c4:	02813023          	sd	s0,32(sp)
ffffffe0000008c8:	03010413          	addi	s0,sp,48
ffffffe0000008cc:	00003517          	auipc	a0,0x3
ffffffe0000008d0:	82c50513          	addi	a0,a0,-2004 # ffffffe0000030f8 <__func__.0+0x60>
ffffffe0000008d4:	641000ef          	jal	ra,ffffffe000001714 <puts>
ffffffe0000008d8:	f61ff0ef          	jal	ra,ffffffe000000838 <alloc_page>
ffffffe0000008dc:	00050713          	mv	a4,a0
ffffffe0000008e0:	00004797          	auipc	a5,0x4
ffffffe0000008e4:	72878793          	addi	a5,a5,1832 # ffffffe000005008 <current>
ffffffe0000008e8:	00e7b023          	sd	a4,0(a5)
ffffffe0000008ec:	00004797          	auipc	a5,0x4
ffffffe0000008f0:	71c78793          	addi	a5,a5,1820 # ffffffe000005008 <current>
ffffffe0000008f4:	0007b783          	ld	a5,0(a5)
ffffffe0000008f8:	0007b023          	sd	zero,0(a5)
ffffffe0000008fc:	00004797          	auipc	a5,0x4
ffffffe000000900:	70c78793          	addi	a5,a5,1804 # ffffffe000005008 <current>
ffffffe000000904:	0007b783          	ld	a5,0(a5)
ffffffe000000908:	0007b423          	sd	zero,8(a5)
ffffffe00000090c:	00004797          	auipc	a5,0x4
ffffffe000000910:	6fc78793          	addi	a5,a5,1788 # ffffffe000005008 <current>
ffffffe000000914:	0007b783          	ld	a5,0(a5)
ffffffe000000918:	00500713          	li	a4,5
ffffffe00000091c:	00e7b823          	sd	a4,16(a5)
ffffffe000000920:	00004797          	auipc	a5,0x4
ffffffe000000924:	6e878793          	addi	a5,a5,1768 # ffffffe000005008 <current>
ffffffe000000928:	0007b783          	ld	a5,0(a5)
ffffffe00000092c:	0007bc23          	sd	zero,24(a5)
ffffffe000000930:	00004797          	auipc	a5,0x4
ffffffe000000934:	6d878793          	addi	a5,a5,1752 # ffffffe000005008 <current>
ffffffe000000938:	0007b783          	ld	a5,0(a5)
ffffffe00000093c:	0207b023          	sd	zero,32(a5)
ffffffe000000940:	00004797          	auipc	a5,0x4
ffffffe000000944:	6c878793          	addi	a5,a5,1736 # ffffffe000005008 <current>
ffffffe000000948:	0007b703          	ld	a4,0(a5)
ffffffe00000094c:	00004797          	auipc	a5,0x4
ffffffe000000950:	6c478793          	addi	a5,a5,1732 # ffffffe000005010 <task>
ffffffe000000954:	00e7b023          	sd	a4,0(a5)
ffffffe000000958:	00004797          	auipc	a5,0x4
ffffffe00000095c:	6b878793          	addi	a5,a5,1720 # ffffffe000005010 <task>
ffffffe000000960:	0007b783          	ld	a5,0(a5)
ffffffe000000964:	00078693          	mv	a3,a5
ffffffe000000968:	00004797          	auipc	a5,0x4
ffffffe00000096c:	6a878793          	addi	a5,a5,1704 # ffffffe000005010 <task>
ffffffe000000970:	0007b783          	ld	a5,0(a5)
ffffffe000000974:	00001737          	lui	a4,0x1
ffffffe000000978:	00e68733          	add	a4,a3,a4
ffffffe00000097c:	02e7b823          	sd	a4,48(a5)
ffffffe000000980:	00004797          	auipc	a5,0x4
ffffffe000000984:	69078793          	addi	a5,a5,1680 # ffffffe000005010 <task>
ffffffe000000988:	0007b783          	ld	a5,0(a5)
ffffffe00000098c:	0807bc23          	sd	zero,152(a5)
ffffffe000000990:	00004797          	auipc	a5,0x4
ffffffe000000994:	68078793          	addi	a5,a5,1664 # ffffffe000005010 <task>
ffffffe000000998:	0007b703          	ld	a4,0(a5)
ffffffe00000099c:	00004797          	auipc	a5,0x4
ffffffe0000009a0:	67478793          	addi	a5,a5,1652 # ffffffe000005010 <task>
ffffffe0000009a4:	0007b783          	ld	a5,0(a5)
ffffffe0000009a8:	03073703          	ld	a4,48(a4) # 1030 <reg_size+0x1028>
ffffffe0000009ac:	0ae7b023          	sd	a4,160(a5)
ffffffe0000009b0:	00004797          	auipc	a5,0x4
ffffffe0000009b4:	66078793          	addi	a5,a5,1632 # ffffffe000005010 <task>
ffffffe0000009b8:	0007b783          	ld	a5,0(a5)
ffffffe0000009bc:	00004717          	auipc	a4,0x4
ffffffe0000009c0:	3a473703          	ld	a4,932(a4) # ffffffe000004d60 <_GLOBAL_OFFSET_TABLE_+0x78>
ffffffe0000009c4:	00073703          	ld	a4,0(a4)
ffffffe0000009c8:	0ae7b423          	sd	a4,168(a5)
ffffffe0000009cc:	00100793          	li	a5,1
ffffffe0000009d0:	fef42623          	sw	a5,-20(s0)
ffffffe0000009d4:	2bc0006f          	j	ffffffe000000c90 <task_init+0x3d4>
ffffffe0000009d8:	e61ff0ef          	jal	ra,ffffffe000000838 <alloc_page>
ffffffe0000009dc:	00050693          	mv	a3,a0
ffffffe0000009e0:	00004717          	auipc	a4,0x4
ffffffe0000009e4:	63070713          	addi	a4,a4,1584 # ffffffe000005010 <task>
ffffffe0000009e8:	fec42783          	lw	a5,-20(s0)
ffffffe0000009ec:	00379793          	slli	a5,a5,0x3
ffffffe0000009f0:	00f707b3          	add	a5,a4,a5
ffffffe0000009f4:	00d7b023          	sd	a3,0(a5)
ffffffe0000009f8:	00004717          	auipc	a4,0x4
ffffffe0000009fc:	61870713          	addi	a4,a4,1560 # ffffffe000005010 <task>
ffffffe000000a00:	fec42783          	lw	a5,-20(s0)
ffffffe000000a04:	00379793          	slli	a5,a5,0x3
ffffffe000000a08:	00f707b3          	add	a5,a4,a5
ffffffe000000a0c:	0007b783          	ld	a5,0(a5)
ffffffe000000a10:	0007b023          	sd	zero,0(a5)
ffffffe000000a14:	00004717          	auipc	a4,0x4
ffffffe000000a18:	5fc70713          	addi	a4,a4,1532 # ffffffe000005010 <task>
ffffffe000000a1c:	fec42783          	lw	a5,-20(s0)
ffffffe000000a20:	00379793          	slli	a5,a5,0x3
ffffffe000000a24:	00f707b3          	add	a5,a4,a5
ffffffe000000a28:	0007b783          	ld	a5,0(a5)
ffffffe000000a2c:	00500713          	li	a4,5
ffffffe000000a30:	00e7b823          	sd	a4,16(a5)
ffffffe000000a34:	2e8010ef          	jal	ra,ffffffe000001d1c <rand>
ffffffe000000a38:	00050793          	mv	a5,a0
ffffffe000000a3c:	0007869b          	sext.w	a3,a5
ffffffe000000a40:	00004717          	auipc	a4,0x4
ffffffe000000a44:	5d070713          	addi	a4,a4,1488 # ffffffe000005010 <task>
ffffffe000000a48:	fec42783          	lw	a5,-20(s0)
ffffffe000000a4c:	00379793          	slli	a5,a5,0x3
ffffffe000000a50:	00f707b3          	add	a5,a4,a5
ffffffe000000a54:	0007b783          	ld	a5,0(a5)
ffffffe000000a58:	02069713          	slli	a4,a3,0x20
ffffffe000000a5c:	02075713          	srli	a4,a4,0x20
ffffffe000000a60:	00e7b423          	sd	a4,8(a5)
ffffffe000000a64:	00004717          	auipc	a4,0x4
ffffffe000000a68:	5ac70713          	addi	a4,a4,1452 # ffffffe000005010 <task>
ffffffe000000a6c:	fec42783          	lw	a5,-20(s0)
ffffffe000000a70:	00379793          	slli	a5,a5,0x3
ffffffe000000a74:	00f707b3          	add	a5,a4,a5
ffffffe000000a78:	0007b783          	ld	a5,0(a5)
ffffffe000000a7c:	0007bc23          	sd	zero,24(a5)
ffffffe000000a80:	00004717          	auipc	a4,0x4
ffffffe000000a84:	59070713          	addi	a4,a4,1424 # ffffffe000005010 <task>
ffffffe000000a88:	fec42783          	lw	a5,-20(s0)
ffffffe000000a8c:	00379793          	slli	a5,a5,0x3
ffffffe000000a90:	00f707b3          	add	a5,a4,a5
ffffffe000000a94:	0007b783          	ld	a5,0(a5)
ffffffe000000a98:	00004717          	auipc	a4,0x4
ffffffe000000a9c:	2b873703          	ld	a4,696(a4) # ffffffe000004d50 <_GLOBAL_OFFSET_TABLE_+0x68>
ffffffe000000aa0:	02e7b423          	sd	a4,40(a5)
ffffffe000000aa4:	00004717          	auipc	a4,0x4
ffffffe000000aa8:	56c70713          	addi	a4,a4,1388 # ffffffe000005010 <task>
ffffffe000000aac:	fec42783          	lw	a5,-20(s0)
ffffffe000000ab0:	00379793          	slli	a5,a5,0x3
ffffffe000000ab4:	00f707b3          	add	a5,a4,a5
ffffffe000000ab8:	0007b783          	ld	a5,0(a5)
ffffffe000000abc:	00078693          	mv	a3,a5
ffffffe000000ac0:	00004717          	auipc	a4,0x4
ffffffe000000ac4:	55070713          	addi	a4,a4,1360 # ffffffe000005010 <task>
ffffffe000000ac8:	fec42783          	lw	a5,-20(s0)
ffffffe000000acc:	00379793          	slli	a5,a5,0x3
ffffffe000000ad0:	00f707b3          	add	a5,a4,a5
ffffffe000000ad4:	0007b783          	ld	a5,0(a5)
ffffffe000000ad8:	00001737          	lui	a4,0x1
ffffffe000000adc:	00e68733          	add	a4,a3,a4
ffffffe000000ae0:	02e7b823          	sd	a4,48(a5)
ffffffe000000ae4:	00004717          	auipc	a4,0x4
ffffffe000000ae8:	52c70713          	addi	a4,a4,1324 # ffffffe000005010 <task>
ffffffe000000aec:	fec42783          	lw	a5,-20(s0)
ffffffe000000af0:	00379793          	slli	a5,a5,0x3
ffffffe000000af4:	00f707b3          	add	a5,a4,a5
ffffffe000000af8:	0007b783          	ld	a5,0(a5)
ffffffe000000afc:	0807bc23          	sd	zero,152(a5)
ffffffe000000b00:	00004717          	auipc	a4,0x4
ffffffe000000b04:	51070713          	addi	a4,a4,1296 # ffffffe000005010 <task>
ffffffe000000b08:	fec42783          	lw	a5,-20(s0)
ffffffe000000b0c:	00379793          	slli	a5,a5,0x3
ffffffe000000b10:	00f707b3          	add	a5,a4,a5
ffffffe000000b14:	0007b703          	ld	a4,0(a5)
ffffffe000000b18:	00004697          	auipc	a3,0x4
ffffffe000000b1c:	4f868693          	addi	a3,a3,1272 # ffffffe000005010 <task>
ffffffe000000b20:	fec42783          	lw	a5,-20(s0)
ffffffe000000b24:	00379793          	slli	a5,a5,0x3
ffffffe000000b28:	00f687b3          	add	a5,a3,a5
ffffffe000000b2c:	0007b783          	ld	a5,0(a5)
ffffffe000000b30:	03073703          	ld	a4,48(a4)
ffffffe000000b34:	0ae7b023          	sd	a4,160(a5)
ffffffe000000b38:	d01ff0ef          	jal	ra,ffffffe000000838 <alloc_page>
ffffffe000000b3c:	00050793          	mv	a5,a0
ffffffe000000b40:	00078713          	mv	a4,a5
ffffffe000000b44:	04100793          	li	a5,65
ffffffe000000b48:	01f79793          	slli	a5,a5,0x1f
ffffffe000000b4c:	00f706b3          	add	a3,a4,a5
ffffffe000000b50:	00004717          	auipc	a4,0x4
ffffffe000000b54:	4c070713          	addi	a4,a4,1216 # ffffffe000005010 <task>
ffffffe000000b58:	fec42783          	lw	a5,-20(s0)
ffffffe000000b5c:	00379793          	slli	a5,a5,0x3
ffffffe000000b60:	00f707b3          	add	a5,a4,a5
ffffffe000000b64:	0007b783          	ld	a5,0(a5)
ffffffe000000b68:	00068713          	mv	a4,a3
ffffffe000000b6c:	0ae7b423          	sd	a4,168(a5)
ffffffe000000b70:	00004717          	auipc	a4,0x4
ffffffe000000b74:	4a070713          	addi	a4,a4,1184 # ffffffe000005010 <task>
ffffffe000000b78:	fec42783          	lw	a5,-20(s0)
ffffffe000000b7c:	00379793          	slli	a5,a5,0x3
ffffffe000000b80:	00f707b3          	add	a5,a4,a5
ffffffe000000b84:	0007b783          	ld	a5,0(a5)
ffffffe000000b88:	0a87b783          	ld	a5,168(a5)
ffffffe000000b8c:	00078713          	mv	a4,a5
ffffffe000000b90:	fbf00793          	li	a5,-65
ffffffe000000b94:	01f79793          	slli	a5,a5,0x1f
ffffffe000000b98:	00f707b3          	add	a5,a4,a5
ffffffe000000b9c:	fef43023          	sd	a5,-32(s0)
ffffffe000000ba0:	00004797          	auipc	a5,0x4
ffffffe000000ba4:	1c07b783          	ld	a5,448(a5) # ffffffe000004d60 <_GLOBAL_OFFSET_TABLE_+0x78>
ffffffe000000ba8:	0007b783          	ld	a5,0(a5)
ffffffe000000bac:	00078713          	mv	a4,a5
ffffffe000000bb0:	fbf00793          	li	a5,-65
ffffffe000000bb4:	01f79793          	slli	a5,a5,0x1f
ffffffe000000bb8:	00f707b3          	add	a5,a4,a5
ffffffe000000bbc:	fcf43c23          	sd	a5,-40(s0)
ffffffe000000bc0:	20000793          	li	a5,512
ffffffe000000bc4:	fcf42823          	sw	a5,-48(s0)
ffffffe000000bc8:	fc042a23          	sw	zero,-44(s0)
ffffffe000000bcc:	0380006f          	j	ffffffe000000c04 <task_init+0x348>
ffffffe000000bd0:	fd843783          	ld	a5,-40(s0)
ffffffe000000bd4:	0007b703          	ld	a4,0(a5)
ffffffe000000bd8:	fe043783          	ld	a5,-32(s0)
ffffffe000000bdc:	00e7b023          	sd	a4,0(a5)
ffffffe000000be0:	fe043783          	ld	a5,-32(s0)
ffffffe000000be4:	00878793          	addi	a5,a5,8
ffffffe000000be8:	fef43023          	sd	a5,-32(s0)
ffffffe000000bec:	fd843783          	ld	a5,-40(s0)
ffffffe000000bf0:	00878793          	addi	a5,a5,8
ffffffe000000bf4:	fcf43c23          	sd	a5,-40(s0)
ffffffe000000bf8:	fd442783          	lw	a5,-44(s0)
ffffffe000000bfc:	0017879b          	addiw	a5,a5,1
ffffffe000000c00:	fcf42a23          	sw	a5,-44(s0)
ffffffe000000c04:	fd442703          	lw	a4,-44(s0)
ffffffe000000c08:	fd042783          	lw	a5,-48(s0)
ffffffe000000c0c:	0007071b          	sext.w	a4,a4
ffffffe000000c10:	0007879b          	sext.w	a5,a5
ffffffe000000c14:	faf74ee3          	blt	a4,a5,ffffffe000000bd0 <task_init+0x314>
ffffffe000000c18:	00004717          	auipc	a4,0x4
ffffffe000000c1c:	3f870713          	addi	a4,a4,1016 # ffffffe000005010 <task>
ffffffe000000c20:	fec42783          	lw	a5,-20(s0)
ffffffe000000c24:	00379793          	slli	a5,a5,0x3
ffffffe000000c28:	00f707b3          	add	a5,a4,a5
ffffffe000000c2c:	0007b783          	ld	a5,0(a5)
ffffffe000000c30:	fec42703          	lw	a4,-20(s0)
ffffffe000000c34:	02e7b023          	sd	a4,32(a5)
ffffffe000000c38:	00004717          	auipc	a4,0x4
ffffffe000000c3c:	3d870713          	addi	a4,a4,984 # ffffffe000005010 <task>
ffffffe000000c40:	fec42783          	lw	a5,-20(s0)
ffffffe000000c44:	00379793          	slli	a5,a5,0x3
ffffffe000000c48:	00f707b3          	add	a5,a4,a5
ffffffe000000c4c:	0007b783          	ld	a5,0(a5)
ffffffe000000c50:	0207b683          	ld	a3,32(a5)
ffffffe000000c54:	00004717          	auipc	a4,0x4
ffffffe000000c58:	3bc70713          	addi	a4,a4,956 # ffffffe000005010 <task>
ffffffe000000c5c:	fec42783          	lw	a5,-20(s0)
ffffffe000000c60:	00379793          	slli	a5,a5,0x3
ffffffe000000c64:	00f707b3          	add	a5,a4,a5
ffffffe000000c68:	0007b783          	ld	a5,0(a5)
ffffffe000000c6c:	0087b783          	ld	a5,8(a5)
ffffffe000000c70:	00078613          	mv	a2,a5
ffffffe000000c74:	00068593          	mv	a1,a3
ffffffe000000c78:	00002517          	auipc	a0,0x2
ffffffe000000c7c:	49050513          	addi	a0,a0,1168 # ffffffe000003108 <__func__.0+0x70>
ffffffe000000c80:	7e1000ef          	jal	ra,ffffffe000001c60 <printf>
ffffffe000000c84:	fec42783          	lw	a5,-20(s0)
ffffffe000000c88:	0017879b          	addiw	a5,a5,1
ffffffe000000c8c:	fef42623          	sw	a5,-20(s0)
ffffffe000000c90:	fec42783          	lw	a5,-20(s0)
ffffffe000000c94:	0007871b          	sext.w	a4,a5
ffffffe000000c98:	00400793          	li	a5,4
ffffffe000000c9c:	d2e7dee3          	bge	a5,a4,ffffffe0000009d8 <task_init+0x11c>
ffffffe000000ca0:	00004797          	auipc	a5,0x4
ffffffe000000ca4:	57078793          	addi	a5,a5,1392 # ffffffe000005210 <task_init_done>
ffffffe000000ca8:	00100713          	li	a4,1
ffffffe000000cac:	00e7a023          	sw	a4,0(a5)
ffffffe000000cb0:	00000013          	nop
ffffffe000000cb4:	02813083          	ld	ra,40(sp)
ffffffe000000cb8:	02013403          	ld	s0,32(sp)
ffffffe000000cbc:	03010113          	addi	sp,sp,48
ffffffe000000cc0:	00008067          	ret

ffffffe000000cc4 <do_timer>:
ffffffe000000cc4:	ff010113          	addi	sp,sp,-16
ffffffe000000cc8:	00113423          	sd	ra,8(sp)
ffffffe000000ccc:	00813023          	sd	s0,0(sp)
ffffffe000000cd0:	01010413          	addi	s0,sp,16
ffffffe000000cd4:	00004797          	auipc	a5,0x4
ffffffe000000cd8:	53c78793          	addi	a5,a5,1340 # ffffffe000005210 <task_init_done>
ffffffe000000cdc:	0007a783          	lw	a5,0(a5)
ffffffe000000ce0:	06078e63          	beqz	a5,ffffffe000000d5c <do_timer+0x98>
ffffffe000000ce4:	00004797          	auipc	a5,0x4
ffffffe000000ce8:	32478793          	addi	a5,a5,804 # ffffffe000005008 <current>
ffffffe000000cec:	0007b783          	ld	a5,0(a5)
ffffffe000000cf0:	0207b703          	ld	a4,32(a5)
ffffffe000000cf4:	00004797          	auipc	a5,0x4
ffffffe000000cf8:	31478793          	addi	a5,a5,788 # ffffffe000005008 <current>
ffffffe000000cfc:	0007b783          	ld	a5,0(a5)
ffffffe000000d00:	0087b783          	ld	a5,8(a5)
ffffffe000000d04:	00078613          	mv	a2,a5
ffffffe000000d08:	00070593          	mv	a1,a4
ffffffe000000d0c:	00002517          	auipc	a0,0x2
ffffffe000000d10:	43450513          	addi	a0,a0,1076 # ffffffe000003140 <__func__.0+0xa8>
ffffffe000000d14:	74d000ef          	jal	ra,ffffffe000001c60 <printf>
ffffffe000000d18:	00004797          	auipc	a5,0x4
ffffffe000000d1c:	2f078793          	addi	a5,a5,752 # ffffffe000005008 <current>
ffffffe000000d20:	0007b783          	ld	a5,0(a5)
ffffffe000000d24:	0087b703          	ld	a4,8(a5)
ffffffe000000d28:	fff70713          	addi	a4,a4,-1
ffffffe000000d2c:	00e7b423          	sd	a4,8(a5)
ffffffe000000d30:	00004797          	auipc	a5,0x4
ffffffe000000d34:	2d878793          	addi	a5,a5,728 # ffffffe000005008 <current>
ffffffe000000d38:	0007b783          	ld	a5,0(a5)
ffffffe000000d3c:	0087b783          	ld	a5,8(a5)
ffffffe000000d40:	02f04263          	bgtz	a5,ffffffe000000d64 <do_timer+0xa0>
ffffffe000000d44:	00004797          	auipc	a5,0x4
ffffffe000000d48:	2c478793          	addi	a5,a5,708 # ffffffe000005008 <current>
ffffffe000000d4c:	0007b783          	ld	a5,0(a5)
ffffffe000000d50:	0007b423          	sd	zero,8(a5)
ffffffe000000d54:	024000ef          	jal	ra,ffffffe000000d78 <schedule>
ffffffe000000d58:	00c0006f          	j	ffffffe000000d64 <do_timer+0xa0>
ffffffe000000d5c:	00000013          	nop
ffffffe000000d60:	0080006f          	j	ffffffe000000d68 <do_timer+0xa4>
ffffffe000000d64:	00000013          	nop
ffffffe000000d68:	00813083          	ld	ra,8(sp)
ffffffe000000d6c:	00013403          	ld	s0,0(sp)
ffffffe000000d70:	01010113          	addi	sp,sp,16
ffffffe000000d74:	00008067          	ret

ffffffe000000d78 <schedule>:
ffffffe000000d78:	fc010113          	addi	sp,sp,-64
ffffffe000000d7c:	02113c23          	sd	ra,56(sp)
ffffffe000000d80:	02813823          	sd	s0,48(sp)
ffffffe000000d84:	04010413          	addi	s0,sp,64
ffffffe000000d88:	000107b7          	lui	a5,0x10
ffffffe000000d8c:	fff78793          	addi	a5,a5,-1 # ffff <reg_size+0xfff7>
ffffffe000000d90:	fef43423          	sd	a5,-24(s0)
ffffffe000000d94:	04000793          	li	a5,64
ffffffe000000d98:	fef403a3          	sb	a5,-25(s0)
ffffffe000000d9c:	00004797          	auipc	a5,0x4
ffffffe000000da0:	47478793          	addi	a5,a5,1140 # ffffffe000005210 <task_init_done>
ffffffe000000da4:	fcf43c23          	sd	a5,-40(s0)
ffffffe000000da8:	06c0006f          	j	ffffffe000000e14 <schedule+0x9c>
ffffffe000000dac:	fd843783          	ld	a5,-40(s0)
ffffffe000000db0:	ff878793          	addi	a5,a5,-8
ffffffe000000db4:	fcf43c23          	sd	a5,-40(s0)
ffffffe000000db8:	fd843783          	ld	a5,-40(s0)
ffffffe000000dbc:	0007b783          	ld	a5,0(a5)
ffffffe000000dc0:	04078a63          	beqz	a5,ffffffe000000e14 <schedule+0x9c>
ffffffe000000dc4:	fd843783          	ld	a5,-40(s0)
ffffffe000000dc8:	0007b783          	ld	a5,0(a5)
ffffffe000000dcc:	0087b783          	ld	a5,8(a5)
ffffffe000000dd0:	00079463          	bnez	a5,ffffffe000000dd8 <schedule+0x60>
ffffffe000000dd4:	0400006f          	j	ffffffe000000e14 <schedule+0x9c>
ffffffe000000dd8:	fd843783          	ld	a5,-40(s0)
ffffffe000000ddc:	0007b783          	ld	a5,0(a5)
ffffffe000000de0:	0007b783          	ld	a5,0(a5)
ffffffe000000de4:	02079863          	bnez	a5,ffffffe000000e14 <schedule+0x9c>
ffffffe000000de8:	fd843783          	ld	a5,-40(s0)
ffffffe000000dec:	0007b783          	ld	a5,0(a5)
ffffffe000000df0:	0087b783          	ld	a5,8(a5)
ffffffe000000df4:	fe843703          	ld	a4,-24(s0)
ffffffe000000df8:	00e7de63          	bge	a5,a4,ffffffe000000e14 <schedule+0x9c>
ffffffe000000dfc:	fd843783          	ld	a5,-40(s0)
ffffffe000000e00:	0007b783          	ld	a5,0(a5)
ffffffe000000e04:	0087b783          	ld	a5,8(a5)
ffffffe000000e08:	fef43423          	sd	a5,-24(s0)
ffffffe000000e0c:	fe744783          	lbu	a5,-25(s0)
ffffffe000000e10:	fef40323          	sb	a5,-26(s0)
ffffffe000000e14:	fe744783          	lbu	a5,-25(s0)
ffffffe000000e18:	fff7879b          	addiw	a5,a5,-1
ffffffe000000e1c:	fef403a3          	sb	a5,-25(s0)
ffffffe000000e20:	fe744783          	lbu	a5,-25(s0)
ffffffe000000e24:	0ff7f793          	andi	a5,a5,255
ffffffe000000e28:	f80792e3          	bnez	a5,ffffffe000000dac <schedule+0x34>
ffffffe000000e2c:	fe843703          	ld	a4,-24(s0)
ffffffe000000e30:	000107b7          	lui	a5,0x10
ffffffe000000e34:	fff78793          	addi	a5,a5,-1 # ffff <reg_size+0xfff7>
ffffffe000000e38:	08f71a63          	bne	a4,a5,ffffffe000000ecc <schedule+0x154>
ffffffe000000e3c:	00100793          	li	a5,1
ffffffe000000e40:	fcf42a23          	sw	a5,-44(s0)
ffffffe000000e44:	0740006f          	j	ffffffe000000eb8 <schedule+0x140>
ffffffe000000e48:	6d5000ef          	jal	ra,ffffffe000001d1c <rand>
ffffffe000000e4c:	00050793          	mv	a5,a0
ffffffe000000e50:	0007869b          	sext.w	a3,a5
ffffffe000000e54:	00004717          	auipc	a4,0x4
ffffffe000000e58:	1bc70713          	addi	a4,a4,444 # ffffffe000005010 <task>
ffffffe000000e5c:	fd442783          	lw	a5,-44(s0)
ffffffe000000e60:	00379793          	slli	a5,a5,0x3
ffffffe000000e64:	00f707b3          	add	a5,a4,a5
ffffffe000000e68:	0007b783          	ld	a5,0(a5)
ffffffe000000e6c:	02069713          	slli	a4,a3,0x20
ffffffe000000e70:	02075713          	srli	a4,a4,0x20
ffffffe000000e74:	00e7b423          	sd	a4,8(a5)
ffffffe000000e78:	00004717          	auipc	a4,0x4
ffffffe000000e7c:	19870713          	addi	a4,a4,408 # ffffffe000005010 <task>
ffffffe000000e80:	fd442783          	lw	a5,-44(s0)
ffffffe000000e84:	00379793          	slli	a5,a5,0x3
ffffffe000000e88:	00f707b3          	add	a5,a4,a5
ffffffe000000e8c:	0007b783          	ld	a5,0(a5)
ffffffe000000e90:	0087b703          	ld	a4,8(a5)
ffffffe000000e94:	fd442783          	lw	a5,-44(s0)
ffffffe000000e98:	00070613          	mv	a2,a4
ffffffe000000e9c:	00078593          	mv	a1,a5
ffffffe000000ea0:	00002517          	auipc	a0,0x2
ffffffe000000ea4:	2d050513          	addi	a0,a0,720 # ffffffe000003170 <__func__.0+0xd8>
ffffffe000000ea8:	5b9000ef          	jal	ra,ffffffe000001c60 <printf>
ffffffe000000eac:	fd442783          	lw	a5,-44(s0)
ffffffe000000eb0:	0017879b          	addiw	a5,a5,1
ffffffe000000eb4:	fcf42a23          	sw	a5,-44(s0)
ffffffe000000eb8:	fd442783          	lw	a5,-44(s0)
ffffffe000000ebc:	0007871b          	sext.w	a4,a5
ffffffe000000ec0:	00400793          	li	a5,4
ffffffe000000ec4:	f8e7d2e3          	bge	a5,a4,ffffffe000000e48 <schedule+0xd0>
ffffffe000000ec8:	ec1ff06f          	j	ffffffe000000d88 <schedule+0x10>
ffffffe000000ecc:	00000013          	nop
ffffffe000000ed0:	00004797          	auipc	a5,0x4
ffffffe000000ed4:	13878793          	addi	a5,a5,312 # ffffffe000005008 <current>
ffffffe000000ed8:	0007b783          	ld	a5,0(a5)
ffffffe000000edc:	0207b583          	ld	a1,32(a5)
ffffffe000000ee0:	00004797          	auipc	a5,0x4
ffffffe000000ee4:	12878793          	addi	a5,a5,296 # ffffffe000005008 <current>
ffffffe000000ee8:	0007b783          	ld	a5,0(a5)
ffffffe000000eec:	00078313          	mv	t1,a5
ffffffe000000ef0:	00004797          	auipc	a5,0x4
ffffffe000000ef4:	11878793          	addi	a5,a5,280 # ffffffe000005008 <current>
ffffffe000000ef8:	0007b783          	ld	a5,0(a5)
ffffffe000000efc:	0307b683          	ld	a3,48(a5)
ffffffe000000f00:	fe644783          	lbu	a5,-26(s0)
ffffffe000000f04:	0007879b          	sext.w	a5,a5
ffffffe000000f08:	00004717          	auipc	a4,0x4
ffffffe000000f0c:	10870713          	addi	a4,a4,264 # ffffffe000005010 <task>
ffffffe000000f10:	00379793          	slli	a5,a5,0x3
ffffffe000000f14:	00f707b3          	add	a5,a4,a5
ffffffe000000f18:	0007b783          	ld	a5,0(a5)
ffffffe000000f1c:	0207b603          	ld	a2,32(a5)
ffffffe000000f20:	fe644783          	lbu	a5,-26(s0)
ffffffe000000f24:	0007879b          	sext.w	a5,a5
ffffffe000000f28:	00004717          	auipc	a4,0x4
ffffffe000000f2c:	0e870713          	addi	a4,a4,232 # ffffffe000005010 <task>
ffffffe000000f30:	00379793          	slli	a5,a5,0x3
ffffffe000000f34:	00f707b3          	add	a5,a4,a5
ffffffe000000f38:	0007b783          	ld	a5,0(a5)
ffffffe000000f3c:	00078e13          	mv	t3,a5
ffffffe000000f40:	fe644783          	lbu	a5,-26(s0)
ffffffe000000f44:	0007879b          	sext.w	a5,a5
ffffffe000000f48:	00004717          	auipc	a4,0x4
ffffffe000000f4c:	0c870713          	addi	a4,a4,200 # ffffffe000005010 <task>
ffffffe000000f50:	00379793          	slli	a5,a5,0x3
ffffffe000000f54:	00f707b3          	add	a5,a4,a5
ffffffe000000f58:	0007b783          	ld	a5,0(a5)
ffffffe000000f5c:	0307b503          	ld	a0,48(a5)
ffffffe000000f60:	fe644783          	lbu	a5,-26(s0)
ffffffe000000f64:	0007879b          	sext.w	a5,a5
ffffffe000000f68:	00004717          	auipc	a4,0x4
ffffffe000000f6c:	0a870713          	addi	a4,a4,168 # ffffffe000005010 <task>
ffffffe000000f70:	00379793          	slli	a5,a5,0x3
ffffffe000000f74:	00f707b3          	add	a5,a4,a5
ffffffe000000f78:	0007b783          	ld	a5,0(a5)
ffffffe000000f7c:	0107b803          	ld	a6,16(a5)
ffffffe000000f80:	fe644783          	lbu	a5,-26(s0)
ffffffe000000f84:	0007879b          	sext.w	a5,a5
ffffffe000000f88:	00004717          	auipc	a4,0x4
ffffffe000000f8c:	08870713          	addi	a4,a4,136 # ffffffe000005010 <task>
ffffffe000000f90:	00379793          	slli	a5,a5,0x3
ffffffe000000f94:	00f707b3          	add	a5,a4,a5
ffffffe000000f98:	0007b783          	ld	a5,0(a5)
ffffffe000000f9c:	0087b783          	ld	a5,8(a5)
ffffffe000000fa0:	00f13023          	sd	a5,0(sp)
ffffffe000000fa4:	00080893          	mv	a7,a6
ffffffe000000fa8:	00050813          	mv	a6,a0
ffffffe000000fac:	000e0793          	mv	a5,t3
ffffffe000000fb0:	00060713          	mv	a4,a2
ffffffe000000fb4:	00030613          	mv	a2,t1
ffffffe000000fb8:	00002517          	auipc	a0,0x2
ffffffe000000fbc:	1d850513          	addi	a0,a0,472 # ffffffe000003190 <__func__.0+0xf8>
ffffffe000000fc0:	4a1000ef          	jal	ra,ffffffe000001c60 <printf>
ffffffe000000fc4:	fe644783          	lbu	a5,-26(s0)
ffffffe000000fc8:	0007879b          	sext.w	a5,a5
ffffffe000000fcc:	00004717          	auipc	a4,0x4
ffffffe000000fd0:	04470713          	addi	a4,a4,68 # ffffffe000005010 <task>
ffffffe000000fd4:	00379793          	slli	a5,a5,0x3
ffffffe000000fd8:	00f707b3          	add	a5,a4,a5
ffffffe000000fdc:	0007b783          	ld	a5,0(a5)
ffffffe000000fe0:	00078513          	mv	a0,a5
ffffffe000000fe4:	018000ef          	jal	ra,ffffffe000000ffc <switch_to>
ffffffe000000fe8:	00000013          	nop
ffffffe000000fec:	03813083          	ld	ra,56(sp)
ffffffe000000ff0:	03013403          	ld	s0,48(sp)
ffffffe000000ff4:	04010113          	addi	sp,sp,64
ffffffe000000ff8:	00008067          	ret

ffffffe000000ffc <switch_to>:
ffffffe000000ffc:	fd010113          	addi	sp,sp,-48
ffffffe000001000:	02113423          	sd	ra,40(sp)
ffffffe000001004:	02813023          	sd	s0,32(sp)
ffffffe000001008:	03010413          	addi	s0,sp,48
ffffffe00000100c:	fca43c23          	sd	a0,-40(s0)
ffffffe000001010:	00004797          	auipc	a5,0x4
ffffffe000001014:	ff878793          	addi	a5,a5,-8 # ffffffe000005008 <current>
ffffffe000001018:	0007b783          	ld	a5,0(a5)
ffffffe00000101c:	fd843703          	ld	a4,-40(s0)
ffffffe000001020:	02f70a63          	beq	a4,a5,ffffffe000001054 <switch_to+0x58>
ffffffe000001024:	00004797          	auipc	a5,0x4
ffffffe000001028:	fe478793          	addi	a5,a5,-28 # ffffffe000005008 <current>
ffffffe00000102c:	0007b783          	ld	a5,0(a5)
ffffffe000001030:	fef43423          	sd	a5,-24(s0)
ffffffe000001034:	00004797          	auipc	a5,0x4
ffffffe000001038:	fd478793          	addi	a5,a5,-44 # ffffffe000005008 <current>
ffffffe00000103c:	fd843703          	ld	a4,-40(s0)
ffffffe000001040:	00e7b023          	sd	a4,0(a5)
ffffffe000001044:	fd843583          	ld	a1,-40(s0)
ffffffe000001048:	fe843503          	ld	a0,-24(s0)
ffffffe00000104c:	c10ff0ef          	jal	ra,ffffffe00000045c <__switch_to>
ffffffe000001050:	0080006f          	j	ffffffe000001058 <switch_to+0x5c>
ffffffe000001054:	00000013          	nop
ffffffe000001058:	02813083          	ld	ra,40(sp)
ffffffe00000105c:	02013403          	ld	s0,32(sp)
ffffffe000001060:	03010113          	addi	sp,sp,48
ffffffe000001064:	00008067          	ret

ffffffe000001068 <dead_loop>:
ffffffe000001068:	ff010113          	addi	sp,sp,-16
ffffffe00000106c:	00813423          	sd	s0,8(sp)
ffffffe000001070:	01010413          	addi	s0,sp,16
ffffffe000001074:	0000006f          	j	ffffffe000001074 <dead_loop+0xc>

ffffffe000001078 <handler_s>:
ffffffe000001078:	fa010113          	addi	sp,sp,-96
ffffffe00000107c:	04113c23          	sd	ra,88(sp)
ffffffe000001080:	04813823          	sd	s0,80(sp)
ffffffe000001084:	06010413          	addi	s0,sp,96
ffffffe000001088:	faa43c23          	sd	a0,-72(s0)
ffffffe00000108c:	fab43823          	sd	a1,-80(s0)
ffffffe000001090:	fac43423          	sd	a2,-88(s0)
ffffffe000001094:	fe043423          	sd	zero,-24(s0)
ffffffe000001098:	fe043023          	sd	zero,-32(s0)
ffffffe00000109c:	fc043c23          	sd	zero,-40(s0)
ffffffe0000010a0:	fc043823          	sd	zero,-48(s0)
ffffffe0000010a4:	fb843783          	ld	a5,-72(s0)
ffffffe0000010a8:	0207d463          	bgez	a5,ffffffe0000010d0 <handler_s+0x58>
ffffffe0000010ac:	fb843703          	ld	a4,-72(s0)
ffffffe0000010b0:	fff00793          	li	a5,-1
ffffffe0000010b4:	0017d793          	srli	a5,a5,0x1
ffffffe0000010b8:	00f77733          	and	a4,a4,a5
ffffffe0000010bc:	00500793          	li	a5,5
ffffffe0000010c0:	06f71663          	bne	a4,a5,ffffffe00000112c <handler_s+0xb4>
ffffffe0000010c4:	00000073          	ecall
ffffffe0000010c8:	bfdff0ef          	jal	ra,ffffffe000000cc4 <do_timer>
ffffffe0000010cc:	0600006f          	j	ffffffe00000112c <handler_s+0xb4>
ffffffe0000010d0:	fb843703          	ld	a4,-72(s0)
ffffffe0000010d4:	00800793          	li	a5,8
ffffffe0000010d8:	04f71a63          	bne	a4,a5,ffffffe00000112c <handler_s+0xb4>
ffffffe0000010dc:	fa843783          	ld	a5,-88(s0)
ffffffe0000010e0:	0387b783          	ld	a5,56(a5)
ffffffe0000010e4:	fcf43823          	sd	a5,-48(s0)
ffffffe0000010e8:	fd043703          	ld	a4,-48(s0)
ffffffe0000010ec:	0ac00793          	li	a5,172
ffffffe0000010f0:	00f71663          	bne	a4,a5,ffffffe0000010fc <handler_s+0x84>
ffffffe0000010f4:	00100513          	li	a0,1
ffffffe0000010f8:	0340006f          	j	ffffffe00000112c <handler_s+0xb4>
ffffffe0000010fc:	fd043703          	ld	a4,-48(s0)
ffffffe000001100:	04000793          	li	a5,64
ffffffe000001104:	02f71463          	bne	a4,a5,ffffffe00000112c <handler_s+0xb4>
ffffffe000001108:	fa843783          	ld	a5,-88(s0)
ffffffe00000110c:	00878793          	addi	a5,a5,8
ffffffe000001110:	0007b783          	ld	a5,0(a5)
ffffffe000001114:	fcf43423          	sd	a5,-56(s0)
ffffffe000001118:	fc843583          	ld	a1,-56(s0)
ffffffe00000111c:	00002517          	auipc	a0,0x2
ffffffe000001120:	0f450513          	addi	a0,a0,244 # ffffffe000003210 <__func__.0+0x178>
ffffffe000001124:	33d000ef          	jal	ra,ffffffe000001c60 <printf>
ffffffe000001128:	00000013          	nop
ffffffe00000112c:	00000013          	nop
ffffffe000001130:	05813083          	ld	ra,88(sp)
ffffffe000001134:	05013403          	ld	s0,80(sp)
ffffffe000001138:	06010113          	addi	sp,sp,96
ffffffe00000113c:	00008067          	ret

ffffffe000001140 <kvminit>:
ffffffe000001140:	fd010113          	addi	sp,sp,-48
ffffffe000001144:	02113423          	sd	ra,40(sp)
ffffffe000001148:	02813023          	sd	s0,32(sp)
ffffffe00000114c:	00913c23          	sd	s1,24(sp)
ffffffe000001150:	01213823          	sd	s2,16(sp)
ffffffe000001154:	03010413          	addi	s0,sp,48
ffffffe000001158:	e6cff0ef          	jal	ra,ffffffe0000007c4 <kalloc>
ffffffe00000115c:	00050713          	mv	a4,a0
ffffffe000001160:	00004797          	auipc	a5,0x4
ffffffe000001164:	0c078793          	addi	a5,a5,192 # ffffffe000005220 <kpgtbl>
ffffffe000001168:	00e7b023          	sd	a4,0(a5)
ffffffe00000116c:	00004797          	auipc	a5,0x4
ffffffe000001170:	0b478793          	addi	a5,a5,180 # ffffffe000005220 <kpgtbl>
ffffffe000001174:	0007b783          	ld	a5,0(a5)
ffffffe000001178:	00001637          	lui	a2,0x1
ffffffe00000117c:	00000593          	li	a1,0
ffffffe000001180:	00078513          	mv	a0,a5
ffffffe000001184:	6b5000ef          	jal	ra,ffffffe000002038 <memset>
ffffffe000001188:	00000513          	li	a0,0
ffffffe00000118c:	030010ef          	jal	ra,ffffffe0000021bc <get_device_addr>
ffffffe000001190:	00050713          	mv	a4,a0
ffffffe000001194:	fbf00793          	li	a5,-65
ffffffe000001198:	01f79793          	slli	a5,a5,0x1f
ffffffe00000119c:	00f707b3          	add	a5,a4,a5
ffffffe0000011a0:	fcf43c23          	sd	a5,-40(s0)
ffffffe0000011a4:	00004797          	auipc	a5,0x4
ffffffe0000011a8:	07c78793          	addi	a5,a5,124 # ffffffe000005220 <kpgtbl>
ffffffe0000011ac:	0007b483          	ld	s1,0(a5)
ffffffe0000011b0:	fd843703          	ld	a4,-40(s0)
ffffffe0000011b4:	04100793          	li	a5,65
ffffffe0000011b8:	01f79793          	slli	a5,a5,0x1f
ffffffe0000011bc:	00f70933          	add	s2,a4,a5
ffffffe0000011c0:	00000513          	li	a0,0
ffffffe0000011c4:	050010ef          	jal	ra,ffffffe000002214 <get_device_size>
ffffffe0000011c8:	00050793          	mv	a5,a0
ffffffe0000011cc:	00600713          	li	a4,6
ffffffe0000011d0:	00078693          	mv	a3,a5
ffffffe0000011d4:	00090613          	mv	a2,s2
ffffffe0000011d8:	fd843583          	ld	a1,-40(s0)
ffffffe0000011dc:	00048513          	mv	a0,s1
ffffffe0000011e0:	404000ef          	jal	ra,ffffffe0000015e4 <kvmmap>
ffffffe0000011e4:	00300513          	li	a0,3
ffffffe0000011e8:	7d5000ef          	jal	ra,ffffffe0000021bc <get_device_addr>
ffffffe0000011ec:	00050713          	mv	a4,a0
ffffffe0000011f0:	fbf00793          	li	a5,-65
ffffffe0000011f4:	01f79793          	slli	a5,a5,0x1f
ffffffe0000011f8:	00f707b3          	add	a5,a4,a5
ffffffe0000011fc:	fcf43823          	sd	a5,-48(s0)
ffffffe000001200:	00004797          	auipc	a5,0x4
ffffffe000001204:	02078793          	addi	a5,a5,32 # ffffffe000005220 <kpgtbl>
ffffffe000001208:	0007b483          	ld	s1,0(a5)
ffffffe00000120c:	fd043703          	ld	a4,-48(s0)
ffffffe000001210:	04100793          	li	a5,65
ffffffe000001214:	01f79793          	slli	a5,a5,0x1f
ffffffe000001218:	00f70933          	add	s2,a4,a5
ffffffe00000121c:	00300513          	li	a0,3
ffffffe000001220:	7f5000ef          	jal	ra,ffffffe000002214 <get_device_size>
ffffffe000001224:	00050793          	mv	a5,a0
ffffffe000001228:	00600713          	li	a4,6
ffffffe00000122c:	00078693          	mv	a3,a5
ffffffe000001230:	00090613          	mv	a2,s2
ffffffe000001234:	fd043583          	ld	a1,-48(s0)
ffffffe000001238:	00048513          	mv	a0,s1
ffffffe00000123c:	3a8000ef          	jal	ra,ffffffe0000015e4 <kvmmap>
ffffffe000001240:	00004797          	auipc	a5,0x4
ffffffe000001244:	fe078793          	addi	a5,a5,-32 # ffffffe000005220 <kpgtbl>
ffffffe000001248:	0007b503          	ld	a0,0(a5)
ffffffe00000124c:	00004597          	auipc	a1,0x4
ffffffe000001250:	ad45b583          	ld	a1,-1324(a1) # ffffffe000004d20 <_GLOBAL_OFFSET_TABLE_+0x38>
ffffffe000001254:	00004717          	auipc	a4,0x4
ffffffe000001258:	acc73703          	ld	a4,-1332(a4) # ffffffe000004d20 <_GLOBAL_OFFSET_TABLE_+0x38>
ffffffe00000125c:	04100793          	li	a5,65
ffffffe000001260:	01f79793          	slli	a5,a5,0x1f
ffffffe000001264:	00f70633          	add	a2,a4,a5
ffffffe000001268:	00004717          	auipc	a4,0x4
ffffffe00000126c:	a9073703          	ld	a4,-1392(a4) # ffffffe000004cf8 <_GLOBAL_OFFSET_TABLE_+0x10>
ffffffe000001270:	00004797          	auipc	a5,0x4
ffffffe000001274:	ab07b783          	ld	a5,-1360(a5) # ffffffe000004d20 <_GLOBAL_OFFSET_TABLE_+0x38>
ffffffe000001278:	40f707b3          	sub	a5,a4,a5
ffffffe00000127c:	00a00713          	li	a4,10
ffffffe000001280:	00078693          	mv	a3,a5
ffffffe000001284:	360000ef          	jal	ra,ffffffe0000015e4 <kvmmap>
ffffffe000001288:	00004797          	auipc	a5,0x4
ffffffe00000128c:	f9878793          	addi	a5,a5,-104 # ffffffe000005220 <kpgtbl>
ffffffe000001290:	0007b503          	ld	a0,0(a5)
ffffffe000001294:	00004597          	auipc	a1,0x4
ffffffe000001298:	a6c5b583          	ld	a1,-1428(a1) # ffffffe000004d00 <_GLOBAL_OFFSET_TABLE_+0x18>
ffffffe00000129c:	00004717          	auipc	a4,0x4
ffffffe0000012a0:	a6473703          	ld	a4,-1436(a4) # ffffffe000004d00 <_GLOBAL_OFFSET_TABLE_+0x18>
ffffffe0000012a4:	04100793          	li	a5,65
ffffffe0000012a8:	01f79793          	slli	a5,a5,0x1f
ffffffe0000012ac:	00f70633          	add	a2,a4,a5
ffffffe0000012b0:	00004717          	auipc	a4,0x4
ffffffe0000012b4:	a8873703          	ld	a4,-1400(a4) # ffffffe000004d38 <_GLOBAL_OFFSET_TABLE_+0x50>
ffffffe0000012b8:	00004797          	auipc	a5,0x4
ffffffe0000012bc:	a487b783          	ld	a5,-1464(a5) # ffffffe000004d00 <_GLOBAL_OFFSET_TABLE_+0x18>
ffffffe0000012c0:	40f707b3          	sub	a5,a4,a5
ffffffe0000012c4:	00200713          	li	a4,2
ffffffe0000012c8:	00078693          	mv	a3,a5
ffffffe0000012cc:	318000ef          	jal	ra,ffffffe0000015e4 <kvmmap>
ffffffe0000012d0:	00004797          	auipc	a5,0x4
ffffffe0000012d4:	f5078793          	addi	a5,a5,-176 # ffffffe000005220 <kpgtbl>
ffffffe0000012d8:	0007b503          	ld	a0,0(a5)
ffffffe0000012dc:	00004597          	auipc	a1,0x4
ffffffe0000012e0:	a4c5b583          	ld	a1,-1460(a1) # ffffffe000004d28 <_GLOBAL_OFFSET_TABLE_+0x40>
ffffffe0000012e4:	00004717          	auipc	a4,0x4
ffffffe0000012e8:	a4473703          	ld	a4,-1468(a4) # ffffffe000004d28 <_GLOBAL_OFFSET_TABLE_+0x40>
ffffffe0000012ec:	04100793          	li	a5,65
ffffffe0000012f0:	01f79793          	slli	a5,a5,0x1f
ffffffe0000012f4:	00f70633          	add	a2,a4,a5
ffffffe0000012f8:	00004797          	auipc	a5,0x4
ffffffe0000012fc:	a307b783          	ld	a5,-1488(a5) # ffffffe000004d28 <_GLOBAL_OFFSET_TABLE_+0x40>
ffffffe000001300:	fe001737          	lui	a4,0xfe001
ffffffe000001304:	00c71713          	slli	a4,a4,0xc
ffffffe000001308:	40f707b3          	sub	a5,a4,a5
ffffffe00000130c:	00600713          	li	a4,6
ffffffe000001310:	00078693          	mv	a3,a5
ffffffe000001314:	2d0000ef          	jal	ra,ffffffe0000015e4 <kvmmap>
ffffffe000001318:	00004797          	auipc	a5,0x4
ffffffe00000131c:	f0878793          	addi	a5,a5,-248 # ffffffe000005220 <kpgtbl>
ffffffe000001320:	0007b503          	ld	a0,0(a5)
ffffffe000001324:	00004797          	auipc	a5,0x4
ffffffe000001328:	f0478793          	addi	a5,a5,-252 # ffffffe000005228 <uvirt_text_start>
ffffffe00000132c:	0007b583          	ld	a1,0(a5)
ffffffe000001330:	00004797          	auipc	a5,0x4
ffffffe000001334:	94878793          	addi	a5,a5,-1720 # ffffffe000004c78 <uphy_text_start>
ffffffe000001338:	0007b783          	ld	a5,0(a5)
ffffffe00000133c:	01e00713          	li	a4,30
ffffffe000001340:	000016b7          	lui	a3,0x1
ffffffe000001344:	00078613          	mv	a2,a5
ffffffe000001348:	29c000ef          	jal	ra,ffffffe0000015e4 <kvmmap>
ffffffe00000134c:	00004797          	auipc	a5,0x4
ffffffe000001350:	ed478793          	addi	a5,a5,-300 # ffffffe000005220 <kpgtbl>
ffffffe000001354:	0007b483          	ld	s1,0(a5)
ffffffe000001358:	00004797          	auipc	a5,0x4
ffffffe00000135c:	92878793          	addi	a5,a5,-1752 # ffffffe000004c80 <user_stack>
ffffffe000001360:	0007b903          	ld	s2,0(a5)
ffffffe000001364:	c60ff0ef          	jal	ra,ffffffe0000007c4 <kalloc>
ffffffe000001368:	00050793          	mv	a5,a0
ffffffe00000136c:	01600713          	li	a4,22
ffffffe000001370:	000016b7          	lui	a3,0x1
ffffffe000001374:	00078613          	mv	a2,a5
ffffffe000001378:	00090593          	mv	a1,s2
ffffffe00000137c:	00048513          	mv	a0,s1
ffffffe000001380:	264000ef          	jal	ra,ffffffe0000015e4 <kvmmap>
ffffffe000001384:	00004797          	auipc	a5,0x4
ffffffe000001388:	e9c78793          	addi	a5,a5,-356 # ffffffe000005220 <kpgtbl>
ffffffe00000138c:	0007b783          	ld	a5,0(a5)
ffffffe000001390:	00c7d713          	srli	a4,a5,0xc
ffffffe000001394:	fff00793          	li	a5,-1
ffffffe000001398:	03f79793          	slli	a5,a5,0x3f
ffffffe00000139c:	00f767b3          	or	a5,a4,a5
ffffffe0000013a0:	18079073          	csrw	satp,a5
ffffffe0000013a4:	12000073          	sfence.vma
ffffffe0000013a8:	00000013          	nop
ffffffe0000013ac:	02813083          	ld	ra,40(sp)
ffffffe0000013b0:	02013403          	ld	s0,32(sp)
ffffffe0000013b4:	01813483          	ld	s1,24(sp)
ffffffe0000013b8:	01013903          	ld	s2,16(sp)
ffffffe0000013bc:	03010113          	addi	sp,sp,48
ffffffe0000013c0:	00008067          	ret

ffffffe0000013c4 <walk>:
ffffffe0000013c4:	fc010113          	addi	sp,sp,-64
ffffffe0000013c8:	02113c23          	sd	ra,56(sp)
ffffffe0000013cc:	02813823          	sd	s0,48(sp)
ffffffe0000013d0:	04010413          	addi	s0,sp,64
ffffffe0000013d4:	fca43c23          	sd	a0,-40(s0)
ffffffe0000013d8:	fcb43823          	sd	a1,-48(s0)
ffffffe0000013dc:	00060793          	mv	a5,a2
ffffffe0000013e0:	fcf42623          	sw	a5,-52(s0)
ffffffe0000013e4:	00200793          	li	a5,2
ffffffe0000013e8:	fef42623          	sw	a5,-20(s0)
ffffffe0000013ec:	0c00006f          	j	ffffffe0000014ac <walk+0xe8>
ffffffe0000013f0:	fec42703          	lw	a4,-20(s0)
ffffffe0000013f4:	00070793          	mv	a5,a4
ffffffe0000013f8:	0037979b          	slliw	a5,a5,0x3
ffffffe0000013fc:	00e787bb          	addw	a5,a5,a4
ffffffe000001400:	0007879b          	sext.w	a5,a5
ffffffe000001404:	00c7879b          	addiw	a5,a5,12
ffffffe000001408:	0007879b          	sext.w	a5,a5
ffffffe00000140c:	00078713          	mv	a4,a5
ffffffe000001410:	fd043783          	ld	a5,-48(s0)
ffffffe000001414:	00e7d7b3          	srl	a5,a5,a4
ffffffe000001418:	1ff7f793          	andi	a5,a5,511
ffffffe00000141c:	00379793          	slli	a5,a5,0x3
ffffffe000001420:	fd843703          	ld	a4,-40(s0)
ffffffe000001424:	00f707b3          	add	a5,a4,a5
ffffffe000001428:	fef43023          	sd	a5,-32(s0)
ffffffe00000142c:	fe043783          	ld	a5,-32(s0)
ffffffe000001430:	0007b783          	ld	a5,0(a5)
ffffffe000001434:	0017f793          	andi	a5,a5,1
ffffffe000001438:	00078e63          	beqz	a5,ffffffe000001454 <walk+0x90>
ffffffe00000143c:	fe043783          	ld	a5,-32(s0)
ffffffe000001440:	0007b783          	ld	a5,0(a5)
ffffffe000001444:	00a7d793          	srli	a5,a5,0xa
ffffffe000001448:	00c79793          	slli	a5,a5,0xc
ffffffe00000144c:	fcf43c23          	sd	a5,-40(s0)
ffffffe000001450:	0500006f          	j	ffffffe0000014a0 <walk+0xdc>
ffffffe000001454:	fcc42783          	lw	a5,-52(s0)
ffffffe000001458:	0007879b          	sext.w	a5,a5
ffffffe00000145c:	00078a63          	beqz	a5,ffffffe000001470 <walk+0xac>
ffffffe000001460:	b64ff0ef          	jal	ra,ffffffe0000007c4 <kalloc>
ffffffe000001464:	fca43c23          	sd	a0,-40(s0)
ffffffe000001468:	fd843783          	ld	a5,-40(s0)
ffffffe00000146c:	00079663          	bnez	a5,ffffffe000001478 <walk+0xb4>
ffffffe000001470:	00000793          	li	a5,0
ffffffe000001474:	05c0006f          	j	ffffffe0000014d0 <walk+0x10c>
ffffffe000001478:	00001637          	lui	a2,0x1
ffffffe00000147c:	00000593          	li	a1,0
ffffffe000001480:	fd843503          	ld	a0,-40(s0)
ffffffe000001484:	3b5000ef          	jal	ra,ffffffe000002038 <memset>
ffffffe000001488:	fd843783          	ld	a5,-40(s0)
ffffffe00000148c:	00c7d793          	srli	a5,a5,0xc
ffffffe000001490:	00a79793          	slli	a5,a5,0xa
ffffffe000001494:	0017e713          	ori	a4,a5,1
ffffffe000001498:	fe043783          	ld	a5,-32(s0)
ffffffe00000149c:	00e7b023          	sd	a4,0(a5)
ffffffe0000014a0:	fec42783          	lw	a5,-20(s0)
ffffffe0000014a4:	fff7879b          	addiw	a5,a5,-1
ffffffe0000014a8:	fef42623          	sw	a5,-20(s0)
ffffffe0000014ac:	fec42783          	lw	a5,-20(s0)
ffffffe0000014b0:	0007879b          	sext.w	a5,a5
ffffffe0000014b4:	f2f04ee3          	bgtz	a5,ffffffe0000013f0 <walk+0x2c>
ffffffe0000014b8:	fd043783          	ld	a5,-48(s0)
ffffffe0000014bc:	00c7d793          	srli	a5,a5,0xc
ffffffe0000014c0:	1ff7f793          	andi	a5,a5,511
ffffffe0000014c4:	00379793          	slli	a5,a5,0x3
ffffffe0000014c8:	fd843703          	ld	a4,-40(s0)
ffffffe0000014cc:	00f707b3          	add	a5,a4,a5
ffffffe0000014d0:	00078513          	mv	a0,a5
ffffffe0000014d4:	03813083          	ld	ra,56(sp)
ffffffe0000014d8:	03013403          	ld	s0,48(sp)
ffffffe0000014dc:	04010113          	addi	sp,sp,64
ffffffe0000014e0:	00008067          	ret

ffffffe0000014e4 <mappages>:
ffffffe0000014e4:	fa010113          	addi	sp,sp,-96
ffffffe0000014e8:	04113c23          	sd	ra,88(sp)
ffffffe0000014ec:	04813823          	sd	s0,80(sp)
ffffffe0000014f0:	06010413          	addi	s0,sp,96
ffffffe0000014f4:	fca43423          	sd	a0,-56(s0)
ffffffe0000014f8:	fcb43023          	sd	a1,-64(s0)
ffffffe0000014fc:	fac43c23          	sd	a2,-72(s0)
ffffffe000001500:	fad43823          	sd	a3,-80(s0)
ffffffe000001504:	00070793          	mv	a5,a4
ffffffe000001508:	faf42623          	sw	a5,-84(s0)
ffffffe00000150c:	fc043703          	ld	a4,-64(s0)
ffffffe000001510:	fffff7b7          	lui	a5,0xfffff
ffffffe000001514:	00f777b3          	and	a5,a4,a5
ffffffe000001518:	fef43423          	sd	a5,-24(s0)
ffffffe00000151c:	fc043703          	ld	a4,-64(s0)
ffffffe000001520:	fb843783          	ld	a5,-72(s0)
ffffffe000001524:	00f707b3          	add	a5,a4,a5
ffffffe000001528:	fff78713          	addi	a4,a5,-1 # ffffffffffffefff <_end+0x1fffff6fff>
ffffffe00000152c:	fffff7b7          	lui	a5,0xfffff
ffffffe000001530:	00f777b3          	and	a5,a4,a5
ffffffe000001534:	fef43023          	sd	a5,-32(s0)
ffffffe000001538:	00100613          	li	a2,1
ffffffe00000153c:	fe843583          	ld	a1,-24(s0)
ffffffe000001540:	fc843503          	ld	a0,-56(s0)
ffffffe000001544:	e81ff0ef          	jal	ra,ffffffe0000013c4 <walk>
ffffffe000001548:	fca43c23          	sd	a0,-40(s0)
ffffffe00000154c:	fd843783          	ld	a5,-40(s0)
ffffffe000001550:	00079663          	bnez	a5,ffffffe00000155c <mappages+0x78>
ffffffe000001554:	fff00793          	li	a5,-1
ffffffe000001558:	0780006f          	j	ffffffe0000015d0 <mappages+0xec>
ffffffe00000155c:	fd843783          	ld	a5,-40(s0)
ffffffe000001560:	0007b783          	ld	a5,0(a5) # fffffffffffff000 <_end+0x1fffff7000>
ffffffe000001564:	0017f793          	andi	a5,a5,1
ffffffe000001568:	00078863          	beqz	a5,ffffffe000001578 <mappages+0x94>
ffffffe00000156c:	00002517          	auipc	a0,0x2
ffffffe000001570:	cac50513          	addi	a0,a0,-852 # ffffffe000003218 <__func__.0+0x180>
ffffffe000001574:	76c000ef          	jal	ra,ffffffe000001ce0 <panic>
ffffffe000001578:	fb043783          	ld	a5,-80(s0)
ffffffe00000157c:	00c7d793          	srli	a5,a5,0xc
ffffffe000001580:	00a79713          	slli	a4,a5,0xa
ffffffe000001584:	fac42783          	lw	a5,-84(s0)
ffffffe000001588:	00f767b3          	or	a5,a4,a5
ffffffe00000158c:	0017e713          	ori	a4,a5,1
ffffffe000001590:	fd843783          	ld	a5,-40(s0)
ffffffe000001594:	00e7b023          	sd	a4,0(a5)
ffffffe000001598:	fe843703          	ld	a4,-24(s0)
ffffffe00000159c:	fe043783          	ld	a5,-32(s0)
ffffffe0000015a0:	02f70463          	beq	a4,a5,ffffffe0000015c8 <mappages+0xe4>
ffffffe0000015a4:	fe843703          	ld	a4,-24(s0)
ffffffe0000015a8:	000017b7          	lui	a5,0x1
ffffffe0000015ac:	00f707b3          	add	a5,a4,a5
ffffffe0000015b0:	fef43423          	sd	a5,-24(s0)
ffffffe0000015b4:	fb043703          	ld	a4,-80(s0)
ffffffe0000015b8:	000017b7          	lui	a5,0x1
ffffffe0000015bc:	00f707b3          	add	a5,a4,a5
ffffffe0000015c0:	faf43823          	sd	a5,-80(s0)
ffffffe0000015c4:	f75ff06f          	j	ffffffe000001538 <mappages+0x54>
ffffffe0000015c8:	00000013          	nop
ffffffe0000015cc:	00000793          	li	a5,0
ffffffe0000015d0:	00078513          	mv	a0,a5
ffffffe0000015d4:	05813083          	ld	ra,88(sp)
ffffffe0000015d8:	05013403          	ld	s0,80(sp)
ffffffe0000015dc:	06010113          	addi	sp,sp,96
ffffffe0000015e0:	00008067          	ret

ffffffe0000015e4 <kvmmap>:
ffffffe0000015e4:	fc010113          	addi	sp,sp,-64
ffffffe0000015e8:	02113c23          	sd	ra,56(sp)
ffffffe0000015ec:	02813823          	sd	s0,48(sp)
ffffffe0000015f0:	04010413          	addi	s0,sp,64
ffffffe0000015f4:	fea43423          	sd	a0,-24(s0)
ffffffe0000015f8:	feb43023          	sd	a1,-32(s0)
ffffffe0000015fc:	fcc43c23          	sd	a2,-40(s0)
ffffffe000001600:	fcd43823          	sd	a3,-48(s0)
ffffffe000001604:	00070793          	mv	a5,a4
ffffffe000001608:	fcf42623          	sw	a5,-52(s0)
ffffffe00000160c:	fcc42783          	lw	a5,-52(s0)
ffffffe000001610:	00078713          	mv	a4,a5
ffffffe000001614:	fd843683          	ld	a3,-40(s0)
ffffffe000001618:	fd043603          	ld	a2,-48(s0)
ffffffe00000161c:	fe043583          	ld	a1,-32(s0)
ffffffe000001620:	fe843503          	ld	a0,-24(s0)
ffffffe000001624:	ec1ff0ef          	jal	ra,ffffffe0000014e4 <mappages>
ffffffe000001628:	00050793          	mv	a5,a0
ffffffe00000162c:	00078863          	beqz	a5,ffffffe00000163c <kvmmap+0x58>
ffffffe000001630:	00002517          	auipc	a0,0x2
ffffffe000001634:	bf050513          	addi	a0,a0,-1040 # ffffffe000003220 <__func__.0+0x188>
ffffffe000001638:	6a8000ef          	jal	ra,ffffffe000001ce0 <panic>
ffffffe00000163c:	00000013          	nop
ffffffe000001640:	03813083          	ld	ra,56(sp)
ffffffe000001644:	03013403          	ld	s0,48(sp)
ffffffe000001648:	04010113          	addi	sp,sp,64
ffffffe00000164c:	00008067          	ret

ffffffe000001650 <main>:
ffffffe000001650:	fe010113          	addi	sp,sp,-32
ffffffe000001654:	00113c23          	sd	ra,24(sp)
ffffffe000001658:	00813823          	sd	s0,16(sp)
ffffffe00000165c:	02010413          	addi	s0,sp,32
ffffffe000001660:	fe042623          	sw	zero,-20(s0)
ffffffe000001664:	0100006f          	j	ffffffe000001674 <main+0x24>
ffffffe000001668:	fec42783          	lw	a5,-20(s0)
ffffffe00000166c:	0017879b          	addiw	a5,a5,1
ffffffe000001670:	fef42623          	sw	a5,-20(s0)
ffffffe000001674:	fec42783          	lw	a5,-20(s0)
ffffffe000001678:	0007871b          	sext.w	a4,a5
ffffffe00000167c:	500007b7          	lui	a5,0x50000
ffffffe000001680:	fef744e3          	blt	a4,a5,ffffffe000001668 <main+0x18>
ffffffe000001684:	00002517          	auipc	a0,0x2
ffffffe000001688:	ba450513          	addi	a0,a0,-1116 # ffffffe000003228 <__func__.0+0x190>
ffffffe00000168c:	088000ef          	jal	ra,ffffffe000001714 <puts>
ffffffe000001690:	fd1ff06f          	j	ffffffe000001660 <main+0x10>

ffffffe000001694 <exit>:
ffffffe000001694:	fe010113          	addi	sp,sp,-32
ffffffe000001698:	00113c23          	sd	ra,24(sp)
ffffffe00000169c:	00813823          	sd	s0,16(sp)
ffffffe0000016a0:	02010413          	addi	s0,sp,32
ffffffe0000016a4:	00050793          	mv	a5,a0
ffffffe0000016a8:	fef42623          	sw	a5,-20(s0)
ffffffe0000016ac:	00003797          	auipc	a5,0x3
ffffffe0000016b0:	6947b783          	ld	a5,1684(a5) # ffffffe000004d40 <_GLOBAL_OFFSET_TABLE_+0x58>
ffffffe0000016b4:	0007b783          	ld	a5,0(a5)
ffffffe0000016b8:	0087b783          	ld	a5,8(a5)
ffffffe0000016bc:	000780e7          	jalr	a5
ffffffe0000016c0:	0000006f          	j	ffffffe0000016c0 <exit+0x2c>

ffffffe0000016c4 <putchar>:
ffffffe0000016c4:	fe010113          	addi	sp,sp,-32
ffffffe0000016c8:	00113c23          	sd	ra,24(sp)
ffffffe0000016cc:	00813823          	sd	s0,16(sp)
ffffffe0000016d0:	02010413          	addi	s0,sp,32
ffffffe0000016d4:	00050793          	mv	a5,a0
ffffffe0000016d8:	fef42623          	sw	a5,-20(s0)
ffffffe0000016dc:	00003797          	auipc	a5,0x3
ffffffe0000016e0:	67c7b783          	ld	a5,1660(a5) # ffffffe000004d58 <_GLOBAL_OFFSET_TABLE_+0x70>
ffffffe0000016e4:	0007b783          	ld	a5,0(a5)
ffffffe0000016e8:	0107b703          	ld	a4,16(a5)
ffffffe0000016ec:	fec42783          	lw	a5,-20(s0)
ffffffe0000016f0:	0ff7f793          	andi	a5,a5,255
ffffffe0000016f4:	00078513          	mv	a0,a5
ffffffe0000016f8:	000700e7          	jalr	a4 # fffffffffe001000 <_end+0x1ffdff9000>
ffffffe0000016fc:	00100793          	li	a5,1
ffffffe000001700:	00078513          	mv	a0,a5
ffffffe000001704:	01813083          	ld	ra,24(sp)
ffffffe000001708:	01013403          	ld	s0,16(sp)
ffffffe00000170c:	02010113          	addi	sp,sp,32
ffffffe000001710:	00008067          	ret

ffffffe000001714 <puts>:
ffffffe000001714:	fe010113          	addi	sp,sp,-32
ffffffe000001718:	00113c23          	sd	ra,24(sp)
ffffffe00000171c:	00813823          	sd	s0,16(sp)
ffffffe000001720:	02010413          	addi	s0,sp,32
ffffffe000001724:	fea43423          	sd	a0,-24(s0)
ffffffe000001728:	0200006f          	j	ffffffe000001748 <puts+0x34>
ffffffe00000172c:	fe843783          	ld	a5,-24(s0)
ffffffe000001730:	00178713          	addi	a4,a5,1
ffffffe000001734:	fee43423          	sd	a4,-24(s0)
ffffffe000001738:	0007c783          	lbu	a5,0(a5)
ffffffe00000173c:	0007879b          	sext.w	a5,a5
ffffffe000001740:	00078513          	mv	a0,a5
ffffffe000001744:	f81ff0ef          	jal	ra,ffffffe0000016c4 <putchar>
ffffffe000001748:	fe843783          	ld	a5,-24(s0)
ffffffe00000174c:	0007c783          	lbu	a5,0(a5)
ffffffe000001750:	fc079ee3          	bnez	a5,ffffffe00000172c <puts+0x18>
ffffffe000001754:	00000013          	nop
ffffffe000001758:	00078513          	mv	a0,a5
ffffffe00000175c:	01813083          	ld	ra,24(sp)
ffffffe000001760:	01013403          	ld	s0,16(sp)
ffffffe000001764:	02010113          	addi	sp,sp,32
ffffffe000001768:	00008067          	ret

ffffffe00000176c <vprintfmt>:
ffffffe00000176c:	f2010113          	addi	sp,sp,-224
ffffffe000001770:	0c113c23          	sd	ra,216(sp)
ffffffe000001774:	0c813823          	sd	s0,208(sp)
ffffffe000001778:	0e010413          	addi	s0,sp,224
ffffffe00000177c:	f2a43c23          	sd	a0,-200(s0)
ffffffe000001780:	f2b43823          	sd	a1,-208(s0)
ffffffe000001784:	f2c43423          	sd	a2,-216(s0)
ffffffe000001788:	fe042623          	sw	zero,-20(s0)
ffffffe00000178c:	fe042423          	sw	zero,-24(s0)
ffffffe000001790:	fe043023          	sd	zero,-32(s0)
ffffffe000001794:	4a40006f          	j	ffffffe000001c38 <vprintfmt+0x4cc>
ffffffe000001798:	fec42783          	lw	a5,-20(s0)
ffffffe00000179c:	0007879b          	sext.w	a5,a5
ffffffe0000017a0:	44078063          	beqz	a5,ffffffe000001be0 <vprintfmt+0x474>
ffffffe0000017a4:	f3043783          	ld	a5,-208(s0)
ffffffe0000017a8:	0007c783          	lbu	a5,0(a5)
ffffffe0000017ac:	0007879b          	sext.w	a5,a5
ffffffe0000017b0:	f9d7869b          	addiw	a3,a5,-99
ffffffe0000017b4:	0006871b          	sext.w	a4,a3
ffffffe0000017b8:	01500793          	li	a5,21
ffffffe0000017bc:	46e7e663          	bltu	a5,a4,ffffffe000001c28 <vprintfmt+0x4bc>
ffffffe0000017c0:	02069793          	slli	a5,a3,0x20
ffffffe0000017c4:	0207d793          	srli	a5,a5,0x20
ffffffe0000017c8:	00279713          	slli	a4,a5,0x2
ffffffe0000017cc:	00002797          	auipc	a5,0x2
ffffffe0000017d0:	a6c78793          	addi	a5,a5,-1428 # ffffffe000003238 <__func__.0+0x1a0>
ffffffe0000017d4:	00f707b3          	add	a5,a4,a5
ffffffe0000017d8:	0007a783          	lw	a5,0(a5)
ffffffe0000017dc:	0007871b          	sext.w	a4,a5
ffffffe0000017e0:	00002797          	auipc	a5,0x2
ffffffe0000017e4:	a5878793          	addi	a5,a5,-1448 # ffffffe000003238 <__func__.0+0x1a0>
ffffffe0000017e8:	00f707b3          	add	a5,a4,a5
ffffffe0000017ec:	00078067          	jr	a5
ffffffe0000017f0:	00100793          	li	a5,1
ffffffe0000017f4:	fef42423          	sw	a5,-24(s0)
ffffffe0000017f8:	4340006f          	j	ffffffe000001c2c <vprintfmt+0x4c0>
ffffffe0000017fc:	fe842783          	lw	a5,-24(s0)
ffffffe000001800:	0007879b          	sext.w	a5,a5
ffffffe000001804:	00078c63          	beqz	a5,ffffffe00000181c <vprintfmt+0xb0>
ffffffe000001808:	f2843783          	ld	a5,-216(s0)
ffffffe00000180c:	00878713          	addi	a4,a5,8
ffffffe000001810:	f2e43423          	sd	a4,-216(s0)
ffffffe000001814:	0007b783          	ld	a5,0(a5)
ffffffe000001818:	0140006f          	j	ffffffe00000182c <vprintfmt+0xc0>
ffffffe00000181c:	f2843783          	ld	a5,-216(s0)
ffffffe000001820:	00878713          	addi	a4,a5,8
ffffffe000001824:	f2e43423          	sd	a4,-216(s0)
ffffffe000001828:	0007a783          	lw	a5,0(a5)
ffffffe00000182c:	f8f43c23          	sd	a5,-104(s0)
ffffffe000001830:	fe842783          	lw	a5,-24(s0)
ffffffe000001834:	0007879b          	sext.w	a5,a5
ffffffe000001838:	00078663          	beqz	a5,ffffffe000001844 <vprintfmt+0xd8>
ffffffe00000183c:	00f00793          	li	a5,15
ffffffe000001840:	0080006f          	j	ffffffe000001848 <vprintfmt+0xdc>
ffffffe000001844:	00700793          	li	a5,7
ffffffe000001848:	f8f42a23          	sw	a5,-108(s0)
ffffffe00000184c:	f9442783          	lw	a5,-108(s0)
ffffffe000001850:	fcf42e23          	sw	a5,-36(s0)
ffffffe000001854:	0880006f          	j	ffffffe0000018dc <vprintfmt+0x170>
ffffffe000001858:	fdc42783          	lw	a5,-36(s0)
ffffffe00000185c:	0027979b          	slliw	a5,a5,0x2
ffffffe000001860:	0007879b          	sext.w	a5,a5
ffffffe000001864:	f9843703          	ld	a4,-104(s0)
ffffffe000001868:	40f757b3          	sra	a5,a4,a5
ffffffe00000186c:	0007879b          	sext.w	a5,a5
ffffffe000001870:	00f7f793          	andi	a5,a5,15
ffffffe000001874:	f8f42823          	sw	a5,-112(s0)
ffffffe000001878:	f9042783          	lw	a5,-112(s0)
ffffffe00000187c:	0007871b          	sext.w	a4,a5
ffffffe000001880:	00900793          	li	a5,9
ffffffe000001884:	00e7cc63          	blt	a5,a4,ffffffe00000189c <vprintfmt+0x130>
ffffffe000001888:	f9042783          	lw	a5,-112(s0)
ffffffe00000188c:	0ff7f793          	andi	a5,a5,255
ffffffe000001890:	0307879b          	addiw	a5,a5,48
ffffffe000001894:	0ff7f793          	andi	a5,a5,255
ffffffe000001898:	0140006f          	j	ffffffe0000018ac <vprintfmt+0x140>
ffffffe00000189c:	f9042783          	lw	a5,-112(s0)
ffffffe0000018a0:	0ff7f793          	andi	a5,a5,255
ffffffe0000018a4:	0577879b          	addiw	a5,a5,87
ffffffe0000018a8:	0ff7f793          	andi	a5,a5,255
ffffffe0000018ac:	f8f407a3          	sb	a5,-113(s0)
ffffffe0000018b0:	f8f44783          	lbu	a5,-113(s0)
ffffffe0000018b4:	0007879b          	sext.w	a5,a5
ffffffe0000018b8:	f3843703          	ld	a4,-200(s0)
ffffffe0000018bc:	00078513          	mv	a0,a5
ffffffe0000018c0:	000700e7          	jalr	a4
ffffffe0000018c4:	fe043783          	ld	a5,-32(s0)
ffffffe0000018c8:	00178793          	addi	a5,a5,1
ffffffe0000018cc:	fef43023          	sd	a5,-32(s0)
ffffffe0000018d0:	fdc42783          	lw	a5,-36(s0)
ffffffe0000018d4:	fff7879b          	addiw	a5,a5,-1
ffffffe0000018d8:	fcf42e23          	sw	a5,-36(s0)
ffffffe0000018dc:	fdc42783          	lw	a5,-36(s0)
ffffffe0000018e0:	0007879b          	sext.w	a5,a5
ffffffe0000018e4:	f607dae3          	bgez	a5,ffffffe000001858 <vprintfmt+0xec>
ffffffe0000018e8:	fe042423          	sw	zero,-24(s0)
ffffffe0000018ec:	fe042623          	sw	zero,-20(s0)
ffffffe0000018f0:	33c0006f          	j	ffffffe000001c2c <vprintfmt+0x4c0>
ffffffe0000018f4:	fe842783          	lw	a5,-24(s0)
ffffffe0000018f8:	0007879b          	sext.w	a5,a5
ffffffe0000018fc:	00078c63          	beqz	a5,ffffffe000001914 <vprintfmt+0x1a8>
ffffffe000001900:	f2843783          	ld	a5,-216(s0)
ffffffe000001904:	00878713          	addi	a4,a5,8
ffffffe000001908:	f2e43423          	sd	a4,-216(s0)
ffffffe00000190c:	0007b783          	ld	a5,0(a5)
ffffffe000001910:	0140006f          	j	ffffffe000001924 <vprintfmt+0x1b8>
ffffffe000001914:	f2843783          	ld	a5,-216(s0)
ffffffe000001918:	00878713          	addi	a4,a5,8
ffffffe00000191c:	f2e43423          	sd	a4,-216(s0)
ffffffe000001920:	0007a783          	lw	a5,0(a5)
ffffffe000001924:	fcf43823          	sd	a5,-48(s0)
ffffffe000001928:	fd043783          	ld	a5,-48(s0)
ffffffe00000192c:	0207d463          	bgez	a5,ffffffe000001954 <vprintfmt+0x1e8>
ffffffe000001930:	fd043783          	ld	a5,-48(s0)
ffffffe000001934:	40f007b3          	neg	a5,a5
ffffffe000001938:	fcf43823          	sd	a5,-48(s0)
ffffffe00000193c:	f3843783          	ld	a5,-200(s0)
ffffffe000001940:	02d00513          	li	a0,45
ffffffe000001944:	000780e7          	jalr	a5
ffffffe000001948:	fe043783          	ld	a5,-32(s0)
ffffffe00000194c:	00178793          	addi	a5,a5,1
ffffffe000001950:	fef43023          	sd	a5,-32(s0)
ffffffe000001954:	fc042623          	sw	zero,-52(s0)
ffffffe000001958:	03000793          	li	a5,48
ffffffe00000195c:	f6f43023          	sd	a5,-160(s0)
ffffffe000001960:	f6043423          	sd	zero,-152(s0)
ffffffe000001964:	f6043823          	sd	zero,-144(s0)
ffffffe000001968:	f6040c23          	sb	zero,-136(s0)
ffffffe00000196c:	fd043783          	ld	a5,-48(s0)
ffffffe000001970:	fcf43023          	sd	a5,-64(s0)
ffffffe000001974:	0480006f          	j	ffffffe0000019bc <vprintfmt+0x250>
ffffffe000001978:	fc043703          	ld	a4,-64(s0)
ffffffe00000197c:	00a00793          	li	a5,10
ffffffe000001980:	02f767b3          	rem	a5,a4,a5
ffffffe000001984:	0ff7f793          	andi	a5,a5,255
ffffffe000001988:	0307879b          	addiw	a5,a5,48
ffffffe00000198c:	0ff7f713          	andi	a4,a5,255
ffffffe000001990:	fcc42783          	lw	a5,-52(s0)
ffffffe000001994:	ff040693          	addi	a3,s0,-16
ffffffe000001998:	00f687b3          	add	a5,a3,a5
ffffffe00000199c:	f6e78823          	sb	a4,-144(a5)
ffffffe0000019a0:	fc043703          	ld	a4,-64(s0)
ffffffe0000019a4:	00a00793          	li	a5,10
ffffffe0000019a8:	02f747b3          	div	a5,a4,a5
ffffffe0000019ac:	fcf43023          	sd	a5,-64(s0)
ffffffe0000019b0:	fcc42783          	lw	a5,-52(s0)
ffffffe0000019b4:	0017879b          	addiw	a5,a5,1
ffffffe0000019b8:	fcf42623          	sw	a5,-52(s0)
ffffffe0000019bc:	fc043783          	ld	a5,-64(s0)
ffffffe0000019c0:	fa079ce3          	bnez	a5,ffffffe000001978 <vprintfmt+0x20c>
ffffffe0000019c4:	fcc42783          	lw	a5,-52(s0)
ffffffe0000019c8:	faf42e23          	sw	a5,-68(s0)
ffffffe0000019cc:	0300006f          	j	ffffffe0000019fc <vprintfmt+0x290>
ffffffe0000019d0:	fbc42783          	lw	a5,-68(s0)
ffffffe0000019d4:	ff040713          	addi	a4,s0,-16
ffffffe0000019d8:	00f707b3          	add	a5,a4,a5
ffffffe0000019dc:	f707c783          	lbu	a5,-144(a5)
ffffffe0000019e0:	0007879b          	sext.w	a5,a5
ffffffe0000019e4:	f3843703          	ld	a4,-200(s0)
ffffffe0000019e8:	00078513          	mv	a0,a5
ffffffe0000019ec:	000700e7          	jalr	a4
ffffffe0000019f0:	fbc42783          	lw	a5,-68(s0)
ffffffe0000019f4:	fff7879b          	addiw	a5,a5,-1
ffffffe0000019f8:	faf42e23          	sw	a5,-68(s0)
ffffffe0000019fc:	fbc42783          	lw	a5,-68(s0)
ffffffe000001a00:	0007879b          	sext.w	a5,a5
ffffffe000001a04:	fc07d6e3          	bgez	a5,ffffffe0000019d0 <vprintfmt+0x264>
ffffffe000001a08:	fcc42783          	lw	a5,-52(s0)
ffffffe000001a0c:	0017879b          	addiw	a5,a5,1
ffffffe000001a10:	0007879b          	sext.w	a5,a5
ffffffe000001a14:	00078713          	mv	a4,a5
ffffffe000001a18:	fe043783          	ld	a5,-32(s0)
ffffffe000001a1c:	00e787b3          	add	a5,a5,a4
ffffffe000001a20:	fef43023          	sd	a5,-32(s0)
ffffffe000001a24:	fe042423          	sw	zero,-24(s0)
ffffffe000001a28:	fe042623          	sw	zero,-20(s0)
ffffffe000001a2c:	2000006f          	j	ffffffe000001c2c <vprintfmt+0x4c0>
ffffffe000001a30:	fe842783          	lw	a5,-24(s0)
ffffffe000001a34:	0007879b          	sext.w	a5,a5
ffffffe000001a38:	00078c63          	beqz	a5,ffffffe000001a50 <vprintfmt+0x2e4>
ffffffe000001a3c:	f2843783          	ld	a5,-216(s0)
ffffffe000001a40:	00878713          	addi	a4,a5,8
ffffffe000001a44:	f2e43423          	sd	a4,-216(s0)
ffffffe000001a48:	0007b783          	ld	a5,0(a5)
ffffffe000001a4c:	0140006f          	j	ffffffe000001a60 <vprintfmt+0x2f4>
ffffffe000001a50:	f2843783          	ld	a5,-216(s0)
ffffffe000001a54:	00878713          	addi	a4,a5,8
ffffffe000001a58:	f2e43423          	sd	a4,-216(s0)
ffffffe000001a5c:	0007a783          	lw	a5,0(a5)
ffffffe000001a60:	f8f43023          	sd	a5,-128(s0)
ffffffe000001a64:	fa042c23          	sw	zero,-72(s0)
ffffffe000001a68:	03000793          	li	a5,48
ffffffe000001a6c:	f4f43023          	sd	a5,-192(s0)
ffffffe000001a70:	f4043423          	sd	zero,-184(s0)
ffffffe000001a74:	f4043823          	sd	zero,-176(s0)
ffffffe000001a78:	f4040c23          	sb	zero,-168(s0)
ffffffe000001a7c:	f8043783          	ld	a5,-128(s0)
ffffffe000001a80:	faf43823          	sd	a5,-80(s0)
ffffffe000001a84:	0480006f          	j	ffffffe000001acc <vprintfmt+0x360>
ffffffe000001a88:	fb043703          	ld	a4,-80(s0)
ffffffe000001a8c:	00a00793          	li	a5,10
ffffffe000001a90:	02f767b3          	rem	a5,a4,a5
ffffffe000001a94:	0ff7f793          	andi	a5,a5,255
ffffffe000001a98:	0307879b          	addiw	a5,a5,48
ffffffe000001a9c:	0ff7f713          	andi	a4,a5,255
ffffffe000001aa0:	fb842783          	lw	a5,-72(s0)
ffffffe000001aa4:	ff040693          	addi	a3,s0,-16
ffffffe000001aa8:	00f687b3          	add	a5,a3,a5
ffffffe000001aac:	f4e78823          	sb	a4,-176(a5)
ffffffe000001ab0:	fb043703          	ld	a4,-80(s0)
ffffffe000001ab4:	00a00793          	li	a5,10
ffffffe000001ab8:	02f747b3          	div	a5,a4,a5
ffffffe000001abc:	faf43823          	sd	a5,-80(s0)
ffffffe000001ac0:	fb842783          	lw	a5,-72(s0)
ffffffe000001ac4:	0017879b          	addiw	a5,a5,1
ffffffe000001ac8:	faf42c23          	sw	a5,-72(s0)
ffffffe000001acc:	fb043783          	ld	a5,-80(s0)
ffffffe000001ad0:	fa079ce3          	bnez	a5,ffffffe000001a88 <vprintfmt+0x31c>
ffffffe000001ad4:	fb842783          	lw	a5,-72(s0)
ffffffe000001ad8:	faf42623          	sw	a5,-84(s0)
ffffffe000001adc:	0300006f          	j	ffffffe000001b0c <vprintfmt+0x3a0>
ffffffe000001ae0:	fac42783          	lw	a5,-84(s0)
ffffffe000001ae4:	ff040713          	addi	a4,s0,-16
ffffffe000001ae8:	00f707b3          	add	a5,a4,a5
ffffffe000001aec:	f507c783          	lbu	a5,-176(a5)
ffffffe000001af0:	0007879b          	sext.w	a5,a5
ffffffe000001af4:	f3843703          	ld	a4,-200(s0)
ffffffe000001af8:	00078513          	mv	a0,a5
ffffffe000001afc:	000700e7          	jalr	a4
ffffffe000001b00:	fac42783          	lw	a5,-84(s0)
ffffffe000001b04:	fff7879b          	addiw	a5,a5,-1
ffffffe000001b08:	faf42623          	sw	a5,-84(s0)
ffffffe000001b0c:	fac42783          	lw	a5,-84(s0)
ffffffe000001b10:	0007879b          	sext.w	a5,a5
ffffffe000001b14:	fc07d6e3          	bgez	a5,ffffffe000001ae0 <vprintfmt+0x374>
ffffffe000001b18:	fb842783          	lw	a5,-72(s0)
ffffffe000001b1c:	0017879b          	addiw	a5,a5,1
ffffffe000001b20:	0007879b          	sext.w	a5,a5
ffffffe000001b24:	00078713          	mv	a4,a5
ffffffe000001b28:	fe043783          	ld	a5,-32(s0)
ffffffe000001b2c:	00e787b3          	add	a5,a5,a4
ffffffe000001b30:	fef43023          	sd	a5,-32(s0)
ffffffe000001b34:	fe042423          	sw	zero,-24(s0)
ffffffe000001b38:	fe042623          	sw	zero,-20(s0)
ffffffe000001b3c:	0f00006f          	j	ffffffe000001c2c <vprintfmt+0x4c0>
ffffffe000001b40:	f2843783          	ld	a5,-216(s0)
ffffffe000001b44:	00878713          	addi	a4,a5,8
ffffffe000001b48:	f2e43423          	sd	a4,-216(s0)
ffffffe000001b4c:	0007b783          	ld	a5,0(a5)
ffffffe000001b50:	faf43023          	sd	a5,-96(s0)
ffffffe000001b54:	0340006f          	j	ffffffe000001b88 <vprintfmt+0x41c>
ffffffe000001b58:	fa043783          	ld	a5,-96(s0)
ffffffe000001b5c:	0007c783          	lbu	a5,0(a5)
ffffffe000001b60:	0007879b          	sext.w	a5,a5
ffffffe000001b64:	f3843703          	ld	a4,-200(s0)
ffffffe000001b68:	00078513          	mv	a0,a5
ffffffe000001b6c:	000700e7          	jalr	a4
ffffffe000001b70:	fe043783          	ld	a5,-32(s0)
ffffffe000001b74:	00178793          	addi	a5,a5,1
ffffffe000001b78:	fef43023          	sd	a5,-32(s0)
ffffffe000001b7c:	fa043783          	ld	a5,-96(s0)
ffffffe000001b80:	00178793          	addi	a5,a5,1
ffffffe000001b84:	faf43023          	sd	a5,-96(s0)
ffffffe000001b88:	fa043783          	ld	a5,-96(s0)
ffffffe000001b8c:	0007c783          	lbu	a5,0(a5)
ffffffe000001b90:	fc0794e3          	bnez	a5,ffffffe000001b58 <vprintfmt+0x3ec>
ffffffe000001b94:	fe042423          	sw	zero,-24(s0)
ffffffe000001b98:	fe042623          	sw	zero,-20(s0)
ffffffe000001b9c:	0900006f          	j	ffffffe000001c2c <vprintfmt+0x4c0>
ffffffe000001ba0:	f2843783          	ld	a5,-216(s0)
ffffffe000001ba4:	00878713          	addi	a4,a5,8
ffffffe000001ba8:	f2e43423          	sd	a4,-216(s0)
ffffffe000001bac:	0007a783          	lw	a5,0(a5)
ffffffe000001bb0:	f6f40fa3          	sb	a5,-129(s0)
ffffffe000001bb4:	f7f44783          	lbu	a5,-129(s0)
ffffffe000001bb8:	0007879b          	sext.w	a5,a5
ffffffe000001bbc:	f3843703          	ld	a4,-200(s0)
ffffffe000001bc0:	00078513          	mv	a0,a5
ffffffe000001bc4:	000700e7          	jalr	a4
ffffffe000001bc8:	fe043783          	ld	a5,-32(s0)
ffffffe000001bcc:	00178793          	addi	a5,a5,1
ffffffe000001bd0:	fef43023          	sd	a5,-32(s0)
ffffffe000001bd4:	fe042423          	sw	zero,-24(s0)
ffffffe000001bd8:	fe042623          	sw	zero,-20(s0)
ffffffe000001bdc:	0500006f          	j	ffffffe000001c2c <vprintfmt+0x4c0>
ffffffe000001be0:	f3043783          	ld	a5,-208(s0)
ffffffe000001be4:	0007c783          	lbu	a5,0(a5)
ffffffe000001be8:	00078713          	mv	a4,a5
ffffffe000001bec:	02500793          	li	a5,37
ffffffe000001bf0:	00f71863          	bne	a4,a5,ffffffe000001c00 <vprintfmt+0x494>
ffffffe000001bf4:	00100793          	li	a5,1
ffffffe000001bf8:	fef42623          	sw	a5,-20(s0)
ffffffe000001bfc:	0300006f          	j	ffffffe000001c2c <vprintfmt+0x4c0>
ffffffe000001c00:	f3043783          	ld	a5,-208(s0)
ffffffe000001c04:	0007c783          	lbu	a5,0(a5)
ffffffe000001c08:	0007879b          	sext.w	a5,a5
ffffffe000001c0c:	f3843703          	ld	a4,-200(s0)
ffffffe000001c10:	00078513          	mv	a0,a5
ffffffe000001c14:	000700e7          	jalr	a4
ffffffe000001c18:	fe043783          	ld	a5,-32(s0)
ffffffe000001c1c:	00178793          	addi	a5,a5,1
ffffffe000001c20:	fef43023          	sd	a5,-32(s0)
ffffffe000001c24:	0080006f          	j	ffffffe000001c2c <vprintfmt+0x4c0>
ffffffe000001c28:	00000013          	nop
ffffffe000001c2c:	f3043783          	ld	a5,-208(s0)
ffffffe000001c30:	00178793          	addi	a5,a5,1
ffffffe000001c34:	f2f43823          	sd	a5,-208(s0)
ffffffe000001c38:	f3043783          	ld	a5,-208(s0)
ffffffe000001c3c:	0007c783          	lbu	a5,0(a5)
ffffffe000001c40:	b4079ce3          	bnez	a5,ffffffe000001798 <vprintfmt+0x2c>
ffffffe000001c44:	fe043783          	ld	a5,-32(s0)
ffffffe000001c48:	0007879b          	sext.w	a5,a5
ffffffe000001c4c:	00078513          	mv	a0,a5
ffffffe000001c50:	0d813083          	ld	ra,216(sp)
ffffffe000001c54:	0d013403          	ld	s0,208(sp)
ffffffe000001c58:	0e010113          	addi	sp,sp,224
ffffffe000001c5c:	00008067          	ret

ffffffe000001c60 <printf>:
ffffffe000001c60:	f9010113          	addi	sp,sp,-112
ffffffe000001c64:	02113423          	sd	ra,40(sp)
ffffffe000001c68:	02813023          	sd	s0,32(sp)
ffffffe000001c6c:	03010413          	addi	s0,sp,48
ffffffe000001c70:	fca43c23          	sd	a0,-40(s0)
ffffffe000001c74:	00b43423          	sd	a1,8(s0)
ffffffe000001c78:	00c43823          	sd	a2,16(s0)
ffffffe000001c7c:	00d43c23          	sd	a3,24(s0)
ffffffe000001c80:	02e43023          	sd	a4,32(s0)
ffffffe000001c84:	02f43423          	sd	a5,40(s0)
ffffffe000001c88:	03043823          	sd	a6,48(s0)
ffffffe000001c8c:	03143c23          	sd	a7,56(s0)
ffffffe000001c90:	fe042623          	sw	zero,-20(s0)
ffffffe000001c94:	04040793          	addi	a5,s0,64
ffffffe000001c98:	fcf43823          	sd	a5,-48(s0)
ffffffe000001c9c:	fd043783          	ld	a5,-48(s0)
ffffffe000001ca0:	fc878793          	addi	a5,a5,-56
ffffffe000001ca4:	fef43023          	sd	a5,-32(s0)
ffffffe000001ca8:	fe043783          	ld	a5,-32(s0)
ffffffe000001cac:	00078613          	mv	a2,a5
ffffffe000001cb0:	fd843583          	ld	a1,-40(s0)
ffffffe000001cb4:	00000517          	auipc	a0,0x0
ffffffe000001cb8:	a1050513          	addi	a0,a0,-1520 # ffffffe0000016c4 <putchar>
ffffffe000001cbc:	ab1ff0ef          	jal	ra,ffffffe00000176c <vprintfmt>
ffffffe000001cc0:	00050793          	mv	a5,a0
ffffffe000001cc4:	fef42623          	sw	a5,-20(s0)
ffffffe000001cc8:	fec42783          	lw	a5,-20(s0)
ffffffe000001ccc:	00078513          	mv	a0,a5
ffffffe000001cd0:	02813083          	ld	ra,40(sp)
ffffffe000001cd4:	02013403          	ld	s0,32(sp)
ffffffe000001cd8:	07010113          	addi	sp,sp,112
ffffffe000001cdc:	00008067          	ret

ffffffe000001ce0 <panic>:
ffffffe000001ce0:	fe010113          	addi	sp,sp,-32
ffffffe000001ce4:	00113c23          	sd	ra,24(sp)
ffffffe000001ce8:	00813823          	sd	s0,16(sp)
ffffffe000001cec:	02010413          	addi	s0,sp,32
ffffffe000001cf0:	fea43423          	sd	a0,-24(s0)
ffffffe000001cf4:	00001517          	auipc	a0,0x1
ffffffe000001cf8:	59c50513          	addi	a0,a0,1436 # ffffffe000003290 <__func__.0+0x1f8>
ffffffe000001cfc:	f65ff0ef          	jal	ra,ffffffe000001c60 <printf>
ffffffe000001d00:	fe843503          	ld	a0,-24(s0)
ffffffe000001d04:	f5dff0ef          	jal	ra,ffffffe000001c60 <printf>
ffffffe000001d08:	00001517          	auipc	a0,0x1
ffffffe000001d0c:	59050513          	addi	a0,a0,1424 # ffffffe000003298 <__func__.0+0x200>
ffffffe000001d10:	f51ff0ef          	jal	ra,ffffffe000001c60 <printf>
ffffffe000001d14:	00000513          	li	a0,0
ffffffe000001d18:	97dff0ef          	jal	ra,ffffffe000001694 <exit>

ffffffe000001d1c <rand>:
ffffffe000001d1c:	fe010113          	addi	sp,sp,-32
ffffffe000001d20:	00813c23          	sd	s0,24(sp)
ffffffe000001d24:	02010413          	addi	s0,sp,32
ffffffe000001d28:	00003797          	auipc	a5,0x3
ffffffe000001d2c:	50878793          	addi	a5,a5,1288 # ffffffe000005230 <initialize>
ffffffe000001d30:	0007a783          	lw	a5,0(a5)
ffffffe000001d34:	1e079463          	bnez	a5,ffffffe000001f1c <rand+0x200>
ffffffe000001d38:	00003797          	auipc	a5,0x3
ffffffe000001d3c:	50078793          	addi	a5,a5,1280 # ffffffe000005238 <r>
ffffffe000001d40:	00d00713          	li	a4,13
ffffffe000001d44:	00e7a023          	sw	a4,0(a5)
ffffffe000001d48:	00100793          	li	a5,1
ffffffe000001d4c:	fef42623          	sw	a5,-20(s0)
ffffffe000001d50:	0c40006f          	j	ffffffe000001e14 <rand+0xf8>
ffffffe000001d54:	fec42783          	lw	a5,-20(s0)
ffffffe000001d58:	fff7879b          	addiw	a5,a5,-1
ffffffe000001d5c:	0007879b          	sext.w	a5,a5
ffffffe000001d60:	00003717          	auipc	a4,0x3
ffffffe000001d64:	4d870713          	addi	a4,a4,1240 # ffffffe000005238 <r>
ffffffe000001d68:	00279793          	slli	a5,a5,0x2
ffffffe000001d6c:	00f707b3          	add	a5,a4,a5
ffffffe000001d70:	0007a783          	lw	a5,0(a5)
ffffffe000001d74:	00078713          	mv	a4,a5
ffffffe000001d78:	000047b7          	lui	a5,0x4
ffffffe000001d7c:	1a778793          	addi	a5,a5,423 # 41a7 <reg_size+0x419f>
ffffffe000001d80:	02f70733          	mul	a4,a4,a5
ffffffe000001d84:	800007b7          	lui	a5,0x80000
ffffffe000001d88:	fff7c793          	not	a5,a5
ffffffe000001d8c:	02f767b3          	rem	a5,a4,a5
ffffffe000001d90:	0007871b          	sext.w	a4,a5
ffffffe000001d94:	00003697          	auipc	a3,0x3
ffffffe000001d98:	4a468693          	addi	a3,a3,1188 # ffffffe000005238 <r>
ffffffe000001d9c:	fec42783          	lw	a5,-20(s0)
ffffffe000001da0:	00279793          	slli	a5,a5,0x2
ffffffe000001da4:	00f687b3          	add	a5,a3,a5
ffffffe000001da8:	00e7a023          	sw	a4,0(a5) # ffffffff80000000 <_end+0x1f7fff8000>
ffffffe000001dac:	00003717          	auipc	a4,0x3
ffffffe000001db0:	48c70713          	addi	a4,a4,1164 # ffffffe000005238 <r>
ffffffe000001db4:	fec42783          	lw	a5,-20(s0)
ffffffe000001db8:	00279793          	slli	a5,a5,0x2
ffffffe000001dbc:	00f707b3          	add	a5,a4,a5
ffffffe000001dc0:	0007a783          	lw	a5,0(a5)
ffffffe000001dc4:	0407d263          	bgez	a5,ffffffe000001e08 <rand+0xec>
ffffffe000001dc8:	00003717          	auipc	a4,0x3
ffffffe000001dcc:	47070713          	addi	a4,a4,1136 # ffffffe000005238 <r>
ffffffe000001dd0:	fec42783          	lw	a5,-20(s0)
ffffffe000001dd4:	00279793          	slli	a5,a5,0x2
ffffffe000001dd8:	00f707b3          	add	a5,a4,a5
ffffffe000001ddc:	0007a703          	lw	a4,0(a5)
ffffffe000001de0:	800007b7          	lui	a5,0x80000
ffffffe000001de4:	fff7c793          	not	a5,a5
ffffffe000001de8:	00f707bb          	addw	a5,a4,a5
ffffffe000001dec:	0007871b          	sext.w	a4,a5
ffffffe000001df0:	00003697          	auipc	a3,0x3
ffffffe000001df4:	44868693          	addi	a3,a3,1096 # ffffffe000005238 <r>
ffffffe000001df8:	fec42783          	lw	a5,-20(s0)
ffffffe000001dfc:	00279793          	slli	a5,a5,0x2
ffffffe000001e00:	00f687b3          	add	a5,a3,a5
ffffffe000001e04:	00e7a023          	sw	a4,0(a5) # ffffffff80000000 <_end+0x1f7fff8000>
ffffffe000001e08:	fec42783          	lw	a5,-20(s0)
ffffffe000001e0c:	0017879b          	addiw	a5,a5,1
ffffffe000001e10:	fef42623          	sw	a5,-20(s0)
ffffffe000001e14:	fec42783          	lw	a5,-20(s0)
ffffffe000001e18:	0007871b          	sext.w	a4,a5
ffffffe000001e1c:	01e00793          	li	a5,30
ffffffe000001e20:	f2e7dae3          	bge	a5,a4,ffffffe000001d54 <rand+0x38>
ffffffe000001e24:	01f00793          	li	a5,31
ffffffe000001e28:	fef42623          	sw	a5,-20(s0)
ffffffe000001e2c:	0480006f          	j	ffffffe000001e74 <rand+0x158>
ffffffe000001e30:	fec42783          	lw	a5,-20(s0)
ffffffe000001e34:	fe17879b          	addiw	a5,a5,-31
ffffffe000001e38:	0007879b          	sext.w	a5,a5
ffffffe000001e3c:	00003717          	auipc	a4,0x3
ffffffe000001e40:	3fc70713          	addi	a4,a4,1020 # ffffffe000005238 <r>
ffffffe000001e44:	00279793          	slli	a5,a5,0x2
ffffffe000001e48:	00f707b3          	add	a5,a4,a5
ffffffe000001e4c:	0007a703          	lw	a4,0(a5)
ffffffe000001e50:	00003697          	auipc	a3,0x3
ffffffe000001e54:	3e868693          	addi	a3,a3,1000 # ffffffe000005238 <r>
ffffffe000001e58:	fec42783          	lw	a5,-20(s0)
ffffffe000001e5c:	00279793          	slli	a5,a5,0x2
ffffffe000001e60:	00f687b3          	add	a5,a3,a5
ffffffe000001e64:	00e7a023          	sw	a4,0(a5)
ffffffe000001e68:	fec42783          	lw	a5,-20(s0)
ffffffe000001e6c:	0017879b          	addiw	a5,a5,1
ffffffe000001e70:	fef42623          	sw	a5,-20(s0)
ffffffe000001e74:	fec42783          	lw	a5,-20(s0)
ffffffe000001e78:	0007871b          	sext.w	a4,a5
ffffffe000001e7c:	02100793          	li	a5,33
ffffffe000001e80:	fae7d8e3          	bge	a5,a4,ffffffe000001e30 <rand+0x114>
ffffffe000001e84:	02200793          	li	a5,34
ffffffe000001e88:	fef42623          	sw	a5,-20(s0)
ffffffe000001e8c:	0700006f          	j	ffffffe000001efc <rand+0x1e0>
ffffffe000001e90:	fec42783          	lw	a5,-20(s0)
ffffffe000001e94:	fe17879b          	addiw	a5,a5,-31
ffffffe000001e98:	0007879b          	sext.w	a5,a5
ffffffe000001e9c:	00003717          	auipc	a4,0x3
ffffffe000001ea0:	39c70713          	addi	a4,a4,924 # ffffffe000005238 <r>
ffffffe000001ea4:	00279793          	slli	a5,a5,0x2
ffffffe000001ea8:	00f707b3          	add	a5,a4,a5
ffffffe000001eac:	0007a703          	lw	a4,0(a5)
ffffffe000001eb0:	fec42783          	lw	a5,-20(s0)
ffffffe000001eb4:	ffd7879b          	addiw	a5,a5,-3
ffffffe000001eb8:	0007879b          	sext.w	a5,a5
ffffffe000001ebc:	00003697          	auipc	a3,0x3
ffffffe000001ec0:	37c68693          	addi	a3,a3,892 # ffffffe000005238 <r>
ffffffe000001ec4:	00279793          	slli	a5,a5,0x2
ffffffe000001ec8:	00f687b3          	add	a5,a3,a5
ffffffe000001ecc:	0007a783          	lw	a5,0(a5)
ffffffe000001ed0:	00f707bb          	addw	a5,a4,a5
ffffffe000001ed4:	0007871b          	sext.w	a4,a5
ffffffe000001ed8:	00003697          	auipc	a3,0x3
ffffffe000001edc:	36068693          	addi	a3,a3,864 # ffffffe000005238 <r>
ffffffe000001ee0:	fec42783          	lw	a5,-20(s0)
ffffffe000001ee4:	00279793          	slli	a5,a5,0x2
ffffffe000001ee8:	00f687b3          	add	a5,a3,a5
ffffffe000001eec:	00e7a023          	sw	a4,0(a5)
ffffffe000001ef0:	fec42783          	lw	a5,-20(s0)
ffffffe000001ef4:	0017879b          	addiw	a5,a5,1
ffffffe000001ef8:	fef42623          	sw	a5,-20(s0)
ffffffe000001efc:	fec42783          	lw	a5,-20(s0)
ffffffe000001f00:	0007871b          	sext.w	a4,a5
ffffffe000001f04:	15700793          	li	a5,343
ffffffe000001f08:	f8e7d4e3          	bge	a5,a4,ffffffe000001e90 <rand+0x174>
ffffffe000001f0c:	00003797          	auipc	a5,0x3
ffffffe000001f10:	32478793          	addi	a5,a5,804 # ffffffe000005230 <initialize>
ffffffe000001f14:	00100713          	li	a4,1
ffffffe000001f18:	00e7a023          	sw	a4,0(a5)
ffffffe000001f1c:	00004797          	auipc	a5,0x4
ffffffe000001f20:	2bc78793          	addi	a5,a5,700 # ffffffe0000061d8 <t>
ffffffe000001f24:	0007a783          	lw	a5,0(a5)
ffffffe000001f28:	00078713          	mv	a4,a5
ffffffe000001f2c:	29000793          	li	a5,656
ffffffe000001f30:	02f767bb          	remw	a5,a4,a5
ffffffe000001f34:	0007871b          	sext.w	a4,a5
ffffffe000001f38:	00004797          	auipc	a5,0x4
ffffffe000001f3c:	2a078793          	addi	a5,a5,672 # ffffffe0000061d8 <t>
ffffffe000001f40:	00e7a023          	sw	a4,0(a5)
ffffffe000001f44:	00004797          	auipc	a5,0x4
ffffffe000001f48:	29478793          	addi	a5,a5,660 # ffffffe0000061d8 <t>
ffffffe000001f4c:	0007a783          	lw	a5,0(a5)
ffffffe000001f50:	1397879b          	addiw	a5,a5,313
ffffffe000001f54:	0007879b          	sext.w	a5,a5
ffffffe000001f58:	00003717          	auipc	a4,0x3
ffffffe000001f5c:	2e070713          	addi	a4,a4,736 # ffffffe000005238 <r>
ffffffe000001f60:	00279793          	slli	a5,a5,0x2
ffffffe000001f64:	00f707b3          	add	a5,a4,a5
ffffffe000001f68:	0007a683          	lw	a3,0(a5)
ffffffe000001f6c:	00004797          	auipc	a5,0x4
ffffffe000001f70:	26c78793          	addi	a5,a5,620 # ffffffe0000061d8 <t>
ffffffe000001f74:	0007a783          	lw	a5,0(a5)
ffffffe000001f78:	1557879b          	addiw	a5,a5,341
ffffffe000001f7c:	0007879b          	sext.w	a5,a5
ffffffe000001f80:	00003717          	auipc	a4,0x3
ffffffe000001f84:	2b870713          	addi	a4,a4,696 # ffffffe000005238 <r>
ffffffe000001f88:	00279793          	slli	a5,a5,0x2
ffffffe000001f8c:	00f707b3          	add	a5,a4,a5
ffffffe000001f90:	0007a703          	lw	a4,0(a5)
ffffffe000001f94:	00004797          	auipc	a5,0x4
ffffffe000001f98:	24478793          	addi	a5,a5,580 # ffffffe0000061d8 <t>
ffffffe000001f9c:	0007a783          	lw	a5,0(a5)
ffffffe000001fa0:	1587879b          	addiw	a5,a5,344
ffffffe000001fa4:	0007879b          	sext.w	a5,a5
ffffffe000001fa8:	00e6873b          	addw	a4,a3,a4
ffffffe000001fac:	0007071b          	sext.w	a4,a4
ffffffe000001fb0:	00003697          	auipc	a3,0x3
ffffffe000001fb4:	28868693          	addi	a3,a3,648 # ffffffe000005238 <r>
ffffffe000001fb8:	00279793          	slli	a5,a5,0x2
ffffffe000001fbc:	00f687b3          	add	a5,a3,a5
ffffffe000001fc0:	00e7a023          	sw	a4,0(a5)
ffffffe000001fc4:	00004797          	auipc	a5,0x4
ffffffe000001fc8:	21478793          	addi	a5,a5,532 # ffffffe0000061d8 <t>
ffffffe000001fcc:	0007a783          	lw	a5,0(a5)
ffffffe000001fd0:	0017879b          	addiw	a5,a5,1
ffffffe000001fd4:	0007871b          	sext.w	a4,a5
ffffffe000001fd8:	00004797          	auipc	a5,0x4
ffffffe000001fdc:	20078793          	addi	a5,a5,512 # ffffffe0000061d8 <t>
ffffffe000001fe0:	00e7a023          	sw	a4,0(a5)
ffffffe000001fe4:	00004797          	auipc	a5,0x4
ffffffe000001fe8:	1f478793          	addi	a5,a5,500 # ffffffe0000061d8 <t>
ffffffe000001fec:	0007a783          	lw	a5,0(a5)
ffffffe000001ff0:	1577879b          	addiw	a5,a5,343
ffffffe000001ff4:	0007879b          	sext.w	a5,a5
ffffffe000001ff8:	00003717          	auipc	a4,0x3
ffffffe000001ffc:	24070713          	addi	a4,a4,576 # ffffffe000005238 <r>
ffffffe000002000:	00279793          	slli	a5,a5,0x2
ffffffe000002004:	00f707b3          	add	a5,a4,a5
ffffffe000002008:	0007a783          	lw	a5,0(a5)
ffffffe00000200c:	0007879b          	sext.w	a5,a5
ffffffe000002010:	00078713          	mv	a4,a5
ffffffe000002014:	00500793          	li	a5,5
ffffffe000002018:	02f777bb          	remuw	a5,a4,a5
ffffffe00000201c:	0007879b          	sext.w	a5,a5
ffffffe000002020:	0017879b          	addiw	a5,a5,1
ffffffe000002024:	0007879b          	sext.w	a5,a5
ffffffe000002028:	00078513          	mv	a0,a5
ffffffe00000202c:	01813403          	ld	s0,24(sp)
ffffffe000002030:	02010113          	addi	sp,sp,32
ffffffe000002034:	00008067          	ret

ffffffe000002038 <memset>:
ffffffe000002038:	fd010113          	addi	sp,sp,-48
ffffffe00000203c:	02813423          	sd	s0,40(sp)
ffffffe000002040:	03010413          	addi	s0,sp,48
ffffffe000002044:	fca43c23          	sd	a0,-40(s0)
ffffffe000002048:	00058793          	mv	a5,a1
ffffffe00000204c:	00060713          	mv	a4,a2
ffffffe000002050:	fcf42a23          	sw	a5,-44(s0)
ffffffe000002054:	00070793          	mv	a5,a4
ffffffe000002058:	fcf42823          	sw	a5,-48(s0)
ffffffe00000205c:	fd843783          	ld	a5,-40(s0)
ffffffe000002060:	fef43023          	sd	a5,-32(s0)
ffffffe000002064:	fe042623          	sw	zero,-20(s0)
ffffffe000002068:	0280006f          	j	ffffffe000002090 <memset+0x58>
ffffffe00000206c:	fec42783          	lw	a5,-20(s0)
ffffffe000002070:	fe043703          	ld	a4,-32(s0)
ffffffe000002074:	00f707b3          	add	a5,a4,a5
ffffffe000002078:	fd442703          	lw	a4,-44(s0)
ffffffe00000207c:	0ff77713          	andi	a4,a4,255
ffffffe000002080:	00e78023          	sb	a4,0(a5)
ffffffe000002084:	fec42783          	lw	a5,-20(s0)
ffffffe000002088:	0017879b          	addiw	a5,a5,1
ffffffe00000208c:	fef42623          	sw	a5,-20(s0)
ffffffe000002090:	fec42703          	lw	a4,-20(s0)
ffffffe000002094:	fd042783          	lw	a5,-48(s0)
ffffffe000002098:	0007879b          	sext.w	a5,a5
ffffffe00000209c:	fcf768e3          	bltu	a4,a5,ffffffe00000206c <memset+0x34>
ffffffe0000020a0:	fd843783          	ld	a5,-40(s0)
ffffffe0000020a4:	00078513          	mv	a0,a5
ffffffe0000020a8:	02813403          	ld	s0,40(sp)
ffffffe0000020ac:	03010113          	addi	sp,sp,48
ffffffe0000020b0:	00008067          	ret

ffffffe0000020b4 <register_console>:
ffffffe0000020b4:	fe010113          	addi	sp,sp,-32
ffffffe0000020b8:	00113c23          	sd	ra,24(sp)
ffffffe0000020bc:	00813823          	sd	s0,16(sp)
ffffffe0000020c0:	02010413          	addi	s0,sp,32
ffffffe0000020c4:	fea43423          	sd	a0,-24(s0)
ffffffe0000020c8:	00003797          	auipc	a5,0x3
ffffffe0000020cc:	bc078793          	addi	a5,a5,-1088 # ffffffe000004c88 <console_dev>
ffffffe0000020d0:	fe843703          	ld	a4,-24(s0)
ffffffe0000020d4:	00e7b023          	sd	a4,0(a5)
ffffffe0000020d8:	fe843783          	ld	a5,-24(s0)
ffffffe0000020dc:	0007b783          	ld	a5,0(a5)
ffffffe0000020e0:	00078863          	beqz	a5,ffffffe0000020f0 <register_console+0x3c>
ffffffe0000020e4:	fe843783          	ld	a5,-24(s0)
ffffffe0000020e8:	0007b783          	ld	a5,0(a5)
ffffffe0000020ec:	000780e7          	jalr	a5
ffffffe0000020f0:	00000013          	nop
ffffffe0000020f4:	01813083          	ld	ra,24(sp)
ffffffe0000020f8:	01013403          	ld	s0,16(sp)
ffffffe0000020fc:	02010113          	addi	sp,sp,32
ffffffe000002100:	00008067          	ret

ffffffe000002104 <register_poweroff>:
ffffffe000002104:	fe010113          	addi	sp,sp,-32
ffffffe000002108:	00113c23          	sd	ra,24(sp)
ffffffe00000210c:	00813823          	sd	s0,16(sp)
ffffffe000002110:	02010413          	addi	s0,sp,32
ffffffe000002114:	fea43423          	sd	a0,-24(s0)
ffffffe000002118:	00003797          	auipc	a5,0x3
ffffffe00000211c:	b7878793          	addi	a5,a5,-1160 # ffffffe000004c90 <poweroff_dev>
ffffffe000002120:	fe843703          	ld	a4,-24(s0)
ffffffe000002124:	00e7b023          	sd	a4,0(a5)
ffffffe000002128:	fe843783          	ld	a5,-24(s0)
ffffffe00000212c:	0007b783          	ld	a5,0(a5)
ffffffe000002130:	00078863          	beqz	a5,ffffffe000002140 <register_poweroff+0x3c>
ffffffe000002134:	fe843783          	ld	a5,-24(s0)
ffffffe000002138:	0007b783          	ld	a5,0(a5)
ffffffe00000213c:	000780e7          	jalr	a5
ffffffe000002140:	00000013          	nop
ffffffe000002144:	01813083          	ld	ra,24(sp)
ffffffe000002148:	01013403          	ld	s0,16(sp)
ffffffe00000214c:	02010113          	addi	sp,sp,32
ffffffe000002150:	00008067          	ret

ffffffe000002154 <default_getchar>:
ffffffe000002154:	ff010113          	addi	sp,sp,-16
ffffffe000002158:	00813423          	sd	s0,8(sp)
ffffffe00000215c:	01010413          	addi	s0,sp,16
ffffffe000002160:	00100073          	ebreak
ffffffe000002164:	00000793          	li	a5,0
ffffffe000002168:	00078513          	mv	a0,a5
ffffffe00000216c:	00813403          	ld	s0,8(sp)
ffffffe000002170:	01010113          	addi	sp,sp,16
ffffffe000002174:	00008067          	ret

ffffffe000002178 <default_putchar>:
ffffffe000002178:	fe010113          	addi	sp,sp,-32
ffffffe00000217c:	00813c23          	sd	s0,24(sp)
ffffffe000002180:	02010413          	addi	s0,sp,32
ffffffe000002184:	00050793          	mv	a5,a0
ffffffe000002188:	fef407a3          	sb	a5,-17(s0)
ffffffe00000218c:	00100073          	ebreak
ffffffe000002190:	00000013          	nop
ffffffe000002194:	01813403          	ld	s0,24(sp)
ffffffe000002198:	02010113          	addi	sp,sp,32
ffffffe00000219c:	00008067          	ret

ffffffe0000021a0 <default_poweroff>:
ffffffe0000021a0:	fe010113          	addi	sp,sp,-32
ffffffe0000021a4:	00813c23          	sd	s0,24(sp)
ffffffe0000021a8:	02010413          	addi	s0,sp,32
ffffffe0000021ac:	00050793          	mv	a5,a0
ffffffe0000021b0:	fef42623          	sw	a5,-20(s0)
ffffffe0000021b4:	00100073          	ebreak
ffffffe0000021b8:	0000006f          	j	ffffffe0000021b8 <default_poweroff+0x18>

ffffffe0000021bc <get_device_addr>:
ffffffe0000021bc:	fd010113          	addi	sp,sp,-48
ffffffe0000021c0:	02813423          	sd	s0,40(sp)
ffffffe0000021c4:	03010413          	addi	s0,sp,48
ffffffe0000021c8:	fca43c23          	sd	a0,-40(s0)
ffffffe0000021cc:	00003797          	auipc	a5,0x3
ffffffe0000021d0:	b247b783          	ld	a5,-1244(a5) # ffffffe000004cf0 <_GLOBAL_OFFSET_TABLE_+0x8>
ffffffe0000021d4:	fef43423          	sd	a5,-24(s0)
ffffffe0000021d8:	fd843703          	ld	a4,-40(s0)
ffffffe0000021dc:	00400793          	li	a5,4
ffffffe0000021e0:	00e7f663          	bgeu	a5,a4,ffffffe0000021ec <get_device_addr+0x30>
ffffffe0000021e4:	00000793          	li	a5,0
ffffffe0000021e8:	01c0006f          	j	ffffffe000002204 <get_device_addr+0x48>
ffffffe0000021ec:	00003717          	auipc	a4,0x3
ffffffe0000021f0:	b0473703          	ld	a4,-1276(a4) # ffffffe000004cf0 <_GLOBAL_OFFSET_TABLE_+0x8>
ffffffe0000021f4:	fd843783          	ld	a5,-40(s0)
ffffffe0000021f8:	00479793          	slli	a5,a5,0x4
ffffffe0000021fc:	00f707b3          	add	a5,a4,a5
ffffffe000002200:	0007b783          	ld	a5,0(a5)
ffffffe000002204:	00078513          	mv	a0,a5
ffffffe000002208:	02813403          	ld	s0,40(sp)
ffffffe00000220c:	03010113          	addi	sp,sp,48
ffffffe000002210:	00008067          	ret

ffffffe000002214 <get_device_size>:
ffffffe000002214:	fd010113          	addi	sp,sp,-48
ffffffe000002218:	02813423          	sd	s0,40(sp)
ffffffe00000221c:	03010413          	addi	s0,sp,48
ffffffe000002220:	fca43c23          	sd	a0,-40(s0)
ffffffe000002224:	00003797          	auipc	a5,0x3
ffffffe000002228:	acc7b783          	ld	a5,-1332(a5) # ffffffe000004cf0 <_GLOBAL_OFFSET_TABLE_+0x8>
ffffffe00000222c:	fef43423          	sd	a5,-24(s0)
ffffffe000002230:	fd843703          	ld	a4,-40(s0)
ffffffe000002234:	00400793          	li	a5,4
ffffffe000002238:	00e7f663          	bgeu	a5,a4,ffffffe000002244 <get_device_size+0x30>
ffffffe00000223c:	00000793          	li	a5,0
ffffffe000002240:	01c0006f          	j	ffffffe00000225c <get_device_size+0x48>
ffffffe000002244:	00003717          	auipc	a4,0x3
ffffffe000002248:	aac73703          	ld	a4,-1364(a4) # ffffffe000004cf0 <_GLOBAL_OFFSET_TABLE_+0x8>
ffffffe00000224c:	fd843783          	ld	a5,-40(s0)
ffffffe000002250:	00479793          	slli	a5,a5,0x4
ffffffe000002254:	00f707b3          	add	a5,a4,a5
ffffffe000002258:	0087b783          	ld	a5,8(a5)
ffffffe00000225c:	00078513          	mv	a0,a5
ffffffe000002260:	02813403          	ld	s0,40(sp)
ffffffe000002264:	03010113          	addi	sp,sp,48
ffffffe000002268:	00008067          	ret

ffffffe00000226c <ns16550a_init>:
ffffffe00000226c:	fe010113          	addi	sp,sp,-32
ffffffe000002270:	00113c23          	sd	ra,24(sp)
ffffffe000002274:	00813823          	sd	s0,16(sp)
ffffffe000002278:	02010413          	addi	s0,sp,32
ffffffe00000227c:	00000513          	li	a0,0
ffffffe000002280:	f3dff0ef          	jal	ra,ffffffe0000021bc <get_device_addr>
ffffffe000002284:	00050713          	mv	a4,a0
ffffffe000002288:	fbf00793          	li	a5,-65
ffffffe00000228c:	01f79793          	slli	a5,a5,0x1f
ffffffe000002290:	00f707b3          	add	a5,a4,a5
ffffffe000002294:	00078713          	mv	a4,a5
ffffffe000002298:	00004797          	auipc	a5,0x4
ffffffe00000229c:	f4878793          	addi	a5,a5,-184 # ffffffe0000061e0 <uart>
ffffffe0000022a0:	00e7b023          	sd	a4,0(a5)
ffffffe0000022a4:	001c27b7          	lui	a5,0x1c2
ffffffe0000022a8:	fef42623          	sw	a5,-20(s0)
ffffffe0000022ac:	0001c7b7          	lui	a5,0x1c
ffffffe0000022b0:	20078793          	addi	a5,a5,512 # 1c200 <reg_size+0x1c1f8>
ffffffe0000022b4:	fef42423          	sw	a5,-24(s0)
ffffffe0000022b8:	fe842783          	lw	a5,-24(s0)
ffffffe0000022bc:	0047979b          	slliw	a5,a5,0x4
ffffffe0000022c0:	0007879b          	sext.w	a5,a5
ffffffe0000022c4:	fec42703          	lw	a4,-20(s0)
ffffffe0000022c8:	02f757bb          	divuw	a5,a4,a5
ffffffe0000022cc:	fef42223          	sw	a5,-28(s0)
ffffffe0000022d0:	00004797          	auipc	a5,0x4
ffffffe0000022d4:	f1078793          	addi	a5,a5,-240 # ffffffe0000061e0 <uart>
ffffffe0000022d8:	0007b783          	ld	a5,0(a5)
ffffffe0000022dc:	00378793          	addi	a5,a5,3
ffffffe0000022e0:	f8000713          	li	a4,-128
ffffffe0000022e4:	00e78023          	sb	a4,0(a5)
ffffffe0000022e8:	00004797          	auipc	a5,0x4
ffffffe0000022ec:	ef878793          	addi	a5,a5,-264 # ffffffe0000061e0 <uart>
ffffffe0000022f0:	0007b783          	ld	a5,0(a5)
ffffffe0000022f4:	fe442703          	lw	a4,-28(s0)
ffffffe0000022f8:	0ff77713          	andi	a4,a4,255
ffffffe0000022fc:	00e78023          	sb	a4,0(a5)
ffffffe000002300:	fe442783          	lw	a5,-28(s0)
ffffffe000002304:	0087d79b          	srliw	a5,a5,0x8
ffffffe000002308:	0007871b          	sext.w	a4,a5
ffffffe00000230c:	00004797          	auipc	a5,0x4
ffffffe000002310:	ed478793          	addi	a5,a5,-300 # ffffffe0000061e0 <uart>
ffffffe000002314:	0007b783          	ld	a5,0(a5)
ffffffe000002318:	00178793          	addi	a5,a5,1
ffffffe00000231c:	0ff77713          	andi	a4,a4,255
ffffffe000002320:	00e78023          	sb	a4,0(a5)
ffffffe000002324:	00004797          	auipc	a5,0x4
ffffffe000002328:	ebc78793          	addi	a5,a5,-324 # ffffffe0000061e0 <uart>
ffffffe00000232c:	0007b783          	ld	a5,0(a5)
ffffffe000002330:	00378793          	addi	a5,a5,3
ffffffe000002334:	00b00713          	li	a4,11
ffffffe000002338:	00e78023          	sb	a4,0(a5)
ffffffe00000233c:	00000013          	nop
ffffffe000002340:	01813083          	ld	ra,24(sp)
ffffffe000002344:	01013403          	ld	s0,16(sp)
ffffffe000002348:	02010113          	addi	sp,sp,32
ffffffe00000234c:	00008067          	ret

ffffffe000002350 <ns16550a_getchar>:
ffffffe000002350:	ff010113          	addi	sp,sp,-16
ffffffe000002354:	00813423          	sd	s0,8(sp)
ffffffe000002358:	01010413          	addi	s0,sp,16
ffffffe00000235c:	00004797          	auipc	a5,0x4
ffffffe000002360:	e8478793          	addi	a5,a5,-380 # ffffffe0000061e0 <uart>
ffffffe000002364:	0007b783          	ld	a5,0(a5)
ffffffe000002368:	00578793          	addi	a5,a5,5
ffffffe00000236c:	0007c783          	lbu	a5,0(a5)
ffffffe000002370:	0ff7f793          	andi	a5,a5,255
ffffffe000002374:	0007879b          	sext.w	a5,a5
ffffffe000002378:	0017f793          	andi	a5,a5,1
ffffffe00000237c:	0007879b          	sext.w	a5,a5
ffffffe000002380:	00078e63          	beqz	a5,ffffffe00000239c <ns16550a_getchar+0x4c>
ffffffe000002384:	00004797          	auipc	a5,0x4
ffffffe000002388:	e5c78793          	addi	a5,a5,-420 # ffffffe0000061e0 <uart>
ffffffe00000238c:	0007b783          	ld	a5,0(a5)
ffffffe000002390:	0007c783          	lbu	a5,0(a5)
ffffffe000002394:	0ff7f793          	andi	a5,a5,255
ffffffe000002398:	0080006f          	j	ffffffe0000023a0 <ns16550a_getchar+0x50>
ffffffe00000239c:	0ff00793          	li	a5,255
ffffffe0000023a0:	00078513          	mv	a0,a5
ffffffe0000023a4:	00813403          	ld	s0,8(sp)
ffffffe0000023a8:	01010113          	addi	sp,sp,16
ffffffe0000023ac:	00008067          	ret

ffffffe0000023b0 <ns16550a_putchar>:
ffffffe0000023b0:	fe010113          	addi	sp,sp,-32
ffffffe0000023b4:	00813c23          	sd	s0,24(sp)
ffffffe0000023b8:	02010413          	addi	s0,sp,32
ffffffe0000023bc:	00050793          	mv	a5,a0
ffffffe0000023c0:	fef407a3          	sb	a5,-17(s0)
ffffffe0000023c4:	00000013          	nop
ffffffe0000023c8:	00004797          	auipc	a5,0x4
ffffffe0000023cc:	e1878793          	addi	a5,a5,-488 # ffffffe0000061e0 <uart>
ffffffe0000023d0:	0007b783          	ld	a5,0(a5)
ffffffe0000023d4:	00578793          	addi	a5,a5,5
ffffffe0000023d8:	0007c783          	lbu	a5,0(a5)
ffffffe0000023dc:	0ff7f793          	andi	a5,a5,255
ffffffe0000023e0:	0007879b          	sext.w	a5,a5
ffffffe0000023e4:	0207f793          	andi	a5,a5,32
ffffffe0000023e8:	0007879b          	sext.w	a5,a5
ffffffe0000023ec:	fc078ee3          	beqz	a5,ffffffe0000023c8 <ns16550a_putchar+0x18>
ffffffe0000023f0:	00004797          	auipc	a5,0x4
ffffffe0000023f4:	df078793          	addi	a5,a5,-528 # ffffffe0000061e0 <uart>
ffffffe0000023f8:	0007b783          	ld	a5,0(a5)
ffffffe0000023fc:	fef44703          	lbu	a4,-17(s0)
ffffffe000002400:	00e78023          	sb	a4,0(a5)
ffffffe000002404:	00000013          	nop
ffffffe000002408:	01813403          	ld	s0,24(sp)
ffffffe00000240c:	02010113          	addi	sp,sp,32
ffffffe000002410:	00008067          	ret

ffffffe000002414 <sifive_test_init>:
ffffffe000002414:	ff010113          	addi	sp,sp,-16
ffffffe000002418:	00113423          	sd	ra,8(sp)
ffffffe00000241c:	00813023          	sd	s0,0(sp)
ffffffe000002420:	01010413          	addi	s0,sp,16
ffffffe000002424:	00300513          	li	a0,3
ffffffe000002428:	d95ff0ef          	jal	ra,ffffffe0000021bc <get_device_addr>
ffffffe00000242c:	00050713          	mv	a4,a0
ffffffe000002430:	fbf00793          	li	a5,-65
ffffffe000002434:	01f79793          	slli	a5,a5,0x1f
ffffffe000002438:	00f707b3          	add	a5,a4,a5
ffffffe00000243c:	00078713          	mv	a4,a5
ffffffe000002440:	00004797          	auipc	a5,0x4
ffffffe000002444:	da878793          	addi	a5,a5,-600 # ffffffe0000061e8 <test>
ffffffe000002448:	00e7b023          	sd	a4,0(a5)
ffffffe00000244c:	00000013          	nop
ffffffe000002450:	00813083          	ld	ra,8(sp)
ffffffe000002454:	00013403          	ld	s0,0(sp)
ffffffe000002458:	01010113          	addi	sp,sp,16
ffffffe00000245c:	00008067          	ret

ffffffe000002460 <sifive_test_poweroff>:
ffffffe000002460:	ff010113          	addi	sp,sp,-16
ffffffe000002464:	00813423          	sd	s0,8(sp)
ffffffe000002468:	01010413          	addi	s0,sp,16
ffffffe00000246c:	00004797          	auipc	a5,0x4
ffffffe000002470:	d7c78793          	addi	a5,a5,-644 # ffffffe0000061e8 <test>
ffffffe000002474:	0007b783          	ld	a5,0(a5)
ffffffe000002478:	00005737          	lui	a4,0x5
ffffffe00000247c:	55570713          	addi	a4,a4,1365 # 5555 <reg_size+0x554d>
ffffffe000002480:	00e7a023          	sw	a4,0(a5)
ffffffe000002484:	0000006f          	j	ffffffe000002484 <sifive_test_poweroff+0x24>
