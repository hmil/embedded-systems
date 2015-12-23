
camera_app.elf:     file format elf32-littlenios2


Disassembly of section .entry:

02000000 <__reset>:
 2000000:	00840014 	movui	r2,4096
 2000004:	1001483a 	initi	r2
 2000008:	10bff804 	addi	r2,r2,-32
 200000c:	00bffd16 	blt	zero,r2,2000004 <__reset+0x4>
 2000010:	00408034 	movhi	at,512
 2000014:	08406f14 	ori	at,at,444
 2000018:	0800683a 	jmp	at
 200001c:	00000000 	call	0 <__alt_mem_sdram-0x2000000>

Disassembly of section .exceptions:

02000020 <alt_exception>:
 2000020:	deffed04 	addi	sp,sp,-76
 2000024:	dfc00015 	stw	ra,0(sp)
 2000028:	d8400215 	stw	at,8(sp)
 200002c:	d8800315 	stw	r2,12(sp)
 2000030:	d8c00415 	stw	r3,16(sp)
 2000034:	d9000515 	stw	r4,20(sp)
 2000038:	d9400615 	stw	r5,24(sp)
 200003c:	d9800715 	stw	r6,28(sp)
 2000040:	d9c00815 	stw	r7,32(sp)
 2000044:	000b307a 	rdctl	r5,estatus
 2000048:	da000915 	stw	r8,36(sp)
 200004c:	da400a15 	stw	r9,40(sp)
 2000050:	da800b15 	stw	r10,44(sp)
 2000054:	dac00c15 	stw	r11,48(sp)
 2000058:	db000d15 	stw	r12,52(sp)
 200005c:	db400e15 	stw	r13,56(sp)
 2000060:	db800f15 	stw	r14,60(sp)
 2000064:	dbc01015 	stw	r15,64(sp)
 2000068:	d9401115 	stw	r5,68(sp)
 200006c:	ebffff04 	addi	r15,ea,-4
 2000070:	dbc01215 	stw	r15,72(sp)
 2000074:	0009313a 	rdctl	r4,ipending
 2000078:	2880004c 	andi	r2,r5,1
 200007c:	10000326 	beq	r2,zero,200008c <alt_exception+0x6c>
 2000080:	20000226 	beq	r4,zero,200008c <alt_exception+0x6c>
 2000084:	20000ec0 	call	20000ec <alt_irq_handler>
 2000088:	00000306 	br	2000098 <alt_exception_unknown+0x4>
 200008c:	df401215 	stw	ea,72(sp)
 2000090:	e8bfff17 	ldw	r2,-4(ea)

02000094 <alt_exception_unknown>:
 2000094:	003da03a 	break	0
 2000098:	d9401117 	ldw	r5,68(sp)
 200009c:	df401217 	ldw	ea,72(sp)
 20000a0:	dfc00017 	ldw	ra,0(sp)
 20000a4:	2801707a 	wrctl	estatus,r5
 20000a8:	d8400217 	ldw	at,8(sp)
 20000ac:	d8800317 	ldw	r2,12(sp)
 20000b0:	d8c00417 	ldw	r3,16(sp)
 20000b4:	d9000517 	ldw	r4,20(sp)
 20000b8:	d9400617 	ldw	r5,24(sp)
 20000bc:	d9800717 	ldw	r6,28(sp)
 20000c0:	d9c00817 	ldw	r7,32(sp)
 20000c4:	da000917 	ldw	r8,36(sp)
 20000c8:	da400a17 	ldw	r9,40(sp)
 20000cc:	da800b17 	ldw	r10,44(sp)
 20000d0:	dac00c17 	ldw	r11,48(sp)
 20000d4:	db000d17 	ldw	r12,52(sp)
 20000d8:	db400e17 	ldw	r13,56(sp)
 20000dc:	db800f17 	ldw	r14,60(sp)
 20000e0:	dbc01017 	ldw	r15,64(sp)
 20000e4:	dec01304 	addi	sp,sp,76
 20000e8:	ef80083a 	eret

020000ec <alt_irq_handler>:
 20000ec:	defff904 	addi	sp,sp,-28
 20000f0:	dfc00615 	stw	ra,24(sp)
 20000f4:	df000515 	stw	fp,20(sp)
 20000f8:	df000504 	addi	fp,sp,20
 20000fc:	0001883a 	nop
 2000100:	0005313a 	rdctl	r2,ipending
 2000104:	e0bffe15 	stw	r2,-8(fp)
 2000108:	e0bffe17 	ldw	r2,-8(fp)
 200010c:	e0bffb15 	stw	r2,-20(fp)
 2000110:	e03ffd15 	stw	zero,-12(fp)
 2000114:	00800044 	movi	r2,1
 2000118:	e0bffc15 	stw	r2,-16(fp)
 200011c:	e0fffb17 	ldw	r3,-20(fp)
 2000120:	e0bffc17 	ldw	r2,-16(fp)
 2000124:	1884703a 	and	r2,r3,r2
 2000128:	10001426 	beq	r2,zero,200017c <alt_irq_handler+0x90>
 200012c:	00808074 	movhi	r2,513
 2000130:	108a7604 	addi	r2,r2,10712
 2000134:	e0fffd17 	ldw	r3,-12(fp)
 2000138:	180690fa 	slli	r3,r3,3
 200013c:	10c5883a 	add	r2,r2,r3
 2000140:	10c00017 	ldw	r3,0(r2)
 2000144:	00808074 	movhi	r2,513
 2000148:	108a7604 	addi	r2,r2,10712
 200014c:	e13ffd17 	ldw	r4,-12(fp)
 2000150:	200890fa 	slli	r4,r4,3
 2000154:	1105883a 	add	r2,r2,r4
 2000158:	10800104 	addi	r2,r2,4
 200015c:	10800017 	ldw	r2,0(r2)
 2000160:	1009883a 	mov	r4,r2
 2000164:	183ee83a 	callr	r3
 2000168:	0001883a 	nop
 200016c:	0005313a 	rdctl	r2,ipending
 2000170:	e0bfff15 	stw	r2,-4(fp)
 2000174:	e0bfff17 	ldw	r2,-4(fp)
 2000178:	00000706 	br	2000198 <alt_irq_handler+0xac>
 200017c:	e0bffc17 	ldw	r2,-16(fp)
 2000180:	1085883a 	add	r2,r2,r2
 2000184:	e0bffc15 	stw	r2,-16(fp)
 2000188:	e0bffd17 	ldw	r2,-12(fp)
 200018c:	10800044 	addi	r2,r2,1
 2000190:	e0bffd15 	stw	r2,-12(fp)
 2000194:	003fe106 	br	200011c <alt_irq_handler+0x30>
 2000198:	e0bffb15 	stw	r2,-20(fp)
 200019c:	e0bffb17 	ldw	r2,-20(fp)
 20001a0:	103fdb1e 	bne	r2,zero,2000110 <alt_irq_handler+0x24>
 20001a4:	0001883a 	nop
 20001a8:	e037883a 	mov	sp,fp
 20001ac:	dfc00117 	ldw	ra,4(sp)
 20001b0:	df000017 	ldw	fp,0(sp)
 20001b4:	dec00204 	addi	sp,sp,8
 20001b8:	f800283a 	ret

Disassembly of section .text:

020001bc <_start>:
 20001bc:	00820014 	movui	r2,2048
 20001c0:	10000033 	initd	0(r2)
 20001c4:	10bff804 	addi	r2,r2,-32
 20001c8:	00bffd16 	blt	zero,r2,20001c0 <_start+0x4>
 20001cc:	06c10034 	movhi	sp,1024
 20001d0:	dec00014 	ori	sp,sp,0
 20001d4:	06808074 	movhi	gp,513
 20001d8:	d6a39414 	ori	gp,gp,36432
 20001dc:	00808074 	movhi	r2,513
 20001e0:	108a5f14 	ori	r2,r2,10620
 20001e4:	00c08074 	movhi	r3,513
 20001e8:	18cab614 	ori	r3,r3,10968
 20001ec:	10c00326 	beq	r2,r3,20001fc <_start+0x40>
 20001f0:	10000015 	stw	zero,0(r2)
 20001f4:	10800104 	addi	r2,r2,4
 20001f8:	10fffd36 	bltu	r2,r3,20001f0 <_start+0x34>
 20001fc:	200ccf40 	call	200ccf4 <alt_load>
 2000200:	200ce980 	call	200ce98 <alt_main>

02000204 <alt_after_alt_main>:
 2000204:	003fff06 	br	2000204 <alt_after_alt_main>

02000208 <cam_get_preset>:
 2000208:	defffd04 	addi	sp,sp,-12
 200020c:	df000215 	stw	fp,8(sp)
 2000210:	df000204 	addi	fp,sp,8
 2000214:	e13ffe15 	stw	r4,-8(fp)
 2000218:	e17fff15 	stw	r5,-4(fp)
 200021c:	e0bffe17 	ldw	r2,-8(fp)
 2000220:	00c08074 	movhi	r3,513
 2000224:	18fbf304 	addi	r3,r3,-4148
 2000228:	e13fff17 	ldw	r4,-4(fp)
 200022c:	21000324 	muli	r4,r4,12
 2000230:	1907883a 	add	r3,r3,r4
 2000234:	19000017 	ldw	r4,0(r3)
 2000238:	11000015 	stw	r4,0(r2)
 200023c:	19000117 	ldw	r4,4(r3)
 2000240:	11000115 	stw	r4,4(r2)
 2000244:	18c00217 	ldw	r3,8(r3)
 2000248:	10c00215 	stw	r3,8(r2)
 200024c:	e0bffe17 	ldw	r2,-8(fp)
 2000250:	e037883a 	mov	sp,fp
 2000254:	df000017 	ldw	fp,0(sp)
 2000258:	dec00104 	addi	sp,sp,4
 200025c:	f800283a 	ret

02000260 <printPreset>:
 2000260:	defff504 	addi	sp,sp,-44
 2000264:	dfc00a15 	stw	ra,40(sp)
 2000268:	df000915 	stw	fp,36(sp)
 200026c:	dc400815 	stw	r17,32(sp)
 2000270:	dc000715 	stw	r16,28(sp)
 2000274:	df000904 	addi	fp,sp,36
 2000278:	e13ffc15 	stw	r4,-16(fp)
 200027c:	e17ffd15 	stw	r5,-12(fp)
 2000280:	e13ff904 	addi	r4,fp,-28
 2000284:	e17ffd17 	ldw	r5,-12(fp)
 2000288:	20002080 	call	2000208 <cam_get_preset>
 200028c:	e47ff917 	ldw	r17,-28(fp)
 2000290:	e43ffa17 	ldw	r16,-24(fp)
 2000294:	e0bffb17 	ldw	r2,-20(fp)
 2000298:	1009883a 	mov	r4,r2
 200029c:	200049c0 	call	200049c <__extendsfdf2>
 20002a0:	1009883a 	mov	r4,r2
 20002a4:	180b883a 	mov	r5,r3
 20002a8:	d9000015 	stw	r4,0(sp)
 20002ac:	d9400115 	stw	r5,4(sp)
 20002b0:	01008074 	movhi	r4,513
 20002b4:	213c0e04 	addi	r4,r4,-4040
 20002b8:	e17ffc17 	ldw	r5,-16(fp)
 20002bc:	880d883a 	mov	r6,r17
 20002c0:	800f883a 	mov	r7,r16
 20002c4:	200063c0 	call	200063c <printf>
 20002c8:	e6fffe04 	addi	sp,fp,-8
 20002cc:	dfc00317 	ldw	ra,12(sp)
 20002d0:	df000217 	ldw	fp,8(sp)
 20002d4:	dc400117 	ldw	r17,4(sp)
 20002d8:	dc000017 	ldw	r16,0(sp)
 20002dc:	dec00404 	addi	sp,sp,16
 20002e0:	f800283a 	ret

020002e4 <sleep_ms>:
 20002e4:	defffc04 	addi	sp,sp,-16
 20002e8:	df000315 	stw	fp,12(sp)
 20002ec:	df000304 	addi	fp,sp,12
 20002f0:	e13fff15 	stw	r4,-4(fp)
 20002f4:	e03ffd15 	stw	zero,-12(fp)
 20002f8:	00000c06 	br	200032c <sleep_ms+0x48>
 20002fc:	e03ffe15 	stw	zero,-8(fp)
 2000300:	00000406 	br	2000314 <sleep_ms+0x30>
 2000304:	0001883a 	nop
 2000308:	e0bffe17 	ldw	r2,-8(fp)
 200030c:	10800044 	addi	r2,r2,1
 2000310:	e0bffe15 	stw	r2,-8(fp)
 2000314:	e0bffe17 	ldw	r2,-8(fp)
 2000318:	10801f50 	cmplti	r2,r2,125
 200031c:	103ff91e 	bne	r2,zero,2000304 <sleep_ms+0x20>
 2000320:	e0bffd17 	ldw	r2,-12(fp)
 2000324:	10800044 	addi	r2,r2,1
 2000328:	e0bffd15 	stw	r2,-12(fp)
 200032c:	e0fffd17 	ldw	r3,-12(fp)
 2000330:	e0bfff17 	ldw	r2,-4(fp)
 2000334:	18bff116 	blt	r3,r2,20002fc <sleep_ms+0x18>
 2000338:	e037883a 	mov	sp,fp
 200033c:	df000017 	ldw	fp,0(sp)
 2000340:	dec00104 	addi	sp,sp,4
 2000344:	f800283a 	ret

02000348 <dump_word>:
 2000348:	defffd04 	addi	sp,sp,-12
 200034c:	dfc00215 	stw	ra,8(sp)
 2000350:	df000115 	stw	fp,4(sp)
 2000354:	df000104 	addi	fp,sp,4
 2000358:	e13fff15 	stw	r4,-4(fp)
 200035c:	e0ffff17 	ldw	r3,-4(fp)
 2000360:	e0bfff17 	ldw	r2,-4(fp)
 2000364:	10800017 	ldw	r2,0(r2)
 2000368:	01008074 	movhi	r4,513
 200036c:	213c1504 	addi	r4,r4,-4012
 2000370:	180b883a 	mov	r5,r3
 2000374:	100d883a 	mov	r6,r2
 2000378:	200063c0 	call	200063c <printf>
 200037c:	e037883a 	mov	sp,fp
 2000380:	dfc00117 	ldw	ra,4(sp)
 2000384:	df000017 	ldw	fp,0(sp)
 2000388:	dec00204 	addi	sp,sp,8
 200038c:	f800283a 	ret

02000390 <main>:
 2000390:	defff604 	addi	sp,sp,-40
 2000394:	dfc00915 	stw	ra,36(sp)
 2000398:	df000815 	stw	fp,32(sp)
 200039c:	df000804 	addi	fp,sp,32
 20003a0:	e03ffc15 	stw	zero,-16(fp)
 20003a4:	e03ffd15 	stw	zero,-12(fp)
 20003a8:	e03ffe15 	stw	zero,-8(fp)
 20003ac:	e03fff15 	stw	zero,-4(fp)
 20003b0:	e03ffa15 	stw	zero,-24(fp)
 20003b4:	e03ffb15 	stw	zero,-20(fp)
 20003b8:	200ca2c0 	call	200ca2c <alt_dcache_flush_all>
 20003bc:	e1bffc17 	ldw	r6,-16(fp)
 20003c0:	e1fffd17 	ldw	r7,-12(fp)
 20003c4:	e0fffe17 	ldw	r3,-8(fp)
 20003c8:	e0bfff17 	ldw	r2,-4(fp)
 20003cc:	e17ffc04 	addi	r5,fp,-16
 20003d0:	d8c00015 	stw	r3,0(sp)
 20003d4:	d8800115 	stw	r2,4(sp)
 20003d8:	01008074 	movhi	r4,513
 20003dc:	213c1904 	addi	r4,r4,-3996
 20003e0:	200063c0 	call	200063c <printf>
 20003e4:	00810034 	movhi	r2,1024
 20003e8:	10840b04 	addi	r2,r2,4140
 20003ec:	10800037 	ldwio	r2,0(r2)
 20003f0:	e0bffb15 	stw	r2,-20(fp)
 20003f4:	01008074 	movhi	r4,513
 20003f8:	213c2404 	addi	r4,r4,-3952
 20003fc:	e17ffb17 	ldw	r5,-20(fp)
 2000400:	200063c0 	call	200063c <printf>
 2000404:	e0fffc04 	addi	r3,fp,-16
 2000408:	00810034 	movhi	r2,1024
 200040c:	10840804 	addi	r2,r2,4128
 2000410:	10c00035 	stwio	r3,0(r2)
 2000414:	00c00404 	movi	r3,16
 2000418:	00810034 	movhi	r2,1024
 200041c:	10840b04 	addi	r2,r2,4140
 2000420:	10c00035 	stwio	r3,0(r2)
 2000424:	01008074 	movhi	r4,513
 2000428:	213c2904 	addi	r4,r4,-3932
 200042c:	20007300 	call	2000730 <puts>
 2000430:	00000406 	br	2000444 <main+0xb4>
 2000434:	00810034 	movhi	r2,1024
 2000438:	10840b04 	addi	r2,r2,4140
 200043c:	10800037 	ldwio	r2,0(r2)
 2000440:	e0bffb15 	stw	r2,-20(fp)
 2000444:	e0bffb17 	ldw	r2,-20(fp)
 2000448:	1080200c 	andi	r2,r2,128
 200044c:	103ff926 	beq	r2,zero,2000434 <main+0xa4>
 2000450:	200ca2c0 	call	200ca2c <alt_dcache_flush_all>
 2000454:	e0bffc04 	addi	r2,fp,-16
 2000458:	10bff804 	addi	r2,r2,-32
 200045c:	e0bffa15 	stw	r2,-24(fp)
 2000460:	00000506 	br	2000478 <main+0xe8>
 2000464:	e13ffa17 	ldw	r4,-24(fp)
 2000468:	20003480 	call	2000348 <dump_word>
 200046c:	e0bffa17 	ldw	r2,-24(fp)
 2000470:	10800104 	addi	r2,r2,4
 2000474:	e0bffa15 	stw	r2,-24(fp)
 2000478:	e0fffa17 	ldw	r3,-24(fp)
 200047c:	00810034 	movhi	r2,1024
 2000480:	18bff836 	bltu	r3,r2,2000464 <main+0xd4>
 2000484:	0005883a 	mov	r2,zero
 2000488:	e037883a 	mov	sp,fp
 200048c:	dfc00117 	ldw	ra,4(sp)
 2000490:	df000017 	ldw	fp,0(sp)
 2000494:	dec00204 	addi	sp,sp,8
 2000498:	f800283a 	ret

0200049c <__extendsfdf2>:
 200049c:	200ad5fa 	srli	r5,r4,23
 20004a0:	defffd04 	addi	sp,sp,-12
 20004a4:	dc400115 	stw	r17,4(sp)
 20004a8:	29403fcc 	andi	r5,r5,255
 20004ac:	29800044 	addi	r6,r5,1
 20004b0:	04402034 	movhi	r17,128
 20004b4:	dc000015 	stw	r16,0(sp)
 20004b8:	8c7fffc4 	addi	r17,r17,-1
 20004bc:	dfc00215 	stw	ra,8(sp)
 20004c0:	31803fcc 	andi	r6,r6,255
 20004c4:	00800044 	movi	r2,1
 20004c8:	8922703a 	and	r17,r17,r4
 20004cc:	2020d7fa 	srli	r16,r4,31
 20004d0:	1180110e 	bge	r2,r6,2000518 <__extendsfdf2+0x7c>
 20004d4:	880ed0fa 	srli	r7,r17,3
 20004d8:	8822977a 	slli	r17,r17,29
 20004dc:	2940e004 	addi	r5,r5,896
 20004e0:	2941ffcc 	andi	r5,r5,2047
 20004e4:	280c953a 	slli	r6,r5,20
 20004e8:	01400434 	movhi	r5,16
 20004ec:	800697fa 	slli	r3,r16,31
 20004f0:	297fffc4 	addi	r5,r5,-1
 20004f4:	394a703a 	and	r5,r7,r5
 20004f8:	298ab03a 	or	r5,r5,r6
 20004fc:	8805883a 	mov	r2,r17
 2000500:	28c6b03a 	or	r3,r5,r3
 2000504:	dfc00217 	ldw	ra,8(sp)
 2000508:	dc400117 	ldw	r17,4(sp)
 200050c:	dc000017 	ldw	r16,0(sp)
 2000510:	dec00304 	addi	sp,sp,12
 2000514:	f800283a 	ret
 2000518:	2800111e 	bne	r5,zero,2000560 <__extendsfdf2+0xc4>
 200051c:	88001c26 	beq	r17,zero,2000590 <__extendsfdf2+0xf4>
 2000520:	8809883a 	mov	r4,r17
 2000524:	20005ac0 	call	20005ac <__clzsi2>
 2000528:	00c00284 	movi	r3,10
 200052c:	18801b16 	blt	r3,r2,200059c <__extendsfdf2+0x100>
 2000530:	01c002c4 	movi	r7,11
 2000534:	388fc83a 	sub	r7,r7,r2
 2000538:	10c00544 	addi	r3,r2,21
 200053c:	89ced83a 	srl	r7,r17,r7
 2000540:	88e2983a 	sll	r17,r17,r3
 2000544:	0180e244 	movi	r6,905
 2000548:	308bc83a 	sub	r5,r6,r2
 200054c:	01800434 	movhi	r6,16
 2000550:	31bfffc4 	addi	r6,r6,-1
 2000554:	398e703a 	and	r7,r7,r6
 2000558:	2941ffcc 	andi	r5,r5,2047
 200055c:	003fe006 	br	20004e0 <__extendsfdf2+0x44>
 2000560:	88000826 	beq	r17,zero,2000584 <__extendsfdf2+0xe8>
 2000564:	880ed0fa 	srli	r7,r17,3
 2000568:	00800434 	movhi	r2,16
 200056c:	10bfffc4 	addi	r2,r2,-1
 2000570:	39c00234 	orhi	r7,r7,8
 2000574:	8822977a 	slli	r17,r17,29
 2000578:	388e703a 	and	r7,r7,r2
 200057c:	0141ffc4 	movi	r5,2047
 2000580:	003fd706 	br	20004e0 <__extendsfdf2+0x44>
 2000584:	0141ffc4 	movi	r5,2047
 2000588:	000f883a 	mov	r7,zero
 200058c:	003fd406 	br	20004e0 <__extendsfdf2+0x44>
 2000590:	000b883a 	mov	r5,zero
 2000594:	000f883a 	mov	r7,zero
 2000598:	003fd106 	br	20004e0 <__extendsfdf2+0x44>
 200059c:	11fffd44 	addi	r7,r2,-11
 20005a0:	89ce983a 	sll	r7,r17,r7
 20005a4:	0023883a 	mov	r17,zero
 20005a8:	003fe606 	br	2000544 <__extendsfdf2+0xa8>

020005ac <__clzsi2>:
 20005ac:	00bfffd4 	movui	r2,65535
 20005b0:	11000b36 	bltu	r2,r4,20005e0 <__clzsi2+0x34>
 20005b4:	00803fc4 	movi	r2,255
 20005b8:	1100122e 	bgeu	r2,r4,2000604 <__clzsi2+0x58>
 20005bc:	00c00204 	movi	r3,8
 20005c0:	01400604 	movi	r5,24
 20005c4:	20c8d83a 	srl	r4,r4,r3
 20005c8:	00808074 	movhi	r2,513
 20005cc:	10bc2b04 	addi	r2,r2,-3924
 20005d0:	1109883a 	add	r4,r2,r4
 20005d4:	20800003 	ldbu	r2,0(r4)
 20005d8:	2885c83a 	sub	r2,r5,r2
 20005dc:	f800283a 	ret
 20005e0:	00804034 	movhi	r2,256
 20005e4:	10bfffc4 	addi	r2,r2,-1
 20005e8:	11000336 	bltu	r2,r4,20005f8 <__clzsi2+0x4c>
 20005ec:	00c00404 	movi	r3,16
 20005f0:	180b883a 	mov	r5,r3
 20005f4:	003ff306 	br	20005c4 <__clzsi2+0x18>
 20005f8:	00c00604 	movi	r3,24
 20005fc:	01400204 	movi	r5,8
 2000600:	003ff006 	br	20005c4 <__clzsi2+0x18>
 2000604:	0007883a 	mov	r3,zero
 2000608:	01400804 	movi	r5,32
 200060c:	003fed06 	br	20005c4 <__clzsi2+0x18>

02000610 <_printf_r>:
 2000610:	defffd04 	addi	sp,sp,-12
 2000614:	dfc00015 	stw	ra,0(sp)
 2000618:	d9800115 	stw	r6,4(sp)
 200061c:	d9c00215 	stw	r7,8(sp)
 2000620:	280d883a 	mov	r6,r5
 2000624:	21400217 	ldw	r5,8(r4)
 2000628:	d9c00104 	addi	r7,sp,4
 200062c:	20007dc0 	call	20007dc <___vfprintf_internal_r>
 2000630:	dfc00017 	ldw	ra,0(sp)
 2000634:	dec00304 	addi	sp,sp,12
 2000638:	f800283a 	ret

0200063c <printf>:
 200063c:	defffc04 	addi	sp,sp,-16
 2000640:	dfc00015 	stw	ra,0(sp)
 2000644:	d9400115 	stw	r5,4(sp)
 2000648:	d9800215 	stw	r6,8(sp)
 200064c:	d9c00315 	stw	r7,12(sp)
 2000650:	00808074 	movhi	r2,513
 2000654:	10839504 	addi	r2,r2,3668
 2000658:	10800017 	ldw	r2,0(r2)
 200065c:	200b883a 	mov	r5,r4
 2000660:	d9800104 	addi	r6,sp,4
 2000664:	11000217 	ldw	r4,8(r2)
 2000668:	20027d80 	call	20027d8 <__vfprintf_internal>
 200066c:	dfc00017 	ldw	ra,0(sp)
 2000670:	dec00404 	addi	sp,sp,16
 2000674:	f800283a 	ret

02000678 <_puts_r>:
 2000678:	defff604 	addi	sp,sp,-40
 200067c:	dc000715 	stw	r16,28(sp)
 2000680:	2021883a 	mov	r16,r4
 2000684:	2809883a 	mov	r4,r5
 2000688:	dc400815 	stw	r17,32(sp)
 200068c:	dfc00915 	stw	ra,36(sp)
 2000690:	2823883a 	mov	r17,r5
 2000694:	20007440 	call	2000744 <strlen>
 2000698:	00c08074 	movhi	r3,513
 200069c:	18c39504 	addi	r3,r3,3668
 20006a0:	18c00017 	ldw	r3,0(r3)
 20006a4:	11000044 	addi	r4,r2,1
 20006a8:	d8800115 	stw	r2,4(sp)
 20006ac:	18c00217 	ldw	r3,8(r3)
 20006b0:	01408074 	movhi	r5,513
 20006b4:	297c6b04 	addi	r5,r5,-3668
 20006b8:	1880030b 	ldhu	r2,12(r3)
 20006bc:	d9400215 	stw	r5,8(sp)
 20006c0:	d9000615 	stw	r4,24(sp)
 20006c4:	01400044 	movi	r5,1
 20006c8:	01000084 	movi	r4,2
 20006cc:	d9000515 	stw	r4,20(sp)
 20006d0:	dc400015 	stw	r17,0(sp)
 20006d4:	d9400315 	stw	r5,12(sp)
 20006d8:	dec00415 	stw	sp,16(sp)
 20006dc:	1108000c 	andi	r4,r2,8192
 20006e0:	2000061e 	bne	r4,zero,20006fc <_puts_r+0x84>
 20006e4:	19401917 	ldw	r5,100(r3)
 20006e8:	0137ffc4 	movi	r4,-8193
 20006ec:	10880014 	ori	r2,r2,8192
 20006f0:	2908703a 	and	r4,r5,r4
 20006f4:	1880030d 	sth	r2,12(r3)
 20006f8:	19001915 	stw	r4,100(r3)
 20006fc:	81400217 	ldw	r5,8(r16)
 2000700:	8009883a 	mov	r4,r16
 2000704:	d9800404 	addi	r6,sp,16
 2000708:	2004c600 	call	2004c60 <__sfvwrite_r>
 200070c:	1000061e 	bne	r2,zero,2000728 <_puts_r+0xb0>
 2000710:	00800284 	movi	r2,10
 2000714:	dfc00917 	ldw	ra,36(sp)
 2000718:	dc400817 	ldw	r17,32(sp)
 200071c:	dc000717 	ldw	r16,28(sp)
 2000720:	dec00a04 	addi	sp,sp,40
 2000724:	f800283a 	ret
 2000728:	00bfffc4 	movi	r2,-1
 200072c:	003ff906 	br	2000714 <_puts_r+0x9c>

02000730 <puts>:
 2000730:	00808074 	movhi	r2,513
 2000734:	10839504 	addi	r2,r2,3668
 2000738:	200b883a 	mov	r5,r4
 200073c:	11000017 	ldw	r4,0(r2)
 2000740:	20006781 	jmpi	2000678 <_puts_r>

02000744 <strlen>:
 2000744:	208000cc 	andi	r2,r4,3
 2000748:	10002026 	beq	r2,zero,20007cc <strlen+0x88>
 200074c:	20800007 	ldb	r2,0(r4)
 2000750:	10002026 	beq	r2,zero,20007d4 <strlen+0x90>
 2000754:	2005883a 	mov	r2,r4
 2000758:	00000206 	br	2000764 <strlen+0x20>
 200075c:	10c00007 	ldb	r3,0(r2)
 2000760:	18001826 	beq	r3,zero,20007c4 <strlen+0x80>
 2000764:	10800044 	addi	r2,r2,1
 2000768:	10c000cc 	andi	r3,r2,3
 200076c:	183ffb1e 	bne	r3,zero,200075c <strlen+0x18>
 2000770:	10c00017 	ldw	r3,0(r2)
 2000774:	01ffbff4 	movhi	r7,65279
 2000778:	39ffbfc4 	addi	r7,r7,-257
 200077c:	00ca303a 	nor	r5,zero,r3
 2000780:	01a02074 	movhi	r6,32897
 2000784:	19c7883a 	add	r3,r3,r7
 2000788:	31a02004 	addi	r6,r6,-32640
 200078c:	1946703a 	and	r3,r3,r5
 2000790:	1986703a 	and	r3,r3,r6
 2000794:	1800091e 	bne	r3,zero,20007bc <strlen+0x78>
 2000798:	10800104 	addi	r2,r2,4
 200079c:	10c00017 	ldw	r3,0(r2)
 20007a0:	19cb883a 	add	r5,r3,r7
 20007a4:	00c6303a 	nor	r3,zero,r3
 20007a8:	28c6703a 	and	r3,r5,r3
 20007ac:	1986703a 	and	r3,r3,r6
 20007b0:	183ff926 	beq	r3,zero,2000798 <strlen+0x54>
 20007b4:	00000106 	br	20007bc <strlen+0x78>
 20007b8:	10800044 	addi	r2,r2,1
 20007bc:	10c00007 	ldb	r3,0(r2)
 20007c0:	183ffd1e 	bne	r3,zero,20007b8 <strlen+0x74>
 20007c4:	1105c83a 	sub	r2,r2,r4
 20007c8:	f800283a 	ret
 20007cc:	2005883a 	mov	r2,r4
 20007d0:	003fe706 	br	2000770 <strlen+0x2c>
 20007d4:	0005883a 	mov	r2,zero
 20007d8:	f800283a 	ret

020007dc <___vfprintf_internal_r>:
 20007dc:	defeb604 	addi	sp,sp,-1320
 20007e0:	dfc14915 	stw	ra,1316(sp)
 20007e4:	ddc14715 	stw	r23,1308(sp)
 20007e8:	dd814615 	stw	r22,1304(sp)
 20007ec:	282f883a 	mov	r23,r5
 20007f0:	202d883a 	mov	r22,r4
 20007f4:	d9812a15 	stw	r6,1192(sp)
 20007f8:	d9c12d15 	stw	r7,1204(sp)
 20007fc:	df014815 	stw	fp,1312(sp)
 2000800:	dd414515 	stw	r21,1300(sp)
 2000804:	dd014415 	stw	r20,1296(sp)
 2000808:	dcc14315 	stw	r19,1292(sp)
 200080c:	dc814215 	stw	r18,1288(sp)
 2000810:	dc414115 	stw	r17,1284(sp)
 2000814:	dc014015 	stw	r16,1280(sp)
 2000818:	20053200 	call	2005320 <_localeconv_r>
 200081c:	10800017 	ldw	r2,0(r2)
 2000820:	1009883a 	mov	r4,r2
 2000824:	d8813515 	stw	r2,1236(sp)
 2000828:	20007440 	call	2000744 <strlen>
 200082c:	d8813815 	stw	r2,1248(sp)
 2000830:	b0000226 	beq	r22,zero,200083c <___vfprintf_internal_r+0x60>
 2000834:	b0800e17 	ldw	r2,56(r22)
 2000838:	10010426 	beq	r2,zero,2000c4c <___vfprintf_internal_r+0x470>
 200083c:	b8c0030b 	ldhu	r3,12(r23)
 2000840:	1908000c 	andi	r4,r3,8192
 2000844:	1805883a 	mov	r2,r3
 2000848:	2000071e 	bne	r4,zero,2000868 <___vfprintf_internal_r+0x8c>
 200084c:	b9001917 	ldw	r4,100(r23)
 2000850:	18880014 	ori	r2,r3,8192
 2000854:	00f7ffc4 	movi	r3,-8193
 2000858:	20c8703a 	and	r4,r4,r3
 200085c:	b880030d 	sth	r2,12(r23)
 2000860:	1007883a 	mov	r3,r2
 2000864:	b9001915 	stw	r4,100(r23)
 2000868:	1100020c 	andi	r4,r2,8
 200086c:	2000a726 	beq	r4,zero,2000b0c <___vfprintf_internal_r+0x330>
 2000870:	b9000417 	ldw	r4,16(r23)
 2000874:	2000a526 	beq	r4,zero,2000b0c <___vfprintf_internal_r+0x330>
 2000878:	1080068c 	andi	r2,r2,26
 200087c:	01000284 	movi	r4,10
 2000880:	1100ab26 	beq	r2,r4,2000b30 <___vfprintf_internal_r+0x354>
 2000884:	dac10e04 	addi	r11,sp,1080
 2000888:	db010dc4 	addi	r12,sp,1079
 200088c:	d8800404 	addi	r2,sp,16
 2000890:	05008074 	movhi	r20,513
 2000894:	dac12815 	stw	r11,1184(sp)
 2000898:	5b17c83a 	sub	r11,r11,r12
 200089c:	a53c7c84 	addi	r20,r20,-3598
 20008a0:	db012915 	stw	r12,1188(sp)
 20008a4:	d8811e15 	stw	r2,1144(sp)
 20008a8:	d8012015 	stw	zero,1152(sp)
 20008ac:	d8011f15 	stw	zero,1148(sp)
 20008b0:	d8013315 	stw	zero,1228(sp)
 20008b4:	d8013715 	stw	zero,1244(sp)
 20008b8:	d8013915 	stw	zero,1252(sp)
 20008bc:	d8013b15 	stw	zero,1260(sp)
 20008c0:	d8013a15 	stw	zero,1256(sp)
 20008c4:	d8012f15 	stw	zero,1212(sp)
 20008c8:	1011883a 	mov	r8,r2
 20008cc:	dac13c15 	stw	r11,1264(sp)
 20008d0:	db012a17 	ldw	r12,1192(sp)
 20008d4:	60800007 	ldb	r2,0(r12)
 20008d8:	1000df26 	beq	r2,zero,2000c58 <___vfprintf_internal_r+0x47c>
 20008dc:	00c00944 	movi	r3,37
 20008e0:	10c0dd26 	beq	r2,r3,2000c58 <___vfprintf_internal_r+0x47c>
 20008e4:	6021883a 	mov	r16,r12
 20008e8:	00000106 	br	20008f0 <___vfprintf_internal_r+0x114>
 20008ec:	10c08426 	beq	r2,r3,2000b00 <___vfprintf_internal_r+0x324>
 20008f0:	84000044 	addi	r16,r16,1
 20008f4:	80800007 	ldb	r2,0(r16)
 20008f8:	103ffc1e 	bne	r2,zero,20008ec <___vfprintf_internal_r+0x110>
 20008fc:	dac12a17 	ldw	r11,1192(sp)
 2000900:	82e3c83a 	sub	r17,r16,r11
 2000904:	88000f26 	beq	r17,zero,2000944 <___vfprintf_internal_r+0x168>
 2000908:	d8c12017 	ldw	r3,1152(sp)
 200090c:	d8811f17 	ldw	r2,1148(sp)
 2000910:	dac12a17 	ldw	r11,1192(sp)
 2000914:	1c47883a 	add	r3,r3,r17
 2000918:	10800044 	addi	r2,r2,1
 200091c:	d8c12015 	stw	r3,1152(sp)
 2000920:	42c00015 	stw	r11,0(r8)
 2000924:	44400115 	stw	r17,4(r8)
 2000928:	d8811f15 	stw	r2,1148(sp)
 200092c:	00c001c4 	movi	r3,7
 2000930:	1880b416 	blt	r3,r2,2000c04 <___vfprintf_internal_r+0x428>
 2000934:	42000204 	addi	r8,r8,8
 2000938:	db012f17 	ldw	r12,1212(sp)
 200093c:	6459883a 	add	r12,r12,r17
 2000940:	db012f15 	stw	r12,1212(sp)
 2000944:	80800007 	ldb	r2,0(r16)
 2000948:	1000b526 	beq	r2,zero,2000c20 <___vfprintf_internal_r+0x444>
 200094c:	80800044 	addi	r2,r16,1
 2000950:	84000047 	ldb	r16,1(r16)
 2000954:	d8012785 	stb	zero,1182(sp)
 2000958:	000d883a 	mov	r6,zero
 200095c:	027fffc4 	movi	r9,-1
 2000960:	d8012e15 	stw	zero,1208(sp)
 2000964:	0023883a 	mov	r17,zero
 2000968:	01001604 	movi	r4,88
 200096c:	01400244 	movi	r5,9
 2000970:	02800a84 	movi	r10,42
 2000974:	01c01b04 	movi	r7,108
 2000978:	10c00044 	addi	r3,r2,1
 200097c:	80bff804 	addi	r2,r16,-32
 2000980:	2082f236 	bltu	r4,r2,200154c <___vfprintf_internal_r+0xd70>
 2000984:	100490ba 	slli	r2,r2,2
 2000988:	02c08034 	movhi	r11,512
 200098c:	5ac26704 	addi	r11,r11,2460
 2000990:	12c5883a 	add	r2,r2,r11
 2000994:	10800017 	ldw	r2,0(r2)
 2000998:	1000683a 	jmp	r2
 200099c:	02001394 	movui	r8,78
 20009a0:	0200154c 	andi	r8,zero,85
 20009a4:	0200154c 	andi	r8,zero,85
 20009a8:	020013b4 	movhi	r8,78
 20009ac:	0200154c 	andi	r8,zero,85
 20009b0:	0200154c 	andi	r8,zero,85
 20009b4:	0200154c 	andi	r8,zero,85
 20009b8:	0200154c 	andi	r8,zero,85
 20009bc:	0200154c 	andi	r8,zero,85
 20009c0:	0200154c 	andi	r8,zero,85
 20009c4:	02001510 	cmplti	r8,zero,84
 20009c8:	0200153c 	xorhi	r8,zero,84
 20009cc:	0200154c 	andi	r8,zero,85
 20009d0:	02000c60 	cmpeqi	r8,zero,49
 20009d4:	02000c70 	cmpltui	r8,zero,49
 20009d8:	0200154c 	andi	r8,zero,85
 20009dc:	02000cb0 	cmpltui	r8,zero,50
 20009e0:	020011a4 	muli	r8,zero,70
 20009e4:	020011a4 	muli	r8,zero,70
 20009e8:	020011a4 	muli	r8,zero,70
 20009ec:	020011a4 	muli	r8,zero,70
 20009f0:	020011a4 	muli	r8,zero,70
 20009f4:	020011a4 	muli	r8,zero,70
 20009f8:	020011a4 	muli	r8,zero,70
 20009fc:	020011a4 	muli	r8,zero,70
 2000a00:	020011a4 	muli	r8,zero,70
 2000a04:	0200154c 	andi	r8,zero,85
 2000a08:	0200154c 	andi	r8,zero,85
 2000a0c:	0200154c 	andi	r8,zero,85
 2000a10:	0200154c 	andi	r8,zero,85
 2000a14:	0200154c 	andi	r8,zero,85
 2000a18:	0200154c 	andi	r8,zero,85
 2000a1c:	0200154c 	andi	r8,zero,85
 2000a20:	0200154c 	andi	r8,zero,85
 2000a24:	0200154c 	andi	r8,zero,85
 2000a28:	0200154c 	andi	r8,zero,85
 2000a2c:	020011d8 	cmpnei	r8,zero,71
 2000a30:	02000cc0 	call	2000cc <__alt_mem_sdram-0x1dfff34>
 2000a34:	0200154c 	andi	r8,zero,85
 2000a38:	02000cc0 	call	2000cc <__alt_mem_sdram-0x1dfff34>
 2000a3c:	0200154c 	andi	r8,zero,85
 2000a40:	0200154c 	andi	r8,zero,85
 2000a44:	0200154c 	andi	r8,zero,85
 2000a48:	0200154c 	andi	r8,zero,85
 2000a4c:	02000d64 	muli	r8,zero,53
 2000a50:	0200154c 	andi	r8,zero,85
 2000a54:	0200154c 	andi	r8,zero,85
 2000a58:	02000d74 	movhi	r8,53
 2000a5c:	0200154c 	andi	r8,zero,85
 2000a60:	0200154c 	andi	r8,zero,85
 2000a64:	0200154c 	andi	r8,zero,85
 2000a68:	0200154c 	andi	r8,zero,85
 2000a6c:	0200154c 	andi	r8,zero,85
 2000a70:	02001170 	cmpltui	r8,zero,69
 2000a74:	0200154c 	andi	r8,zero,85
 2000a78:	0200154c 	andi	r8,zero,85
 2000a7c:	02001220 	cmpeqi	r8,zero,72
 2000a80:	0200154c 	andi	r8,zero,85
 2000a84:	0200154c 	andi	r8,zero,85
 2000a88:	0200154c 	andi	r8,zero,85
 2000a8c:	0200154c 	andi	r8,zero,85
 2000a90:	0200154c 	andi	r8,zero,85
 2000a94:	0200154c 	andi	r8,zero,85
 2000a98:	0200154c 	andi	r8,zero,85
 2000a9c:	0200154c 	andi	r8,zero,85
 2000aa0:	0200154c 	andi	r8,zero,85
 2000aa4:	0200154c 	andi	r8,zero,85
 2000aa8:	02001414 	movui	r8,80
 2000aac:	020013c4 	movi	r8,79
 2000ab0:	02000cc0 	call	2000cc <__alt_mem_sdram-0x1dfff34>
 2000ab4:	02000cc0 	call	2000cc <__alt_mem_sdram-0x1dfff34>
 2000ab8:	02000cc0 	call	2000cc <__alt_mem_sdram-0x1dfff34>
 2000abc:	02001404 	movi	r8,80
 2000ac0:	020013c4 	movi	r8,79
 2000ac4:	0200154c 	andi	r8,zero,85
 2000ac8:	0200154c 	andi	r8,zero,85
 2000acc:	0200130c 	andi	r8,zero,76
 2000ad0:	0200154c 	andi	r8,zero,85
 2000ad4:	02001320 	cmpeqi	r8,zero,76
 2000ad8:	02001354 	movui	r8,77
 2000adc:	02001454 	movui	r8,81
 2000ae0:	0200127c 	xorhi	r8,zero,73
 2000ae4:	0200154c 	andi	r8,zero,85
 2000ae8:	0200149c 	xori	r8,zero,82
 2000aec:	0200154c 	andi	r8,zero,85
 2000af0:	0200128c 	andi	r8,zero,74
 2000af4:	0200154c 	andi	r8,zero,85
 2000af8:	0200154c 	andi	r8,zero,85
 2000afc:	020012cc 	andi	r8,zero,75
 2000b00:	db012a17 	ldw	r12,1192(sp)
 2000b04:	8323c83a 	sub	r17,r16,r12
 2000b08:	003f7e06 	br	2000904 <___vfprintf_internal_r+0x128>
 2000b0c:	b009883a 	mov	r4,r22
 2000b10:	b80b883a 	mov	r5,r23
 2000b14:	20027fc0 	call	20027fc <__swsetup_r>
 2000b18:	10002d1e 	bne	r2,zero,2000bd0 <___vfprintf_internal_r+0x3f4>
 2000b1c:	b8c0030b 	ldhu	r3,12(r23)
 2000b20:	01000284 	movi	r4,10
 2000b24:	1805883a 	mov	r2,r3
 2000b28:	1080068c 	andi	r2,r2,26
 2000b2c:	113f551e 	bne	r2,r4,2000884 <___vfprintf_internal_r+0xa8>
 2000b30:	b880038b 	ldhu	r2,14(r23)
 2000b34:	113fffcc 	andi	r4,r2,65535
 2000b38:	2120001c 	xori	r4,r4,32768
 2000b3c:	21200004 	addi	r4,r4,-32768
 2000b40:	203f5016 	blt	r4,zero,2000884 <___vfprintf_internal_r+0xa8>
 2000b44:	bac01917 	ldw	r11,100(r23)
 2000b48:	ba800717 	ldw	r10,28(r23)
 2000b4c:	ba400917 	ldw	r9,36(r23)
 2000b50:	d9812a17 	ldw	r6,1192(sp)
 2000b54:	d9c12d17 	ldw	r7,1204(sp)
 2000b58:	02010004 	movi	r8,1024
 2000b5c:	18ffff4c 	andi	r3,r3,65533
 2000b60:	d881078d 	sth	r2,1054(sp)
 2000b64:	b009883a 	mov	r4,r22
 2000b68:	d8800404 	addi	r2,sp,16
 2000b6c:	d9410404 	addi	r5,sp,1040
 2000b70:	d8c1070d 	sth	r3,1052(sp)
 2000b74:	dac11d15 	stw	r11,1140(sp)
 2000b78:	da810b15 	stw	r10,1068(sp)
 2000b7c:	da410d15 	stw	r9,1076(sp)
 2000b80:	d8810415 	stw	r2,1040(sp)
 2000b84:	d8810815 	stw	r2,1056(sp)
 2000b88:	da010615 	stw	r8,1048(sp)
 2000b8c:	da010915 	stw	r8,1060(sp)
 2000b90:	d8010a15 	stw	zero,1064(sp)
 2000b94:	20007dc0 	call	20007dc <___vfprintf_internal_r>
 2000b98:	1021883a 	mov	r16,r2
 2000b9c:	10000416 	blt	r2,zero,2000bb0 <___vfprintf_internal_r+0x3d4>
 2000ba0:	b009883a 	mov	r4,r22
 2000ba4:	d9410404 	addi	r5,sp,1040
 2000ba8:	20042540 	call	2004254 <_fflush_r>
 2000bac:	1006ee1e 	bne	r2,zero,2002768 <___vfprintf_internal_r+0x1f8c>
 2000bb0:	d881070b 	ldhu	r2,1052(sp)
 2000bb4:	1080100c 	andi	r2,r2,64
 2000bb8:	10000326 	beq	r2,zero,2000bc8 <___vfprintf_internal_r+0x3ec>
 2000bbc:	b880030b 	ldhu	r2,12(r23)
 2000bc0:	10801014 	ori	r2,r2,64
 2000bc4:	b880030d 	sth	r2,12(r23)
 2000bc8:	8005883a 	mov	r2,r16
 2000bcc:	00000106 	br	2000bd4 <___vfprintf_internal_r+0x3f8>
 2000bd0:	00bfffc4 	movi	r2,-1
 2000bd4:	dfc14917 	ldw	ra,1316(sp)
 2000bd8:	df014817 	ldw	fp,1312(sp)
 2000bdc:	ddc14717 	ldw	r23,1308(sp)
 2000be0:	dd814617 	ldw	r22,1304(sp)
 2000be4:	dd414517 	ldw	r21,1300(sp)
 2000be8:	dd014417 	ldw	r20,1296(sp)
 2000bec:	dcc14317 	ldw	r19,1292(sp)
 2000bf0:	dc814217 	ldw	r18,1288(sp)
 2000bf4:	dc414117 	ldw	r17,1284(sp)
 2000bf8:	dc014017 	ldw	r16,1280(sp)
 2000bfc:	dec14a04 	addi	sp,sp,1320
 2000c00:	f800283a 	ret
 2000c04:	b009883a 	mov	r4,r22
 2000c08:	b80b883a 	mov	r5,r23
 2000c0c:	d9811e04 	addi	r6,sp,1144
 2000c10:	2007a240 	call	2007a24 <__sprint_r>
 2000c14:	1000081e 	bne	r2,zero,2000c38 <___vfprintf_internal_r+0x45c>
 2000c18:	da000404 	addi	r8,sp,16
 2000c1c:	003f4606 	br	2000938 <___vfprintf_internal_r+0x15c>
 2000c20:	d8812017 	ldw	r2,1152(sp)
 2000c24:	10000426 	beq	r2,zero,2000c38 <___vfprintf_internal_r+0x45c>
 2000c28:	b009883a 	mov	r4,r22
 2000c2c:	b80b883a 	mov	r5,r23
 2000c30:	d9811e04 	addi	r6,sp,1144
 2000c34:	2007a240 	call	2007a24 <__sprint_r>
 2000c38:	b880030b 	ldhu	r2,12(r23)
 2000c3c:	1080100c 	andi	r2,r2,64
 2000c40:	103fe31e 	bne	r2,zero,2000bd0 <___vfprintf_internal_r+0x3f4>
 2000c44:	d8812f17 	ldw	r2,1212(sp)
 2000c48:	003fe206 	br	2000bd4 <___vfprintf_internal_r+0x3f8>
 2000c4c:	b009883a 	mov	r4,r22
 2000c50:	20047fc0 	call	20047fc <__sinit>
 2000c54:	003ef906 	br	200083c <___vfprintf_internal_r+0x60>
 2000c58:	dc012a17 	ldw	r16,1192(sp)
 2000c5c:	003f3906 	br	2000944 <___vfprintf_internal_r+0x168>
 2000c60:	1805883a 	mov	r2,r3
 2000c64:	8c400114 	ori	r17,r17,4
 2000c68:	1c000007 	ldb	r16,0(r3)
 2000c6c:	003f4206 	br	2000978 <___vfprintf_internal_r+0x19c>
 2000c70:	1c000007 	ldb	r16,0(r3)
 2000c74:	18800044 	addi	r2,r3,1
 2000c78:	8286b326 	beq	r16,r10,2002748 <___vfprintf_internal_r+0x1f6c>
 2000c7c:	82fff404 	addi	r11,r16,-48
 2000c80:	1007883a 	mov	r3,r2
 2000c84:	0013883a 	mov	r9,zero
 2000c88:	2aff3c36 	bltu	r5,r11,200097c <___vfprintf_internal_r+0x1a0>
 2000c8c:	1c000007 	ldb	r16,0(r3)
 2000c90:	4a4002a4 	muli	r9,r9,10
 2000c94:	18c00044 	addi	r3,r3,1
 2000c98:	5a53883a 	add	r9,r11,r9
 2000c9c:	82fff404 	addi	r11,r16,-48
 2000ca0:	2afffa2e 	bgeu	r5,r11,2000c8c <___vfprintf_internal_r+0x4b0>
 2000ca4:	483f350e 	bge	r9,zero,200097c <___vfprintf_internal_r+0x1a0>
 2000ca8:	027fffc4 	movi	r9,-1
 2000cac:	003f3306 	br	200097c <___vfprintf_internal_r+0x1a0>
 2000cb0:	8c402014 	ori	r17,r17,128
 2000cb4:	1805883a 	mov	r2,r3
 2000cb8:	1c000007 	ldb	r16,0(r3)
 2000cbc:	003f2e06 	br	2000978 <___vfprintf_internal_r+0x19c>
 2000cc0:	db012d17 	ldw	r12,1204(sp)
 2000cc4:	dac12d17 	ldw	r11,1204(sp)
 2000cc8:	d8c12a15 	stw	r3,1192(sp)
 2000ccc:	63000017 	ldw	r12,0(r12)
 2000cd0:	5ac00117 	ldw	r11,4(r11)
 2000cd4:	d9812785 	stb	r6,1182(sp)
 2000cd8:	6009883a 	mov	r4,r12
 2000cdc:	580b883a 	mov	r5,r11
 2000ce0:	db013715 	stw	r12,1244(sp)
 2000ce4:	da013f15 	stw	r8,1276(sp)
 2000ce8:	da413e15 	stw	r9,1272(sp)
 2000cec:	dac13915 	stw	r11,1252(sp)
 2000cf0:	20076800 	call	2007680 <__fpclassifyd>
 2000cf4:	db012d17 	ldw	r12,1204(sp)
 2000cf8:	04800044 	movi	r18,1
 2000cfc:	da013f17 	ldw	r8,1276(sp)
 2000d00:	64c00204 	addi	r19,r12,8
 2000d04:	da413e17 	ldw	r9,1272(sp)
 2000d08:	d9013717 	ldw	r4,1244(sp)
 2000d0c:	d9413917 	ldw	r5,1252(sp)
 2000d10:	1484581e 	bne	r2,r18,2001e74 <___vfprintf_internal_r+0x1698>
 2000d14:	000d883a 	mov	r6,zero
 2000d18:	000f883a 	mov	r7,zero
 2000d1c:	200b63c0 	call	200b63c <__ledf2>
 2000d20:	da013f17 	ldw	r8,1276(sp)
 2000d24:	1005ef16 	blt	r2,zero,20024e4 <___vfprintf_internal_r+0x1d08>
 2000d28:	dd412783 	ldbu	r21,1182(sp)
 2000d2c:	008011c4 	movi	r2,71
 2000d30:	14053b0e 	bge	r2,r16,2002220 <___vfprintf_internal_r+0x1a44>
 2000d34:	00c08074 	movhi	r3,513
 2000d38:	18fc6d04 	addi	r3,r3,-3660
 2000d3c:	d8c13115 	stw	r3,1220(sp)
 2000d40:	02c000c4 	movi	r11,3
 2000d44:	00bfdfc4 	movi	r2,-129
 2000d48:	dac12b15 	stw	r11,1196(sp)
 2000d4c:	88a2703a 	and	r17,r17,r2
 2000d50:	dcc12d15 	stw	r19,1204(sp)
 2000d54:	5825883a 	mov	r18,r11
 2000d58:	d8013215 	stw	zero,1224(sp)
 2000d5c:	d8013415 	stw	zero,1232(sp)
 2000d60:	00003206 	br	2000e2c <___vfprintf_internal_r+0x650>
 2000d64:	8c400214 	ori	r17,r17,8
 2000d68:	1805883a 	mov	r2,r3
 2000d6c:	1c000007 	ldb	r16,0(r3)
 2000d70:	003f0106 	br	2000978 <___vfprintf_internal_r+0x19c>
 2000d74:	8c400414 	ori	r17,r17,16
 2000d78:	d8c12a15 	stw	r3,1192(sp)
 2000d7c:	88c0080c 	andi	r3,r17,32
 2000d80:	d8812d17 	ldw	r2,1204(sp)
 2000d84:	18017726 	beq	r3,zero,2001364 <___vfprintf_internal_r+0xb88>
 2000d88:	db012d17 	ldw	r12,1204(sp)
 2000d8c:	14c00017 	ldw	r19,0(r2)
 2000d90:	17000117 	ldw	fp,4(r2)
 2000d94:	63000204 	addi	r12,r12,8
 2000d98:	db012d15 	stw	r12,1204(sp)
 2000d9c:	0005883a 	mov	r2,zero
 2000da0:	9f06b03a 	or	r3,r19,fp
 2000da4:	d8012785 	stb	zero,1182(sp)
 2000da8:	da413215 	stw	r9,1224(sp)
 2000dac:	002b883a 	mov	r21,zero
 2000db0:	48000216 	blt	r9,zero,2000dbc <___vfprintf_internal_r+0x5e0>
 2000db4:	013fdfc4 	movi	r4,-129
 2000db8:	8922703a 	and	r17,r17,r4
 2000dbc:	1801ed1e 	bne	r3,zero,2001574 <___vfprintf_internal_r+0xd98>
 2000dc0:	4802e026 	beq	r9,zero,2001944 <___vfprintf_internal_r+0x1168>
 2000dc4:	10803fcc 	andi	r2,r2,255
 2000dc8:	00c00044 	movi	r3,1
 2000dcc:	10c20f26 	beq	r2,r3,200160c <___vfprintf_internal_r+0xe30>
 2000dd0:	00c00084 	movi	r3,2
 2000dd4:	10c2fd26 	beq	r2,r3,20019cc <___vfprintf_internal_r+0x11f0>
 2000dd8:	d8c10e04 	addi	r3,sp,1080
 2000ddc:	9808d0fa 	srli	r4,r19,3
 2000de0:	e00a977a 	slli	r5,fp,29
 2000de4:	e038d0fa 	srli	fp,fp,3
 2000de8:	9cc001cc 	andi	r19,r19,7
 2000dec:	98800c04 	addi	r2,r19,48
 2000df0:	18ffffc4 	addi	r3,r3,-1
 2000df4:	2926b03a 	or	r19,r5,r4
 2000df8:	18800005 	stb	r2,0(r3)
 2000dfc:	9f08b03a 	or	r4,r19,fp
 2000e00:	203ff61e 	bne	r4,zero,2000ddc <___vfprintf_internal_r+0x600>
 2000e04:	8900004c 	andi	r4,r17,1
 2000e08:	d8c13115 	stw	r3,1220(sp)
 2000e0c:	2003791e 	bne	r4,zero,2001bf4 <___vfprintf_internal_r+0x1418>
 2000e10:	dac12817 	ldw	r11,1184(sp)
 2000e14:	58e5c83a 	sub	r18,r11,r3
 2000e18:	9005883a 	mov	r2,r18
 2000e1c:	9240010e 	bge	r18,r9,2000e24 <___vfprintf_internal_r+0x648>
 2000e20:	4805883a 	mov	r2,r9
 2000e24:	d8812b15 	stw	r2,1196(sp)
 2000e28:	d8013415 	stw	zero,1232(sp)
 2000e2c:	a8803fcc 	andi	r2,r21,255
 2000e30:	1080201c 	xori	r2,r2,128
 2000e34:	10bfe004 	addi	r2,r2,-128
 2000e38:	10000326 	beq	r2,zero,2000e48 <___vfprintf_internal_r+0x66c>
 2000e3c:	db012b17 	ldw	r12,1196(sp)
 2000e40:	63000044 	addi	r12,r12,1
 2000e44:	db012b15 	stw	r12,1196(sp)
 2000e48:	88c0008c 	andi	r3,r17,2
 2000e4c:	d8c12c15 	stw	r3,1200(sp)
 2000e50:	18000326 	beq	r3,zero,2000e60 <___vfprintf_internal_r+0x684>
 2000e54:	dac12b17 	ldw	r11,1196(sp)
 2000e58:	5ac00084 	addi	r11,r11,2
 2000e5c:	dac12b15 	stw	r11,1196(sp)
 2000e60:	8b00210c 	andi	r12,r17,132
 2000e64:	db013015 	stw	r12,1216(sp)
 2000e68:	6001c01e 	bne	r12,zero,200156c <___vfprintf_internal_r+0xd90>
 2000e6c:	dac12e17 	ldw	r11,1208(sp)
 2000e70:	db012b17 	ldw	r12,1196(sp)
 2000e74:	5b39c83a 	sub	fp,r11,r12
 2000e78:	0701bc0e 	bge	zero,fp,200156c <___vfprintf_internal_r+0xd90>
 2000e7c:	02400404 	movi	r9,16
 2000e80:	d8c12017 	ldw	r3,1152(sp)
 2000e84:	d8811f17 	ldw	r2,1148(sp)
 2000e88:	4f05220e 	bge	r9,fp,2002314 <___vfprintf_internal_r+0x1b38>
 2000e8c:	01408074 	movhi	r5,513
 2000e90:	297c8084 	addi	r5,r5,-3582
 2000e94:	d9413615 	stw	r5,1240(sp)
 2000e98:	482b883a 	mov	r21,r9
 2000e9c:	04c001c4 	movi	r19,7
 2000ea0:	00000306 	br	2000eb0 <___vfprintf_internal_r+0x6d4>
 2000ea4:	e73ffc04 	addi	fp,fp,-16
 2000ea8:	42000204 	addi	r8,r8,8
 2000eac:	af00130e 	bge	r21,fp,2000efc <___vfprintf_internal_r+0x720>
 2000eb0:	02c08074 	movhi	r11,513
 2000eb4:	18c00404 	addi	r3,r3,16
 2000eb8:	10800044 	addi	r2,r2,1
 2000ebc:	5afc8084 	addi	r11,r11,-3582
 2000ec0:	42c00015 	stw	r11,0(r8)
 2000ec4:	45400115 	stw	r21,4(r8)
 2000ec8:	d8c12015 	stw	r3,1152(sp)
 2000ecc:	d8811f15 	stw	r2,1148(sp)
 2000ed0:	98bff40e 	bge	r19,r2,2000ea4 <___vfprintf_internal_r+0x6c8>
 2000ed4:	b009883a 	mov	r4,r22
 2000ed8:	b80b883a 	mov	r5,r23
 2000edc:	d9811e04 	addi	r6,sp,1144
 2000ee0:	2007a240 	call	2007a24 <__sprint_r>
 2000ee4:	103f541e 	bne	r2,zero,2000c38 <___vfprintf_internal_r+0x45c>
 2000ee8:	e73ffc04 	addi	fp,fp,-16
 2000eec:	d8c12017 	ldw	r3,1152(sp)
 2000ef0:	d8811f17 	ldw	r2,1148(sp)
 2000ef4:	da000404 	addi	r8,sp,16
 2000ef8:	af3fed16 	blt	r21,fp,2000eb0 <___vfprintf_internal_r+0x6d4>
 2000efc:	db013617 	ldw	r12,1240(sp)
 2000f00:	e0c7883a 	add	r3,fp,r3
 2000f04:	10800044 	addi	r2,r2,1
 2000f08:	43000015 	stw	r12,0(r8)
 2000f0c:	47000115 	stw	fp,4(r8)
 2000f10:	d8c12015 	stw	r3,1152(sp)
 2000f14:	d8811f15 	stw	r2,1148(sp)
 2000f18:	010001c4 	movi	r4,7
 2000f1c:	2082f416 	blt	r4,r2,2001af0 <___vfprintf_internal_r+0x1314>
 2000f20:	d8812787 	ldb	r2,1182(sp)
 2000f24:	42000204 	addi	r8,r8,8
 2000f28:	10000c26 	beq	r2,zero,2000f5c <___vfprintf_internal_r+0x780>
 2000f2c:	d8811f17 	ldw	r2,1148(sp)
 2000f30:	d9012784 	addi	r4,sp,1182
 2000f34:	18c00044 	addi	r3,r3,1
 2000f38:	10800044 	addi	r2,r2,1
 2000f3c:	41000015 	stw	r4,0(r8)
 2000f40:	01000044 	movi	r4,1
 2000f44:	41000115 	stw	r4,4(r8)
 2000f48:	d8c12015 	stw	r3,1152(sp)
 2000f4c:	d8811f15 	stw	r2,1148(sp)
 2000f50:	010001c4 	movi	r4,7
 2000f54:	20828d16 	blt	r4,r2,200198c <___vfprintf_internal_r+0x11b0>
 2000f58:	42000204 	addi	r8,r8,8
 2000f5c:	dac12c17 	ldw	r11,1200(sp)
 2000f60:	58000c26 	beq	r11,zero,2000f94 <___vfprintf_internal_r+0x7b8>
 2000f64:	d8811f17 	ldw	r2,1148(sp)
 2000f68:	d9012704 	addi	r4,sp,1180
 2000f6c:	18c00084 	addi	r3,r3,2
 2000f70:	10800044 	addi	r2,r2,1
 2000f74:	41000015 	stw	r4,0(r8)
 2000f78:	01000084 	movi	r4,2
 2000f7c:	41000115 	stw	r4,4(r8)
 2000f80:	d8c12015 	stw	r3,1152(sp)
 2000f84:	d8811f15 	stw	r2,1148(sp)
 2000f88:	010001c4 	movi	r4,7
 2000f8c:	20828716 	blt	r4,r2,20019ac <___vfprintf_internal_r+0x11d0>
 2000f90:	42000204 	addi	r8,r8,8
 2000f94:	db013017 	ldw	r12,1216(sp)
 2000f98:	00802004 	movi	r2,128
 2000f9c:	6081e926 	beq	r12,r2,2001744 <___vfprintf_internal_r+0xf68>
 2000fa0:	db013217 	ldw	r12,1224(sp)
 2000fa4:	64abc83a 	sub	r21,r12,r18
 2000fa8:	0540260e 	bge	zero,r21,2001044 <___vfprintf_internal_r+0x868>
 2000fac:	07000404 	movi	fp,16
 2000fb0:	d8811f17 	ldw	r2,1148(sp)
 2000fb4:	e5443d0e 	bge	fp,r21,20020ac <___vfprintf_internal_r+0x18d0>
 2000fb8:	01408074 	movhi	r5,513
 2000fbc:	297c7c84 	addi	r5,r5,-3598
 2000fc0:	d9412c15 	stw	r5,1200(sp)
 2000fc4:	04c001c4 	movi	r19,7
 2000fc8:	00000306 	br	2000fd8 <___vfprintf_internal_r+0x7fc>
 2000fcc:	ad7ffc04 	addi	r21,r21,-16
 2000fd0:	42000204 	addi	r8,r8,8
 2000fd4:	e540110e 	bge	fp,r21,200101c <___vfprintf_internal_r+0x840>
 2000fd8:	18c00404 	addi	r3,r3,16
 2000fdc:	10800044 	addi	r2,r2,1
 2000fe0:	45000015 	stw	r20,0(r8)
 2000fe4:	47000115 	stw	fp,4(r8)
 2000fe8:	d8c12015 	stw	r3,1152(sp)
 2000fec:	d8811f15 	stw	r2,1148(sp)
 2000ff0:	98bff60e 	bge	r19,r2,2000fcc <___vfprintf_internal_r+0x7f0>
 2000ff4:	b009883a 	mov	r4,r22
 2000ff8:	b80b883a 	mov	r5,r23
 2000ffc:	d9811e04 	addi	r6,sp,1144
 2001000:	2007a240 	call	2007a24 <__sprint_r>
 2001004:	103f0c1e 	bne	r2,zero,2000c38 <___vfprintf_internal_r+0x45c>
 2001008:	ad7ffc04 	addi	r21,r21,-16
 200100c:	d8c12017 	ldw	r3,1152(sp)
 2001010:	d8811f17 	ldw	r2,1148(sp)
 2001014:	da000404 	addi	r8,sp,16
 2001018:	e57fef16 	blt	fp,r21,2000fd8 <___vfprintf_internal_r+0x7fc>
 200101c:	dac12c17 	ldw	r11,1200(sp)
 2001020:	1d47883a 	add	r3,r3,r21
 2001024:	10800044 	addi	r2,r2,1
 2001028:	42c00015 	stw	r11,0(r8)
 200102c:	45400115 	stw	r21,4(r8)
 2001030:	d8c12015 	stw	r3,1152(sp)
 2001034:	d8811f15 	stw	r2,1148(sp)
 2001038:	010001c4 	movi	r4,7
 200103c:	20824b16 	blt	r4,r2,200196c <___vfprintf_internal_r+0x1190>
 2001040:	42000204 	addi	r8,r8,8
 2001044:	8880400c 	andi	r2,r17,256
 2001048:	1001761e 	bne	r2,zero,2001624 <___vfprintf_internal_r+0xe48>
 200104c:	d8811f17 	ldw	r2,1148(sp)
 2001050:	db013117 	ldw	r12,1220(sp)
 2001054:	1c87883a 	add	r3,r3,r18
 2001058:	10800044 	addi	r2,r2,1
 200105c:	43000015 	stw	r12,0(r8)
 2001060:	44800115 	stw	r18,4(r8)
 2001064:	d8c12015 	stw	r3,1152(sp)
 2001068:	d8811f15 	stw	r2,1148(sp)
 200106c:	010001c4 	movi	r4,7
 2001070:	20822616 	blt	r4,r2,200190c <___vfprintf_internal_r+0x1130>
 2001074:	42000204 	addi	r8,r8,8
 2001078:	8c40010c 	andi	r17,r17,4
 200107c:	88003126 	beq	r17,zero,2001144 <___vfprintf_internal_r+0x968>
 2001080:	db012e17 	ldw	r12,1208(sp)
 2001084:	dac12b17 	ldw	r11,1196(sp)
 2001088:	62e1c83a 	sub	r16,r12,r11
 200108c:	04002d0e 	bge	zero,r16,2001144 <___vfprintf_internal_r+0x968>
 2001090:	04400404 	movi	r17,16
 2001094:	d8811f17 	ldw	r2,1148(sp)
 2001098:	8c04df0e 	bge	r17,r16,2002418 <___vfprintf_internal_r+0x1c3c>
 200109c:	01008074 	movhi	r4,513
 20010a0:	213c8084 	addi	r4,r4,-3582
 20010a4:	d9013615 	stw	r4,1240(sp)
 20010a8:	048001c4 	movi	r18,7
 20010ac:	00000306 	br	20010bc <___vfprintf_internal_r+0x8e0>
 20010b0:	843ffc04 	addi	r16,r16,-16
 20010b4:	42000204 	addi	r8,r8,8
 20010b8:	8c00130e 	bge	r17,r16,2001108 <___vfprintf_internal_r+0x92c>
 20010bc:	01408074 	movhi	r5,513
 20010c0:	18c00404 	addi	r3,r3,16
 20010c4:	10800044 	addi	r2,r2,1
 20010c8:	297c8084 	addi	r5,r5,-3582
 20010cc:	41400015 	stw	r5,0(r8)
 20010d0:	44400115 	stw	r17,4(r8)
 20010d4:	d8c12015 	stw	r3,1152(sp)
 20010d8:	d8811f15 	stw	r2,1148(sp)
 20010dc:	90bff40e 	bge	r18,r2,20010b0 <___vfprintf_internal_r+0x8d4>
 20010e0:	b009883a 	mov	r4,r22
 20010e4:	b80b883a 	mov	r5,r23
 20010e8:	d9811e04 	addi	r6,sp,1144
 20010ec:	2007a240 	call	2007a24 <__sprint_r>
 20010f0:	103ed11e 	bne	r2,zero,2000c38 <___vfprintf_internal_r+0x45c>
 20010f4:	843ffc04 	addi	r16,r16,-16
 20010f8:	d8c12017 	ldw	r3,1152(sp)
 20010fc:	d8811f17 	ldw	r2,1148(sp)
 2001100:	da000404 	addi	r8,sp,16
 2001104:	8c3fed16 	blt	r17,r16,20010bc <___vfprintf_internal_r+0x8e0>
 2001108:	dac13617 	ldw	r11,1240(sp)
 200110c:	1c07883a 	add	r3,r3,r16
 2001110:	10800044 	addi	r2,r2,1
 2001114:	42c00015 	stw	r11,0(r8)
 2001118:	44000115 	stw	r16,4(r8)
 200111c:	d8c12015 	stw	r3,1152(sp)
 2001120:	d8811f15 	stw	r2,1148(sp)
 2001124:	010001c4 	movi	r4,7
 2001128:	2080060e 	bge	r4,r2,2001144 <___vfprintf_internal_r+0x968>
 200112c:	b009883a 	mov	r4,r22
 2001130:	b80b883a 	mov	r5,r23
 2001134:	d9811e04 	addi	r6,sp,1144
 2001138:	2007a240 	call	2007a24 <__sprint_r>
 200113c:	103ebe1e 	bne	r2,zero,2000c38 <___vfprintf_internal_r+0x45c>
 2001140:	d8c12017 	ldw	r3,1152(sp)
 2001144:	d8812b17 	ldw	r2,1196(sp)
 2001148:	db012e17 	ldw	r12,1208(sp)
 200114c:	1300010e 	bge	r2,r12,2001154 <___vfprintf_internal_r+0x978>
 2001150:	6005883a 	mov	r2,r12
 2001154:	dac12f17 	ldw	r11,1212(sp)
 2001158:	5897883a 	add	r11,r11,r2
 200115c:	dac12f15 	stw	r11,1212(sp)
 2001160:	1801f21e 	bne	r3,zero,200192c <___vfprintf_internal_r+0x1150>
 2001164:	d8011f15 	stw	zero,1148(sp)
 2001168:	da000404 	addi	r8,sp,16
 200116c:	003dd806 	br	20008d0 <___vfprintf_internal_r+0xf4>
 2001170:	8c400414 	ori	r17,r17,16
 2001174:	d8c12a15 	stw	r3,1192(sp)
 2001178:	88c0080c 	andi	r3,r17,32
 200117c:	d8812d17 	ldw	r2,1204(sp)
 2001180:	18004626 	beq	r3,zero,200129c <___vfprintf_internal_r+0xac0>
 2001184:	dac12d17 	ldw	r11,1204(sp)
 2001188:	14c00017 	ldw	r19,0(r2)
 200118c:	17000117 	ldw	fp,4(r2)
 2001190:	5ac00204 	addi	r11,r11,8
 2001194:	dac12d15 	stw	r11,1204(sp)
 2001198:	00800044 	movi	r2,1
 200119c:	9f06b03a 	or	r3,r19,fp
 20011a0:	003f0006 	br	2000da4 <___vfprintf_internal_r+0x5c8>
 20011a4:	1805883a 	mov	r2,r3
 20011a8:	d8012e15 	stw	zero,1208(sp)
 20011ac:	82fff404 	addi	r11,r16,-48
 20011b0:	0019883a 	mov	r12,zero
 20011b4:	14000007 	ldb	r16,0(r2)
 20011b8:	630002a4 	muli	r12,r12,10
 20011bc:	18c00044 	addi	r3,r3,1
 20011c0:	1805883a 	mov	r2,r3
 20011c4:	62d9883a 	add	r12,r12,r11
 20011c8:	82fff404 	addi	r11,r16,-48
 20011cc:	2afff92e 	bgeu	r5,r11,20011b4 <___vfprintf_internal_r+0x9d8>
 20011d0:	db012e15 	stw	r12,1208(sp)
 20011d4:	003de906 	br	200097c <___vfprintf_internal_r+0x1a0>
 20011d8:	8c400414 	ori	r17,r17,16
 20011dc:	d8c12a15 	stw	r3,1192(sp)
 20011e0:	d9812785 	stb	r6,1182(sp)
 20011e4:	8880080c 	andi	r2,r17,32
 20011e8:	d8c12d17 	ldw	r3,1204(sp)
 20011ec:	10007a26 	beq	r2,zero,20013d8 <___vfprintf_internal_r+0xbfc>
 20011f0:	db012d17 	ldw	r12,1204(sp)
 20011f4:	18800117 	ldw	r2,4(r3)
 20011f8:	1cc00017 	ldw	r19,0(r3)
 20011fc:	63000204 	addi	r12,r12,8
 2001200:	db012d15 	stw	r12,1204(sp)
 2001204:	1039883a 	mov	fp,r2
 2001208:	10031016 	blt	r2,zero,2001e4c <___vfprintf_internal_r+0x1670>
 200120c:	dd412783 	ldbu	r21,1182(sp)
 2001210:	da413215 	stw	r9,1224(sp)
 2001214:	00800044 	movi	r2,1
 2001218:	9f06b03a 	or	r3,r19,fp
 200121c:	003ee406 	br	2000db0 <___vfprintf_internal_r+0x5d4>
 2001220:	03008074 	movhi	r12,513
 2001224:	633c7004 	addi	r12,r12,-3648
 2001228:	d8c12a15 	stw	r3,1192(sp)
 200122c:	d9812785 	stb	r6,1182(sp)
 2001230:	db013b15 	stw	r12,1260(sp)
 2001234:	88c0080c 	andi	r3,r17,32
 2001238:	d8812d17 	ldw	r2,1204(sp)
 200123c:	18002b26 	beq	r3,zero,20012ec <___vfprintf_internal_r+0xb10>
 2001240:	dac12d17 	ldw	r11,1204(sp)
 2001244:	14c00017 	ldw	r19,0(r2)
 2001248:	17000117 	ldw	fp,4(r2)
 200124c:	5ac00204 	addi	r11,r11,8
 2001250:	dac12d15 	stw	r11,1204(sp)
 2001254:	8880004c 	andi	r2,r17,1
 2001258:	10025b26 	beq	r2,zero,2001bc8 <___vfprintf_internal_r+0x13ec>
 200125c:	9f06b03a 	or	r3,r19,fp
 2001260:	18037026 	beq	r3,zero,2002024 <___vfprintf_internal_r+0x1848>
 2001264:	00800c04 	movi	r2,48
 2001268:	d8812705 	stb	r2,1180(sp)
 200126c:	dc012745 	stb	r16,1181(sp)
 2001270:	8c400094 	ori	r17,r17,2
 2001274:	00800084 	movi	r2,2
 2001278:	003eca06 	br	2000da4 <___vfprintf_internal_r+0x5c8>
 200127c:	8c400814 	ori	r17,r17,32
 2001280:	1805883a 	mov	r2,r3
 2001284:	1c000007 	ldb	r16,0(r3)
 2001288:	003dbb06 	br	2000978 <___vfprintf_internal_r+0x19c>
 200128c:	d8c12a15 	stw	r3,1192(sp)
 2001290:	88c0080c 	andi	r3,r17,32
 2001294:	d8812d17 	ldw	r2,1204(sp)
 2001298:	183fba1e 	bne	r3,zero,2001184 <___vfprintf_internal_r+0x9a8>
 200129c:	88c0040c 	andi	r3,r17,16
 20012a0:	18024c1e 	bne	r3,zero,2001bd4 <___vfprintf_internal_r+0x13f8>
 20012a4:	88c0100c 	andi	r3,r17,64
 20012a8:	18024a26 	beq	r3,zero,2001bd4 <___vfprintf_internal_r+0x13f8>
 20012ac:	dac12d17 	ldw	r11,1204(sp)
 20012b0:	14c0000b 	ldhu	r19,0(r2)
 20012b4:	0039883a 	mov	fp,zero
 20012b8:	5ac00104 	addi	r11,r11,4
 20012bc:	dac12d15 	stw	r11,1204(sp)
 20012c0:	00800044 	movi	r2,1
 20012c4:	9807883a 	mov	r3,r19
 20012c8:	003eb606 	br	2000da4 <___vfprintf_internal_r+0x5c8>
 20012cc:	00808074 	movhi	r2,513
 20012d0:	10bc7504 	addi	r2,r2,-3628
 20012d4:	d8c12a15 	stw	r3,1192(sp)
 20012d8:	d8813b15 	stw	r2,1260(sp)
 20012dc:	d9812785 	stb	r6,1182(sp)
 20012e0:	88c0080c 	andi	r3,r17,32
 20012e4:	d8812d17 	ldw	r2,1204(sp)
 20012e8:	183fd51e 	bne	r3,zero,2001240 <___vfprintf_internal_r+0xa64>
 20012ec:	88c0040c 	andi	r3,r17,16
 20012f0:	18034126 	beq	r3,zero,2001ff8 <___vfprintf_internal_r+0x181c>
 20012f4:	db012d17 	ldw	r12,1204(sp)
 20012f8:	14c00017 	ldw	r19,0(r2)
 20012fc:	0039883a 	mov	fp,zero
 2001300:	63000104 	addi	r12,r12,4
 2001304:	db012d15 	stw	r12,1204(sp)
 2001308:	003fd206 	br	2001254 <___vfprintf_internal_r+0xa78>
 200130c:	1c000007 	ldb	r16,0(r3)
 2001310:	81c3d626 	beq	r16,r7,200226c <___vfprintf_internal_r+0x1a90>
 2001314:	8c400414 	ori	r17,r17,16
 2001318:	1805883a 	mov	r2,r3
 200131c:	003d9606 	br	2000978 <___vfprintf_internal_r+0x19c>
 2001320:	d8c12a15 	stw	r3,1192(sp)
 2001324:	d9812785 	stb	r6,1182(sp)
 2001328:	8880080c 	andi	r2,r17,32
 200132c:	10033f26 	beq	r2,zero,200202c <___vfprintf_internal_r+0x1850>
 2001330:	db012d17 	ldw	r12,1204(sp)
 2001334:	dac12f17 	ldw	r11,1212(sp)
 2001338:	60800017 	ldw	r2,0(r12)
 200133c:	5807d7fa 	srai	r3,r11,31
 2001340:	63000104 	addi	r12,r12,4
 2001344:	db012d15 	stw	r12,1204(sp)
 2001348:	12c00015 	stw	r11,0(r2)
 200134c:	10c00115 	stw	r3,4(r2)
 2001350:	003d5f06 	br	20008d0 <___vfprintf_internal_r+0xf4>
 2001354:	d8c12a15 	stw	r3,1192(sp)
 2001358:	88c0080c 	andi	r3,r17,32
 200135c:	d8812d17 	ldw	r2,1204(sp)
 2001360:	183e891e 	bne	r3,zero,2000d88 <___vfprintf_internal_r+0x5ac>
 2001364:	88c0040c 	andi	r3,r17,16
 2001368:	1801ea1e 	bne	r3,zero,2001b14 <___vfprintf_internal_r+0x1338>
 200136c:	88c0100c 	andi	r3,r17,64
 2001370:	1801e826 	beq	r3,zero,2001b14 <___vfprintf_internal_r+0x1338>
 2001374:	db012d17 	ldw	r12,1204(sp)
 2001378:	14c0000b 	ldhu	r19,0(r2)
 200137c:	0039883a 	mov	fp,zero
 2001380:	63000104 	addi	r12,r12,4
 2001384:	db012d15 	stw	r12,1204(sp)
 2001388:	0005883a 	mov	r2,zero
 200138c:	9807883a 	mov	r3,r19
 2001390:	003e8406 	br	2000da4 <___vfprintf_internal_r+0x5c8>
 2001394:	30803fcc 	andi	r2,r6,255
 2001398:	1080201c 	xori	r2,r2,128
 200139c:	10bfe004 	addi	r2,r2,-128
 20013a0:	10031d1e 	bne	r2,zero,2002018 <___vfprintf_internal_r+0x183c>
 20013a4:	1805883a 	mov	r2,r3
 20013a8:	01800804 	movi	r6,32
 20013ac:	1c000007 	ldb	r16,0(r3)
 20013b0:	003d7106 	br	2000978 <___vfprintf_internal_r+0x19c>
 20013b4:	8c400054 	ori	r17,r17,1
 20013b8:	1805883a 	mov	r2,r3
 20013bc:	1c000007 	ldb	r16,0(r3)
 20013c0:	003d6d06 	br	2000978 <___vfprintf_internal_r+0x19c>
 20013c4:	d8c12a15 	stw	r3,1192(sp)
 20013c8:	d9812785 	stb	r6,1182(sp)
 20013cc:	8880080c 	andi	r2,r17,32
 20013d0:	d8c12d17 	ldw	r3,1204(sp)
 20013d4:	103f861e 	bne	r2,zero,20011f0 <___vfprintf_internal_r+0xa14>
 20013d8:	8880040c 	andi	r2,r17,16
 20013dc:	1001f31e 	bne	r2,zero,2001bac <___vfprintf_internal_r+0x13d0>
 20013e0:	8880100c 	andi	r2,r17,64
 20013e4:	1001f126 	beq	r2,zero,2001bac <___vfprintf_internal_r+0x13d0>
 20013e8:	1cc0000f 	ldh	r19,0(r3)
 20013ec:	db012d17 	ldw	r12,1204(sp)
 20013f0:	9839d7fa 	srai	fp,r19,31
 20013f4:	63000104 	addi	r12,r12,4
 20013f8:	db012d15 	stw	r12,1204(sp)
 20013fc:	e005883a 	mov	r2,fp
 2001400:	003f8106 	br	2001208 <___vfprintf_internal_r+0xa2c>
 2001404:	8c401014 	ori	r17,r17,64
 2001408:	1805883a 	mov	r2,r3
 200140c:	1c000007 	ldb	r16,0(r3)
 2001410:	003d5906 	br	2000978 <___vfprintf_internal_r+0x19c>
 2001414:	db012d17 	ldw	r12,1204(sp)
 2001418:	d8c12a15 	stw	r3,1192(sp)
 200141c:	00c00044 	movi	r3,1
 2001420:	60800017 	ldw	r2,0(r12)
 2001424:	63000104 	addi	r12,r12,4
 2001428:	d8c12b15 	stw	r3,1196(sp)
 200142c:	d8012785 	stb	zero,1182(sp)
 2001430:	d8810405 	stb	r2,1040(sp)
 2001434:	db012d15 	stw	r12,1204(sp)
 2001438:	dac10404 	addi	r11,sp,1040
 200143c:	1825883a 	mov	r18,r3
 2001440:	d8013215 	stw	zero,1224(sp)
 2001444:	d8013415 	stw	zero,1232(sp)
 2001448:	dac13115 	stw	r11,1220(sp)
 200144c:	0005883a 	mov	r2,zero
 2001450:	003e7d06 	br	2000e48 <___vfprintf_internal_r+0x66c>
 2001454:	db012d17 	ldw	r12,1204(sp)
 2001458:	00800c04 	movi	r2,48
 200145c:	d8812705 	stb	r2,1180(sp)
 2001460:	64c00017 	ldw	r19,0(r12)
 2001464:	00801e04 	movi	r2,120
 2001468:	d8812745 	stb	r2,1181(sp)
 200146c:	00808074 	movhi	r2,513
 2001470:	10bc7504 	addi	r2,r2,-3628
 2001474:	63000104 	addi	r12,r12,4
 2001478:	d8c12a15 	stw	r3,1192(sp)
 200147c:	d8813b15 	stw	r2,1260(sp)
 2001480:	0039883a 	mov	fp,zero
 2001484:	8c400094 	ori	r17,r17,2
 2001488:	db012d15 	stw	r12,1204(sp)
 200148c:	00800084 	movi	r2,2
 2001490:	04001e04 	movi	r16,120
 2001494:	9807883a 	mov	r3,r19
 2001498:	003e4206 	br	2000da4 <___vfprintf_internal_r+0x5c8>
 200149c:	dac12d17 	ldw	r11,1204(sp)
 20014a0:	db012d17 	ldw	r12,1204(sp)
 20014a4:	d8c12a15 	stw	r3,1192(sp)
 20014a8:	5ac00017 	ldw	r11,0(r11)
 20014ac:	d8012785 	stb	zero,1182(sp)
 20014b0:	64c00104 	addi	r19,r12,4
 20014b4:	dac13115 	stw	r11,1220(sp)
 20014b8:	5803e826 	beq	r11,zero,200245c <___vfprintf_internal_r+0x1c80>
 20014bc:	d9013117 	ldw	r4,1220(sp)
 20014c0:	48037a16 	blt	r9,zero,20022ac <___vfprintf_internal_r+0x1ad0>
 20014c4:	480d883a 	mov	r6,r9
 20014c8:	000b883a 	mov	r5,zero
 20014cc:	da013f15 	stw	r8,1276(sp)
 20014d0:	da413e15 	stw	r9,1272(sp)
 20014d4:	2005cb40 	call	2005cb4 <memchr>
 20014d8:	da013f17 	ldw	r8,1276(sp)
 20014dc:	da413e17 	ldw	r9,1272(sp)
 20014e0:	10044426 	beq	r2,zero,20025f4 <___vfprintf_internal_r+0x1e18>
 20014e4:	d8c13117 	ldw	r3,1220(sp)
 20014e8:	10e5c83a 	sub	r18,r2,r3
 20014ec:	4c834416 	blt	r9,r18,2002200 <___vfprintf_internal_r+0x1a24>
 20014f0:	9005883a 	mov	r2,r18
 20014f4:	90037216 	blt	r18,zero,20022c0 <___vfprintf_internal_r+0x1ae4>
 20014f8:	dd412783 	ldbu	r21,1182(sp)
 20014fc:	d8812b15 	stw	r2,1196(sp)
 2001500:	dcc12d15 	stw	r19,1204(sp)
 2001504:	d8013215 	stw	zero,1224(sp)
 2001508:	d8013415 	stw	zero,1232(sp)
 200150c:	003e4706 	br	2000e2c <___vfprintf_internal_r+0x650>
 2001510:	dac12d17 	ldw	r11,1204(sp)
 2001514:	db012d17 	ldw	r12,1204(sp)
 2001518:	5ac00017 	ldw	r11,0(r11)
 200151c:	dac12e15 	stw	r11,1208(sp)
 2001520:	62c00104 	addi	r11,r12,4
 2001524:	db012e17 	ldw	r12,1208(sp)
 2001528:	60034a16 	blt	r12,zero,2002254 <___vfprintf_internal_r+0x1a78>
 200152c:	dac12d15 	stw	r11,1204(sp)
 2001530:	1805883a 	mov	r2,r3
 2001534:	1c000007 	ldb	r16,0(r3)
 2001538:	003d0f06 	br	2000978 <___vfprintf_internal_r+0x19c>
 200153c:	1805883a 	mov	r2,r3
 2001540:	01800ac4 	movi	r6,43
 2001544:	1c000007 	ldb	r16,0(r3)
 2001548:	003d0b06 	br	2000978 <___vfprintf_internal_r+0x19c>
 200154c:	d8c12a15 	stw	r3,1192(sp)
 2001550:	d9812785 	stb	r6,1182(sp)
 2001554:	803db226 	beq	r16,zero,2000c20 <___vfprintf_internal_r+0x444>
 2001558:	00c00044 	movi	r3,1
 200155c:	d8c12b15 	stw	r3,1196(sp)
 2001560:	dc010405 	stb	r16,1040(sp)
 2001564:	d8012785 	stb	zero,1182(sp)
 2001568:	003fb306 	br	2001438 <___vfprintf_internal_r+0xc5c>
 200156c:	d8c12017 	ldw	r3,1152(sp)
 2001570:	003e6d06 	br	2000f28 <___vfprintf_internal_r+0x74c>
 2001574:	10803fcc 	andi	r2,r2,255
 2001578:	00c00044 	movi	r3,1
 200157c:	10fe141e 	bne	r2,r3,2000dd0 <___vfprintf_internal_r+0x5f4>
 2001580:	e000021e 	bne	fp,zero,200158c <___vfprintf_internal_r+0xdb0>
 2001584:	00800244 	movi	r2,9
 2001588:	14c0202e 	bgeu	r2,r19,200160c <___vfprintf_internal_r+0xe30>
 200158c:	dc012b15 	stw	r16,1196(sp)
 2001590:	dc412c15 	stw	r17,1200(sp)
 2001594:	9821883a 	mov	r16,r19
 2001598:	e023883a 	mov	r17,fp
 200159c:	dc810e04 	addi	r18,sp,1080
 20015a0:	4027883a 	mov	r19,r8
 20015a4:	4839883a 	mov	fp,r9
 20015a8:	8009883a 	mov	r4,r16
 20015ac:	880b883a 	mov	r5,r17
 20015b0:	01800284 	movi	r6,10
 20015b4:	000f883a 	mov	r7,zero
 20015b8:	2009cb40 	call	2009cb4 <__umoddi3>
 20015bc:	10800c04 	addi	r2,r2,48
 20015c0:	94bfffc4 	addi	r18,r18,-1
 20015c4:	8009883a 	mov	r4,r16
 20015c8:	880b883a 	mov	r5,r17
 20015cc:	01800284 	movi	r6,10
 20015d0:	000f883a 	mov	r7,zero
 20015d4:	90800005 	stb	r2,0(r18)
 20015d8:	20096f40 	call	20096f4 <__udivdi3>
 20015dc:	1021883a 	mov	r16,r2
 20015e0:	10c4b03a 	or	r2,r2,r3
 20015e4:	1823883a 	mov	r17,r3
 20015e8:	103fef1e 	bne	r2,zero,20015a8 <___vfprintf_internal_r+0xdcc>
 20015ec:	dac12817 	ldw	r11,1184(sp)
 20015f0:	dc813115 	stw	r18,1220(sp)
 20015f4:	dc012b17 	ldw	r16,1196(sp)
 20015f8:	9811883a 	mov	r8,r19
 20015fc:	dc412c17 	ldw	r17,1200(sp)
 2001600:	e013883a 	mov	r9,fp
 2001604:	5ca5c83a 	sub	r18,r11,r18
 2001608:	003e0306 	br	2000e18 <___vfprintf_internal_r+0x63c>
 200160c:	9cc00c04 	addi	r19,r19,48
 2001610:	d8c10dc4 	addi	r3,sp,1079
 2001614:	dcc10dc5 	stb	r19,1079(sp)
 2001618:	dc813c17 	ldw	r18,1264(sp)
 200161c:	d8c13115 	stw	r3,1220(sp)
 2001620:	003dfd06 	br	2000e18 <___vfprintf_internal_r+0x63c>
 2001624:	00801944 	movi	r2,101
 2001628:	1400710e 	bge	r2,r16,20017f0 <___vfprintf_internal_r+0x1014>
 200162c:	d9013717 	ldw	r4,1244(sp)
 2001630:	d9413917 	ldw	r5,1252(sp)
 2001634:	000d883a 	mov	r6,zero
 2001638:	000f883a 	mov	r7,zero
 200163c:	d8c13d15 	stw	r3,1268(sp)
 2001640:	da013f15 	stw	r8,1276(sp)
 2001644:	200b4d80 	call	200b4d8 <__eqdf2>
 2001648:	d8c13d17 	ldw	r3,1268(sp)
 200164c:	da013f17 	ldw	r8,1276(sp)
 2001650:	1000ef1e 	bne	r2,zero,2001a10 <___vfprintf_internal_r+0x1234>
 2001654:	d8811f17 	ldw	r2,1148(sp)
 2001658:	01008074 	movhi	r4,513
 200165c:	213c7c04 	addi	r4,r4,-3600
 2001660:	18c00044 	addi	r3,r3,1
 2001664:	10800044 	addi	r2,r2,1
 2001668:	41000015 	stw	r4,0(r8)
 200166c:	01000044 	movi	r4,1
 2001670:	41000115 	stw	r4,4(r8)
 2001674:	d8c12015 	stw	r3,1152(sp)
 2001678:	d8811f15 	stw	r2,1148(sp)
 200167c:	010001c4 	movi	r4,7
 2001680:	20828e16 	blt	r4,r2,20020bc <___vfprintf_internal_r+0x18e0>
 2001684:	42000204 	addi	r8,r8,8
 2001688:	d8812617 	ldw	r2,1176(sp)
 200168c:	dac13317 	ldw	r11,1228(sp)
 2001690:	12c00216 	blt	r2,r11,200169c <___vfprintf_internal_r+0xec0>
 2001694:	8880004c 	andi	r2,r17,1
 2001698:	103e7726 	beq	r2,zero,2001078 <___vfprintf_internal_r+0x89c>
 200169c:	db013817 	ldw	r12,1248(sp)
 20016a0:	d8811f17 	ldw	r2,1148(sp)
 20016a4:	dac13517 	ldw	r11,1236(sp)
 20016a8:	1b07883a 	add	r3,r3,r12
 20016ac:	10800044 	addi	r2,r2,1
 20016b0:	42c00015 	stw	r11,0(r8)
 20016b4:	43000115 	stw	r12,4(r8)
 20016b8:	d8c12015 	stw	r3,1152(sp)
 20016bc:	d8811f15 	stw	r2,1148(sp)
 20016c0:	010001c4 	movi	r4,7
 20016c4:	2082ed16 	blt	r4,r2,200227c <___vfprintf_internal_r+0x1aa0>
 20016c8:	42000204 	addi	r8,r8,8
 20016cc:	db013317 	ldw	r12,1228(sp)
 20016d0:	643fffc4 	addi	r16,r12,-1
 20016d4:	043e680e 	bge	zero,r16,2001078 <___vfprintf_internal_r+0x89c>
 20016d8:	04800404 	movi	r18,16
 20016dc:	d8811f17 	ldw	r2,1148(sp)
 20016e0:	94007e0e 	bge	r18,r16,20018dc <___vfprintf_internal_r+0x1100>
 20016e4:	01408074 	movhi	r5,513
 20016e8:	297c7c84 	addi	r5,r5,-3598
 20016ec:	d9412c15 	stw	r5,1200(sp)
 20016f0:	054001c4 	movi	r21,7
 20016f4:	00000306 	br	2001704 <___vfprintf_internal_r+0xf28>
 20016f8:	42000204 	addi	r8,r8,8
 20016fc:	843ffc04 	addi	r16,r16,-16
 2001700:	9400790e 	bge	r18,r16,20018e8 <___vfprintf_internal_r+0x110c>
 2001704:	18c00404 	addi	r3,r3,16
 2001708:	10800044 	addi	r2,r2,1
 200170c:	45000015 	stw	r20,0(r8)
 2001710:	44800115 	stw	r18,4(r8)
 2001714:	d8c12015 	stw	r3,1152(sp)
 2001718:	d8811f15 	stw	r2,1148(sp)
 200171c:	a8bff60e 	bge	r21,r2,20016f8 <___vfprintf_internal_r+0xf1c>
 2001720:	b009883a 	mov	r4,r22
 2001724:	b80b883a 	mov	r5,r23
 2001728:	d9811e04 	addi	r6,sp,1144
 200172c:	2007a240 	call	2007a24 <__sprint_r>
 2001730:	103d411e 	bne	r2,zero,2000c38 <___vfprintf_internal_r+0x45c>
 2001734:	d8c12017 	ldw	r3,1152(sp)
 2001738:	d8811f17 	ldw	r2,1148(sp)
 200173c:	da000404 	addi	r8,sp,16
 2001740:	003fee06 	br	20016fc <___vfprintf_internal_r+0xf20>
 2001744:	dac12e17 	ldw	r11,1208(sp)
 2001748:	db012b17 	ldw	r12,1196(sp)
 200174c:	5b2bc83a 	sub	r21,r11,r12
 2001750:	057e130e 	bge	zero,r21,2000fa0 <___vfprintf_internal_r+0x7c4>
 2001754:	07000404 	movi	fp,16
 2001758:	d8811f17 	ldw	r2,1148(sp)
 200175c:	e543640e 	bge	fp,r21,20024f0 <___vfprintf_internal_r+0x1d14>
 2001760:	01408074 	movhi	r5,513
 2001764:	297c7c84 	addi	r5,r5,-3598
 2001768:	d9412c15 	stw	r5,1200(sp)
 200176c:	04c001c4 	movi	r19,7
 2001770:	00000306 	br	2001780 <___vfprintf_internal_r+0xfa4>
 2001774:	ad7ffc04 	addi	r21,r21,-16
 2001778:	42000204 	addi	r8,r8,8
 200177c:	e540110e 	bge	fp,r21,20017c4 <___vfprintf_internal_r+0xfe8>
 2001780:	18c00404 	addi	r3,r3,16
 2001784:	10800044 	addi	r2,r2,1
 2001788:	45000015 	stw	r20,0(r8)
 200178c:	47000115 	stw	fp,4(r8)
 2001790:	d8c12015 	stw	r3,1152(sp)
 2001794:	d8811f15 	stw	r2,1148(sp)
 2001798:	98bff60e 	bge	r19,r2,2001774 <___vfprintf_internal_r+0xf98>
 200179c:	b009883a 	mov	r4,r22
 20017a0:	b80b883a 	mov	r5,r23
 20017a4:	d9811e04 	addi	r6,sp,1144
 20017a8:	2007a240 	call	2007a24 <__sprint_r>
 20017ac:	103d221e 	bne	r2,zero,2000c38 <___vfprintf_internal_r+0x45c>
 20017b0:	ad7ffc04 	addi	r21,r21,-16
 20017b4:	d8c12017 	ldw	r3,1152(sp)
 20017b8:	d8811f17 	ldw	r2,1148(sp)
 20017bc:	da000404 	addi	r8,sp,16
 20017c0:	e57fef16 	blt	fp,r21,2001780 <___vfprintf_internal_r+0xfa4>
 20017c4:	dac12c17 	ldw	r11,1200(sp)
 20017c8:	1d47883a 	add	r3,r3,r21
 20017cc:	10800044 	addi	r2,r2,1
 20017d0:	42c00015 	stw	r11,0(r8)
 20017d4:	45400115 	stw	r21,4(r8)
 20017d8:	d8c12015 	stw	r3,1152(sp)
 20017dc:	d8811f15 	stw	r2,1148(sp)
 20017e0:	010001c4 	movi	r4,7
 20017e4:	20819116 	blt	r4,r2,2001e2c <___vfprintf_internal_r+0x1650>
 20017e8:	42000204 	addi	r8,r8,8
 20017ec:	003dec06 	br	2000fa0 <___vfprintf_internal_r+0x7c4>
 20017f0:	db013317 	ldw	r12,1228(sp)
 20017f4:	00800044 	movi	r2,1
 20017f8:	18c00044 	addi	r3,r3,1
 20017fc:	1301530e 	bge	r2,r12,2001d4c <___vfprintf_internal_r+0x1570>
 2001800:	dc011f17 	ldw	r16,1148(sp)
 2001804:	dac13117 	ldw	r11,1220(sp)
 2001808:	00800044 	movi	r2,1
 200180c:	84000044 	addi	r16,r16,1
 2001810:	40800115 	stw	r2,4(r8)
 2001814:	42c00015 	stw	r11,0(r8)
 2001818:	d8c12015 	stw	r3,1152(sp)
 200181c:	dc011f15 	stw	r16,1148(sp)
 2001820:	008001c4 	movi	r2,7
 2001824:	14016b16 	blt	r2,r16,2001dd4 <___vfprintf_internal_r+0x15f8>
 2001828:	42000204 	addi	r8,r8,8
 200182c:	db013817 	ldw	r12,1248(sp)
 2001830:	dac13517 	ldw	r11,1236(sp)
 2001834:	84000044 	addi	r16,r16,1
 2001838:	1b07883a 	add	r3,r3,r12
 200183c:	42c00015 	stw	r11,0(r8)
 2001840:	43000115 	stw	r12,4(r8)
 2001844:	d8c12015 	stw	r3,1152(sp)
 2001848:	dc011f15 	stw	r16,1148(sp)
 200184c:	008001c4 	movi	r2,7
 2001850:	14016916 	blt	r2,r16,2001df8 <___vfprintf_internal_r+0x161c>
 2001854:	44800204 	addi	r18,r8,8
 2001858:	d9013717 	ldw	r4,1244(sp)
 200185c:	d9413917 	ldw	r5,1252(sp)
 2001860:	000d883a 	mov	r6,zero
 2001864:	000f883a 	mov	r7,zero
 2001868:	d8c13d15 	stw	r3,1268(sp)
 200186c:	200b4d80 	call	200b4d8 <__eqdf2>
 2001870:	d8c13d17 	ldw	r3,1268(sp)
 2001874:	db013317 	ldw	r12,1228(sp)
 2001878:	1000ae26 	beq	r2,zero,2001b34 <___vfprintf_internal_r+0x1358>
 200187c:	dac13117 	ldw	r11,1220(sp)
 2001880:	60bfffc4 	addi	r2,r12,-1
 2001884:	1887883a 	add	r3,r3,r2
 2001888:	59000044 	addi	r4,r11,1
 200188c:	84000044 	addi	r16,r16,1
 2001890:	90800115 	stw	r2,4(r18)
 2001894:	91000015 	stw	r4,0(r18)
 2001898:	d8c12015 	stw	r3,1152(sp)
 200189c:	dc011f15 	stw	r16,1148(sp)
 20018a0:	008001c4 	movi	r2,7
 20018a4:	14014216 	blt	r2,r16,2001db0 <___vfprintf_internal_r+0x15d4>
 20018a8:	94800204 	addi	r18,r18,8
 20018ac:	dac13a17 	ldw	r11,1256(sp)
 20018b0:	dd4122c4 	addi	r21,sp,1163
 20018b4:	84000044 	addi	r16,r16,1
 20018b8:	58c7883a 	add	r3,r11,r3
 20018bc:	95400015 	stw	r21,0(r18)
 20018c0:	92c00115 	stw	r11,4(r18)
 20018c4:	d8c12015 	stw	r3,1152(sp)
 20018c8:	dc011f15 	stw	r16,1148(sp)
 20018cc:	008001c4 	movi	r2,7
 20018d0:	14000e16 	blt	r2,r16,200190c <___vfprintf_internal_r+0x1130>
 20018d4:	92000204 	addi	r8,r18,8
 20018d8:	003de706 	br	2001078 <___vfprintf_internal_r+0x89c>
 20018dc:	01008074 	movhi	r4,513
 20018e0:	213c7c84 	addi	r4,r4,-3598
 20018e4:	d9012c15 	stw	r4,1200(sp)
 20018e8:	dac12c17 	ldw	r11,1200(sp)
 20018ec:	1c07883a 	add	r3,r3,r16
 20018f0:	44000115 	stw	r16,4(r8)
 20018f4:	42c00015 	stw	r11,0(r8)
 20018f8:	10800044 	addi	r2,r2,1
 20018fc:	d8c12015 	stw	r3,1152(sp)
 2001900:	d8811f15 	stw	r2,1148(sp)
 2001904:	010001c4 	movi	r4,7
 2001908:	20bdda0e 	bge	r4,r2,2001074 <___vfprintf_internal_r+0x898>
 200190c:	b009883a 	mov	r4,r22
 2001910:	b80b883a 	mov	r5,r23
 2001914:	d9811e04 	addi	r6,sp,1144
 2001918:	2007a240 	call	2007a24 <__sprint_r>
 200191c:	103cc61e 	bne	r2,zero,2000c38 <___vfprintf_internal_r+0x45c>
 2001920:	d8c12017 	ldw	r3,1152(sp)
 2001924:	da000404 	addi	r8,sp,16
 2001928:	003dd306 	br	2001078 <___vfprintf_internal_r+0x89c>
 200192c:	b009883a 	mov	r4,r22
 2001930:	b80b883a 	mov	r5,r23
 2001934:	d9811e04 	addi	r6,sp,1144
 2001938:	2007a240 	call	2007a24 <__sprint_r>
 200193c:	103e0926 	beq	r2,zero,2001164 <___vfprintf_internal_r+0x988>
 2001940:	003cbd06 	br	2000c38 <___vfprintf_internal_r+0x45c>
 2001944:	10803fcc 	andi	r2,r2,255
 2001948:	1000651e 	bne	r2,zero,2001ae0 <___vfprintf_internal_r+0x1304>
 200194c:	8880004c 	andi	r2,r17,1
 2001950:	10013226 	beq	r2,zero,2001e1c <___vfprintf_internal_r+0x1640>
 2001954:	00800c04 	movi	r2,48
 2001958:	d8c10dc4 	addi	r3,sp,1079
 200195c:	d8810dc5 	stb	r2,1079(sp)
 2001960:	dc813c17 	ldw	r18,1264(sp)
 2001964:	d8c13115 	stw	r3,1220(sp)
 2001968:	003d2b06 	br	2000e18 <___vfprintf_internal_r+0x63c>
 200196c:	b009883a 	mov	r4,r22
 2001970:	b80b883a 	mov	r5,r23
 2001974:	d9811e04 	addi	r6,sp,1144
 2001978:	2007a240 	call	2007a24 <__sprint_r>
 200197c:	103cae1e 	bne	r2,zero,2000c38 <___vfprintf_internal_r+0x45c>
 2001980:	d8c12017 	ldw	r3,1152(sp)
 2001984:	da000404 	addi	r8,sp,16
 2001988:	003dae06 	br	2001044 <___vfprintf_internal_r+0x868>
 200198c:	b009883a 	mov	r4,r22
 2001990:	b80b883a 	mov	r5,r23
 2001994:	d9811e04 	addi	r6,sp,1144
 2001998:	2007a240 	call	2007a24 <__sprint_r>
 200199c:	103ca61e 	bne	r2,zero,2000c38 <___vfprintf_internal_r+0x45c>
 20019a0:	d8c12017 	ldw	r3,1152(sp)
 20019a4:	da000404 	addi	r8,sp,16
 20019a8:	003d6c06 	br	2000f5c <___vfprintf_internal_r+0x780>
 20019ac:	b009883a 	mov	r4,r22
 20019b0:	b80b883a 	mov	r5,r23
 20019b4:	d9811e04 	addi	r6,sp,1144
 20019b8:	2007a240 	call	2007a24 <__sprint_r>
 20019bc:	103c9e1e 	bne	r2,zero,2000c38 <___vfprintf_internal_r+0x45c>
 20019c0:	d8c12017 	ldw	r3,1152(sp)
 20019c4:	da000404 	addi	r8,sp,16
 20019c8:	003d7206 	br	2000f94 <___vfprintf_internal_r+0x7b8>
 20019cc:	d9413b17 	ldw	r5,1260(sp)
 20019d0:	d8c10e04 	addi	r3,sp,1080
 20019d4:	988003cc 	andi	r2,r19,15
 20019d8:	e008973a 	slli	r4,fp,28
 20019dc:	2885883a 	add	r2,r5,r2
 20019e0:	9826d13a 	srli	r19,r19,4
 20019e4:	10800003 	ldbu	r2,0(r2)
 20019e8:	e038d13a 	srli	fp,fp,4
 20019ec:	18ffffc4 	addi	r3,r3,-1
 20019f0:	24e6b03a 	or	r19,r4,r19
 20019f4:	18800005 	stb	r2,0(r3)
 20019f8:	9f04b03a 	or	r2,r19,fp
 20019fc:	103ff51e 	bne	r2,zero,20019d4 <___vfprintf_internal_r+0x11f8>
 2001a00:	db012817 	ldw	r12,1184(sp)
 2001a04:	d8c13115 	stw	r3,1220(sp)
 2001a08:	60e5c83a 	sub	r18,r12,r3
 2001a0c:	003d0206 	br	2000e18 <___vfprintf_internal_r+0x63c>
 2001a10:	dc012617 	ldw	r16,1176(sp)
 2001a14:	0401b10e 	bge	zero,r16,20020dc <___vfprintf_internal_r+0x1900>
 2001a18:	db013117 	ldw	r12,1220(sp)
 2001a1c:	dac13317 	ldw	r11,1228(sp)
 2001a20:	62e1883a 	add	r16,r12,r11
 2001a24:	db013417 	ldw	r12,1232(sp)
 2001a28:	5825883a 	mov	r18,r11
 2001a2c:	62c0010e 	bge	r12,r11,2001a34 <___vfprintf_internal_r+0x1258>
 2001a30:	6025883a 	mov	r18,r12
 2001a34:	04800b0e 	bge	zero,r18,2001a64 <___vfprintf_internal_r+0x1288>
 2001a38:	d8811f17 	ldw	r2,1148(sp)
 2001a3c:	dac13117 	ldw	r11,1220(sp)
 2001a40:	1c87883a 	add	r3,r3,r18
 2001a44:	10800044 	addi	r2,r2,1
 2001a48:	42c00015 	stw	r11,0(r8)
 2001a4c:	44800115 	stw	r18,4(r8)
 2001a50:	d8c12015 	stw	r3,1152(sp)
 2001a54:	d8811f15 	stw	r2,1148(sp)
 2001a58:	010001c4 	movi	r4,7
 2001a5c:	20824f16 	blt	r4,r2,200239c <___vfprintf_internal_r+0x1bc0>
 2001a60:	42000204 	addi	r8,r8,8
 2001a64:	90024b16 	blt	r18,zero,2002394 <___vfprintf_internal_r+0x1bb8>
 2001a68:	db013417 	ldw	r12,1232(sp)
 2001a6c:	64a5c83a 	sub	r18,r12,r18
 2001a70:	0480730e 	bge	zero,r18,2001c40 <___vfprintf_internal_r+0x1464>
 2001a74:	05400404 	movi	r21,16
 2001a78:	d8811f17 	ldw	r2,1148(sp)
 2001a7c:	ac817d0e 	bge	r21,r18,2002074 <___vfprintf_internal_r+0x1898>
 2001a80:	01408074 	movhi	r5,513
 2001a84:	297c7c84 	addi	r5,r5,-3598
 2001a88:	d9412c15 	stw	r5,1200(sp)
 2001a8c:	070001c4 	movi	fp,7
 2001a90:	00000306 	br	2001aa0 <___vfprintf_internal_r+0x12c4>
 2001a94:	42000204 	addi	r8,r8,8
 2001a98:	94bffc04 	addi	r18,r18,-16
 2001a9c:	ac81780e 	bge	r21,r18,2002080 <___vfprintf_internal_r+0x18a4>
 2001aa0:	18c00404 	addi	r3,r3,16
 2001aa4:	10800044 	addi	r2,r2,1
 2001aa8:	45000015 	stw	r20,0(r8)
 2001aac:	45400115 	stw	r21,4(r8)
 2001ab0:	d8c12015 	stw	r3,1152(sp)
 2001ab4:	d8811f15 	stw	r2,1148(sp)
 2001ab8:	e0bff60e 	bge	fp,r2,2001a94 <___vfprintf_internal_r+0x12b8>
 2001abc:	b009883a 	mov	r4,r22
 2001ac0:	b80b883a 	mov	r5,r23
 2001ac4:	d9811e04 	addi	r6,sp,1144
 2001ac8:	2007a240 	call	2007a24 <__sprint_r>
 2001acc:	103c5a1e 	bne	r2,zero,2000c38 <___vfprintf_internal_r+0x45c>
 2001ad0:	d8c12017 	ldw	r3,1152(sp)
 2001ad4:	d8811f17 	ldw	r2,1148(sp)
 2001ad8:	da000404 	addi	r8,sp,16
 2001adc:	003fee06 	br	2001a98 <___vfprintf_internal_r+0x12bc>
 2001ae0:	dac10e04 	addi	r11,sp,1080
 2001ae4:	0025883a 	mov	r18,zero
 2001ae8:	dac13115 	stw	r11,1220(sp)
 2001aec:	003cca06 	br	2000e18 <___vfprintf_internal_r+0x63c>
 2001af0:	b009883a 	mov	r4,r22
 2001af4:	b80b883a 	mov	r5,r23
 2001af8:	d9811e04 	addi	r6,sp,1144
 2001afc:	2007a240 	call	2007a24 <__sprint_r>
 2001b00:	103c4d1e 	bne	r2,zero,2000c38 <___vfprintf_internal_r+0x45c>
 2001b04:	d8c12017 	ldw	r3,1152(sp)
 2001b08:	d8812787 	ldb	r2,1182(sp)
 2001b0c:	da000404 	addi	r8,sp,16
 2001b10:	003d0506 	br	2000f28 <___vfprintf_internal_r+0x74c>
 2001b14:	dac12d17 	ldw	r11,1204(sp)
 2001b18:	14c00017 	ldw	r19,0(r2)
 2001b1c:	0039883a 	mov	fp,zero
 2001b20:	5ac00104 	addi	r11,r11,4
 2001b24:	dac12d15 	stw	r11,1204(sp)
 2001b28:	0005883a 	mov	r2,zero
 2001b2c:	9807883a 	mov	r3,r19
 2001b30:	003c9c06 	br	2000da4 <___vfprintf_internal_r+0x5c8>
 2001b34:	657fffc4 	addi	r21,r12,-1
 2001b38:	057f5c0e 	bge	zero,r21,20018ac <___vfprintf_internal_r+0x10d0>
 2001b3c:	07000404 	movi	fp,16
 2001b40:	e5408f0e 	bge	fp,r21,2001d80 <___vfprintf_internal_r+0x15a4>
 2001b44:	01008074 	movhi	r4,513
 2001b48:	213c7c84 	addi	r4,r4,-3598
 2001b4c:	d9012c15 	stw	r4,1200(sp)
 2001b50:	01c001c4 	movi	r7,7
 2001b54:	00000306 	br	2001b64 <___vfprintf_internal_r+0x1388>
 2001b58:	94800204 	addi	r18,r18,8
 2001b5c:	ad7ffc04 	addi	r21,r21,-16
 2001b60:	e5408a0e 	bge	fp,r21,2001d8c <___vfprintf_internal_r+0x15b0>
 2001b64:	18c00404 	addi	r3,r3,16
 2001b68:	84000044 	addi	r16,r16,1
 2001b6c:	95000015 	stw	r20,0(r18)
 2001b70:	97000115 	stw	fp,4(r18)
 2001b74:	d8c12015 	stw	r3,1152(sp)
 2001b78:	dc011f15 	stw	r16,1148(sp)
 2001b7c:	3c3ff60e 	bge	r7,r16,2001b58 <___vfprintf_internal_r+0x137c>
 2001b80:	b009883a 	mov	r4,r22
 2001b84:	b80b883a 	mov	r5,r23
 2001b88:	d9811e04 	addi	r6,sp,1144
 2001b8c:	d9c13d15 	stw	r7,1268(sp)
 2001b90:	2007a240 	call	2007a24 <__sprint_r>
 2001b94:	d9c13d17 	ldw	r7,1268(sp)
 2001b98:	103c271e 	bne	r2,zero,2000c38 <___vfprintf_internal_r+0x45c>
 2001b9c:	d8c12017 	ldw	r3,1152(sp)
 2001ba0:	dc011f17 	ldw	r16,1148(sp)
 2001ba4:	dc800404 	addi	r18,sp,16
 2001ba8:	003fec06 	br	2001b5c <___vfprintf_internal_r+0x1380>
 2001bac:	1cc00017 	ldw	r19,0(r3)
 2001bb0:	dac12d17 	ldw	r11,1204(sp)
 2001bb4:	9839d7fa 	srai	fp,r19,31
 2001bb8:	5ac00104 	addi	r11,r11,4
 2001bbc:	dac12d15 	stw	r11,1204(sp)
 2001bc0:	e005883a 	mov	r2,fp
 2001bc4:	003d9006 	br	2001208 <___vfprintf_internal_r+0xa2c>
 2001bc8:	00800084 	movi	r2,2
 2001bcc:	9f06b03a 	or	r3,r19,fp
 2001bd0:	003c7406 	br	2000da4 <___vfprintf_internal_r+0x5c8>
 2001bd4:	db012d17 	ldw	r12,1204(sp)
 2001bd8:	14c00017 	ldw	r19,0(r2)
 2001bdc:	0039883a 	mov	fp,zero
 2001be0:	63000104 	addi	r12,r12,4
 2001be4:	db012d15 	stw	r12,1204(sp)
 2001be8:	00800044 	movi	r2,1
 2001bec:	9807883a 	mov	r3,r19
 2001bf0:	003c6c06 	br	2000da4 <___vfprintf_internal_r+0x5c8>
 2001bf4:	10803fcc 	andi	r2,r2,255
 2001bf8:	1080201c 	xori	r2,r2,128
 2001bfc:	10bfe004 	addi	r2,r2,-128
 2001c00:	01000c04 	movi	r4,48
 2001c04:	1101a526 	beq	r2,r4,200229c <___vfprintf_internal_r+0x1ac0>
 2001c08:	dac13117 	ldw	r11,1220(sp)
 2001c0c:	db012817 	ldw	r12,1184(sp)
 2001c10:	193fffc5 	stb	r4,-1(r3)
 2001c14:	5affffc4 	addi	r11,r11,-1
 2001c18:	dac13115 	stw	r11,1220(sp)
 2001c1c:	62e5c83a 	sub	r18,r12,r11
 2001c20:	003c7d06 	br	2000e18 <___vfprintf_internal_r+0x63c>
 2001c24:	b009883a 	mov	r4,r22
 2001c28:	b80b883a 	mov	r5,r23
 2001c2c:	d9811e04 	addi	r6,sp,1144
 2001c30:	2007a240 	call	2007a24 <__sprint_r>
 2001c34:	103c001e 	bne	r2,zero,2000c38 <___vfprintf_internal_r+0x45c>
 2001c38:	d8c12017 	ldw	r3,1152(sp)
 2001c3c:	da000404 	addi	r8,sp,16
 2001c40:	db013117 	ldw	r12,1220(sp)
 2001c44:	dac13417 	ldw	r11,1232(sp)
 2001c48:	d8812617 	ldw	r2,1176(sp)
 2001c4c:	62e5883a 	add	r18,r12,r11
 2001c50:	db013317 	ldw	r12,1228(sp)
 2001c54:	13000216 	blt	r2,r12,2001c60 <___vfprintf_internal_r+0x1484>
 2001c58:	8900004c 	andi	r4,r17,1
 2001c5c:	20000c26 	beq	r4,zero,2001c90 <___vfprintf_internal_r+0x14b4>
 2001c60:	dac13817 	ldw	r11,1248(sp)
 2001c64:	d9011f17 	ldw	r4,1148(sp)
 2001c68:	db013517 	ldw	r12,1236(sp)
 2001c6c:	1ac7883a 	add	r3,r3,r11
 2001c70:	21000044 	addi	r4,r4,1
 2001c74:	43000015 	stw	r12,0(r8)
 2001c78:	42c00115 	stw	r11,4(r8)
 2001c7c:	d8c12015 	stw	r3,1152(sp)
 2001c80:	d9011f15 	stw	r4,1148(sp)
 2001c84:	014001c4 	movi	r5,7
 2001c88:	2901cc16 	blt	r5,r4,20023bc <___vfprintf_internal_r+0x1be0>
 2001c8c:	42000204 	addi	r8,r8,8
 2001c90:	dac13317 	ldw	r11,1228(sp)
 2001c94:	8489c83a 	sub	r4,r16,r18
 2001c98:	5885c83a 	sub	r2,r11,r2
 2001c9c:	1021883a 	mov	r16,r2
 2001ca0:	2080010e 	bge	r4,r2,2001ca8 <___vfprintf_internal_r+0x14cc>
 2001ca4:	2021883a 	mov	r16,r4
 2001ca8:	04000a0e 	bge	zero,r16,2001cd4 <___vfprintf_internal_r+0x14f8>
 2001cac:	d9011f17 	ldw	r4,1148(sp)
 2001cb0:	1c07883a 	add	r3,r3,r16
 2001cb4:	44800015 	stw	r18,0(r8)
 2001cb8:	21000044 	addi	r4,r4,1
 2001cbc:	44000115 	stw	r16,4(r8)
 2001cc0:	d8c12015 	stw	r3,1152(sp)
 2001cc4:	d9011f15 	stw	r4,1148(sp)
 2001cc8:	014001c4 	movi	r5,7
 2001ccc:	2901d616 	blt	r5,r4,2002428 <___vfprintf_internal_r+0x1c4c>
 2001cd0:	42000204 	addi	r8,r8,8
 2001cd4:	8001df16 	blt	r16,zero,2002454 <___vfprintf_internal_r+0x1c78>
 2001cd8:	1421c83a 	sub	r16,r2,r16
 2001cdc:	043ce60e 	bge	zero,r16,2001078 <___vfprintf_internal_r+0x89c>
 2001ce0:	04800404 	movi	r18,16
 2001ce4:	d8811f17 	ldw	r2,1148(sp)
 2001ce8:	943efc0e 	bge	r18,r16,20018dc <___vfprintf_internal_r+0x1100>
 2001cec:	01408074 	movhi	r5,513
 2001cf0:	297c7c84 	addi	r5,r5,-3598
 2001cf4:	d9412c15 	stw	r5,1200(sp)
 2001cf8:	054001c4 	movi	r21,7
 2001cfc:	00000306 	br	2001d0c <___vfprintf_internal_r+0x1530>
 2001d00:	42000204 	addi	r8,r8,8
 2001d04:	843ffc04 	addi	r16,r16,-16
 2001d08:	943ef70e 	bge	r18,r16,20018e8 <___vfprintf_internal_r+0x110c>
 2001d0c:	18c00404 	addi	r3,r3,16
 2001d10:	10800044 	addi	r2,r2,1
 2001d14:	45000015 	stw	r20,0(r8)
 2001d18:	44800115 	stw	r18,4(r8)
 2001d1c:	d8c12015 	stw	r3,1152(sp)
 2001d20:	d8811f15 	stw	r2,1148(sp)
 2001d24:	a8bff60e 	bge	r21,r2,2001d00 <___vfprintf_internal_r+0x1524>
 2001d28:	b009883a 	mov	r4,r22
 2001d2c:	b80b883a 	mov	r5,r23
 2001d30:	d9811e04 	addi	r6,sp,1144
 2001d34:	2007a240 	call	2007a24 <__sprint_r>
 2001d38:	103bbf1e 	bne	r2,zero,2000c38 <___vfprintf_internal_r+0x45c>
 2001d3c:	d8c12017 	ldw	r3,1152(sp)
 2001d40:	d8811f17 	ldw	r2,1148(sp)
 2001d44:	da000404 	addi	r8,sp,16
 2001d48:	003fee06 	br	2001d04 <___vfprintf_internal_r+0x1528>
 2001d4c:	8888703a 	and	r4,r17,r2
 2001d50:	203eab1e 	bne	r4,zero,2001800 <___vfprintf_internal_r+0x1024>
 2001d54:	dc011f17 	ldw	r16,1148(sp)
 2001d58:	db013117 	ldw	r12,1220(sp)
 2001d5c:	40800115 	stw	r2,4(r8)
 2001d60:	84000044 	addi	r16,r16,1
 2001d64:	43000015 	stw	r12,0(r8)
 2001d68:	d8c12015 	stw	r3,1152(sp)
 2001d6c:	dc011f15 	stw	r16,1148(sp)
 2001d70:	008001c4 	movi	r2,7
 2001d74:	14000e16 	blt	r2,r16,2001db0 <___vfprintf_internal_r+0x15d4>
 2001d78:	44800204 	addi	r18,r8,8
 2001d7c:	003ecb06 	br	20018ac <___vfprintf_internal_r+0x10d0>
 2001d80:	00808074 	movhi	r2,513
 2001d84:	10bc7c84 	addi	r2,r2,-3598
 2001d88:	d8812c15 	stw	r2,1200(sp)
 2001d8c:	dac12c17 	ldw	r11,1200(sp)
 2001d90:	1d47883a 	add	r3,r3,r21
 2001d94:	84000044 	addi	r16,r16,1
 2001d98:	92c00015 	stw	r11,0(r18)
 2001d9c:	95400115 	stw	r21,4(r18)
 2001da0:	d8c12015 	stw	r3,1152(sp)
 2001da4:	dc011f15 	stw	r16,1148(sp)
 2001da8:	008001c4 	movi	r2,7
 2001dac:	143ebe0e 	bge	r2,r16,20018a8 <___vfprintf_internal_r+0x10cc>
 2001db0:	b009883a 	mov	r4,r22
 2001db4:	b80b883a 	mov	r5,r23
 2001db8:	d9811e04 	addi	r6,sp,1144
 2001dbc:	2007a240 	call	2007a24 <__sprint_r>
 2001dc0:	103b9d1e 	bne	r2,zero,2000c38 <___vfprintf_internal_r+0x45c>
 2001dc4:	d8c12017 	ldw	r3,1152(sp)
 2001dc8:	dc011f17 	ldw	r16,1148(sp)
 2001dcc:	dc800404 	addi	r18,sp,16
 2001dd0:	003eb606 	br	20018ac <___vfprintf_internal_r+0x10d0>
 2001dd4:	b009883a 	mov	r4,r22
 2001dd8:	b80b883a 	mov	r5,r23
 2001ddc:	d9811e04 	addi	r6,sp,1144
 2001de0:	2007a240 	call	2007a24 <__sprint_r>
 2001de4:	103b941e 	bne	r2,zero,2000c38 <___vfprintf_internal_r+0x45c>
 2001de8:	d8c12017 	ldw	r3,1152(sp)
 2001dec:	dc011f17 	ldw	r16,1148(sp)
 2001df0:	da000404 	addi	r8,sp,16
 2001df4:	003e8d06 	br	200182c <___vfprintf_internal_r+0x1050>
 2001df8:	b009883a 	mov	r4,r22
 2001dfc:	b80b883a 	mov	r5,r23
 2001e00:	d9811e04 	addi	r6,sp,1144
 2001e04:	2007a240 	call	2007a24 <__sprint_r>
 2001e08:	103b8b1e 	bne	r2,zero,2000c38 <___vfprintf_internal_r+0x45c>
 2001e0c:	d8c12017 	ldw	r3,1152(sp)
 2001e10:	dc011f17 	ldw	r16,1148(sp)
 2001e14:	dc800404 	addi	r18,sp,16
 2001e18:	003e8f06 	br	2001858 <___vfprintf_internal_r+0x107c>
 2001e1c:	db010e04 	addi	r12,sp,1080
 2001e20:	0025883a 	mov	r18,zero
 2001e24:	db013115 	stw	r12,1220(sp)
 2001e28:	003bfb06 	br	2000e18 <___vfprintf_internal_r+0x63c>
 2001e2c:	b009883a 	mov	r4,r22
 2001e30:	b80b883a 	mov	r5,r23
 2001e34:	d9811e04 	addi	r6,sp,1144
 2001e38:	2007a240 	call	2007a24 <__sprint_r>
 2001e3c:	103b7e1e 	bne	r2,zero,2000c38 <___vfprintf_internal_r+0x45c>
 2001e40:	d8c12017 	ldw	r3,1152(sp)
 2001e44:	da000404 	addi	r8,sp,16
 2001e48:	003c5506 	br	2000fa0 <___vfprintf_internal_r+0x7c4>
 2001e4c:	04e7c83a 	sub	r19,zero,r19
 2001e50:	9804c03a 	cmpne	r2,r19,zero
 2001e54:	0739c83a 	sub	fp,zero,fp
 2001e58:	e0b9c83a 	sub	fp,fp,r2
 2001e5c:	05400b44 	movi	r21,45
 2001e60:	dd412785 	stb	r21,1182(sp)
 2001e64:	da413215 	stw	r9,1224(sp)
 2001e68:	00800044 	movi	r2,1
 2001e6c:	9f06b03a 	or	r3,r19,fp
 2001e70:	003bcf06 	br	2000db0 <___vfprintf_internal_r+0x5d4>
 2001e74:	da013f15 	stw	r8,1276(sp)
 2001e78:	da413e15 	stw	r9,1272(sp)
 2001e7c:	20076800 	call	2007680 <__fpclassifyd>
 2001e80:	da013f17 	ldw	r8,1276(sp)
 2001e84:	da413e17 	ldw	r9,1272(sp)
 2001e88:	1000ce26 	beq	r2,zero,20021c4 <___vfprintf_internal_r+0x19e8>
 2001e8c:	057ff7c4 	movi	r21,-33
 2001e90:	00bfffc4 	movi	r2,-1
 2001e94:	856a703a 	and	r21,r16,r21
 2001e98:	4881f026 	beq	r9,r2,200265c <___vfprintf_internal_r+0x1e80>
 2001e9c:	008011c4 	movi	r2,71
 2001ea0:	a881e526 	beq	r21,r2,2002638 <___vfprintf_internal_r+0x1e5c>
 2001ea4:	db013917 	ldw	r12,1252(sp)
 2001ea8:	8ac04014 	ori	r11,r17,256
 2001eac:	dac12d15 	stw	r11,1204(sp)
 2001eb0:	6001e416 	blt	r12,zero,2002644 <___vfprintf_internal_r+0x1e68>
 2001eb4:	dc813917 	ldw	r18,1252(sp)
 2001eb8:	d8012b05 	stb	zero,1196(sp)
 2001ebc:	00801984 	movi	r2,102
 2001ec0:	80811826 	beq	r16,r2,2002324 <___vfprintf_internal_r+0x1b48>
 2001ec4:	00801184 	movi	r2,70
 2001ec8:	80811626 	beq	r16,r2,2002324 <___vfprintf_internal_r+0x1b48>
 2001ecc:	00801144 	movi	r2,69
 2001ed0:	a881e026 	beq	r21,r2,2002654 <___vfprintf_internal_r+0x1e78>
 2001ed4:	4839883a 	mov	fp,r9
 2001ed8:	d8812604 	addi	r2,sp,1176
 2001edc:	d8800115 	stw	r2,4(sp)
 2001ee0:	d9413717 	ldw	r5,1244(sp)
 2001ee4:	d8812504 	addi	r2,sp,1172
 2001ee8:	d8800215 	stw	r2,8(sp)
 2001eec:	d8812104 	addi	r2,sp,1156
 2001ef0:	df000015 	stw	fp,0(sp)
 2001ef4:	d8800315 	stw	r2,12(sp)
 2001ef8:	b009883a 	mov	r4,r22
 2001efc:	900d883a 	mov	r6,r18
 2001f00:	01c00084 	movi	r7,2
 2001f04:	da013f15 	stw	r8,1276(sp)
 2001f08:	da413e15 	stw	r9,1272(sp)
 2001f0c:	2002b2c0 	call	2002b2c <_dtoa_r>
 2001f10:	d8813115 	stw	r2,1220(sp)
 2001f14:	008019c4 	movi	r2,103
 2001f18:	da013f17 	ldw	r8,1276(sp)
 2001f1c:	da413e17 	ldw	r9,1272(sp)
 2001f20:	80800226 	beq	r16,r2,2001f2c <___vfprintf_internal_r+0x1750>
 2001f24:	008011c4 	movi	r2,71
 2001f28:	8081101e 	bne	r16,r2,200236c <___vfprintf_internal_r+0x1b90>
 2001f2c:	8880004c 	andi	r2,r17,1
 2001f30:	1001df26 	beq	r2,zero,20026b0 <___vfprintf_internal_r+0x1ed4>
 2001f34:	db013117 	ldw	r12,1220(sp)
 2001f38:	6715883a 	add	r10,r12,fp
 2001f3c:	d9013717 	ldw	r4,1244(sp)
 2001f40:	900b883a 	mov	r5,r18
 2001f44:	000d883a 	mov	r6,zero
 2001f48:	000f883a 	mov	r7,zero
 2001f4c:	da013f15 	stw	r8,1276(sp)
 2001f50:	da413e15 	stw	r9,1272(sp)
 2001f54:	da813d15 	stw	r10,1268(sp)
 2001f58:	200b4d80 	call	200b4d8 <__eqdf2>
 2001f5c:	da013f17 	ldw	r8,1276(sp)
 2001f60:	da413e17 	ldw	r9,1272(sp)
 2001f64:	da813d17 	ldw	r10,1268(sp)
 2001f68:	10016526 	beq	r2,zero,2002500 <___vfprintf_internal_r+0x1d24>
 2001f6c:	d8812117 	ldw	r2,1156(sp)
 2001f70:	1280062e 	bgeu	r2,r10,2001f8c <___vfprintf_internal_r+0x17b0>
 2001f74:	01000c04 	movi	r4,48
 2001f78:	10c00044 	addi	r3,r2,1
 2001f7c:	d8c12115 	stw	r3,1156(sp)
 2001f80:	11000005 	stb	r4,0(r2)
 2001f84:	d8812117 	ldw	r2,1156(sp)
 2001f88:	12bffb36 	bltu	r2,r10,2001f78 <___vfprintf_internal_r+0x179c>
 2001f8c:	db013117 	ldw	r12,1220(sp)
 2001f90:	1305c83a 	sub	r2,r2,r12
 2001f94:	d8813315 	stw	r2,1228(sp)
 2001f98:	008011c4 	movi	r2,71
 2001f9c:	a8814a26 	beq	r21,r2,20024c8 <___vfprintf_internal_r+0x1cec>
 2001fa0:	00801944 	movi	r2,101
 2001fa4:	14020a0e 	bge	r2,r16,20027d0 <___vfprintf_internal_r+0x1ff4>
 2001fa8:	00801984 	movi	r2,102
 2001fac:	8081b626 	beq	r16,r2,2002688 <___vfprintf_internal_r+0x1eac>
 2001fb0:	db012617 	ldw	r12,1176(sp)
 2001fb4:	db013415 	stw	r12,1232(sp)
 2001fb8:	db013417 	ldw	r12,1232(sp)
 2001fbc:	dac13317 	ldw	r11,1228(sp)
 2001fc0:	62c1a816 	blt	r12,r11,2002664 <___vfprintf_internal_r+0x1e88>
 2001fc4:	8c40004c 	andi	r17,r17,1
 2001fc8:	8801ca1e 	bne	r17,zero,20026f4 <___vfprintf_internal_r+0x1f18>
 2001fcc:	6005883a 	mov	r2,r12
 2001fd0:	6001b516 	blt	r12,zero,20026a8 <___vfprintf_internal_r+0x1ecc>
 2001fd4:	dc813417 	ldw	r18,1232(sp)
 2001fd8:	df012b07 	ldb	fp,1196(sp)
 2001fdc:	e001321e 	bne	fp,zero,20024a8 <___vfprintf_internal_r+0x1ccc>
 2001fe0:	dc412d17 	ldw	r17,1204(sp)
 2001fe4:	dd412783 	ldbu	r21,1182(sp)
 2001fe8:	d8812b15 	stw	r2,1196(sp)
 2001fec:	dcc12d15 	stw	r19,1204(sp)
 2001ff0:	d8013215 	stw	zero,1224(sp)
 2001ff4:	003b8d06 	br	2000e2c <___vfprintf_internal_r+0x650>
 2001ff8:	88c0100c 	andi	r3,r17,64
 2001ffc:	18008226 	beq	r3,zero,2002208 <___vfprintf_internal_r+0x1a2c>
 2002000:	dac12d17 	ldw	r11,1204(sp)
 2002004:	14c0000b 	ldhu	r19,0(r2)
 2002008:	0039883a 	mov	fp,zero
 200200c:	5ac00104 	addi	r11,r11,4
 2002010:	dac12d15 	stw	r11,1204(sp)
 2002014:	003c8f06 	br	2001254 <___vfprintf_internal_r+0xa78>
 2002018:	1c000007 	ldb	r16,0(r3)
 200201c:	1805883a 	mov	r2,r3
 2002020:	003a5506 	br	2000978 <___vfprintf_internal_r+0x19c>
 2002024:	00800084 	movi	r2,2
 2002028:	003b5e06 	br	2000da4 <___vfprintf_internal_r+0x5c8>
 200202c:	8880040c 	andi	r2,r17,16
 2002030:	1000091e 	bne	r2,zero,2002058 <___vfprintf_internal_r+0x187c>
 2002034:	8c40100c 	andi	r17,r17,64
 2002038:	88000726 	beq	r17,zero,2002058 <___vfprintf_internal_r+0x187c>
 200203c:	db012d17 	ldw	r12,1204(sp)
 2002040:	dac12f17 	ldw	r11,1212(sp)
 2002044:	60800017 	ldw	r2,0(r12)
 2002048:	63000104 	addi	r12,r12,4
 200204c:	db012d15 	stw	r12,1204(sp)
 2002050:	12c0000d 	sth	r11,0(r2)
 2002054:	003a1e06 	br	20008d0 <___vfprintf_internal_r+0xf4>
 2002058:	db012d17 	ldw	r12,1204(sp)
 200205c:	dac12f17 	ldw	r11,1212(sp)
 2002060:	60800017 	ldw	r2,0(r12)
 2002064:	63000104 	addi	r12,r12,4
 2002068:	db012d15 	stw	r12,1204(sp)
 200206c:	12c00015 	stw	r11,0(r2)
 2002070:	003a1706 	br	20008d0 <___vfprintf_internal_r+0xf4>
 2002074:	01008074 	movhi	r4,513
 2002078:	213c7c84 	addi	r4,r4,-3598
 200207c:	d9012c15 	stw	r4,1200(sp)
 2002080:	dac12c17 	ldw	r11,1200(sp)
 2002084:	1c87883a 	add	r3,r3,r18
 2002088:	10800044 	addi	r2,r2,1
 200208c:	42c00015 	stw	r11,0(r8)
 2002090:	44800115 	stw	r18,4(r8)
 2002094:	d8c12015 	stw	r3,1152(sp)
 2002098:	d8811f15 	stw	r2,1148(sp)
 200209c:	010001c4 	movi	r4,7
 20020a0:	20bee016 	blt	r4,r2,2001c24 <___vfprintf_internal_r+0x1448>
 20020a4:	42000204 	addi	r8,r8,8
 20020a8:	003ee506 	br	2001c40 <___vfprintf_internal_r+0x1464>
 20020ac:	01008074 	movhi	r4,513
 20020b0:	213c7c84 	addi	r4,r4,-3598
 20020b4:	d9012c15 	stw	r4,1200(sp)
 20020b8:	003bd806 	br	200101c <___vfprintf_internal_r+0x840>
 20020bc:	b009883a 	mov	r4,r22
 20020c0:	b80b883a 	mov	r5,r23
 20020c4:	d9811e04 	addi	r6,sp,1144
 20020c8:	2007a240 	call	2007a24 <__sprint_r>
 20020cc:	103ada1e 	bne	r2,zero,2000c38 <___vfprintf_internal_r+0x45c>
 20020d0:	d8c12017 	ldw	r3,1152(sp)
 20020d4:	da000404 	addi	r8,sp,16
 20020d8:	003d6b06 	br	2001688 <___vfprintf_internal_r+0xeac>
 20020dc:	d8811f17 	ldw	r2,1148(sp)
 20020e0:	03008074 	movhi	r12,513
 20020e4:	01000044 	movi	r4,1
 20020e8:	18c00044 	addi	r3,r3,1
 20020ec:	10800044 	addi	r2,r2,1
 20020f0:	633c7c04 	addi	r12,r12,-3600
 20020f4:	41000115 	stw	r4,4(r8)
 20020f8:	43000015 	stw	r12,0(r8)
 20020fc:	d8c12015 	stw	r3,1152(sp)
 2002100:	d8811f15 	stw	r2,1148(sp)
 2002104:	010001c4 	movi	r4,7
 2002108:	20804916 	blt	r4,r2,2002230 <___vfprintf_internal_r+0x1a54>
 200210c:	42000204 	addi	r8,r8,8
 2002110:	8000041e 	bne	r16,zero,2002124 <___vfprintf_internal_r+0x1948>
 2002114:	dac13317 	ldw	r11,1228(sp)
 2002118:	5800021e 	bne	r11,zero,2002124 <___vfprintf_internal_r+0x1948>
 200211c:	8880004c 	andi	r2,r17,1
 2002120:	103bd526 	beq	r2,zero,2001078 <___vfprintf_internal_r+0x89c>
 2002124:	db013817 	ldw	r12,1248(sp)
 2002128:	d8811f17 	ldw	r2,1148(sp)
 200212c:	dac13517 	ldw	r11,1236(sp)
 2002130:	1b07883a 	add	r3,r3,r12
 2002134:	10800044 	addi	r2,r2,1
 2002138:	42c00015 	stw	r11,0(r8)
 200213c:	43000115 	stw	r12,4(r8)
 2002140:	d8c12015 	stw	r3,1152(sp)
 2002144:	d8811f15 	stw	r2,1148(sp)
 2002148:	010001c4 	movi	r4,7
 200214c:	20813016 	blt	r4,r2,2002610 <___vfprintf_internal_r+0x1e34>
 2002150:	42000204 	addi	r8,r8,8
 2002154:	0421c83a 	sub	r16,zero,r16
 2002158:	0400630e 	bge	zero,r16,20022e8 <___vfprintf_internal_r+0x1b0c>
 200215c:	04800404 	movi	r18,16
 2002160:	94009f0e 	bge	r18,r16,20023e0 <___vfprintf_internal_r+0x1c04>
 2002164:	01008074 	movhi	r4,513
 2002168:	213c7c84 	addi	r4,r4,-3598
 200216c:	d9012c15 	stw	r4,1200(sp)
 2002170:	054001c4 	movi	r21,7
 2002174:	00000306 	br	2002184 <___vfprintf_internal_r+0x19a8>
 2002178:	42000204 	addi	r8,r8,8
 200217c:	843ffc04 	addi	r16,r16,-16
 2002180:	94009a0e 	bge	r18,r16,20023ec <___vfprintf_internal_r+0x1c10>
 2002184:	18c00404 	addi	r3,r3,16
 2002188:	10800044 	addi	r2,r2,1
 200218c:	45000015 	stw	r20,0(r8)
 2002190:	44800115 	stw	r18,4(r8)
 2002194:	d8c12015 	stw	r3,1152(sp)
 2002198:	d8811f15 	stw	r2,1148(sp)
 200219c:	a8bff60e 	bge	r21,r2,2002178 <___vfprintf_internal_r+0x199c>
 20021a0:	b009883a 	mov	r4,r22
 20021a4:	b80b883a 	mov	r5,r23
 20021a8:	d9811e04 	addi	r6,sp,1144
 20021ac:	2007a240 	call	2007a24 <__sprint_r>
 20021b0:	103aa11e 	bne	r2,zero,2000c38 <___vfprintf_internal_r+0x45c>
 20021b4:	d8c12017 	ldw	r3,1152(sp)
 20021b8:	d8811f17 	ldw	r2,1148(sp)
 20021bc:	da000404 	addi	r8,sp,16
 20021c0:	003fee06 	br	200217c <___vfprintf_internal_r+0x19a0>
 20021c4:	008011c4 	movi	r2,71
 20021c8:	1400b316 	blt	r2,r16,2002498 <___vfprintf_internal_r+0x1cbc>
 20021cc:	03008074 	movhi	r12,513
 20021d0:	633c6e04 	addi	r12,r12,-3656
 20021d4:	db013115 	stw	r12,1220(sp)
 20021d8:	00c000c4 	movi	r3,3
 20021dc:	00bfdfc4 	movi	r2,-129
 20021e0:	d8c12b15 	stw	r3,1196(sp)
 20021e4:	88a2703a 	and	r17,r17,r2
 20021e8:	dd412783 	ldbu	r21,1182(sp)
 20021ec:	dcc12d15 	stw	r19,1204(sp)
 20021f0:	1825883a 	mov	r18,r3
 20021f4:	d8013215 	stw	zero,1224(sp)
 20021f8:	d8013415 	stw	zero,1232(sp)
 20021fc:	003b0b06 	br	2000e2c <___vfprintf_internal_r+0x650>
 2002200:	4825883a 	mov	r18,r9
 2002204:	003cba06 	br	20014f0 <___vfprintf_internal_r+0xd14>
 2002208:	db012d17 	ldw	r12,1204(sp)
 200220c:	14c00017 	ldw	r19,0(r2)
 2002210:	0039883a 	mov	fp,zero
 2002214:	63000104 	addi	r12,r12,4
 2002218:	db012d15 	stw	r12,1204(sp)
 200221c:	003c0d06 	br	2001254 <___vfprintf_internal_r+0xa78>
 2002220:	00808074 	movhi	r2,513
 2002224:	10bc6c04 	addi	r2,r2,-3664
 2002228:	d8813115 	stw	r2,1220(sp)
 200222c:	003ac406 	br	2000d40 <___vfprintf_internal_r+0x564>
 2002230:	b009883a 	mov	r4,r22
 2002234:	b80b883a 	mov	r5,r23
 2002238:	d9811e04 	addi	r6,sp,1144
 200223c:	2007a240 	call	2007a24 <__sprint_r>
 2002240:	103a7d1e 	bne	r2,zero,2000c38 <___vfprintf_internal_r+0x45c>
 2002244:	dc012617 	ldw	r16,1176(sp)
 2002248:	d8c12017 	ldw	r3,1152(sp)
 200224c:	da000404 	addi	r8,sp,16
 2002250:	003faf06 	br	2002110 <___vfprintf_internal_r+0x1934>
 2002254:	db012e17 	ldw	r12,1208(sp)
 2002258:	1805883a 	mov	r2,r3
 200225c:	dac12d15 	stw	r11,1204(sp)
 2002260:	0319c83a 	sub	r12,zero,r12
 2002264:	db012e15 	stw	r12,1208(sp)
 2002268:	003a7e06 	br	2000c64 <___vfprintf_internal_r+0x488>
 200226c:	18800044 	addi	r2,r3,1
 2002270:	8c400814 	ori	r17,r17,32
 2002274:	1c000047 	ldb	r16,1(r3)
 2002278:	0039bf06 	br	2000978 <___vfprintf_internal_r+0x19c>
 200227c:	b009883a 	mov	r4,r22
 2002280:	b80b883a 	mov	r5,r23
 2002284:	d9811e04 	addi	r6,sp,1144
 2002288:	2007a240 	call	2007a24 <__sprint_r>
 200228c:	103a6a1e 	bne	r2,zero,2000c38 <___vfprintf_internal_r+0x45c>
 2002290:	d8c12017 	ldw	r3,1152(sp)
 2002294:	da000404 	addi	r8,sp,16
 2002298:	003d0c06 	br	20016cc <___vfprintf_internal_r+0xef0>
 200229c:	db012817 	ldw	r12,1184(sp)
 20022a0:	d8c13117 	ldw	r3,1220(sp)
 20022a4:	60e5c83a 	sub	r18,r12,r3
 20022a8:	003adb06 	br	2000e18 <___vfprintf_internal_r+0x63c>
 20022ac:	da013f15 	stw	r8,1276(sp)
 20022b0:	20007440 	call	2000744 <strlen>
 20022b4:	1025883a 	mov	r18,r2
 20022b8:	da013f17 	ldw	r8,1276(sp)
 20022bc:	903c8e0e 	bge	r18,zero,20014f8 <___vfprintf_internal_r+0xd1c>
 20022c0:	0005883a 	mov	r2,zero
 20022c4:	003c8c06 	br	20014f8 <___vfprintf_internal_r+0xd1c>
 20022c8:	b009883a 	mov	r4,r22
 20022cc:	b80b883a 	mov	r5,r23
 20022d0:	d9811e04 	addi	r6,sp,1144
 20022d4:	2007a240 	call	2007a24 <__sprint_r>
 20022d8:	103a571e 	bne	r2,zero,2000c38 <___vfprintf_internal_r+0x45c>
 20022dc:	d8c12017 	ldw	r3,1152(sp)
 20022e0:	d8811f17 	ldw	r2,1148(sp)
 20022e4:	da000404 	addi	r8,sp,16
 20022e8:	db013317 	ldw	r12,1228(sp)
 20022ec:	dac13117 	ldw	r11,1220(sp)
 20022f0:	10800044 	addi	r2,r2,1
 20022f4:	60c7883a 	add	r3,r12,r3
 20022f8:	42c00015 	stw	r11,0(r8)
 20022fc:	43000115 	stw	r12,4(r8)
 2002300:	d8c12015 	stw	r3,1152(sp)
 2002304:	d8811f15 	stw	r2,1148(sp)
 2002308:	010001c4 	movi	r4,7
 200230c:	20bb590e 	bge	r4,r2,2001074 <___vfprintf_internal_r+0x898>
 2002310:	003d7e06 	br	200190c <___vfprintf_internal_r+0x1130>
 2002314:	01008074 	movhi	r4,513
 2002318:	213c8084 	addi	r4,r4,-3582
 200231c:	d9013615 	stw	r4,1240(sp)
 2002320:	003af606 	br	2000efc <___vfprintf_internal_r+0x720>
 2002324:	d8812604 	addi	r2,sp,1176
 2002328:	d8800115 	stw	r2,4(sp)
 200232c:	d9413717 	ldw	r5,1244(sp)
 2002330:	d8812504 	addi	r2,sp,1172
 2002334:	d8800215 	stw	r2,8(sp)
 2002338:	d8812104 	addi	r2,sp,1156
 200233c:	da400015 	stw	r9,0(sp)
 2002340:	d8800315 	stw	r2,12(sp)
 2002344:	b009883a 	mov	r4,r22
 2002348:	900d883a 	mov	r6,r18
 200234c:	01c000c4 	movi	r7,3
 2002350:	da013f15 	stw	r8,1276(sp)
 2002354:	da413e15 	stw	r9,1272(sp)
 2002358:	2002b2c0 	call	2002b2c <_dtoa_r>
 200235c:	da413e17 	ldw	r9,1272(sp)
 2002360:	da013f17 	ldw	r8,1276(sp)
 2002364:	d8813115 	stw	r2,1220(sp)
 2002368:	4839883a 	mov	fp,r9
 200236c:	dac13117 	ldw	r11,1220(sp)
 2002370:	00801184 	movi	r2,70
 2002374:	5f15883a 	add	r10,r11,fp
 2002378:	a8bef01e 	bne	r21,r2,2001f3c <___vfprintf_internal_r+0x1760>
 200237c:	59000007 	ldb	r4,0(r11)
 2002380:	00800c04 	movi	r2,48
 2002384:	2080e026 	beq	r4,r2,2002708 <___vfprintf_internal_r+0x1f2c>
 2002388:	d8c12617 	ldw	r3,1176(sp)
 200238c:	50d5883a 	add	r10,r10,r3
 2002390:	003eea06 	br	2001f3c <___vfprintf_internal_r+0x1760>
 2002394:	0025883a 	mov	r18,zero
 2002398:	003db306 	br	2001a68 <___vfprintf_internal_r+0x128c>
 200239c:	b009883a 	mov	r4,r22
 20023a0:	b80b883a 	mov	r5,r23
 20023a4:	d9811e04 	addi	r6,sp,1144
 20023a8:	2007a240 	call	2007a24 <__sprint_r>
 20023ac:	103a221e 	bne	r2,zero,2000c38 <___vfprintf_internal_r+0x45c>
 20023b0:	d8c12017 	ldw	r3,1152(sp)
 20023b4:	da000404 	addi	r8,sp,16
 20023b8:	003daa06 	br	2001a64 <___vfprintf_internal_r+0x1288>
 20023bc:	b009883a 	mov	r4,r22
 20023c0:	b80b883a 	mov	r5,r23
 20023c4:	d9811e04 	addi	r6,sp,1144
 20023c8:	2007a240 	call	2007a24 <__sprint_r>
 20023cc:	103a1a1e 	bne	r2,zero,2000c38 <___vfprintf_internal_r+0x45c>
 20023d0:	d8812617 	ldw	r2,1176(sp)
 20023d4:	d8c12017 	ldw	r3,1152(sp)
 20023d8:	da000404 	addi	r8,sp,16
 20023dc:	003e2c06 	br	2001c90 <___vfprintf_internal_r+0x14b4>
 20023e0:	03008074 	movhi	r12,513
 20023e4:	633c7c84 	addi	r12,r12,-3598
 20023e8:	db012c15 	stw	r12,1200(sp)
 20023ec:	dac12c17 	ldw	r11,1200(sp)
 20023f0:	1c07883a 	add	r3,r3,r16
 20023f4:	10800044 	addi	r2,r2,1
 20023f8:	42c00015 	stw	r11,0(r8)
 20023fc:	44000115 	stw	r16,4(r8)
 2002400:	d8c12015 	stw	r3,1152(sp)
 2002404:	d8811f15 	stw	r2,1148(sp)
 2002408:	010001c4 	movi	r4,7
 200240c:	20bfae16 	blt	r4,r2,20022c8 <___vfprintf_internal_r+0x1aec>
 2002410:	42000204 	addi	r8,r8,8
 2002414:	003fb406 	br	20022e8 <___vfprintf_internal_r+0x1b0c>
 2002418:	03008074 	movhi	r12,513
 200241c:	633c8084 	addi	r12,r12,-3582
 2002420:	db013615 	stw	r12,1240(sp)
 2002424:	003b3806 	br	2001108 <___vfprintf_internal_r+0x92c>
 2002428:	b009883a 	mov	r4,r22
 200242c:	b80b883a 	mov	r5,r23
 2002430:	d9811e04 	addi	r6,sp,1144
 2002434:	2007a240 	call	2007a24 <__sprint_r>
 2002438:	1039ff1e 	bne	r2,zero,2000c38 <___vfprintf_internal_r+0x45c>
 200243c:	d8812617 	ldw	r2,1176(sp)
 2002440:	db013317 	ldw	r12,1228(sp)
 2002444:	d8c12017 	ldw	r3,1152(sp)
 2002448:	da000404 	addi	r8,sp,16
 200244c:	6085c83a 	sub	r2,r12,r2
 2002450:	003e2006 	br	2001cd4 <___vfprintf_internal_r+0x14f8>
 2002454:	0021883a 	mov	r16,zero
 2002458:	003e1f06 	br	2001cd8 <___vfprintf_internal_r+0x14fc>
 200245c:	00800184 	movi	r2,6
 2002460:	1240012e 	bgeu	r2,r9,2002468 <___vfprintf_internal_r+0x1c8c>
 2002464:	1013883a 	mov	r9,r2
 2002468:	4825883a 	mov	r18,r9
 200246c:	4805883a 	mov	r2,r9
 2002470:	48009e16 	blt	r9,zero,20026ec <___vfprintf_internal_r+0x1f10>
 2002474:	d8812b15 	stw	r2,1196(sp)
 2002478:	00808074 	movhi	r2,513
 200247c:	10bc7a04 	addi	r2,r2,-3608
 2002480:	d8813115 	stw	r2,1220(sp)
 2002484:	dcc12d15 	stw	r19,1204(sp)
 2002488:	d8013215 	stw	zero,1224(sp)
 200248c:	d8013415 	stw	zero,1232(sp)
 2002490:	0005883a 	mov	r2,zero
 2002494:	003a6c06 	br	2000e48 <___vfprintf_internal_r+0x66c>
 2002498:	00808074 	movhi	r2,513
 200249c:	10bc6f04 	addi	r2,r2,-3652
 20024a0:	d8813115 	stw	r2,1220(sp)
 20024a4:	003f4c06 	br	20021d8 <___vfprintf_internal_r+0x19fc>
 20024a8:	00c00b44 	movi	r3,45
 20024ac:	d8812b15 	stw	r2,1196(sp)
 20024b0:	dc412d17 	ldw	r17,1204(sp)
 20024b4:	d8c12785 	stb	r3,1182(sp)
 20024b8:	dcc12d15 	stw	r19,1204(sp)
 20024bc:	d8013215 	stw	zero,1224(sp)
 20024c0:	00800b44 	movi	r2,45
 20024c4:	003a5d06 	br	2000e3c <___vfprintf_internal_r+0x660>
 20024c8:	d8c12617 	ldw	r3,1176(sp)
 20024cc:	00bfff44 	movi	r2,-3
 20024d0:	18800d16 	blt	r3,r2,2002508 <___vfprintf_internal_r+0x1d2c>
 20024d4:	48c00c16 	blt	r9,r3,2002508 <___vfprintf_internal_r+0x1d2c>
 20024d8:	d8c13415 	stw	r3,1232(sp)
 20024dc:	040019c4 	movi	r16,103
 20024e0:	003eb506 	br	2001fb8 <___vfprintf_internal_r+0x17dc>
 20024e4:	05400b44 	movi	r21,45
 20024e8:	dd412785 	stb	r21,1182(sp)
 20024ec:	003a0f06 	br	2000d2c <___vfprintf_internal_r+0x550>
 20024f0:	01008074 	movhi	r4,513
 20024f4:	213c7c84 	addi	r4,r4,-3598
 20024f8:	d9012c15 	stw	r4,1200(sp)
 20024fc:	003cb106 	br	20017c4 <___vfprintf_internal_r+0xfe8>
 2002500:	5005883a 	mov	r2,r10
 2002504:	003ea106 	br	2001f8c <___vfprintf_internal_r+0x17b0>
 2002508:	843fff84 	addi	r16,r16,-2
 200250c:	1f3fffc4 	addi	fp,r3,-1
 2002510:	df012615 	stw	fp,1176(sp)
 2002514:	dc0122c5 	stb	r16,1163(sp)
 2002518:	e0009516 	blt	fp,zero,2002770 <___vfprintf_internal_r+0x1f94>
 200251c:	00800ac4 	movi	r2,43
 2002520:	d8812305 	stb	r2,1164(sp)
 2002524:	00800244 	movi	r2,9
 2002528:	1700690e 	bge	r2,fp,20026d0 <___vfprintf_internal_r+0x1ef4>
 200252c:	dd4122c4 	addi	r21,sp,1163
 2002530:	dc012c15 	stw	r16,1200(sp)
 2002534:	8825883a 	mov	r18,r17
 2002538:	a821883a 	mov	r16,r21
 200253c:	4023883a 	mov	r17,r8
 2002540:	e009883a 	mov	r4,fp
 2002544:	01400284 	movi	r5,10
 2002548:	200a3040 	call	200a304 <__modsi3>
 200254c:	10800c04 	addi	r2,r2,48
 2002550:	843fffc4 	addi	r16,r16,-1
 2002554:	e009883a 	mov	r4,fp
 2002558:	01400284 	movi	r5,10
 200255c:	80800005 	stb	r2,0(r16)
 2002560:	200a2b00 	call	200a2b0 <__divsi3>
 2002564:	1039883a 	mov	fp,r2
 2002568:	00800244 	movi	r2,9
 200256c:	173ff416 	blt	r2,fp,2002540 <___vfprintf_internal_r+0x1d64>
 2002570:	8811883a 	mov	r8,r17
 2002574:	e0800c04 	addi	r2,fp,48
 2002578:	9023883a 	mov	r17,r18
 200257c:	8025883a 	mov	r18,r16
 2002580:	913fffc4 	addi	r4,r18,-1
 2002584:	90bfffc5 	stb	r2,-1(r18)
 2002588:	dc012c17 	ldw	r16,1200(sp)
 200258c:	25408e2e 	bgeu	r4,r21,20027c8 <___vfprintf_internal_r+0x1fec>
 2002590:	d9412384 	addi	r5,sp,1166
 2002594:	2c8bc83a 	sub	r5,r5,r18
 2002598:	d8c12344 	addi	r3,sp,1165
 200259c:	a94b883a 	add	r5,r21,r5
 20025a0:	00000106 	br	20025a8 <___vfprintf_internal_r+0x1dcc>
 20025a4:	20800003 	ldbu	r2,0(r4)
 20025a8:	18800005 	stb	r2,0(r3)
 20025ac:	18c00044 	addi	r3,r3,1
 20025b0:	21000044 	addi	r4,r4,1
 20025b4:	197ffb1e 	bne	r3,r5,20025a4 <___vfprintf_internal_r+0x1dc8>
 20025b8:	d8812304 	addi	r2,sp,1164
 20025bc:	1485c83a 	sub	r2,r2,r18
 20025c0:	d8c12344 	addi	r3,sp,1165
 20025c4:	1885883a 	add	r2,r3,r2
 20025c8:	dac13317 	ldw	r11,1228(sp)
 20025cc:	156bc83a 	sub	r21,r2,r21
 20025d0:	dd413a15 	stw	r21,1256(sp)
 20025d4:	00800044 	movi	r2,1
 20025d8:	5d65883a 	add	r18,r11,r21
 20025dc:	12c0770e 	bge	r2,r11,20027bc <___vfprintf_internal_r+0x1fe0>
 20025e0:	94800044 	addi	r18,r18,1
 20025e4:	9005883a 	mov	r2,r18
 20025e8:	90007216 	blt	r18,zero,20027b4 <___vfprintf_internal_r+0x1fd8>
 20025ec:	d8013415 	stw	zero,1232(sp)
 20025f0:	003e7906 	br	2001fd8 <___vfprintf_internal_r+0x17fc>
 20025f4:	da412b15 	stw	r9,1196(sp)
 20025f8:	dd412783 	ldbu	r21,1182(sp)
 20025fc:	4825883a 	mov	r18,r9
 2002600:	dcc12d15 	stw	r19,1204(sp)
 2002604:	d8013215 	stw	zero,1224(sp)
 2002608:	d8013415 	stw	zero,1232(sp)
 200260c:	003a0706 	br	2000e2c <___vfprintf_internal_r+0x650>
 2002610:	b009883a 	mov	r4,r22
 2002614:	b80b883a 	mov	r5,r23
 2002618:	d9811e04 	addi	r6,sp,1144
 200261c:	2007a240 	call	2007a24 <__sprint_r>
 2002620:	1039851e 	bne	r2,zero,2000c38 <___vfprintf_internal_r+0x45c>
 2002624:	dc012617 	ldw	r16,1176(sp)
 2002628:	d8c12017 	ldw	r3,1152(sp)
 200262c:	d8811f17 	ldw	r2,1148(sp)
 2002630:	da000404 	addi	r8,sp,16
 2002634:	003ec706 	br	2002154 <___vfprintf_internal_r+0x1978>
 2002638:	483e1a1e 	bne	r9,zero,2001ea4 <___vfprintf_internal_r+0x16c8>
 200263c:	9013883a 	mov	r9,r18
 2002640:	003e1806 	br	2001ea4 <___vfprintf_internal_r+0x16c8>
 2002644:	00c00b44 	movi	r3,45
 2002648:	64a0003c 	xorhi	r18,r12,32768
 200264c:	d8c12b05 	stb	r3,1196(sp)
 2002650:	003e1a06 	br	2001ebc <___vfprintf_internal_r+0x16e0>
 2002654:	4f000044 	addi	fp,r9,1
 2002658:	003e1f06 	br	2001ed8 <___vfprintf_internal_r+0x16fc>
 200265c:	02400184 	movi	r9,6
 2002660:	003e1006 	br	2001ea4 <___vfprintf_internal_r+0x16c8>
 2002664:	d8c13417 	ldw	r3,1232(sp)
 2002668:	00c04b0e 	bge	zero,r3,2002798 <___vfprintf_internal_r+0x1fbc>
 200266c:	04800044 	movi	r18,1
 2002670:	dac13317 	ldw	r11,1228(sp)
 2002674:	92e5883a 	add	r18,r18,r11
 2002678:	9005883a 	mov	r2,r18
 200267c:	903e560e 	bge	r18,zero,2001fd8 <___vfprintf_internal_r+0x17fc>
 2002680:	0005883a 	mov	r2,zero
 2002684:	003e5406 	br	2001fd8 <___vfprintf_internal_r+0x17fc>
 2002688:	d8c12617 	ldw	r3,1176(sp)
 200268c:	d8c13415 	stw	r3,1232(sp)
 2002690:	00c03b0e 	bge	zero,r3,2002780 <___vfprintf_internal_r+0x1fa4>
 2002694:	4800081e 	bne	r9,zero,20026b8 <___vfprintf_internal_r+0x1edc>
 2002698:	8c40004c 	andi	r17,r17,1
 200269c:	8800061e 	bne	r17,zero,20026b8 <___vfprintf_internal_r+0x1edc>
 20026a0:	1805883a 	mov	r2,r3
 20026a4:	183e4b0e 	bge	r3,zero,2001fd4 <___vfprintf_internal_r+0x17f8>
 20026a8:	0005883a 	mov	r2,zero
 20026ac:	003e4906 	br	2001fd4 <___vfprintf_internal_r+0x17f8>
 20026b0:	d8812117 	ldw	r2,1156(sp)
 20026b4:	003e3506 	br	2001f8c <___vfprintf_internal_r+0x17b0>
 20026b8:	dac13417 	ldw	r11,1232(sp)
 20026bc:	4a400044 	addi	r9,r9,1
 20026c0:	5a65883a 	add	r18,r11,r9
 20026c4:	9005883a 	mov	r2,r18
 20026c8:	903e430e 	bge	r18,zero,2001fd8 <___vfprintf_internal_r+0x17fc>
 20026cc:	003fec06 	br	2002680 <___vfprintf_internal_r+0x1ea4>
 20026d0:	00800c04 	movi	r2,48
 20026d4:	e0c00c04 	addi	r3,fp,48
 20026d8:	d8812345 	stb	r2,1165(sp)
 20026dc:	d8c12385 	stb	r3,1166(sp)
 20026e0:	d88123c4 	addi	r2,sp,1167
 20026e4:	dd4122c4 	addi	r21,sp,1163
 20026e8:	003fb706 	br	20025c8 <___vfprintf_internal_r+0x1dec>
 20026ec:	0005883a 	mov	r2,zero
 20026f0:	003f6006 	br	2002474 <___vfprintf_internal_r+0x1c98>
 20026f4:	db013417 	ldw	r12,1232(sp)
 20026f8:	64800044 	addi	r18,r12,1
 20026fc:	9005883a 	mov	r2,r18
 2002700:	903e350e 	bge	r18,zero,2001fd8 <___vfprintf_internal_r+0x17fc>
 2002704:	003fde06 	br	2002680 <___vfprintf_internal_r+0x1ea4>
 2002708:	d9013717 	ldw	r4,1244(sp)
 200270c:	900b883a 	mov	r5,r18
 2002710:	000d883a 	mov	r6,zero
 2002714:	000f883a 	mov	r7,zero
 2002718:	da013f15 	stw	r8,1276(sp)
 200271c:	da413e15 	stw	r9,1272(sp)
 2002720:	da813d15 	stw	r10,1268(sp)
 2002724:	200b4d80 	call	200b4d8 <__eqdf2>
 2002728:	da013f17 	ldw	r8,1276(sp)
 200272c:	da413e17 	ldw	r9,1272(sp)
 2002730:	da813d17 	ldw	r10,1268(sp)
 2002734:	103f1426 	beq	r2,zero,2002388 <___vfprintf_internal_r+0x1bac>
 2002738:	00800044 	movi	r2,1
 200273c:	1707c83a 	sub	r3,r2,fp
 2002740:	d8c12615 	stw	r3,1176(sp)
 2002744:	003f1106 	br	200238c <___vfprintf_internal_r+0x1bb0>
 2002748:	dac12d17 	ldw	r11,1204(sp)
 200274c:	5a400017 	ldw	r9,0(r11)
 2002750:	5ac00104 	addi	r11,r11,4
 2002754:	dac12d15 	stw	r11,1204(sp)
 2002758:	483ec60e 	bge	r9,zero,2002274 <___vfprintf_internal_r+0x1a98>
 200275c:	027fffc4 	movi	r9,-1
 2002760:	1c000047 	ldb	r16,1(r3)
 2002764:	00388406 	br	2000978 <___vfprintf_internal_r+0x19c>
 2002768:	043fffc4 	movi	r16,-1
 200276c:	00391006 	br	2000bb0 <___vfprintf_internal_r+0x3d4>
 2002770:	00800b44 	movi	r2,45
 2002774:	0739c83a 	sub	fp,zero,fp
 2002778:	d8812305 	stb	r2,1164(sp)
 200277c:	003f6906 	br	2002524 <___vfprintf_internal_r+0x1d48>
 2002780:	4800081e 	bne	r9,zero,20027a4 <___vfprintf_internal_r+0x1fc8>
 2002784:	8c40004c 	andi	r17,r17,1
 2002788:	8800061e 	bne	r17,zero,20027a4 <___vfprintf_internal_r+0x1fc8>
 200278c:	00800044 	movi	r2,1
 2002790:	1025883a 	mov	r18,r2
 2002794:	003e1006 	br	2001fd8 <___vfprintf_internal_r+0x17fc>
 2002798:	04800084 	movi	r18,2
 200279c:	90e5c83a 	sub	r18,r18,r3
 20027a0:	003fb306 	br	2002670 <___vfprintf_internal_r+0x1e94>
 20027a4:	4c800084 	addi	r18,r9,2
 20027a8:	9005883a 	mov	r2,r18
 20027ac:	903e0a0e 	bge	r18,zero,2001fd8 <___vfprintf_internal_r+0x17fc>
 20027b0:	003fb306 	br	2002680 <___vfprintf_internal_r+0x1ea4>
 20027b4:	0005883a 	mov	r2,zero
 20027b8:	003f8c06 	br	20025ec <___vfprintf_internal_r+0x1e10>
 20027bc:	88a2703a 	and	r17,r17,r2
 20027c0:	883f8826 	beq	r17,zero,20025e4 <___vfprintf_internal_r+0x1e08>
 20027c4:	003f8606 	br	20025e0 <___vfprintf_internal_r+0x1e04>
 20027c8:	d8812344 	addi	r2,sp,1165
 20027cc:	003f7e06 	br	20025c8 <___vfprintf_internal_r+0x1dec>
 20027d0:	d8c12617 	ldw	r3,1176(sp)
 20027d4:	003f4d06 	br	200250c <___vfprintf_internal_r+0x1d30>

020027d8 <__vfprintf_internal>:
 20027d8:	2007883a 	mov	r3,r4
 20027dc:	01008074 	movhi	r4,513
 20027e0:	21039504 	addi	r4,r4,3668
 20027e4:	21000017 	ldw	r4,0(r4)
 20027e8:	2805883a 	mov	r2,r5
 20027ec:	300f883a 	mov	r7,r6
 20027f0:	180b883a 	mov	r5,r3
 20027f4:	100d883a 	mov	r6,r2
 20027f8:	20007dc1 	jmpi	20007dc <___vfprintf_internal_r>

020027fc <__swsetup_r>:
 20027fc:	00808074 	movhi	r2,513
 2002800:	defffd04 	addi	sp,sp,-12
 2002804:	10839504 	addi	r2,r2,3668
 2002808:	dc400115 	stw	r17,4(sp)
 200280c:	2023883a 	mov	r17,r4
 2002810:	11000017 	ldw	r4,0(r2)
 2002814:	dc000015 	stw	r16,0(sp)
 2002818:	dfc00215 	stw	ra,8(sp)
 200281c:	2821883a 	mov	r16,r5
 2002820:	20000226 	beq	r4,zero,200282c <__swsetup_r+0x30>
 2002824:	20c00e17 	ldw	r3,56(r4)
 2002828:	18002e26 	beq	r3,zero,20028e4 <__swsetup_r+0xe8>
 200282c:	8080030b 	ldhu	r2,12(r16)
 2002830:	10c0020c 	andi	r3,r2,8
 2002834:	100d883a 	mov	r6,r2
 2002838:	18000f26 	beq	r3,zero,2002878 <__swsetup_r+0x7c>
 200283c:	80c00417 	ldw	r3,16(r16)
 2002840:	18001526 	beq	r3,zero,2002898 <__swsetup_r+0x9c>
 2002844:	1100004c 	andi	r4,r2,1
 2002848:	20001c1e 	bne	r4,zero,20028bc <__swsetup_r+0xc0>
 200284c:	1080008c 	andi	r2,r2,2
 2002850:	1000261e 	bne	r2,zero,20028ec <__swsetup_r+0xf0>
 2002854:	80800517 	ldw	r2,20(r16)
 2002858:	80800215 	stw	r2,8(r16)
 200285c:	18001c26 	beq	r3,zero,20028d0 <__swsetup_r+0xd4>
 2002860:	0005883a 	mov	r2,zero
 2002864:	dfc00217 	ldw	ra,8(sp)
 2002868:	dc400117 	ldw	r17,4(sp)
 200286c:	dc000017 	ldw	r16,0(sp)
 2002870:	dec00304 	addi	sp,sp,12
 2002874:	f800283a 	ret
 2002878:	3080040c 	andi	r2,r6,16
 200287c:	10001726 	beq	r2,zero,20028dc <__swsetup_r+0xe0>
 2002880:	3080010c 	andi	r2,r6,4
 2002884:	10001b1e 	bne	r2,zero,20028f4 <__swsetup_r+0xf8>
 2002888:	80c00417 	ldw	r3,16(r16)
 200288c:	30800214 	ori	r2,r6,8
 2002890:	8080030d 	sth	r2,12(r16)
 2002894:	183feb1e 	bne	r3,zero,2002844 <__swsetup_r+0x48>
 2002898:	1140a00c 	andi	r5,r2,640
 200289c:	01008004 	movi	r4,512
 20028a0:	293fe826 	beq	r5,r4,2002844 <__swsetup_r+0x48>
 20028a4:	8809883a 	mov	r4,r17
 20028a8:	800b883a 	mov	r5,r16
 20028ac:	20053540 	call	2005354 <__smakebuf_r>
 20028b0:	8080030b 	ldhu	r2,12(r16)
 20028b4:	80c00417 	ldw	r3,16(r16)
 20028b8:	003fe206 	br	2002844 <__swsetup_r+0x48>
 20028bc:	80800517 	ldw	r2,20(r16)
 20028c0:	80000215 	stw	zero,8(r16)
 20028c4:	0085c83a 	sub	r2,zero,r2
 20028c8:	80800615 	stw	r2,24(r16)
 20028cc:	183fe41e 	bne	r3,zero,2002860 <__swsetup_r+0x64>
 20028d0:	8080030b 	ldhu	r2,12(r16)
 20028d4:	1080200c 	andi	r2,r2,128
 20028d8:	103fe226 	beq	r2,zero,2002864 <__swsetup_r+0x68>
 20028dc:	00bfffc4 	movi	r2,-1
 20028e0:	003fe006 	br	2002864 <__swsetup_r+0x68>
 20028e4:	20047fc0 	call	20047fc <__sinit>
 20028e8:	003fd006 	br	200282c <__swsetup_r+0x30>
 20028ec:	0005883a 	mov	r2,zero
 20028f0:	003fd906 	br	2002858 <__swsetup_r+0x5c>
 20028f4:	81400c17 	ldw	r5,48(r16)
 20028f8:	28000626 	beq	r5,zero,2002914 <__swsetup_r+0x118>
 20028fc:	80801004 	addi	r2,r16,64
 2002900:	28800326 	beq	r5,r2,2002910 <__swsetup_r+0x114>
 2002904:	8809883a 	mov	r4,r17
 2002908:	20049700 	call	2004970 <_free_r>
 200290c:	8180030b 	ldhu	r6,12(r16)
 2002910:	80000c15 	stw	zero,48(r16)
 2002914:	80c00417 	ldw	r3,16(r16)
 2002918:	00bff6c4 	movi	r2,-37
 200291c:	118c703a 	and	r6,r2,r6
 2002920:	80000115 	stw	zero,4(r16)
 2002924:	80c00015 	stw	r3,0(r16)
 2002928:	003fd806 	br	200288c <__swsetup_r+0x90>

0200292c <quorem>:
 200292c:	defff704 	addi	sp,sp,-36
 2002930:	dc800215 	stw	r18,8(sp)
 2002934:	20800417 	ldw	r2,16(r4)
 2002938:	2c800417 	ldw	r18,16(r5)
 200293c:	dfc00815 	stw	ra,32(sp)
 2002940:	ddc00715 	stw	r23,28(sp)
 2002944:	dd800615 	stw	r22,24(sp)
 2002948:	dd400515 	stw	r21,20(sp)
 200294c:	dd000415 	stw	r20,16(sp)
 2002950:	dcc00315 	stw	r19,12(sp)
 2002954:	dc400115 	stw	r17,4(sp)
 2002958:	dc000015 	stw	r16,0(sp)
 200295c:	14807116 	blt	r2,r18,2002b24 <quorem+0x1f8>
 2002960:	94bfffc4 	addi	r18,r18,-1
 2002964:	94ad883a 	add	r22,r18,r18
 2002968:	b5ad883a 	add	r22,r22,r22
 200296c:	2c400504 	addi	r17,r5,20
 2002970:	8da9883a 	add	r20,r17,r22
 2002974:	25400504 	addi	r21,r4,20
 2002978:	282f883a 	mov	r23,r5
 200297c:	adad883a 	add	r22,r21,r22
 2002980:	a1400017 	ldw	r5,0(r20)
 2002984:	2021883a 	mov	r16,r4
 2002988:	b1000017 	ldw	r4,0(r22)
 200298c:	29400044 	addi	r5,r5,1
 2002990:	200a3600 	call	200a360 <__udivsi3>
 2002994:	1027883a 	mov	r19,r2
 2002998:	10002c26 	beq	r2,zero,2002a4c <quorem+0x120>
 200299c:	a813883a 	mov	r9,r21
 20029a0:	8811883a 	mov	r8,r17
 20029a4:	0009883a 	mov	r4,zero
 20029a8:	000d883a 	mov	r6,zero
 20029ac:	41c00017 	ldw	r7,0(r8)
 20029b0:	49400017 	ldw	r5,0(r9)
 20029b4:	42000104 	addi	r8,r8,4
 20029b8:	38bfffcc 	andi	r2,r7,65535
 20029bc:	14c5383a 	mul	r2,r2,r19
 20029c0:	380ed43a 	srli	r7,r7,16
 20029c4:	28ffffcc 	andi	r3,r5,65535
 20029c8:	2085883a 	add	r2,r4,r2
 20029cc:	1008d43a 	srli	r4,r2,16
 20029d0:	3ccf383a 	mul	r7,r7,r19
 20029d4:	198d883a 	add	r6,r3,r6
 20029d8:	10ffffcc 	andi	r3,r2,65535
 20029dc:	30c7c83a 	sub	r3,r6,r3
 20029e0:	280ad43a 	srli	r5,r5,16
 20029e4:	21c9883a 	add	r4,r4,r7
 20029e8:	180dd43a 	srai	r6,r3,16
 20029ec:	20bfffcc 	andi	r2,r4,65535
 20029f0:	288bc83a 	sub	r5,r5,r2
 20029f4:	298b883a 	add	r5,r5,r6
 20029f8:	280e943a 	slli	r7,r5,16
 20029fc:	18ffffcc 	andi	r3,r3,65535
 2002a00:	2008d43a 	srli	r4,r4,16
 2002a04:	38ceb03a 	or	r7,r7,r3
 2002a08:	49c00015 	stw	r7,0(r9)
 2002a0c:	280dd43a 	srai	r6,r5,16
 2002a10:	4a400104 	addi	r9,r9,4
 2002a14:	a23fe52e 	bgeu	r20,r8,20029ac <quorem+0x80>
 2002a18:	b0800017 	ldw	r2,0(r22)
 2002a1c:	10000b1e 	bne	r2,zero,2002a4c <quorem+0x120>
 2002a20:	b0bfff04 	addi	r2,r22,-4
 2002a24:	a880082e 	bgeu	r21,r2,2002a48 <quorem+0x11c>
 2002a28:	b0ffff17 	ldw	r3,-4(r22)
 2002a2c:	18000326 	beq	r3,zero,2002a3c <quorem+0x110>
 2002a30:	00000506 	br	2002a48 <quorem+0x11c>
 2002a34:	10c00017 	ldw	r3,0(r2)
 2002a38:	1800031e 	bne	r3,zero,2002a48 <quorem+0x11c>
 2002a3c:	10bfff04 	addi	r2,r2,-4
 2002a40:	94bfffc4 	addi	r18,r18,-1
 2002a44:	a8bffb36 	bltu	r21,r2,2002a34 <quorem+0x108>
 2002a48:	84800415 	stw	r18,16(r16)
 2002a4c:	8009883a 	mov	r4,r16
 2002a50:	b80b883a 	mov	r5,r23
 2002a54:	2006a140 	call	2006a14 <__mcmp>
 2002a58:	10002616 	blt	r2,zero,2002af4 <quorem+0x1c8>
 2002a5c:	9cc00044 	addi	r19,r19,1
 2002a60:	a80d883a 	mov	r6,r21
 2002a64:	000b883a 	mov	r5,zero
 2002a68:	31000017 	ldw	r4,0(r6)
 2002a6c:	88800017 	ldw	r2,0(r17)
 2002a70:	31800104 	addi	r6,r6,4
 2002a74:	20ffffcc 	andi	r3,r4,65535
 2002a78:	194b883a 	add	r5,r3,r5
 2002a7c:	10ffffcc 	andi	r3,r2,65535
 2002a80:	28c7c83a 	sub	r3,r5,r3
 2002a84:	1004d43a 	srli	r2,r2,16
 2002a88:	2008d43a 	srli	r4,r4,16
 2002a8c:	180bd43a 	srai	r5,r3,16
 2002a90:	18ffffcc 	andi	r3,r3,65535
 2002a94:	2089c83a 	sub	r4,r4,r2
 2002a98:	2149883a 	add	r4,r4,r5
 2002a9c:	2004943a 	slli	r2,r4,16
 2002aa0:	8c400104 	addi	r17,r17,4
 2002aa4:	200bd43a 	srai	r5,r4,16
 2002aa8:	10c6b03a 	or	r3,r2,r3
 2002aac:	30ffff15 	stw	r3,-4(r6)
 2002ab0:	a47fed2e 	bgeu	r20,r17,2002a68 <quorem+0x13c>
 2002ab4:	9485883a 	add	r2,r18,r18
 2002ab8:	1085883a 	add	r2,r2,r2
 2002abc:	a887883a 	add	r3,r21,r2
 2002ac0:	18800017 	ldw	r2,0(r3)
 2002ac4:	10000b1e 	bne	r2,zero,2002af4 <quorem+0x1c8>
 2002ac8:	18bfff04 	addi	r2,r3,-4
 2002acc:	a880082e 	bgeu	r21,r2,2002af0 <quorem+0x1c4>
 2002ad0:	18ffff17 	ldw	r3,-4(r3)
 2002ad4:	18000326 	beq	r3,zero,2002ae4 <quorem+0x1b8>
 2002ad8:	00000506 	br	2002af0 <quorem+0x1c4>
 2002adc:	10c00017 	ldw	r3,0(r2)
 2002ae0:	1800031e 	bne	r3,zero,2002af0 <quorem+0x1c4>
 2002ae4:	10bfff04 	addi	r2,r2,-4
 2002ae8:	94bfffc4 	addi	r18,r18,-1
 2002aec:	a8bffb36 	bltu	r21,r2,2002adc <quorem+0x1b0>
 2002af0:	84800415 	stw	r18,16(r16)
 2002af4:	9805883a 	mov	r2,r19
 2002af8:	dfc00817 	ldw	ra,32(sp)
 2002afc:	ddc00717 	ldw	r23,28(sp)
 2002b00:	dd800617 	ldw	r22,24(sp)
 2002b04:	dd400517 	ldw	r21,20(sp)
 2002b08:	dd000417 	ldw	r20,16(sp)
 2002b0c:	dcc00317 	ldw	r19,12(sp)
 2002b10:	dc800217 	ldw	r18,8(sp)
 2002b14:	dc400117 	ldw	r17,4(sp)
 2002b18:	dc000017 	ldw	r16,0(sp)
 2002b1c:	dec00904 	addi	sp,sp,36
 2002b20:	f800283a 	ret
 2002b24:	0005883a 	mov	r2,zero
 2002b28:	003ff306 	br	2002af8 <quorem+0x1cc>

02002b2c <_dtoa_r>:
 2002b2c:	20801017 	ldw	r2,64(r4)
 2002b30:	deffde04 	addi	sp,sp,-136
 2002b34:	dd401d15 	stw	r21,116(sp)
 2002b38:	dcc01b15 	stw	r19,108(sp)
 2002b3c:	dc801a15 	stw	r18,104(sp)
 2002b40:	dc401915 	stw	r17,100(sp)
 2002b44:	dc001815 	stw	r16,96(sp)
 2002b48:	dfc02115 	stw	ra,132(sp)
 2002b4c:	df002015 	stw	fp,128(sp)
 2002b50:	ddc01f15 	stw	r23,124(sp)
 2002b54:	dd801e15 	stw	r22,120(sp)
 2002b58:	dd001c15 	stw	r20,112(sp)
 2002b5c:	d9c00315 	stw	r7,12(sp)
 2002b60:	2021883a 	mov	r16,r4
 2002b64:	302b883a 	mov	r21,r6
 2002b68:	2825883a 	mov	r18,r5
 2002b6c:	dc402417 	ldw	r17,144(sp)
 2002b70:	3027883a 	mov	r19,r6
 2002b74:	10000826 	beq	r2,zero,2002b98 <_dtoa_r+0x6c>
 2002b78:	21801117 	ldw	r6,68(r4)
 2002b7c:	00c00044 	movi	r3,1
 2002b80:	100b883a 	mov	r5,r2
 2002b84:	1986983a 	sll	r3,r3,r6
 2002b88:	11800115 	stw	r6,4(r2)
 2002b8c:	10c00215 	stw	r3,8(r2)
 2002b90:	20061fc0 	call	20061fc <_Bfree>
 2002b94:	80001015 	stw	zero,64(r16)
 2002b98:	a8002d16 	blt	r21,zero,2002c50 <_dtoa_r+0x124>
 2002b9c:	88000015 	stw	zero,0(r17)
 2002ba0:	a8dffc2c 	andhi	r3,r21,32752
 2002ba4:	009ffc34 	movhi	r2,32752
 2002ba8:	18801b26 	beq	r3,r2,2002c18 <_dtoa_r+0xec>
 2002bac:	9009883a 	mov	r4,r18
 2002bb0:	980b883a 	mov	r5,r19
 2002bb4:	000d883a 	mov	r6,zero
 2002bb8:	000f883a 	mov	r7,zero
 2002bbc:	200b4d80 	call	200b4d8 <__eqdf2>
 2002bc0:	10002a1e 	bne	r2,zero,2002c6c <_dtoa_r+0x140>
 2002bc4:	d8c02317 	ldw	r3,140(sp)
 2002bc8:	d9002517 	ldw	r4,148(sp)
 2002bcc:	00800044 	movi	r2,1
 2002bd0:	18800015 	stw	r2,0(r3)
 2002bd4:	2001a226 	beq	r4,zero,2003260 <_dtoa_r+0x734>
 2002bd8:	00808074 	movhi	r2,513
 2002bdc:	10bc7c44 	addi	r2,r2,-3599
 2002be0:	20800015 	stw	r2,0(r4)
 2002be4:	10bfffc4 	addi	r2,r2,-1
 2002be8:	dfc02117 	ldw	ra,132(sp)
 2002bec:	df002017 	ldw	fp,128(sp)
 2002bf0:	ddc01f17 	ldw	r23,124(sp)
 2002bf4:	dd801e17 	ldw	r22,120(sp)
 2002bf8:	dd401d17 	ldw	r21,116(sp)
 2002bfc:	dd001c17 	ldw	r20,112(sp)
 2002c00:	dcc01b17 	ldw	r19,108(sp)
 2002c04:	dc801a17 	ldw	r18,104(sp)
 2002c08:	dc401917 	ldw	r17,100(sp)
 2002c0c:	dc001817 	ldw	r16,96(sp)
 2002c10:	dec02204 	addi	sp,sp,136
 2002c14:	f800283a 	ret
 2002c18:	d8c02317 	ldw	r3,140(sp)
 2002c1c:	0089c3c4 	movi	r2,9999
 2002c20:	18800015 	stw	r2,0(r3)
 2002c24:	90017c26 	beq	r18,zero,2003218 <_dtoa_r+0x6ec>
 2002c28:	00808074 	movhi	r2,513
 2002c2c:	10bc8804 	addi	r2,r2,-3552
 2002c30:	d9002517 	ldw	r4,148(sp)
 2002c34:	203fec26 	beq	r4,zero,2002be8 <_dtoa_r+0xbc>
 2002c38:	10c000c7 	ldb	r3,3(r2)
 2002c3c:	18017d1e 	bne	r3,zero,2003234 <_dtoa_r+0x708>
 2002c40:	10c000c4 	addi	r3,r2,3
 2002c44:	d9802517 	ldw	r6,148(sp)
 2002c48:	30c00015 	stw	r3,0(r6)
 2002c4c:	003fe606 	br	2002be8 <_dtoa_r+0xbc>
 2002c50:	04e00034 	movhi	r19,32768
 2002c54:	9cffffc4 	addi	r19,r19,-1
 2002c58:	00800044 	movi	r2,1
 2002c5c:	ace6703a 	and	r19,r21,r19
 2002c60:	88800015 	stw	r2,0(r17)
 2002c64:	982b883a 	mov	r21,r19
 2002c68:	003fcd06 	br	2002ba0 <_dtoa_r+0x74>
 2002c6c:	d8800204 	addi	r2,sp,8
 2002c70:	a822d53a 	srli	r17,r21,20
 2002c74:	d8800015 	stw	r2,0(sp)
 2002c78:	8009883a 	mov	r4,r16
 2002c7c:	900b883a 	mov	r5,r18
 2002c80:	980d883a 	mov	r6,r19
 2002c84:	d9c00104 	addi	r7,sp,4
 2002c88:	2006d880 	call	2006d88 <__d2b>
 2002c8c:	1039883a 	mov	fp,r2
 2002c90:	88016a1e 	bne	r17,zero,200323c <_dtoa_r+0x710>
 2002c94:	dd000217 	ldw	r20,8(sp)
 2002c98:	dc400117 	ldw	r17,4(sp)
 2002c9c:	00befbc4 	movi	r2,-1041
 2002ca0:	a463883a 	add	r17,r20,r17
 2002ca4:	8882ea16 	blt	r17,r2,2003850 <_dtoa_r+0xd24>
 2002ca8:	00bf0384 	movi	r2,-1010
 2002cac:	1445c83a 	sub	r2,r2,r17
 2002cb0:	89010484 	addi	r4,r17,1042
 2002cb4:	a8aa983a 	sll	r21,r21,r2
 2002cb8:	9108d83a 	srl	r4,r18,r4
 2002cbc:	a908b03a 	or	r4,r21,r4
 2002cc0:	200c8680 	call	200c868 <__floatunsidf>
 2002cc4:	017f8434 	movhi	r5,65040
 2002cc8:	01800044 	movi	r6,1
 2002ccc:	1009883a 	mov	r4,r2
 2002cd0:	194b883a 	add	r5,r3,r5
 2002cd4:	8c7fffc4 	addi	r17,r17,-1
 2002cd8:	d9800f15 	stw	r6,60(sp)
 2002cdc:	000d883a 	mov	r6,zero
 2002ce0:	01cffe34 	movhi	r7,16376
 2002ce4:	200be400 	call	200be40 <__subdf3>
 2002ce8:	0198dbf4 	movhi	r6,25455
 2002cec:	01cff4f4 	movhi	r7,16339
 2002cf0:	1009883a 	mov	r4,r2
 2002cf4:	180b883a 	mov	r5,r3
 2002cf8:	3190d844 	addi	r6,r6,17249
 2002cfc:	39e1e9c4 	addi	r7,r7,-30809
 2002d00:	200b71c0 	call	200b71c <__muldf3>
 2002d04:	01a2d874 	movhi	r6,35681
 2002d08:	01cff1f4 	movhi	r7,16327
 2002d0c:	180b883a 	mov	r5,r3
 2002d10:	31b22cc4 	addi	r6,r6,-14157
 2002d14:	39e28a04 	addi	r7,r7,-30168
 2002d18:	1009883a 	mov	r4,r2
 2002d1c:	200a3700 	call	200a370 <__adddf3>
 2002d20:	8809883a 	mov	r4,r17
 2002d24:	102d883a 	mov	r22,r2
 2002d28:	182b883a 	mov	r21,r3
 2002d2c:	200c7980 	call	200c798 <__floatsidf>
 2002d30:	019427f4 	movhi	r6,20639
 2002d34:	01cff4f4 	movhi	r7,16339
 2002d38:	1009883a 	mov	r4,r2
 2002d3c:	180b883a 	mov	r5,r3
 2002d40:	319e7ec4 	addi	r6,r6,31227
 2002d44:	39d104c4 	addi	r7,r7,17427
 2002d48:	200b71c0 	call	200b71c <__muldf3>
 2002d4c:	b009883a 	mov	r4,r22
 2002d50:	a80b883a 	mov	r5,r21
 2002d54:	100d883a 	mov	r6,r2
 2002d58:	180f883a 	mov	r7,r3
 2002d5c:	200a3700 	call	200a370 <__adddf3>
 2002d60:	1009883a 	mov	r4,r2
 2002d64:	180b883a 	mov	r5,r3
 2002d68:	102d883a 	mov	r22,r2
 2002d6c:	182b883a 	mov	r21,r3
 2002d70:	200c7100 	call	200c710 <__fixdfsi>
 2002d74:	b009883a 	mov	r4,r22
 2002d78:	a80b883a 	mov	r5,r21
 2002d7c:	000d883a 	mov	r6,zero
 2002d80:	000f883a 	mov	r7,zero
 2002d84:	d8800515 	stw	r2,20(sp)
 2002d88:	200b63c0 	call	200b63c <__ledf2>
 2002d8c:	10023116 	blt	r2,zero,2003654 <_dtoa_r+0xb28>
 2002d90:	d8c00517 	ldw	r3,20(sp)
 2002d94:	00800584 	movi	r2,22
 2002d98:	10c21f36 	bltu	r2,r3,2003618 <_dtoa_r+0xaec>
 2002d9c:	180490fa 	slli	r2,r3,3
 2002da0:	00c08074 	movhi	r3,513
 2002da4:	18fca404 	addi	r3,r3,-3440
 2002da8:	1885883a 	add	r2,r3,r2
 2002dac:	11000017 	ldw	r4,0(r2)
 2002db0:	11400117 	ldw	r5,4(r2)
 2002db4:	900d883a 	mov	r6,r18
 2002db8:	980f883a 	mov	r7,r19
 2002dbc:	200b55c0 	call	200b55c <__gedf2>
 2002dc0:	0082a70e 	bge	zero,r2,2003860 <_dtoa_r+0xd34>
 2002dc4:	d9000517 	ldw	r4,20(sp)
 2002dc8:	d8000c15 	stw	zero,48(sp)
 2002dcc:	213fffc4 	addi	r4,r4,-1
 2002dd0:	d9000515 	stw	r4,20(sp)
 2002dd4:	a463c83a 	sub	r17,r20,r17
 2002dd8:	8dbfffc4 	addi	r22,r17,-1
 2002ddc:	b0021916 	blt	r22,zero,2003644 <_dtoa_r+0xb18>
 2002de0:	d8000815 	stw	zero,32(sp)
 2002de4:	d8800517 	ldw	r2,20(sp)
 2002de8:	10020e16 	blt	r2,zero,2003624 <_dtoa_r+0xaf8>
 2002dec:	b0ad883a 	add	r22,r22,r2
 2002df0:	d8800a15 	stw	r2,40(sp)
 2002df4:	d8000915 	stw	zero,36(sp)
 2002df8:	d8c00317 	ldw	r3,12(sp)
 2002dfc:	00800244 	movi	r2,9
 2002e00:	10c11a36 	bltu	r2,r3,200326c <_dtoa_r+0x740>
 2002e04:	00800144 	movi	r2,5
 2002e08:	10c4fc0e 	bge	r2,r3,20041fc <_dtoa_r+0x16d0>
 2002e0c:	18ffff04 	addi	r3,r3,-4
 2002e10:	d8c00315 	stw	r3,12(sp)
 2002e14:	0029883a 	mov	r20,zero
 2002e18:	d9800317 	ldw	r6,12(sp)
 2002e1c:	008000c4 	movi	r2,3
 2002e20:	3083bd26 	beq	r6,r2,2003d18 <_dtoa_r+0x11ec>
 2002e24:	1183670e 	bge	r2,r6,2003bc4 <_dtoa_r+0x1098>
 2002e28:	d8c00317 	ldw	r3,12(sp)
 2002e2c:	00800104 	movi	r2,4
 2002e30:	1882e726 	beq	r3,r2,20039d0 <_dtoa_r+0xea4>
 2002e34:	00800144 	movi	r2,5
 2002e38:	1884f21e 	bne	r3,r2,2004204 <_dtoa_r+0x16d8>
 2002e3c:	00800044 	movi	r2,1
 2002e40:	d8800b15 	stw	r2,44(sp)
 2002e44:	d8c02217 	ldw	r3,136(sp)
 2002e48:	d9000517 	ldw	r4,20(sp)
 2002e4c:	1907883a 	add	r3,r3,r4
 2002e50:	19800044 	addi	r6,r3,1
 2002e54:	d8c00d15 	stw	r3,52(sp)
 2002e58:	d9800615 	stw	r6,24(sp)
 2002e5c:	0183c30e 	bge	zero,r6,2003d6c <_dtoa_r+0x1240>
 2002e60:	d9800617 	ldw	r6,24(sp)
 2002e64:	3023883a 	mov	r17,r6
 2002e68:	80001115 	stw	zero,68(r16)
 2002e6c:	008005c4 	movi	r2,23
 2002e70:	1184f62e 	bgeu	r2,r6,200424c <_dtoa_r+0x1720>
 2002e74:	00c00044 	movi	r3,1
 2002e78:	00800104 	movi	r2,4
 2002e7c:	1085883a 	add	r2,r2,r2
 2002e80:	11000504 	addi	r4,r2,20
 2002e84:	180b883a 	mov	r5,r3
 2002e88:	18c00044 	addi	r3,r3,1
 2002e8c:	313ffb2e 	bgeu	r6,r4,2002e7c <_dtoa_r+0x350>
 2002e90:	81401115 	stw	r5,68(r16)
 2002e94:	8009883a 	mov	r4,r16
 2002e98:	20061540 	call	2006154 <_Balloc>
 2002e9c:	d8800715 	stw	r2,28(sp)
 2002ea0:	80801015 	stw	r2,64(r16)
 2002ea4:	00800384 	movi	r2,14
 2002ea8:	1440fd36 	bltu	r2,r17,20032a0 <_dtoa_r+0x774>
 2002eac:	a000fc26 	beq	r20,zero,20032a0 <_dtoa_r+0x774>
 2002eb0:	d8800517 	ldw	r2,20(sp)
 2002eb4:	0083b90e 	bge	zero,r2,2003d9c <_dtoa_r+0x1270>
 2002eb8:	d8c00517 	ldw	r3,20(sp)
 2002ebc:	108003cc 	andi	r2,r2,15
 2002ec0:	100490fa 	slli	r2,r2,3
 2002ec4:	182fd13a 	srai	r23,r3,4
 2002ec8:	00c08074 	movhi	r3,513
 2002ecc:	18fca404 	addi	r3,r3,-3440
 2002ed0:	1885883a 	add	r2,r3,r2
 2002ed4:	b8c0040c 	andi	r3,r23,16
 2002ed8:	12c00017 	ldw	r11,0(r2)
 2002edc:	12800117 	ldw	r10,4(r2)
 2002ee0:	18039726 	beq	r3,zero,2003d40 <_dtoa_r+0x1214>
 2002ee4:	00808074 	movhi	r2,513
 2002ee8:	10bc9a04 	addi	r2,r2,-3480
 2002eec:	11800817 	ldw	r6,32(r2)
 2002ef0:	11c00917 	ldw	r7,36(r2)
 2002ef4:	9009883a 	mov	r4,r18
 2002ef8:	980b883a 	mov	r5,r19
 2002efc:	da801615 	stw	r10,88(sp)
 2002f00:	dac01515 	stw	r11,84(sp)
 2002f04:	200ac0c0 	call	200ac0c <__divdf3>
 2002f08:	da801617 	ldw	r10,88(sp)
 2002f0c:	dac01517 	ldw	r11,84(sp)
 2002f10:	bdc003cc 	andi	r23,r23,15
 2002f14:	044000c4 	movi	r17,3
 2002f18:	d8800e15 	stw	r2,56(sp)
 2002f1c:	182b883a 	mov	r21,r3
 2002f20:	b8001126 	beq	r23,zero,2002f68 <_dtoa_r+0x43c>
 2002f24:	05008074 	movhi	r20,513
 2002f28:	a53c9a04 	addi	r20,r20,-3480
 2002f2c:	5805883a 	mov	r2,r11
 2002f30:	5007883a 	mov	r3,r10
 2002f34:	b980004c 	andi	r6,r23,1
 2002f38:	1009883a 	mov	r4,r2
 2002f3c:	b82fd07a 	srai	r23,r23,1
 2002f40:	180b883a 	mov	r5,r3
 2002f44:	30000426 	beq	r6,zero,2002f58 <_dtoa_r+0x42c>
 2002f48:	a1800017 	ldw	r6,0(r20)
 2002f4c:	a1c00117 	ldw	r7,4(r20)
 2002f50:	8c400044 	addi	r17,r17,1
 2002f54:	200b71c0 	call	200b71c <__muldf3>
 2002f58:	a5000204 	addi	r20,r20,8
 2002f5c:	b83ff51e 	bne	r23,zero,2002f34 <_dtoa_r+0x408>
 2002f60:	1017883a 	mov	r11,r2
 2002f64:	1815883a 	mov	r10,r3
 2002f68:	d9000e17 	ldw	r4,56(sp)
 2002f6c:	a80b883a 	mov	r5,r21
 2002f70:	580d883a 	mov	r6,r11
 2002f74:	500f883a 	mov	r7,r10
 2002f78:	200ac0c0 	call	200ac0c <__divdf3>
 2002f7c:	1029883a 	mov	r20,r2
 2002f80:	182b883a 	mov	r21,r3
 2002f84:	d9800c17 	ldw	r6,48(sp)
 2002f88:	30000626 	beq	r6,zero,2002fa4 <_dtoa_r+0x478>
 2002f8c:	a009883a 	mov	r4,r20
 2002f90:	a80b883a 	mov	r5,r21
 2002f94:	000d883a 	mov	r6,zero
 2002f98:	01cffc34 	movhi	r7,16368
 2002f9c:	200b63c0 	call	200b63c <__ledf2>
 2002fa0:	10043216 	blt	r2,zero,200406c <_dtoa_r+0x1540>
 2002fa4:	8809883a 	mov	r4,r17
 2002fa8:	200c7980 	call	200c798 <__floatsidf>
 2002fac:	1009883a 	mov	r4,r2
 2002fb0:	180b883a 	mov	r5,r3
 2002fb4:	a00d883a 	mov	r6,r20
 2002fb8:	a80f883a 	mov	r7,r21
 2002fbc:	200b71c0 	call	200b71c <__muldf3>
 2002fc0:	000d883a 	mov	r6,zero
 2002fc4:	1009883a 	mov	r4,r2
 2002fc8:	180b883a 	mov	r5,r3
 2002fcc:	01d00734 	movhi	r7,16412
 2002fd0:	200a3700 	call	200a370 <__adddf3>
 2002fd4:	1023883a 	mov	r17,r2
 2002fd8:	d9800617 	ldw	r6,24(sp)
 2002fdc:	00bf3034 	movhi	r2,64704
 2002fe0:	1885883a 	add	r2,r3,r2
 2002fe4:	d8800e15 	stw	r2,56(sp)
 2002fe8:	30032e26 	beq	r6,zero,2003ca4 <_dtoa_r+0x1178>
 2002fec:	d8c00517 	ldw	r3,20(sp)
 2002ff0:	da800617 	ldw	r10,24(sp)
 2002ff4:	d8c01215 	stw	r3,72(sp)
 2002ff8:	d9000b17 	ldw	r4,44(sp)
 2002ffc:	2003b026 	beq	r4,zero,2003ec0 <_dtoa_r+0x1394>
 2003000:	50bfffc4 	addi	r2,r10,-1
 2003004:	100490fa 	slli	r2,r2,3
 2003008:	00c08074 	movhi	r3,513
 200300c:	18fca404 	addi	r3,r3,-3440
 2003010:	1885883a 	add	r2,r3,r2
 2003014:	11800017 	ldw	r6,0(r2)
 2003018:	11c00117 	ldw	r7,4(r2)
 200301c:	d8800717 	ldw	r2,28(sp)
 2003020:	0009883a 	mov	r4,zero
 2003024:	014ff834 	movhi	r5,16352
 2003028:	da801615 	stw	r10,88(sp)
 200302c:	15c00044 	addi	r23,r2,1
 2003030:	200ac0c0 	call	200ac0c <__divdf3>
 2003034:	d9c00e17 	ldw	r7,56(sp)
 2003038:	880d883a 	mov	r6,r17
 200303c:	1009883a 	mov	r4,r2
 2003040:	180b883a 	mov	r5,r3
 2003044:	200be400 	call	200be40 <__subdf3>
 2003048:	a80b883a 	mov	r5,r21
 200304c:	a009883a 	mov	r4,r20
 2003050:	d8c01015 	stw	r3,64(sp)
 2003054:	d8800e15 	stw	r2,56(sp)
 2003058:	200c7100 	call	200c710 <__fixdfsi>
 200305c:	1009883a 	mov	r4,r2
 2003060:	d8801715 	stw	r2,92(sp)
 2003064:	200c7980 	call	200c798 <__floatsidf>
 2003068:	a009883a 	mov	r4,r20
 200306c:	a80b883a 	mov	r5,r21
 2003070:	100d883a 	mov	r6,r2
 2003074:	180f883a 	mov	r7,r3
 2003078:	200be400 	call	200be40 <__subdf3>
 200307c:	da001717 	ldw	r8,92(sp)
 2003080:	1829883a 	mov	r20,r3
 2003084:	d8c00717 	ldw	r3,28(sp)
 2003088:	d9000e17 	ldw	r4,56(sp)
 200308c:	d9401017 	ldw	r5,64(sp)
 2003090:	42000c04 	addi	r8,r8,48
 2003094:	1023883a 	mov	r17,r2
 2003098:	1a000005 	stb	r8,0(r3)
 200309c:	880d883a 	mov	r6,r17
 20030a0:	a00f883a 	mov	r7,r20
 20030a4:	402b883a 	mov	r21,r8
 20030a8:	200b55c0 	call	200b55c <__gedf2>
 20030ac:	00844516 	blt	zero,r2,20041c4 <_dtoa_r+0x1698>
 20030b0:	0009883a 	mov	r4,zero
 20030b4:	014ffc34 	movhi	r5,16368
 20030b8:	880d883a 	mov	r6,r17
 20030bc:	a00f883a 	mov	r7,r20
 20030c0:	200be400 	call	200be40 <__subdf3>
 20030c4:	d9000e17 	ldw	r4,56(sp)
 20030c8:	d9401017 	ldw	r5,64(sp)
 20030cc:	100d883a 	mov	r6,r2
 20030d0:	180f883a 	mov	r7,r3
 20030d4:	200b55c0 	call	200b55c <__gedf2>
 20030d8:	da801617 	ldw	r10,88(sp)
 20030dc:	00843616 	blt	zero,r2,20041b8 <_dtoa_r+0x168c>
 20030e0:	00800044 	movi	r2,1
 20030e4:	12806e0e 	bge	r2,r10,20032a0 <_dtoa_r+0x774>
 20030e8:	d9000717 	ldw	r4,28(sp)
 20030ec:	dd801315 	stw	r22,76(sp)
 20030f0:	dc001115 	stw	r16,68(sp)
 20030f4:	2295883a 	add	r10,r4,r10
 20030f8:	dcc01415 	stw	r19,80(sp)
 20030fc:	502d883a 	mov	r22,r10
 2003100:	dcc01017 	ldw	r19,64(sp)
 2003104:	b821883a 	mov	r16,r23
 2003108:	dc801015 	stw	r18,64(sp)
 200310c:	dc800e17 	ldw	r18,56(sp)
 2003110:	00000906 	br	2003138 <_dtoa_r+0x60c>
 2003114:	200be400 	call	200be40 <__subdf3>
 2003118:	1009883a 	mov	r4,r2
 200311c:	180b883a 	mov	r5,r3
 2003120:	900d883a 	mov	r6,r18
 2003124:	980f883a 	mov	r7,r19
 2003128:	200b63c0 	call	200b63c <__ledf2>
 200312c:	10040e16 	blt	r2,zero,2004168 <_dtoa_r+0x163c>
 2003130:	b821883a 	mov	r16,r23
 2003134:	bd841026 	beq	r23,r22,2004178 <_dtoa_r+0x164c>
 2003138:	9009883a 	mov	r4,r18
 200313c:	980b883a 	mov	r5,r19
 2003140:	000d883a 	mov	r6,zero
 2003144:	01d00934 	movhi	r7,16420
 2003148:	200b71c0 	call	200b71c <__muldf3>
 200314c:	000d883a 	mov	r6,zero
 2003150:	01d00934 	movhi	r7,16420
 2003154:	8809883a 	mov	r4,r17
 2003158:	a00b883a 	mov	r5,r20
 200315c:	1025883a 	mov	r18,r2
 2003160:	1827883a 	mov	r19,r3
 2003164:	200b71c0 	call	200b71c <__muldf3>
 2003168:	180b883a 	mov	r5,r3
 200316c:	1009883a 	mov	r4,r2
 2003170:	1823883a 	mov	r17,r3
 2003174:	1029883a 	mov	r20,r2
 2003178:	200c7100 	call	200c710 <__fixdfsi>
 200317c:	1009883a 	mov	r4,r2
 2003180:	102b883a 	mov	r21,r2
 2003184:	200c7980 	call	200c798 <__floatsidf>
 2003188:	a009883a 	mov	r4,r20
 200318c:	880b883a 	mov	r5,r17
 2003190:	100d883a 	mov	r6,r2
 2003194:	180f883a 	mov	r7,r3
 2003198:	200be400 	call	200be40 <__subdf3>
 200319c:	ad400c04 	addi	r21,r21,48
 20031a0:	1009883a 	mov	r4,r2
 20031a4:	180b883a 	mov	r5,r3
 20031a8:	900d883a 	mov	r6,r18
 20031ac:	980f883a 	mov	r7,r19
 20031b0:	85400005 	stb	r21,0(r16)
 20031b4:	1023883a 	mov	r17,r2
 20031b8:	1829883a 	mov	r20,r3
 20031bc:	200b63c0 	call	200b63c <__ledf2>
 20031c0:	bdc00044 	addi	r23,r23,1
 20031c4:	0009883a 	mov	r4,zero
 20031c8:	014ffc34 	movhi	r5,16368
 20031cc:	880d883a 	mov	r6,r17
 20031d0:	a00f883a 	mov	r7,r20
 20031d4:	103fcf0e 	bge	r2,zero,2003114 <_dtoa_r+0x5e8>
 20031d8:	d9801217 	ldw	r6,72(sp)
 20031dc:	dc001117 	ldw	r16,68(sp)
 20031e0:	d9800515 	stw	r6,20(sp)
 20031e4:	8009883a 	mov	r4,r16
 20031e8:	e00b883a 	mov	r5,fp
 20031ec:	20061fc0 	call	20061fc <_Bfree>
 20031f0:	d8c00517 	ldw	r3,20(sp)
 20031f4:	d9002317 	ldw	r4,140(sp)
 20031f8:	d9802517 	ldw	r6,148(sp)
 20031fc:	b8000005 	stb	zero,0(r23)
 2003200:	18800044 	addi	r2,r3,1
 2003204:	20800015 	stw	r2,0(r4)
 2003208:	30027226 	beq	r6,zero,2003bd4 <_dtoa_r+0x10a8>
 200320c:	35c00015 	stw	r23,0(r6)
 2003210:	d8800717 	ldw	r2,28(sp)
 2003214:	003e7406 	br	2002be8 <_dtoa_r+0xbc>
 2003218:	00800434 	movhi	r2,16
 200321c:	10bfffc4 	addi	r2,r2,-1
 2003220:	a8aa703a 	and	r21,r21,r2
 2003224:	a83e801e 	bne	r21,zero,2002c28 <_dtoa_r+0xfc>
 2003228:	00808074 	movhi	r2,513
 200322c:	10bc8504 	addi	r2,r2,-3564
 2003230:	003e7f06 	br	2002c30 <_dtoa_r+0x104>
 2003234:	10c00204 	addi	r3,r2,8
 2003238:	003e8206 	br	2002c44 <_dtoa_r+0x118>
 200323c:	01400434 	movhi	r5,16
 2003240:	297fffc4 	addi	r5,r5,-1
 2003244:	994a703a 	and	r5,r19,r5
 2003248:	9009883a 	mov	r4,r18
 200324c:	8c7f0044 	addi	r17,r17,-1023
 2003250:	294ffc34 	orhi	r5,r5,16368
 2003254:	dd000217 	ldw	r20,8(sp)
 2003258:	d8000f15 	stw	zero,60(sp)
 200325c:	003e9f06 	br	2002cdc <_dtoa_r+0x1b0>
 2003260:	00808074 	movhi	r2,513
 2003264:	10bc7c04 	addi	r2,r2,-3600
 2003268:	003e5f06 	br	2002be8 <_dtoa_r+0xbc>
 200326c:	80001115 	stw	zero,68(r16)
 2003270:	8009883a 	mov	r4,r16
 2003274:	000b883a 	mov	r5,zero
 2003278:	20061540 	call	2006154 <_Balloc>
 200327c:	01bfffc4 	movi	r6,-1
 2003280:	d8800715 	stw	r2,28(sp)
 2003284:	80801015 	stw	r2,64(r16)
 2003288:	00800044 	movi	r2,1
 200328c:	d9800615 	stw	r6,24(sp)
 2003290:	d8800b15 	stw	r2,44(sp)
 2003294:	d8002215 	stw	zero,136(sp)
 2003298:	d9800d15 	stw	r6,52(sp)
 200329c:	d8000315 	stw	zero,12(sp)
 20032a0:	d8800117 	ldw	r2,4(sp)
 20032a4:	10008e16 	blt	r2,zero,20034e0 <_dtoa_r+0x9b4>
 20032a8:	d9000517 	ldw	r4,20(sp)
 20032ac:	00c00384 	movi	r3,14
 20032b0:	19008b16 	blt	r3,r4,20034e0 <_dtoa_r+0x9b4>
 20032b4:	200490fa 	slli	r2,r4,3
 20032b8:	00c08074 	movhi	r3,513
 20032bc:	d9802217 	ldw	r6,136(sp)
 20032c0:	18fca404 	addi	r3,r3,-3440
 20032c4:	1885883a 	add	r2,r3,r2
 20032c8:	14400017 	ldw	r17,0(r2)
 20032cc:	15000117 	ldw	r20,4(r2)
 20032d0:	3001c716 	blt	r6,zero,20039f0 <_dtoa_r+0xec4>
 20032d4:	880d883a 	mov	r6,r17
 20032d8:	a00f883a 	mov	r7,r20
 20032dc:	9009883a 	mov	r4,r18
 20032e0:	980b883a 	mov	r5,r19
 20032e4:	200ac0c0 	call	200ac0c <__divdf3>
 20032e8:	180b883a 	mov	r5,r3
 20032ec:	1009883a 	mov	r4,r2
 20032f0:	200c7100 	call	200c710 <__fixdfsi>
 20032f4:	1009883a 	mov	r4,r2
 20032f8:	102d883a 	mov	r22,r2
 20032fc:	200c7980 	call	200c798 <__floatsidf>
 2003300:	1009883a 	mov	r4,r2
 2003304:	180b883a 	mov	r5,r3
 2003308:	880d883a 	mov	r6,r17
 200330c:	a00f883a 	mov	r7,r20
 2003310:	200b71c0 	call	200b71c <__muldf3>
 2003314:	9009883a 	mov	r4,r18
 2003318:	980b883a 	mov	r5,r19
 200331c:	100d883a 	mov	r6,r2
 2003320:	180f883a 	mov	r7,r3
 2003324:	200be400 	call	200be40 <__subdf3>
 2003328:	d9000717 	ldw	r4,28(sp)
 200332c:	d9800617 	ldw	r6,24(sp)
 2003330:	180b883a 	mov	r5,r3
 2003334:	b0c00c04 	addi	r3,r22,48
 2003338:	20c00005 	stb	r3,0(r4)
 200333c:	25c00044 	addi	r23,r4,1
 2003340:	01000044 	movi	r4,1
 2003344:	1011883a 	mov	r8,r2
 2003348:	2807883a 	mov	r3,r5
 200334c:	31003d26 	beq	r6,r4,2003444 <_dtoa_r+0x918>
 2003350:	000d883a 	mov	r6,zero
 2003354:	01d00934 	movhi	r7,16420
 2003358:	1009883a 	mov	r4,r2
 200335c:	200b71c0 	call	200b71c <__muldf3>
 2003360:	1009883a 	mov	r4,r2
 2003364:	180b883a 	mov	r5,r3
 2003368:	000d883a 	mov	r6,zero
 200336c:	000f883a 	mov	r7,zero
 2003370:	1027883a 	mov	r19,r2
 2003374:	182b883a 	mov	r21,r3
 2003378:	200b4d80 	call	200b4d8 <__eqdf2>
 200337c:	103f9926 	beq	r2,zero,20031e4 <_dtoa_r+0x6b8>
 2003380:	d8c00617 	ldw	r3,24(sp)
 2003384:	d9000717 	ldw	r4,28(sp)
 2003388:	b825883a 	mov	r18,r23
 200338c:	18bfffc4 	addi	r2,r3,-1
 2003390:	20ad883a 	add	r22,r4,r2
 2003394:	dc000315 	stw	r16,12(sp)
 2003398:	00000a06 	br	20033c4 <_dtoa_r+0x898>
 200339c:	200b71c0 	call	200b71c <__muldf3>
 20033a0:	1009883a 	mov	r4,r2
 20033a4:	180b883a 	mov	r5,r3
 20033a8:	000d883a 	mov	r6,zero
 20033ac:	000f883a 	mov	r7,zero
 20033b0:	1027883a 	mov	r19,r2
 20033b4:	182b883a 	mov	r21,r3
 20033b8:	b825883a 	mov	r18,r23
 20033bc:	200b4d80 	call	200b4d8 <__eqdf2>
 20033c0:	10022626 	beq	r2,zero,2003c5c <_dtoa_r+0x1130>
 20033c4:	880d883a 	mov	r6,r17
 20033c8:	a00f883a 	mov	r7,r20
 20033cc:	9809883a 	mov	r4,r19
 20033d0:	a80b883a 	mov	r5,r21
 20033d4:	200ac0c0 	call	200ac0c <__divdf3>
 20033d8:	180b883a 	mov	r5,r3
 20033dc:	1009883a 	mov	r4,r2
 20033e0:	200c7100 	call	200c710 <__fixdfsi>
 20033e4:	1009883a 	mov	r4,r2
 20033e8:	1021883a 	mov	r16,r2
 20033ec:	200c7980 	call	200c798 <__floatsidf>
 20033f0:	1009883a 	mov	r4,r2
 20033f4:	180b883a 	mov	r5,r3
 20033f8:	880d883a 	mov	r6,r17
 20033fc:	a00f883a 	mov	r7,r20
 2003400:	200b71c0 	call	200b71c <__muldf3>
 2003404:	9809883a 	mov	r4,r19
 2003408:	a80b883a 	mov	r5,r21
 200340c:	100d883a 	mov	r6,r2
 2003410:	180f883a 	mov	r7,r3
 2003414:	200be400 	call	200be40 <__subdf3>
 2003418:	82000c04 	addi	r8,r16,48
 200341c:	92000005 	stb	r8,0(r18)
 2003420:	1009883a 	mov	r4,r2
 2003424:	180b883a 	mov	r5,r3
 2003428:	000d883a 	mov	r6,zero
 200342c:	01d00934 	movhi	r7,16420
 2003430:	1011883a 	mov	r8,r2
 2003434:	bdc00044 	addi	r23,r23,1
 2003438:	95bfd81e 	bne	r18,r22,200339c <_dtoa_r+0x870>
 200343c:	802d883a 	mov	r22,r16
 2003440:	dc000317 	ldw	r16,12(sp)
 2003444:	4009883a 	mov	r4,r8
 2003448:	180b883a 	mov	r5,r3
 200344c:	400d883a 	mov	r6,r8
 2003450:	180f883a 	mov	r7,r3
 2003454:	200a3700 	call	200a370 <__adddf3>
 2003458:	8809883a 	mov	r4,r17
 200345c:	a00b883a 	mov	r5,r20
 2003460:	100d883a 	mov	r6,r2
 2003464:	180f883a 	mov	r7,r3
 2003468:	1027883a 	mov	r19,r2
 200346c:	1825883a 	mov	r18,r3
 2003470:	200b63c0 	call	200b63c <__ledf2>
 2003474:	10000816 	blt	r2,zero,2003498 <_dtoa_r+0x96c>
 2003478:	8809883a 	mov	r4,r17
 200347c:	a00b883a 	mov	r5,r20
 2003480:	980d883a 	mov	r6,r19
 2003484:	900f883a 	mov	r7,r18
 2003488:	200b4d80 	call	200b4d8 <__eqdf2>
 200348c:	103f551e 	bne	r2,zero,20031e4 <_dtoa_r+0x6b8>
 2003490:	b580004c 	andi	r22,r22,1
 2003494:	b03f5326 	beq	r22,zero,20031e4 <_dtoa_r+0x6b8>
 2003498:	bd7fffc3 	ldbu	r21,-1(r23)
 200349c:	b8bfffc4 	addi	r2,r23,-1
 20034a0:	1007883a 	mov	r3,r2
 20034a4:	01400e44 	movi	r5,57
 20034a8:	d9800717 	ldw	r6,28(sp)
 20034ac:	00000506 	br	20034c4 <_dtoa_r+0x998>
 20034b0:	18ffffc4 	addi	r3,r3,-1
 20034b4:	30825e26 	beq	r6,r2,2003e30 <_dtoa_r+0x1304>
 20034b8:	1d400003 	ldbu	r21,0(r3)
 20034bc:	102f883a 	mov	r23,r2
 20034c0:	10bfffc4 	addi	r2,r2,-1
 20034c4:	a9003fcc 	andi	r4,r21,255
 20034c8:	2100201c 	xori	r4,r4,128
 20034cc:	213fe004 	addi	r4,r4,-128
 20034d0:	217ff726 	beq	r4,r5,20034b0 <_dtoa_r+0x984>
 20034d4:	aa000044 	addi	r8,r21,1
 20034d8:	12000005 	stb	r8,0(r2)
 20034dc:	003f4106 	br	20031e4 <_dtoa_r+0x6b8>
 20034e0:	d8c00b17 	ldw	r3,44(sp)
 20034e4:	18006726 	beq	r3,zero,2003684 <_dtoa_r+0xb58>
 20034e8:	d9000317 	ldw	r4,12(sp)
 20034ec:	00c00044 	movi	r3,1
 20034f0:	19016a0e 	bge	r3,r4,2003a9c <_dtoa_r+0xf70>
 20034f4:	d8800617 	ldw	r2,24(sp)
 20034f8:	d8c00917 	ldw	r3,36(sp)
 20034fc:	157fffc4 	addi	r21,r2,-1
 2003500:	1d420716 	blt	r3,r21,2003d20 <_dtoa_r+0x11f4>
 2003504:	1d6bc83a 	sub	r21,r3,r21
 2003508:	d8800617 	ldw	r2,24(sp)
 200350c:	1002c716 	blt	r2,zero,200402c <_dtoa_r+0x1500>
 2003510:	dd000817 	ldw	r20,32(sp)
 2003514:	d8800617 	ldw	r2,24(sp)
 2003518:	d9800817 	ldw	r6,32(sp)
 200351c:	8009883a 	mov	r4,r16
 2003520:	01400044 	movi	r5,1
 2003524:	308d883a 	add	r6,r6,r2
 2003528:	d9800815 	stw	r6,32(sp)
 200352c:	b0ad883a 	add	r22,r22,r2
 2003530:	20065540 	call	2006554 <__i2b>
 2003534:	1023883a 	mov	r17,r2
 2003538:	a0000826 	beq	r20,zero,200355c <_dtoa_r+0xa30>
 200353c:	0580070e 	bge	zero,r22,200355c <_dtoa_r+0xa30>
 2003540:	b005883a 	mov	r2,r22
 2003544:	a5812016 	blt	r20,r22,20039c8 <_dtoa_r+0xe9c>
 2003548:	d8c00817 	ldw	r3,32(sp)
 200354c:	a0a9c83a 	sub	r20,r20,r2
 2003550:	b0adc83a 	sub	r22,r22,r2
 2003554:	1887c83a 	sub	r3,r3,r2
 2003558:	d8c00815 	stw	r3,32(sp)
 200355c:	d9000917 	ldw	r4,36(sp)
 2003560:	0100140e 	bge	zero,r4,20035b4 <_dtoa_r+0xa88>
 2003564:	d9800b17 	ldw	r6,44(sp)
 2003568:	3001e526 	beq	r6,zero,2003d00 <_dtoa_r+0x11d4>
 200356c:	05400e0e 	bge	zero,r21,20035a8 <_dtoa_r+0xa7c>
 2003570:	880b883a 	mov	r5,r17
 2003574:	8009883a 	mov	r4,r16
 2003578:	a80d883a 	mov	r6,r21
 200357c:	200678c0 	call	200678c <__pow5mult>
 2003580:	e00d883a 	mov	r6,fp
 2003584:	8009883a 	mov	r4,r16
 2003588:	100b883a 	mov	r5,r2
 200358c:	1023883a 	mov	r17,r2
 2003590:	20065900 	call	2006590 <__multiply>
 2003594:	102f883a 	mov	r23,r2
 2003598:	e00b883a 	mov	r5,fp
 200359c:	8009883a 	mov	r4,r16
 20035a0:	20061fc0 	call	20061fc <_Bfree>
 20035a4:	b839883a 	mov	fp,r23
 20035a8:	d8800917 	ldw	r2,36(sp)
 20035ac:	154dc83a 	sub	r6,r2,r21
 20035b0:	3001281e 	bne	r6,zero,2003a54 <_dtoa_r+0xf28>
 20035b4:	05c00044 	movi	r23,1
 20035b8:	8009883a 	mov	r4,r16
 20035bc:	b80b883a 	mov	r5,r23
 20035c0:	20065540 	call	2006554 <__i2b>
 20035c4:	d8c00a17 	ldw	r3,40(sp)
 20035c8:	102b883a 	mov	r21,r2
 20035cc:	00c0310e 	bge	zero,r3,2003694 <_dtoa_r+0xb68>
 20035d0:	8009883a 	mov	r4,r16
 20035d4:	100b883a 	mov	r5,r2
 20035d8:	180d883a 	mov	r6,r3
 20035dc:	200678c0 	call	200678c <__pow5mult>
 20035e0:	d9000317 	ldw	r4,12(sp)
 20035e4:	102b883a 	mov	r21,r2
 20035e8:	b9011f0e 	bge	r23,r4,2003a68 <_dtoa_r+0xf3c>
 20035ec:	0027883a 	mov	r19,zero
 20035f0:	a8800417 	ldw	r2,16(r21)
 20035f4:	10800104 	addi	r2,r2,4
 20035f8:	1085883a 	add	r2,r2,r2
 20035fc:	1085883a 	add	r2,r2,r2
 2003600:	a885883a 	add	r2,r21,r2
 2003604:	11000017 	ldw	r4,0(r2)
 2003608:	200643c0 	call	200643c <__hi0bits>
 200360c:	00c00804 	movi	r3,32
 2003610:	1885c83a 	sub	r2,r3,r2
 2003614:	00002506 	br	20036ac <_dtoa_r+0xb80>
 2003618:	01800044 	movi	r6,1
 200361c:	d9800c15 	stw	r6,48(sp)
 2003620:	003dec06 	br	2002dd4 <_dtoa_r+0x2a8>
 2003624:	d8c00817 	ldw	r3,32(sp)
 2003628:	d9000517 	ldw	r4,20(sp)
 200362c:	d8000a15 	stw	zero,40(sp)
 2003630:	1907c83a 	sub	r3,r3,r4
 2003634:	010dc83a 	sub	r6,zero,r4
 2003638:	d8c00815 	stw	r3,32(sp)
 200363c:	d9800915 	stw	r6,36(sp)
 2003640:	003ded06 	br	2002df8 <_dtoa_r+0x2cc>
 2003644:	05adc83a 	sub	r22,zero,r22
 2003648:	dd800815 	stw	r22,32(sp)
 200364c:	002d883a 	mov	r22,zero
 2003650:	003de406 	br	2002de4 <_dtoa_r+0x2b8>
 2003654:	d9000517 	ldw	r4,20(sp)
 2003658:	200c7980 	call	200c798 <__floatsidf>
 200365c:	1009883a 	mov	r4,r2
 2003660:	180b883a 	mov	r5,r3
 2003664:	b00d883a 	mov	r6,r22
 2003668:	a80f883a 	mov	r7,r21
 200366c:	200b4d80 	call	200b4d8 <__eqdf2>
 2003670:	103dc726 	beq	r2,zero,2002d90 <_dtoa_r+0x264>
 2003674:	d8800517 	ldw	r2,20(sp)
 2003678:	10bfffc4 	addi	r2,r2,-1
 200367c:	d8800515 	stw	r2,20(sp)
 2003680:	003dc306 	br	2002d90 <_dtoa_r+0x264>
 2003684:	dd400917 	ldw	r21,36(sp)
 2003688:	dd000817 	ldw	r20,32(sp)
 200368c:	0023883a 	mov	r17,zero
 2003690:	003fa906 	br	2003538 <_dtoa_r+0xa0c>
 2003694:	d9800317 	ldw	r6,12(sp)
 2003698:	b981670e 	bge	r23,r6,2003c38 <_dtoa_r+0x110c>
 200369c:	0027883a 	mov	r19,zero
 20036a0:	d8c00a17 	ldw	r3,40(sp)
 20036a4:	183fd21e 	bne	r3,zero,20035f0 <_dtoa_r+0xac4>
 20036a8:	00800044 	movi	r2,1
 20036ac:	1585883a 	add	r2,r2,r22
 20036b0:	108007cc 	andi	r2,r2,31
 20036b4:	10005f26 	beq	r2,zero,2003834 <_dtoa_r+0xd08>
 20036b8:	00c00804 	movi	r3,32
 20036bc:	1887c83a 	sub	r3,r3,r2
 20036c0:	01000104 	movi	r4,4
 20036c4:	20c2dd0e 	bge	r4,r3,200423c <_dtoa_r+0x1710>
 20036c8:	d9000817 	ldw	r4,32(sp)
 20036cc:	00c00704 	movi	r3,28
 20036d0:	1885c83a 	sub	r2,r3,r2
 20036d4:	2089883a 	add	r4,r4,r2
 20036d8:	d9000815 	stw	r4,32(sp)
 20036dc:	a0a9883a 	add	r20,r20,r2
 20036e0:	b0ad883a 	add	r22,r22,r2
 20036e4:	d8800817 	ldw	r2,32(sp)
 20036e8:	0080050e 	bge	zero,r2,2003700 <_dtoa_r+0xbd4>
 20036ec:	e00b883a 	mov	r5,fp
 20036f0:	8009883a 	mov	r4,r16
 20036f4:	100d883a 	mov	r6,r2
 20036f8:	20068cc0 	call	20068cc <__lshift>
 20036fc:	1039883a 	mov	fp,r2
 2003700:	0580050e 	bge	zero,r22,2003718 <_dtoa_r+0xbec>
 2003704:	a80b883a 	mov	r5,r21
 2003708:	8009883a 	mov	r4,r16
 200370c:	b00d883a 	mov	r6,r22
 2003710:	20068cc0 	call	20068cc <__lshift>
 2003714:	102b883a 	mov	r21,r2
 2003718:	d8c00c17 	ldw	r3,48(sp)
 200371c:	1801161e 	bne	r3,zero,2003b78 <_dtoa_r+0x104c>
 2003720:	d8c00617 	ldw	r3,24(sp)
 2003724:	00c12d0e 	bge	zero,r3,2003bdc <_dtoa_r+0x10b0>
 2003728:	d8c00b17 	ldw	r3,44(sp)
 200372c:	1800571e 	bne	r3,zero,200388c <_dtoa_r+0xd60>
 2003730:	dc800717 	ldw	r18,28(sp)
 2003734:	dcc00617 	ldw	r19,24(sp)
 2003738:	9029883a 	mov	r20,r18
 200373c:	00000206 	br	2003748 <_dtoa_r+0xc1c>
 2003740:	20062240 	call	2006224 <__multadd>
 2003744:	1039883a 	mov	fp,r2
 2003748:	e009883a 	mov	r4,fp
 200374c:	a80b883a 	mov	r5,r21
 2003750:	200292c0 	call	200292c <quorem>
 2003754:	10800c04 	addi	r2,r2,48
 2003758:	90800005 	stb	r2,0(r18)
 200375c:	94800044 	addi	r18,r18,1
 2003760:	9507c83a 	sub	r3,r18,r20
 2003764:	8009883a 	mov	r4,r16
 2003768:	e00b883a 	mov	r5,fp
 200376c:	01800284 	movi	r6,10
 2003770:	000f883a 	mov	r7,zero
 2003774:	1cfff216 	blt	r3,r19,2003740 <_dtoa_r+0xc14>
 2003778:	1011883a 	mov	r8,r2
 200377c:	d8800617 	ldw	r2,24(sp)
 2003780:	00822e0e 	bge	zero,r2,200403c <_dtoa_r+0x1510>
 2003784:	d9000717 	ldw	r4,28(sp)
 2003788:	0025883a 	mov	r18,zero
 200378c:	20af883a 	add	r23,r4,r2
 2003790:	e00b883a 	mov	r5,fp
 2003794:	01800044 	movi	r6,1
 2003798:	8009883a 	mov	r4,r16
 200379c:	da001715 	stw	r8,92(sp)
 20037a0:	20068cc0 	call	20068cc <__lshift>
 20037a4:	1009883a 	mov	r4,r2
 20037a8:	a80b883a 	mov	r5,r21
 20037ac:	1039883a 	mov	fp,r2
 20037b0:	2006a140 	call	2006a14 <__mcmp>
 20037b4:	da001717 	ldw	r8,92(sp)
 20037b8:	00816e0e 	bge	zero,r2,2003d74 <_dtoa_r+0x1248>
 20037bc:	b93fffc3 	ldbu	r4,-1(r23)
 20037c0:	b8bfffc4 	addi	r2,r23,-1
 20037c4:	1007883a 	mov	r3,r2
 20037c8:	01800e44 	movi	r6,57
 20037cc:	d9c00717 	ldw	r7,28(sp)
 20037d0:	00000506 	br	20037e8 <_dtoa_r+0xcbc>
 20037d4:	18ffffc4 	addi	r3,r3,-1
 20037d8:	38811926 	beq	r7,r2,2003c40 <_dtoa_r+0x1114>
 20037dc:	19000003 	ldbu	r4,0(r3)
 20037e0:	102f883a 	mov	r23,r2
 20037e4:	10bfffc4 	addi	r2,r2,-1
 20037e8:	21403fcc 	andi	r5,r4,255
 20037ec:	2940201c 	xori	r5,r5,128
 20037f0:	297fe004 	addi	r5,r5,-128
 20037f4:	29bff726 	beq	r5,r6,20037d4 <_dtoa_r+0xca8>
 20037f8:	21000044 	addi	r4,r4,1
 20037fc:	11000005 	stb	r4,0(r2)
 2003800:	8009883a 	mov	r4,r16
 2003804:	a80b883a 	mov	r5,r21
 2003808:	20061fc0 	call	20061fc <_Bfree>
 200380c:	883e7526 	beq	r17,zero,20031e4 <_dtoa_r+0x6b8>
 2003810:	90000426 	beq	r18,zero,2003824 <_dtoa_r+0xcf8>
 2003814:	94400326 	beq	r18,r17,2003824 <_dtoa_r+0xcf8>
 2003818:	8009883a 	mov	r4,r16
 200381c:	900b883a 	mov	r5,r18
 2003820:	20061fc0 	call	20061fc <_Bfree>
 2003824:	8009883a 	mov	r4,r16
 2003828:	880b883a 	mov	r5,r17
 200382c:	20061fc0 	call	20061fc <_Bfree>
 2003830:	003e6c06 	br	20031e4 <_dtoa_r+0x6b8>
 2003834:	00800704 	movi	r2,28
 2003838:	d9800817 	ldw	r6,32(sp)
 200383c:	a0a9883a 	add	r20,r20,r2
 2003840:	b0ad883a 	add	r22,r22,r2
 2003844:	308d883a 	add	r6,r6,r2
 2003848:	d9800815 	stw	r6,32(sp)
 200384c:	003fa506 	br	20036e4 <_dtoa_r+0xbb8>
 2003850:	013efb84 	movi	r4,-1042
 2003854:	246bc83a 	sub	r21,r4,r17
 2003858:	9548983a 	sll	r4,r18,r21
 200385c:	003d1806 	br	2002cc0 <_dtoa_r+0x194>
 2003860:	d8000c15 	stw	zero,48(sp)
 2003864:	003d5b06 	br	2002dd4 <_dtoa_r+0x2a8>
 2003868:	880b883a 	mov	r5,r17
 200386c:	8009883a 	mov	r4,r16
 2003870:	01800284 	movi	r6,10
 2003874:	000f883a 	mov	r7,zero
 2003878:	20062240 	call	2006224 <__multadd>
 200387c:	1023883a 	mov	r17,r2
 2003880:	d8800d17 	ldw	r2,52(sp)
 2003884:	0082550e 	bge	zero,r2,20041dc <_dtoa_r+0x16b0>
 2003888:	d8800615 	stw	r2,24(sp)
 200388c:	0500050e 	bge	zero,r20,20038a4 <_dtoa_r+0xd78>
 2003890:	880b883a 	mov	r5,r17
 2003894:	8009883a 	mov	r4,r16
 2003898:	a00d883a 	mov	r6,r20
 200389c:	20068cc0 	call	20068cc <__lshift>
 20038a0:	1023883a 	mov	r17,r2
 20038a4:	98016a1e 	bne	r19,zero,2003e50 <_dtoa_r+0x1324>
 20038a8:	8829883a 	mov	r20,r17
 20038ac:	d9000617 	ldw	r4,24(sp)
 20038b0:	dcc00717 	ldw	r19,28(sp)
 20038b4:	9480004c 	andi	r18,r18,1
 20038b8:	20bfffc4 	addi	r2,r4,-1
 20038bc:	9885883a 	add	r2,r19,r2
 20038c0:	d8800415 	stw	r2,16(sp)
 20038c4:	dc800615 	stw	r18,24(sp)
 20038c8:	e009883a 	mov	r4,fp
 20038cc:	a80b883a 	mov	r5,r21
 20038d0:	200292c0 	call	200292c <quorem>
 20038d4:	e009883a 	mov	r4,fp
 20038d8:	880b883a 	mov	r5,r17
 20038dc:	102f883a 	mov	r23,r2
 20038e0:	2006a140 	call	2006a14 <__mcmp>
 20038e4:	8009883a 	mov	r4,r16
 20038e8:	a80b883a 	mov	r5,r21
 20038ec:	a00d883a 	mov	r6,r20
 20038f0:	102d883a 	mov	r22,r2
 20038f4:	2006a740 	call	2006a74 <__mdiff>
 20038f8:	1007883a 	mov	r3,r2
 20038fc:	10800317 	ldw	r2,12(r2)
 2003900:	bc800c04 	addi	r18,r23,48
 2003904:	1000971e 	bne	r2,zero,2003b64 <_dtoa_r+0x1038>
 2003908:	180b883a 	mov	r5,r3
 200390c:	e009883a 	mov	r4,fp
 2003910:	d8c01515 	stw	r3,84(sp)
 2003914:	2006a140 	call	2006a14 <__mcmp>
 2003918:	d8c01517 	ldw	r3,84(sp)
 200391c:	8009883a 	mov	r4,r16
 2003920:	d8801515 	stw	r2,84(sp)
 2003924:	180b883a 	mov	r5,r3
 2003928:	20061fc0 	call	20061fc <_Bfree>
 200392c:	d8801517 	ldw	r2,84(sp)
 2003930:	1000041e 	bne	r2,zero,2003944 <_dtoa_r+0xe18>
 2003934:	d9800317 	ldw	r6,12(sp)
 2003938:	3000021e 	bne	r6,zero,2003944 <_dtoa_r+0xe18>
 200393c:	d8c00617 	ldw	r3,24(sp)
 2003940:	18007626 	beq	r3,zero,2003b1c <_dtoa_r+0xff0>
 2003944:	b0005b16 	blt	r22,zero,2003ab4 <_dtoa_r+0xf88>
 2003948:	b000041e 	bne	r22,zero,200395c <_dtoa_r+0xe30>
 200394c:	d9000317 	ldw	r4,12(sp)
 2003950:	2000021e 	bne	r4,zero,200395c <_dtoa_r+0xe30>
 2003954:	d8c00617 	ldw	r3,24(sp)
 2003958:	18005626 	beq	r3,zero,2003ab4 <_dtoa_r+0xf88>
 200395c:	00814d16 	blt	zero,r2,2003e94 <_dtoa_r+0x1368>
 2003960:	d8c00417 	ldw	r3,16(sp)
 2003964:	9d800044 	addi	r22,r19,1
 2003968:	9c800005 	stb	r18,0(r19)
 200396c:	b02f883a 	mov	r23,r22
 2003970:	98c14c26 	beq	r19,r3,2003ea4 <_dtoa_r+0x1378>
 2003974:	e00b883a 	mov	r5,fp
 2003978:	8009883a 	mov	r4,r16
 200397c:	01800284 	movi	r6,10
 2003980:	000f883a 	mov	r7,zero
 2003984:	20062240 	call	2006224 <__multadd>
 2003988:	1039883a 	mov	fp,r2
 200398c:	8d006d26 	beq	r17,r20,2003b44 <_dtoa_r+0x1018>
 2003990:	880b883a 	mov	r5,r17
 2003994:	01800284 	movi	r6,10
 2003998:	000f883a 	mov	r7,zero
 200399c:	8009883a 	mov	r4,r16
 20039a0:	20062240 	call	2006224 <__multadd>
 20039a4:	a00b883a 	mov	r5,r20
 20039a8:	8009883a 	mov	r4,r16
 20039ac:	01800284 	movi	r6,10
 20039b0:	000f883a 	mov	r7,zero
 20039b4:	1023883a 	mov	r17,r2
 20039b8:	20062240 	call	2006224 <__multadd>
 20039bc:	1029883a 	mov	r20,r2
 20039c0:	b027883a 	mov	r19,r22
 20039c4:	003fc006 	br	20038c8 <_dtoa_r+0xd9c>
 20039c8:	a005883a 	mov	r2,r20
 20039cc:	003ede06 	br	2003548 <_dtoa_r+0xa1c>
 20039d0:	01000044 	movi	r4,1
 20039d4:	d9000b15 	stw	r4,44(sp)
 20039d8:	d9802217 	ldw	r6,136(sp)
 20039dc:	0180dc0e 	bge	zero,r6,2003d50 <_dtoa_r+0x1224>
 20039e0:	3023883a 	mov	r17,r6
 20039e4:	d9800d15 	stw	r6,52(sp)
 20039e8:	d9800615 	stw	r6,24(sp)
 20039ec:	003d1e06 	br	2002e68 <_dtoa_r+0x33c>
 20039f0:	d8800617 	ldw	r2,24(sp)
 20039f4:	00be3716 	blt	zero,r2,20032d4 <_dtoa_r+0x7a8>
 20039f8:	1000be1e 	bne	r2,zero,2003cf4 <_dtoa_r+0x11c8>
 20039fc:	8809883a 	mov	r4,r17
 2003a00:	a00b883a 	mov	r5,r20
 2003a04:	000d883a 	mov	r6,zero
 2003a08:	01d00534 	movhi	r7,16404
 2003a0c:	200b71c0 	call	200b71c <__muldf3>
 2003a10:	1009883a 	mov	r4,r2
 2003a14:	180b883a 	mov	r5,r3
 2003a18:	900d883a 	mov	r6,r18
 2003a1c:	980f883a 	mov	r7,r19
 2003a20:	200b55c0 	call	200b55c <__gedf2>
 2003a24:	002b883a 	mov	r21,zero
 2003a28:	0023883a 	mov	r17,zero
 2003a2c:	10007a16 	blt	r2,zero,2003c18 <_dtoa_r+0x10ec>
 2003a30:	d9002217 	ldw	r4,136(sp)
 2003a34:	ddc00717 	ldw	r23,28(sp)
 2003a38:	0108303a 	nor	r4,zero,r4
 2003a3c:	d9000515 	stw	r4,20(sp)
 2003a40:	8009883a 	mov	r4,r16
 2003a44:	a80b883a 	mov	r5,r21
 2003a48:	20061fc0 	call	20061fc <_Bfree>
 2003a4c:	883f751e 	bne	r17,zero,2003824 <_dtoa_r+0xcf8>
 2003a50:	003de406 	br	20031e4 <_dtoa_r+0x6b8>
 2003a54:	e00b883a 	mov	r5,fp
 2003a58:	8009883a 	mov	r4,r16
 2003a5c:	200678c0 	call	200678c <__pow5mult>
 2003a60:	1039883a 	mov	fp,r2
 2003a64:	003ed306 	br	20035b4 <_dtoa_r+0xa88>
 2003a68:	903ee01e 	bne	r18,zero,20035ec <_dtoa_r+0xac0>
 2003a6c:	00800434 	movhi	r2,16
 2003a70:	10bfffc4 	addi	r2,r2,-1
 2003a74:	9884703a 	and	r2,r19,r2
 2003a78:	103f081e 	bne	r2,zero,200369c <_dtoa_r+0xb70>
 2003a7c:	9cdffc2c 	andhi	r19,r19,32752
 2003a80:	983f0626 	beq	r19,zero,200369c <_dtoa_r+0xb70>
 2003a84:	d8800817 	ldw	r2,32(sp)
 2003a88:	b5800044 	addi	r22,r22,1
 2003a8c:	04c00044 	movi	r19,1
 2003a90:	10800044 	addi	r2,r2,1
 2003a94:	d8800815 	stw	r2,32(sp)
 2003a98:	003f0106 	br	20036a0 <_dtoa_r+0xb74>
 2003a9c:	d9800f17 	ldw	r6,60(sp)
 2003aa0:	30016826 	beq	r6,zero,2004044 <_dtoa_r+0x1518>
 2003aa4:	10810cc4 	addi	r2,r2,1075
 2003aa8:	dd400917 	ldw	r21,36(sp)
 2003aac:	dd000817 	ldw	r20,32(sp)
 2003ab0:	003e9906 	br	2003518 <_dtoa_r+0x9ec>
 2003ab4:	9011883a 	mov	r8,r18
 2003ab8:	4007883a 	mov	r3,r8
 2003abc:	e02d883a 	mov	r22,fp
 2003ac0:	0080100e 	bge	zero,r2,2003b04 <_dtoa_r+0xfd8>
 2003ac4:	01800044 	movi	r6,1
 2003ac8:	8009883a 	mov	r4,r16
 2003acc:	e00b883a 	mov	r5,fp
 2003ad0:	da001515 	stw	r8,84(sp)
 2003ad4:	da001715 	stw	r8,92(sp)
 2003ad8:	20068cc0 	call	20068cc <__lshift>
 2003adc:	1009883a 	mov	r4,r2
 2003ae0:	a80b883a 	mov	r5,r21
 2003ae4:	102d883a 	mov	r22,r2
 2003ae8:	2006a140 	call	2006a14 <__mcmp>
 2003aec:	d8c01517 	ldw	r3,84(sp)
 2003af0:	da001717 	ldw	r8,92(sp)
 2003af4:	0081a50e 	bge	zero,r2,200418c <_dtoa_r+0x1660>
 2003af8:	00800e44 	movi	r2,57
 2003afc:	40817b26 	beq	r8,r2,20040ec <_dtoa_r+0x15c0>
 2003b00:	40c00044 	addi	r3,r8,1
 2003b04:	8825883a 	mov	r18,r17
 2003b08:	9dc00044 	addi	r23,r19,1
 2003b0c:	98c00005 	stb	r3,0(r19)
 2003b10:	a023883a 	mov	r17,r20
 2003b14:	b039883a 	mov	fp,r22
 2003b18:	003f3906 	br	2003800 <_dtoa_r+0xcd4>
 2003b1c:	00800e44 	movi	r2,57
 2003b20:	9011883a 	mov	r8,r18
 2003b24:	90817226 	beq	r18,r2,20040f0 <_dtoa_r+0x15c4>
 2003b28:	0580010e 	bge	zero,r22,2003b30 <_dtoa_r+0x1004>
 2003b2c:	ba000c44 	addi	r8,r23,49
 2003b30:	8825883a 	mov	r18,r17
 2003b34:	9dc00044 	addi	r23,r19,1
 2003b38:	9a000005 	stb	r8,0(r19)
 2003b3c:	a023883a 	mov	r17,r20
 2003b40:	003f2f06 	br	2003800 <_dtoa_r+0xcd4>
 2003b44:	880b883a 	mov	r5,r17
 2003b48:	8009883a 	mov	r4,r16
 2003b4c:	01800284 	movi	r6,10
 2003b50:	000f883a 	mov	r7,zero
 2003b54:	20062240 	call	2006224 <__multadd>
 2003b58:	1023883a 	mov	r17,r2
 2003b5c:	1029883a 	mov	r20,r2
 2003b60:	003f9706 	br	20039c0 <_dtoa_r+0xe94>
 2003b64:	8009883a 	mov	r4,r16
 2003b68:	180b883a 	mov	r5,r3
 2003b6c:	20061fc0 	call	20061fc <_Bfree>
 2003b70:	00800044 	movi	r2,1
 2003b74:	003f7306 	br	2003944 <_dtoa_r+0xe18>
 2003b78:	e009883a 	mov	r4,fp
 2003b7c:	a80b883a 	mov	r5,r21
 2003b80:	2006a140 	call	2006a14 <__mcmp>
 2003b84:	103ee60e 	bge	r2,zero,2003720 <_dtoa_r+0xbf4>
 2003b88:	8009883a 	mov	r4,r16
 2003b8c:	e00b883a 	mov	r5,fp
 2003b90:	01800284 	movi	r6,10
 2003b94:	000f883a 	mov	r7,zero
 2003b98:	20062240 	call	2006224 <__multadd>
 2003b9c:	d9000517 	ldw	r4,20(sp)
 2003ba0:	d9800b17 	ldw	r6,44(sp)
 2003ba4:	1039883a 	mov	fp,r2
 2003ba8:	213fffc4 	addi	r4,r4,-1
 2003bac:	d9000515 	stw	r4,20(sp)
 2003bb0:	303f2d1e 	bne	r6,zero,2003868 <_dtoa_r+0xd3c>
 2003bb4:	d9000d17 	ldw	r4,52(sp)
 2003bb8:	0101780e 	bge	zero,r4,200419c <_dtoa_r+0x1670>
 2003bbc:	d9000615 	stw	r4,24(sp)
 2003bc0:	003edb06 	br	2003730 <_dtoa_r+0xc04>
 2003bc4:	00800084 	movi	r2,2
 2003bc8:	30818e1e 	bne	r6,r2,2004204 <_dtoa_r+0x16d8>
 2003bcc:	d8000b15 	stw	zero,44(sp)
 2003bd0:	003f8106 	br	20039d8 <_dtoa_r+0xeac>
 2003bd4:	d8800717 	ldw	r2,28(sp)
 2003bd8:	003c0306 	br	2002be8 <_dtoa_r+0xbc>
 2003bdc:	d9000317 	ldw	r4,12(sp)
 2003be0:	00800084 	movi	r2,2
 2003be4:	113ed00e 	bge	r2,r4,2003728 <_dtoa_r+0xbfc>
 2003be8:	d8c00617 	ldw	r3,24(sp)
 2003bec:	183f901e 	bne	r3,zero,2003a30 <_dtoa_r+0xf04>
 2003bf0:	a80b883a 	mov	r5,r21
 2003bf4:	8009883a 	mov	r4,r16
 2003bf8:	01800144 	movi	r6,5
 2003bfc:	000f883a 	mov	r7,zero
 2003c00:	20062240 	call	2006224 <__multadd>
 2003c04:	e009883a 	mov	r4,fp
 2003c08:	100b883a 	mov	r5,r2
 2003c0c:	102b883a 	mov	r21,r2
 2003c10:	2006a140 	call	2006a14 <__mcmp>
 2003c14:	00bf860e 	bge	zero,r2,2003a30 <_dtoa_r+0xf04>
 2003c18:	d9800717 	ldw	r6,28(sp)
 2003c1c:	00800c44 	movi	r2,49
 2003c20:	30800005 	stb	r2,0(r6)
 2003c24:	d8800517 	ldw	r2,20(sp)
 2003c28:	35c00044 	addi	r23,r6,1
 2003c2c:	10800044 	addi	r2,r2,1
 2003c30:	d8800515 	stw	r2,20(sp)
 2003c34:	003f8206 	br	2003a40 <_dtoa_r+0xf14>
 2003c38:	903e981e 	bne	r18,zero,200369c <_dtoa_r+0xb70>
 2003c3c:	003f8b06 	br	2003a6c <_dtoa_r+0xf40>
 2003c40:	d9800517 	ldw	r6,20(sp)
 2003c44:	d8c00717 	ldw	r3,28(sp)
 2003c48:	00800c44 	movi	r2,49
 2003c4c:	31800044 	addi	r6,r6,1
 2003c50:	d9800515 	stw	r6,20(sp)
 2003c54:	18800005 	stb	r2,0(r3)
 2003c58:	003ee906 	br	2003800 <_dtoa_r+0xcd4>
 2003c5c:	dc000317 	ldw	r16,12(sp)
 2003c60:	003d6006 	br	20031e4 <_dtoa_r+0x6b8>
 2003c64:	8809883a 	mov	r4,r17
 2003c68:	200c7980 	call	200c798 <__floatsidf>
 2003c6c:	a009883a 	mov	r4,r20
 2003c70:	a80b883a 	mov	r5,r21
 2003c74:	100d883a 	mov	r6,r2
 2003c78:	180f883a 	mov	r7,r3
 2003c7c:	200b71c0 	call	200b71c <__muldf3>
 2003c80:	1009883a 	mov	r4,r2
 2003c84:	180b883a 	mov	r5,r3
 2003c88:	000d883a 	mov	r6,zero
 2003c8c:	01d00734 	movhi	r7,16412
 2003c90:	200a3700 	call	200a370 <__adddf3>
 2003c94:	1023883a 	mov	r17,r2
 2003c98:	00bf3034 	movhi	r2,64704
 2003c9c:	1885883a 	add	r2,r3,r2
 2003ca0:	d8800e15 	stw	r2,56(sp)
 2003ca4:	a009883a 	mov	r4,r20
 2003ca8:	a80b883a 	mov	r5,r21
 2003cac:	000d883a 	mov	r6,zero
 2003cb0:	01d00534 	movhi	r7,16404
 2003cb4:	200be400 	call	200be40 <__subdf3>
 2003cb8:	d9c00e17 	ldw	r7,56(sp)
 2003cbc:	1009883a 	mov	r4,r2
 2003cc0:	180b883a 	mov	r5,r3
 2003cc4:	880d883a 	mov	r6,r17
 2003cc8:	102b883a 	mov	r21,r2
 2003ccc:	1829883a 	mov	r20,r3
 2003cd0:	200b55c0 	call	200b55c <__gedf2>
 2003cd4:	00807716 	blt	zero,r2,2003eb4 <_dtoa_r+0x1388>
 2003cd8:	d8800e17 	ldw	r2,56(sp)
 2003cdc:	a809883a 	mov	r4,r21
 2003ce0:	a00b883a 	mov	r5,r20
 2003ce4:	11e0003c 	xorhi	r7,r2,32768
 2003ce8:	880d883a 	mov	r6,r17
 2003cec:	200b63c0 	call	200b63c <__ledf2>
 2003cf0:	103d6b0e 	bge	r2,zero,20032a0 <_dtoa_r+0x774>
 2003cf4:	002b883a 	mov	r21,zero
 2003cf8:	0023883a 	mov	r17,zero
 2003cfc:	003f4c06 	br	2003a30 <_dtoa_r+0xf04>
 2003d00:	d9800917 	ldw	r6,36(sp)
 2003d04:	e00b883a 	mov	r5,fp
 2003d08:	8009883a 	mov	r4,r16
 2003d0c:	200678c0 	call	200678c <__pow5mult>
 2003d10:	1039883a 	mov	fp,r2
 2003d14:	003e2706 	br	20035b4 <_dtoa_r+0xa88>
 2003d18:	d8000b15 	stw	zero,44(sp)
 2003d1c:	003c4906 	br	2002e44 <_dtoa_r+0x318>
 2003d20:	d9000917 	ldw	r4,36(sp)
 2003d24:	d9800a17 	ldw	r6,40(sp)
 2003d28:	dd400915 	stw	r21,36(sp)
 2003d2c:	a905c83a 	sub	r2,r21,r4
 2003d30:	308d883a 	add	r6,r6,r2
 2003d34:	d9800a15 	stw	r6,40(sp)
 2003d38:	002b883a 	mov	r21,zero
 2003d3c:	003df206 	br	2003508 <_dtoa_r+0x9dc>
 2003d40:	dc800e15 	stw	r18,56(sp)
 2003d44:	982b883a 	mov	r21,r19
 2003d48:	04400084 	movi	r17,2
 2003d4c:	003c7406 	br	2002f20 <_dtoa_r+0x3f4>
 2003d50:	04400044 	movi	r17,1
 2003d54:	dc400d15 	stw	r17,52(sp)
 2003d58:	dc400615 	stw	r17,24(sp)
 2003d5c:	dc402215 	stw	r17,136(sp)
 2003d60:	80001115 	stw	zero,68(r16)
 2003d64:	000b883a 	mov	r5,zero
 2003d68:	003c4a06 	br	2002e94 <_dtoa_r+0x368>
 2003d6c:	3023883a 	mov	r17,r6
 2003d70:	003ffb06 	br	2003d60 <_dtoa_r+0x1234>
 2003d74:	1000021e 	bne	r2,zero,2003d80 <_dtoa_r+0x1254>
 2003d78:	4200004c 	andi	r8,r8,1
 2003d7c:	403e8f1e 	bne	r8,zero,20037bc <_dtoa_r+0xc90>
 2003d80:	01000c04 	movi	r4,48
 2003d84:	00000106 	br	2003d8c <_dtoa_r+0x1260>
 2003d88:	102f883a 	mov	r23,r2
 2003d8c:	b8bfffc4 	addi	r2,r23,-1
 2003d90:	10c00007 	ldb	r3,0(r2)
 2003d94:	193ffc26 	beq	r3,r4,2003d88 <_dtoa_r+0x125c>
 2003d98:	003e9906 	br	2003800 <_dtoa_r+0xcd4>
 2003d9c:	d9000517 	ldw	r4,20(sp)
 2003da0:	012fc83a 	sub	r23,zero,r4
 2003da4:	b800ad26 	beq	r23,zero,200405c <_dtoa_r+0x1530>
 2003da8:	b88003cc 	andi	r2,r23,15
 2003dac:	100490fa 	slli	r2,r2,3
 2003db0:	00c08074 	movhi	r3,513
 2003db4:	18fca404 	addi	r3,r3,-3440
 2003db8:	1885883a 	add	r2,r3,r2
 2003dbc:	11800017 	ldw	r6,0(r2)
 2003dc0:	11c00117 	ldw	r7,4(r2)
 2003dc4:	b82fd13a 	srai	r23,r23,4
 2003dc8:	9009883a 	mov	r4,r18
 2003dcc:	980b883a 	mov	r5,r19
 2003dd0:	200b71c0 	call	200b71c <__muldf3>
 2003dd4:	1029883a 	mov	r20,r2
 2003dd8:	182b883a 	mov	r21,r3
 2003ddc:	b800f426 	beq	r23,zero,20041b0 <_dtoa_r+0x1684>
 2003de0:	02008074 	movhi	r8,513
 2003de4:	423c9a04 	addi	r8,r8,-3480
 2003de8:	8029883a 	mov	r20,r16
 2003dec:	04400084 	movi	r17,2
 2003df0:	4021883a 	mov	r16,r8
 2003df4:	b980004c 	andi	r6,r23,1
 2003df8:	1009883a 	mov	r4,r2
 2003dfc:	b82fd07a 	srai	r23,r23,1
 2003e00:	180b883a 	mov	r5,r3
 2003e04:	30000426 	beq	r6,zero,2003e18 <_dtoa_r+0x12ec>
 2003e08:	81800017 	ldw	r6,0(r16)
 2003e0c:	81c00117 	ldw	r7,4(r16)
 2003e10:	8c400044 	addi	r17,r17,1
 2003e14:	200b71c0 	call	200b71c <__muldf3>
 2003e18:	84000204 	addi	r16,r16,8
 2003e1c:	b83ff51e 	bne	r23,zero,2003df4 <_dtoa_r+0x12c8>
 2003e20:	a021883a 	mov	r16,r20
 2003e24:	182b883a 	mov	r21,r3
 2003e28:	1029883a 	mov	r20,r2
 2003e2c:	003c5506 	br	2002f84 <_dtoa_r+0x458>
 2003e30:	d9800517 	ldw	r6,20(sp)
 2003e34:	d9000717 	ldw	r4,28(sp)
 2003e38:	00c00c04 	movi	r3,48
 2003e3c:	31800044 	addi	r6,r6,1
 2003e40:	d9800515 	stw	r6,20(sp)
 2003e44:	20c00005 	stb	r3,0(r4)
 2003e48:	02000c44 	movi	r8,49
 2003e4c:	003da206 	br	20034d8 <_dtoa_r+0x9ac>
 2003e50:	89400117 	ldw	r5,4(r17)
 2003e54:	8009883a 	mov	r4,r16
 2003e58:	20061540 	call	2006154 <_Balloc>
 2003e5c:	89800417 	ldw	r6,16(r17)
 2003e60:	11000304 	addi	r4,r2,12
 2003e64:	89400304 	addi	r5,r17,12
 2003e68:	31800084 	addi	r6,r6,2
 2003e6c:	318d883a 	add	r6,r6,r6
 2003e70:	318d883a 	add	r6,r6,r6
 2003e74:	1027883a 	mov	r19,r2
 2003e78:	2005d9c0 	call	2005d9c <memcpy>
 2003e7c:	8009883a 	mov	r4,r16
 2003e80:	980b883a 	mov	r5,r19
 2003e84:	01800044 	movi	r6,1
 2003e88:	20068cc0 	call	20068cc <__lshift>
 2003e8c:	1029883a 	mov	r20,r2
 2003e90:	003e8606 	br	20038ac <_dtoa_r+0xd80>
 2003e94:	00800e44 	movi	r2,57
 2003e98:	90809526 	beq	r18,r2,20040f0 <_dtoa_r+0x15c4>
 2003e9c:	92000044 	addi	r8,r18,1
 2003ea0:	003f2306 	br	2003b30 <_dtoa_r+0x1004>
 2003ea4:	9011883a 	mov	r8,r18
 2003ea8:	8825883a 	mov	r18,r17
 2003eac:	a023883a 	mov	r17,r20
 2003eb0:	003e3706 	br	2003790 <_dtoa_r+0xc64>
 2003eb4:	002b883a 	mov	r21,zero
 2003eb8:	0023883a 	mov	r17,zero
 2003ebc:	003f5606 	br	2003c18 <_dtoa_r+0x10ec>
 2003ec0:	51bfffc4 	addi	r6,r10,-1
 2003ec4:	300490fa 	slli	r2,r6,3
 2003ec8:	00c08074 	movhi	r3,513
 2003ecc:	18fca404 	addi	r3,r3,-3440
 2003ed0:	1885883a 	add	r2,r3,r2
 2003ed4:	d9c00e17 	ldw	r7,56(sp)
 2003ed8:	11000017 	ldw	r4,0(r2)
 2003edc:	11400117 	ldw	r5,4(r2)
 2003ee0:	d8800717 	ldw	r2,28(sp)
 2003ee4:	d9801015 	stw	r6,64(sp)
 2003ee8:	880d883a 	mov	r6,r17
 2003eec:	da801615 	stw	r10,88(sp)
 2003ef0:	15c00044 	addi	r23,r2,1
 2003ef4:	200b71c0 	call	200b71c <__muldf3>
 2003ef8:	a80b883a 	mov	r5,r21
 2003efc:	a009883a 	mov	r4,r20
 2003f00:	d8c01115 	stw	r3,68(sp)
 2003f04:	d8800e15 	stw	r2,56(sp)
 2003f08:	200c7100 	call	200c710 <__fixdfsi>
 2003f0c:	1009883a 	mov	r4,r2
 2003f10:	1023883a 	mov	r17,r2
 2003f14:	200c7980 	call	200c798 <__floatsidf>
 2003f18:	a009883a 	mov	r4,r20
 2003f1c:	a80b883a 	mov	r5,r21
 2003f20:	100d883a 	mov	r6,r2
 2003f24:	180f883a 	mov	r7,r3
 2003f28:	200be400 	call	200be40 <__subdf3>
 2003f2c:	1813883a 	mov	r9,r3
 2003f30:	d8c00717 	ldw	r3,28(sp)
 2003f34:	8c400c04 	addi	r17,r17,48
 2003f38:	1011883a 	mov	r8,r2
 2003f3c:	1c400005 	stb	r17,0(r3)
 2003f40:	da801617 	ldw	r10,88(sp)
 2003f44:	00800044 	movi	r2,1
 2003f48:	50802326 	beq	r10,r2,2003fd8 <_dtoa_r+0x14ac>
 2003f4c:	d8800717 	ldw	r2,28(sp)
 2003f50:	b82b883a 	mov	r21,r23
 2003f54:	dc001315 	stw	r16,76(sp)
 2003f58:	12a9883a 	add	r20,r2,r10
 2003f5c:	4807883a 	mov	r3,r9
 2003f60:	4005883a 	mov	r2,r8
 2003f64:	dc801415 	stw	r18,80(sp)
 2003f68:	000d883a 	mov	r6,zero
 2003f6c:	01d00934 	movhi	r7,16420
 2003f70:	1009883a 	mov	r4,r2
 2003f74:	180b883a 	mov	r5,r3
 2003f78:	200b71c0 	call	200b71c <__muldf3>
 2003f7c:	180b883a 	mov	r5,r3
 2003f80:	1009883a 	mov	r4,r2
 2003f84:	1821883a 	mov	r16,r3
 2003f88:	1025883a 	mov	r18,r2
 2003f8c:	200c7100 	call	200c710 <__fixdfsi>
 2003f90:	1009883a 	mov	r4,r2
 2003f94:	1023883a 	mov	r17,r2
 2003f98:	200c7980 	call	200c798 <__floatsidf>
 2003f9c:	9009883a 	mov	r4,r18
 2003fa0:	800b883a 	mov	r5,r16
 2003fa4:	100d883a 	mov	r6,r2
 2003fa8:	180f883a 	mov	r7,r3
 2003fac:	8c400c04 	addi	r17,r17,48
 2003fb0:	200be400 	call	200be40 <__subdf3>
 2003fb4:	ad400044 	addi	r21,r21,1
 2003fb8:	ac7fffc5 	stb	r17,-1(r21)
 2003fbc:	ad3fea1e 	bne	r21,r20,2003f68 <_dtoa_r+0x143c>
 2003fc0:	1813883a 	mov	r9,r3
 2003fc4:	d8c01017 	ldw	r3,64(sp)
 2003fc8:	dc001317 	ldw	r16,76(sp)
 2003fcc:	dc801417 	ldw	r18,80(sp)
 2003fd0:	1011883a 	mov	r8,r2
 2003fd4:	b8ef883a 	add	r23,r23,r3
 2003fd8:	d9000e17 	ldw	r4,56(sp)
 2003fdc:	d9401117 	ldw	r5,68(sp)
 2003fe0:	000d883a 	mov	r6,zero
 2003fe4:	01cff834 	movhi	r7,16352
 2003fe8:	da001715 	stw	r8,92(sp)
 2003fec:	da401515 	stw	r9,84(sp)
 2003ff0:	200a3700 	call	200a370 <__adddf3>
 2003ff4:	da001717 	ldw	r8,92(sp)
 2003ff8:	da401517 	ldw	r9,84(sp)
 2003ffc:	1009883a 	mov	r4,r2
 2004000:	400d883a 	mov	r6,r8
 2004004:	480f883a 	mov	r7,r9
 2004008:	180b883a 	mov	r5,r3
 200400c:	200b63c0 	call	200b63c <__ledf2>
 2004010:	da001717 	ldw	r8,92(sp)
 2004014:	da401517 	ldw	r9,84(sp)
 2004018:	10003b0e 	bge	r2,zero,2004108 <_dtoa_r+0x15dc>
 200401c:	d9001217 	ldw	r4,72(sp)
 2004020:	bd7fffc3 	ldbu	r21,-1(r23)
 2004024:	d9000515 	stw	r4,20(sp)
 2004028:	003d1c06 	br	200349c <_dtoa_r+0x970>
 200402c:	d8c00817 	ldw	r3,32(sp)
 2004030:	18a9c83a 	sub	r20,r3,r2
 2004034:	0005883a 	mov	r2,zero
 2004038:	003d3706 	br	2003518 <_dtoa_r+0x9ec>
 200403c:	00800044 	movi	r2,1
 2004040:	003dd006 	br	2003784 <_dtoa_r+0xc58>
 2004044:	d8c00217 	ldw	r3,8(sp)
 2004048:	00800d84 	movi	r2,54
 200404c:	dd400917 	ldw	r21,36(sp)
 2004050:	10c5c83a 	sub	r2,r2,r3
 2004054:	dd000817 	ldw	r20,32(sp)
 2004058:	003d2f06 	br	2003518 <_dtoa_r+0x9ec>
 200405c:	9029883a 	mov	r20,r18
 2004060:	982b883a 	mov	r21,r19
 2004064:	04400084 	movi	r17,2
 2004068:	003bc606 	br	2002f84 <_dtoa_r+0x458>
 200406c:	d8800617 	ldw	r2,24(sp)
 2004070:	103efc26 	beq	r2,zero,2003c64 <_dtoa_r+0x1138>
 2004074:	d8c00d17 	ldw	r3,52(sp)
 2004078:	00fc890e 	bge	zero,r3,20032a0 <_dtoa_r+0x774>
 200407c:	a80b883a 	mov	r5,r21
 2004080:	a009883a 	mov	r4,r20
 2004084:	000d883a 	mov	r6,zero
 2004088:	01d00934 	movhi	r7,16420
 200408c:	200b71c0 	call	200b71c <__muldf3>
 2004090:	89000044 	addi	r4,r17,1
 2004094:	1029883a 	mov	r20,r2
 2004098:	182b883a 	mov	r21,r3
 200409c:	200c7980 	call	200c798 <__floatsidf>
 20040a0:	a009883a 	mov	r4,r20
 20040a4:	a80b883a 	mov	r5,r21
 20040a8:	100d883a 	mov	r6,r2
 20040ac:	180f883a 	mov	r7,r3
 20040b0:	200b71c0 	call	200b71c <__muldf3>
 20040b4:	1009883a 	mov	r4,r2
 20040b8:	180b883a 	mov	r5,r3
 20040bc:	000d883a 	mov	r6,zero
 20040c0:	01d00734 	movhi	r7,16412
 20040c4:	200a3700 	call	200a370 <__adddf3>
 20040c8:	d9000517 	ldw	r4,20(sp)
 20040cc:	1023883a 	mov	r17,r2
 20040d0:	00bf3034 	movhi	r2,64704
 20040d4:	213fffc4 	addi	r4,r4,-1
 20040d8:	1885883a 	add	r2,r3,r2
 20040dc:	d9001215 	stw	r4,72(sp)
 20040e0:	d8800e15 	stw	r2,56(sp)
 20040e4:	da800d17 	ldw	r10,52(sp)
 20040e8:	003bc306 	br	2002ff8 <_dtoa_r+0x4cc>
 20040ec:	b039883a 	mov	fp,r22
 20040f0:	01000e44 	movi	r4,57
 20040f4:	8825883a 	mov	r18,r17
 20040f8:	9dc00044 	addi	r23,r19,1
 20040fc:	99000005 	stb	r4,0(r19)
 2004100:	a023883a 	mov	r17,r20
 2004104:	003dae06 	br	20037c0 <_dtoa_r+0xc94>
 2004108:	d9800e17 	ldw	r6,56(sp)
 200410c:	d9c01117 	ldw	r7,68(sp)
 2004110:	0009883a 	mov	r4,zero
 2004114:	014ff834 	movhi	r5,16352
 2004118:	da001715 	stw	r8,92(sp)
 200411c:	da401515 	stw	r9,84(sp)
 2004120:	200be400 	call	200be40 <__subdf3>
 2004124:	da001717 	ldw	r8,92(sp)
 2004128:	da401517 	ldw	r9,84(sp)
 200412c:	1009883a 	mov	r4,r2
 2004130:	180b883a 	mov	r5,r3
 2004134:	400d883a 	mov	r6,r8
 2004138:	480f883a 	mov	r7,r9
 200413c:	200b55c0 	call	200b55c <__gedf2>
 2004140:	00bc570e 	bge	zero,r2,20032a0 <_dtoa_r+0x774>
 2004144:	01000c04 	movi	r4,48
 2004148:	00000106 	br	2004150 <_dtoa_r+0x1624>
 200414c:	102f883a 	mov	r23,r2
 2004150:	b8bfffc4 	addi	r2,r23,-1
 2004154:	10c00007 	ldb	r3,0(r2)
 2004158:	193ffc26 	beq	r3,r4,200414c <_dtoa_r+0x1620>
 200415c:	d9801217 	ldw	r6,72(sp)
 2004160:	d9800515 	stw	r6,20(sp)
 2004164:	003c1f06 	br	20031e4 <_dtoa_r+0x6b8>
 2004168:	d8801217 	ldw	r2,72(sp)
 200416c:	dc001117 	ldw	r16,68(sp)
 2004170:	d8800515 	stw	r2,20(sp)
 2004174:	003cc906 	br	200349c <_dtoa_r+0x970>
 2004178:	dd801317 	ldw	r22,76(sp)
 200417c:	dc001117 	ldw	r16,68(sp)
 2004180:	dcc01417 	ldw	r19,80(sp)
 2004184:	dc801017 	ldw	r18,64(sp)
 2004188:	003c4506 	br	20032a0 <_dtoa_r+0x774>
 200418c:	103e5d1e 	bne	r2,zero,2003b04 <_dtoa_r+0xfd8>
 2004190:	4080004c 	andi	r2,r8,1
 2004194:	103e5b26 	beq	r2,zero,2003b04 <_dtoa_r+0xfd8>
 2004198:	003e5706 	br	2003af8 <_dtoa_r+0xfcc>
 200419c:	d8c00317 	ldw	r3,12(sp)
 20041a0:	00800084 	movi	r2,2
 20041a4:	10c00a16 	blt	r2,r3,20041d0 <_dtoa_r+0x16a4>
 20041a8:	d9000d17 	ldw	r4,52(sp)
 20041ac:	003e8306 	br	2003bbc <_dtoa_r+0x1090>
 20041b0:	04400084 	movi	r17,2
 20041b4:	003b7306 	br	2002f84 <_dtoa_r+0x458>
 20041b8:	d9801217 	ldw	r6,72(sp)
 20041bc:	d9800515 	stw	r6,20(sp)
 20041c0:	003cb606 	br	200349c <_dtoa_r+0x970>
 20041c4:	d9001217 	ldw	r4,72(sp)
 20041c8:	d9000515 	stw	r4,20(sp)
 20041cc:	003c0506 	br	20031e4 <_dtoa_r+0x6b8>
 20041d0:	d9800d17 	ldw	r6,52(sp)
 20041d4:	d9800615 	stw	r6,24(sp)
 20041d8:	003e8306 	br	2003be8 <_dtoa_r+0x10bc>
 20041dc:	d9800317 	ldw	r6,12(sp)
 20041e0:	00800084 	movi	r2,2
 20041e4:	11800216 	blt	r2,r6,20041f0 <_dtoa_r+0x16c4>
 20041e8:	d8800d17 	ldw	r2,52(sp)
 20041ec:	003da606 	br	2003888 <_dtoa_r+0xd5c>
 20041f0:	d8800d17 	ldw	r2,52(sp)
 20041f4:	d8800615 	stw	r2,24(sp)
 20041f8:	003e7b06 	br	2003be8 <_dtoa_r+0x10bc>
 20041fc:	05000044 	movi	r20,1
 2004200:	003b0506 	br	2002e18 <_dtoa_r+0x2ec>
 2004204:	8009883a 	mov	r4,r16
 2004208:	80001115 	stw	zero,68(r16)
 200420c:	000b883a 	mov	r5,zero
 2004210:	20061540 	call	2006154 <_Balloc>
 2004214:	d8800715 	stw	r2,28(sp)
 2004218:	d8c00717 	ldw	r3,28(sp)
 200421c:	00bfffc4 	movi	r2,-1
 2004220:	01000044 	movi	r4,1
 2004224:	d8800615 	stw	r2,24(sp)
 2004228:	80c01015 	stw	r3,64(r16)
 200422c:	d9000b15 	stw	r4,44(sp)
 2004230:	d8002215 	stw	zero,136(sp)
 2004234:	d8800d15 	stw	r2,52(sp)
 2004238:	003c1906 	br	20032a0 <_dtoa_r+0x774>
 200423c:	193d2926 	beq	r3,r4,20036e4 <_dtoa_r+0xbb8>
 2004240:	00c00f04 	movi	r3,60
 2004244:	1885c83a 	sub	r2,r3,r2
 2004248:	003d7b06 	br	2003838 <_dtoa_r+0xd0c>
 200424c:	000b883a 	mov	r5,zero
 2004250:	003b1006 	br	2002e94 <_dtoa_r+0x368>

02004254 <_fflush_r>:
 2004254:	defffb04 	addi	sp,sp,-20
 2004258:	dcc00315 	stw	r19,12(sp)
 200425c:	dc000015 	stw	r16,0(sp)
 2004260:	dfc00415 	stw	ra,16(sp)
 2004264:	dc800215 	stw	r18,8(sp)
 2004268:	dc400115 	stw	r17,4(sp)
 200426c:	2027883a 	mov	r19,r4
 2004270:	2821883a 	mov	r16,r5
 2004274:	20000226 	beq	r4,zero,2004280 <_fflush_r+0x2c>
 2004278:	20800e17 	ldw	r2,56(r4)
 200427c:	10005326 	beq	r2,zero,20043cc <_fflush_r+0x178>
 2004280:	8080030b 	ldhu	r2,12(r16)
 2004284:	10ffffcc 	andi	r3,r2,65535
 2004288:	18e0001c 	xori	r3,r3,32768
 200428c:	18e00004 	addi	r3,r3,-32768
 2004290:	18002c26 	beq	r3,zero,2004344 <_fflush_r+0xf0>
 2004294:	10c0020c 	andi	r3,r2,8
 2004298:	1800321e 	bne	r3,zero,2004364 <_fflush_r+0x110>
 200429c:	80c00117 	ldw	r3,4(r16)
 20042a0:	10820014 	ori	r2,r2,2048
 20042a4:	8080030d 	sth	r2,12(r16)
 20042a8:	00c0570e 	bge	zero,r3,2004408 <_fflush_r+0x1b4>
 20042ac:	82000a17 	ldw	r8,40(r16)
 20042b0:	40002426 	beq	r8,zero,2004344 <_fflush_r+0xf0>
 20042b4:	9c400017 	ldw	r17,0(r19)
 20042b8:	10c4000c 	andi	r3,r2,4096
 20042bc:	98000015 	stw	zero,0(r19)
 20042c0:	18004626 	beq	r3,zero,20043dc <_fflush_r+0x188>
 20042c4:	81801417 	ldw	r6,80(r16)
 20042c8:	10c0010c 	andi	r3,r2,4
 20042cc:	18000626 	beq	r3,zero,20042e8 <_fflush_r+0x94>
 20042d0:	80c00117 	ldw	r3,4(r16)
 20042d4:	80800c17 	ldw	r2,48(r16)
 20042d8:	30cdc83a 	sub	r6,r6,r3
 20042dc:	10000226 	beq	r2,zero,20042e8 <_fflush_r+0x94>
 20042e0:	80800f17 	ldw	r2,60(r16)
 20042e4:	308dc83a 	sub	r6,r6,r2
 20042e8:	81400717 	ldw	r5,28(r16)
 20042ec:	9809883a 	mov	r4,r19
 20042f0:	000f883a 	mov	r7,zero
 20042f4:	403ee83a 	callr	r8
 20042f8:	00ffffc4 	movi	r3,-1
 20042fc:	10c04526 	beq	r2,r3,2004414 <_fflush_r+0x1c0>
 2004300:	80c0030b 	ldhu	r3,12(r16)
 2004304:	81000417 	ldw	r4,16(r16)
 2004308:	80000115 	stw	zero,4(r16)
 200430c:	197dffcc 	andi	r5,r3,63487
 2004310:	8140030d 	sth	r5,12(r16)
 2004314:	81000015 	stw	r4,0(r16)
 2004318:	18c4000c 	andi	r3,r3,4096
 200431c:	18000126 	beq	r3,zero,2004324 <_fflush_r+0xd0>
 2004320:	80801415 	stw	r2,80(r16)
 2004324:	81400c17 	ldw	r5,48(r16)
 2004328:	9c400015 	stw	r17,0(r19)
 200432c:	28000526 	beq	r5,zero,2004344 <_fflush_r+0xf0>
 2004330:	80801004 	addi	r2,r16,64
 2004334:	28800226 	beq	r5,r2,2004340 <_fflush_r+0xec>
 2004338:	9809883a 	mov	r4,r19
 200433c:	20049700 	call	2004970 <_free_r>
 2004340:	80000c15 	stw	zero,48(r16)
 2004344:	0005883a 	mov	r2,zero
 2004348:	dfc00417 	ldw	ra,16(sp)
 200434c:	dcc00317 	ldw	r19,12(sp)
 2004350:	dc800217 	ldw	r18,8(sp)
 2004354:	dc400117 	ldw	r17,4(sp)
 2004358:	dc000017 	ldw	r16,0(sp)
 200435c:	dec00504 	addi	sp,sp,20
 2004360:	f800283a 	ret
 2004364:	84800417 	ldw	r18,16(r16)
 2004368:	903ff626 	beq	r18,zero,2004344 <_fflush_r+0xf0>
 200436c:	84400017 	ldw	r17,0(r16)
 2004370:	108000cc 	andi	r2,r2,3
 2004374:	84800015 	stw	r18,0(r16)
 2004378:	8ca3c83a 	sub	r17,r17,r18
 200437c:	10001526 	beq	r2,zero,20043d4 <_fflush_r+0x180>
 2004380:	0005883a 	mov	r2,zero
 2004384:	80800215 	stw	r2,8(r16)
 2004388:	04400316 	blt	zero,r17,2004398 <_fflush_r+0x144>
 200438c:	003fed06 	br	2004344 <_fflush_r+0xf0>
 2004390:	90a5883a 	add	r18,r18,r2
 2004394:	047feb0e 	bge	zero,r17,2004344 <_fflush_r+0xf0>
 2004398:	80800917 	ldw	r2,36(r16)
 200439c:	81400717 	ldw	r5,28(r16)
 20043a0:	880f883a 	mov	r7,r17
 20043a4:	900d883a 	mov	r6,r18
 20043a8:	9809883a 	mov	r4,r19
 20043ac:	103ee83a 	callr	r2
 20043b0:	88a3c83a 	sub	r17,r17,r2
 20043b4:	00bff616 	blt	zero,r2,2004390 <_fflush_r+0x13c>
 20043b8:	80c0030b 	ldhu	r3,12(r16)
 20043bc:	00bfffc4 	movi	r2,-1
 20043c0:	18c01014 	ori	r3,r3,64
 20043c4:	80c0030d 	sth	r3,12(r16)
 20043c8:	003fdf06 	br	2004348 <_fflush_r+0xf4>
 20043cc:	20047fc0 	call	20047fc <__sinit>
 20043d0:	003fab06 	br	2004280 <_fflush_r+0x2c>
 20043d4:	80800517 	ldw	r2,20(r16)
 20043d8:	003fea06 	br	2004384 <_fflush_r+0x130>
 20043dc:	81400717 	ldw	r5,28(r16)
 20043e0:	000d883a 	mov	r6,zero
 20043e4:	9809883a 	mov	r4,r19
 20043e8:	01c00044 	movi	r7,1
 20043ec:	403ee83a 	callr	r8
 20043f0:	100d883a 	mov	r6,r2
 20043f4:	00bfffc4 	movi	r2,-1
 20043f8:	30801326 	beq	r6,r2,2004448 <_fflush_r+0x1f4>
 20043fc:	8080030b 	ldhu	r2,12(r16)
 2004400:	82000a17 	ldw	r8,40(r16)
 2004404:	003fb006 	br	20042c8 <_fflush_r+0x74>
 2004408:	80c00f17 	ldw	r3,60(r16)
 200440c:	00ffa716 	blt	zero,r3,20042ac <_fflush_r+0x58>
 2004410:	003fcc06 	br	2004344 <_fflush_r+0xf0>
 2004414:	98c00017 	ldw	r3,0(r19)
 2004418:	183fb926 	beq	r3,zero,2004300 <_fflush_r+0xac>
 200441c:	01000744 	movi	r4,29
 2004420:	19000226 	beq	r3,r4,200442c <_fflush_r+0x1d8>
 2004424:	01000584 	movi	r4,22
 2004428:	1900101e 	bne	r3,r4,200446c <_fflush_r+0x218>
 200442c:	8080030b 	ldhu	r2,12(r16)
 2004430:	80c00417 	ldw	r3,16(r16)
 2004434:	80000115 	stw	zero,4(r16)
 2004438:	10bdffcc 	andi	r2,r2,63487
 200443c:	8080030d 	sth	r2,12(r16)
 2004440:	80c00015 	stw	r3,0(r16)
 2004444:	003fb706 	br	2004324 <_fflush_r+0xd0>
 2004448:	98800017 	ldw	r2,0(r19)
 200444c:	103feb26 	beq	r2,zero,20043fc <_fflush_r+0x1a8>
 2004450:	00c00744 	movi	r3,29
 2004454:	10c00226 	beq	r2,r3,2004460 <_fflush_r+0x20c>
 2004458:	00c00584 	movi	r3,22
 200445c:	10ffd61e 	bne	r2,r3,20043b8 <_fflush_r+0x164>
 2004460:	9c400015 	stw	r17,0(r19)
 2004464:	0005883a 	mov	r2,zero
 2004468:	003fb706 	br	2004348 <_fflush_r+0xf4>
 200446c:	80c0030b 	ldhu	r3,12(r16)
 2004470:	18c01014 	ori	r3,r3,64
 2004474:	80c0030d 	sth	r3,12(r16)
 2004478:	003fb306 	br	2004348 <_fflush_r+0xf4>

0200447c <fflush>:
 200447c:	20000526 	beq	r4,zero,2004494 <fflush+0x18>
 2004480:	00808074 	movhi	r2,513
 2004484:	10839504 	addi	r2,r2,3668
 2004488:	200b883a 	mov	r5,r4
 200448c:	11000017 	ldw	r4,0(r2)
 2004490:	20042541 	jmpi	2004254 <_fflush_r>
 2004494:	00808074 	movhi	r2,513
 2004498:	10839404 	addi	r2,r2,3664
 200449c:	11000017 	ldw	r4,0(r2)
 20044a0:	01408034 	movhi	r5,512
 20044a4:	29509504 	addi	r5,r5,16980
 20044a8:	20051bc1 	jmpi	20051bc <_fwalk_reent>

020044ac <__fp_lock>:
 20044ac:	0005883a 	mov	r2,zero
 20044b0:	f800283a 	ret

020044b4 <__fp_unlock>:
 20044b4:	0005883a 	mov	r2,zero
 20044b8:	f800283a 	ret

020044bc <_cleanup_r>:
 20044bc:	01408074 	movhi	r5,513
 20044c0:	29640c04 	addi	r5,r5,-28624
 20044c4:	20051041 	jmpi	2005104 <_fwalk>

020044c8 <__sinit.part.1>:
 20044c8:	defff604 	addi	sp,sp,-40
 20044cc:	00c08034 	movhi	r3,512
 20044d0:	dfc00915 	stw	ra,36(sp)
 20044d4:	df000815 	stw	fp,32(sp)
 20044d8:	ddc00715 	stw	r23,28(sp)
 20044dc:	dd800615 	stw	r22,24(sp)
 20044e0:	dd400515 	stw	r21,20(sp)
 20044e4:	dd000415 	stw	r20,16(sp)
 20044e8:	dcc00315 	stw	r19,12(sp)
 20044ec:	dc800215 	stw	r18,8(sp)
 20044f0:	dc400115 	stw	r17,4(sp)
 20044f4:	dc000015 	stw	r16,0(sp)
 20044f8:	18d12f04 	addi	r3,r3,17596
 20044fc:	24000117 	ldw	r16,4(r4)
 2004500:	20c00f15 	stw	r3,60(r4)
 2004504:	07000044 	movi	fp,1
 2004508:	00c000c4 	movi	r3,3
 200450c:	2080bb04 	addi	r2,r4,748
 2004510:	20c0b915 	stw	r3,740(r4)
 2004514:	27000e15 	stw	fp,56(r4)
 2004518:	2080ba15 	stw	r2,744(r4)
 200451c:	2000b815 	stw	zero,736(r4)
 2004520:	05c00204 	movi	r23,8
 2004524:	00800104 	movi	r2,4
 2004528:	2025883a 	mov	r18,r4
 200452c:	b80d883a 	mov	r6,r23
 2004530:	81001704 	addi	r4,r16,92
 2004534:	000b883a 	mov	r5,zero
 2004538:	80000015 	stw	zero,0(r16)
 200453c:	80000115 	stw	zero,4(r16)
 2004540:	80000215 	stw	zero,8(r16)
 2004544:	8080030d 	sth	r2,12(r16)
 2004548:	80001915 	stw	zero,100(r16)
 200454c:	8000038d 	sth	zero,14(r16)
 2004550:	80000415 	stw	zero,16(r16)
 2004554:	80000515 	stw	zero,20(r16)
 2004558:	80000615 	stw	zero,24(r16)
 200455c:	20060300 	call	2006030 <memset>
 2004560:	05808034 	movhi	r22,512
 2004564:	94400217 	ldw	r17,8(r18)
 2004568:	05408034 	movhi	r21,512
 200456c:	05008034 	movhi	r20,512
 2004570:	04c08034 	movhi	r19,512
 2004574:	b59dd204 	addi	r22,r22,30536
 2004578:	ad5de904 	addi	r21,r21,30628
 200457c:	a51e0804 	addi	r20,r20,30752
 2004580:	9cde1f04 	addi	r19,r19,30844
 2004584:	85800815 	stw	r22,32(r16)
 2004588:	85400915 	stw	r21,36(r16)
 200458c:	85000a15 	stw	r20,40(r16)
 2004590:	84c00b15 	stw	r19,44(r16)
 2004594:	84000715 	stw	r16,28(r16)
 2004598:	00800284 	movi	r2,10
 200459c:	89001704 	addi	r4,r17,92
 20045a0:	b80d883a 	mov	r6,r23
 20045a4:	000b883a 	mov	r5,zero
 20045a8:	88000015 	stw	zero,0(r17)
 20045ac:	88000115 	stw	zero,4(r17)
 20045b0:	88000215 	stw	zero,8(r17)
 20045b4:	8880030d 	sth	r2,12(r17)
 20045b8:	88001915 	stw	zero,100(r17)
 20045bc:	8f00038d 	sth	fp,14(r17)
 20045c0:	88000415 	stw	zero,16(r17)
 20045c4:	88000515 	stw	zero,20(r17)
 20045c8:	88000615 	stw	zero,24(r17)
 20045cc:	20060300 	call	2006030 <memset>
 20045d0:	94000317 	ldw	r16,12(r18)
 20045d4:	00800484 	movi	r2,18
 20045d8:	8c400715 	stw	r17,28(r17)
 20045dc:	8d800815 	stw	r22,32(r17)
 20045e0:	8d400915 	stw	r21,36(r17)
 20045e4:	8d000a15 	stw	r20,40(r17)
 20045e8:	8cc00b15 	stw	r19,44(r17)
 20045ec:	8080030d 	sth	r2,12(r16)
 20045f0:	00800084 	movi	r2,2
 20045f4:	80000015 	stw	zero,0(r16)
 20045f8:	80000115 	stw	zero,4(r16)
 20045fc:	80000215 	stw	zero,8(r16)
 2004600:	80001915 	stw	zero,100(r16)
 2004604:	8080038d 	sth	r2,14(r16)
 2004608:	80000415 	stw	zero,16(r16)
 200460c:	80000515 	stw	zero,20(r16)
 2004610:	80000615 	stw	zero,24(r16)
 2004614:	81001704 	addi	r4,r16,92
 2004618:	000b883a 	mov	r5,zero
 200461c:	b80d883a 	mov	r6,r23
 2004620:	20060300 	call	2006030 <memset>
 2004624:	84000715 	stw	r16,28(r16)
 2004628:	85800815 	stw	r22,32(r16)
 200462c:	85400915 	stw	r21,36(r16)
 2004630:	85000a15 	stw	r20,40(r16)
 2004634:	84c00b15 	stw	r19,44(r16)
 2004638:	dfc00917 	ldw	ra,36(sp)
 200463c:	df000817 	ldw	fp,32(sp)
 2004640:	ddc00717 	ldw	r23,28(sp)
 2004644:	dd800617 	ldw	r22,24(sp)
 2004648:	dd400517 	ldw	r21,20(sp)
 200464c:	dd000417 	ldw	r20,16(sp)
 2004650:	dcc00317 	ldw	r19,12(sp)
 2004654:	dc800217 	ldw	r18,8(sp)
 2004658:	dc400117 	ldw	r17,4(sp)
 200465c:	dc000017 	ldw	r16,0(sp)
 2004660:	dec00a04 	addi	sp,sp,40
 2004664:	f800283a 	ret

02004668 <__sfmoreglue>:
 2004668:	defffc04 	addi	sp,sp,-16
 200466c:	dc400115 	stw	r17,4(sp)
 2004670:	2c401a24 	muli	r17,r5,104
 2004674:	dc800215 	stw	r18,8(sp)
 2004678:	2825883a 	mov	r18,r5
 200467c:	89400304 	addi	r5,r17,12
 2004680:	dc000015 	stw	r16,0(sp)
 2004684:	dfc00315 	stw	ra,12(sp)
 2004688:	200550c0 	call	200550c <_malloc_r>
 200468c:	1021883a 	mov	r16,r2
 2004690:	10000726 	beq	r2,zero,20046b0 <__sfmoreglue+0x48>
 2004694:	11000304 	addi	r4,r2,12
 2004698:	10000015 	stw	zero,0(r2)
 200469c:	14800115 	stw	r18,4(r2)
 20046a0:	11000215 	stw	r4,8(r2)
 20046a4:	000b883a 	mov	r5,zero
 20046a8:	880d883a 	mov	r6,r17
 20046ac:	20060300 	call	2006030 <memset>
 20046b0:	8005883a 	mov	r2,r16
 20046b4:	dfc00317 	ldw	ra,12(sp)
 20046b8:	dc800217 	ldw	r18,8(sp)
 20046bc:	dc400117 	ldw	r17,4(sp)
 20046c0:	dc000017 	ldw	r16,0(sp)
 20046c4:	dec00404 	addi	sp,sp,16
 20046c8:	f800283a 	ret

020046cc <__sfp>:
 20046cc:	00808074 	movhi	r2,513
 20046d0:	defffb04 	addi	sp,sp,-20
 20046d4:	10839404 	addi	r2,r2,3664
 20046d8:	dc800215 	stw	r18,8(sp)
 20046dc:	14800017 	ldw	r18,0(r2)
 20046e0:	dcc00315 	stw	r19,12(sp)
 20046e4:	dfc00415 	stw	ra,16(sp)
 20046e8:	90800e17 	ldw	r2,56(r18)
 20046ec:	dc400115 	stw	r17,4(sp)
 20046f0:	dc000015 	stw	r16,0(sp)
 20046f4:	2027883a 	mov	r19,r4
 20046f8:	1000021e 	bne	r2,zero,2004704 <__sfp+0x38>
 20046fc:	9009883a 	mov	r4,r18
 2004700:	20044c80 	call	20044c8 <__sinit.part.1>
 2004704:	9480b804 	addi	r18,r18,736
 2004708:	047fffc4 	movi	r17,-1
 200470c:	91400117 	ldw	r5,4(r18)
 2004710:	94000217 	ldw	r16,8(r18)
 2004714:	297fffc4 	addi	r5,r5,-1
 2004718:	28000a16 	blt	r5,zero,2004744 <__sfp+0x78>
 200471c:	8080030f 	ldh	r2,12(r16)
 2004720:	10000c26 	beq	r2,zero,2004754 <__sfp+0x88>
 2004724:	80c01d04 	addi	r3,r16,116
 2004728:	00000206 	br	2004734 <__sfp+0x68>
 200472c:	18bfe60f 	ldh	r2,-104(r3)
 2004730:	10000826 	beq	r2,zero,2004754 <__sfp+0x88>
 2004734:	297fffc4 	addi	r5,r5,-1
 2004738:	1c3ffd04 	addi	r16,r3,-12
 200473c:	18c01a04 	addi	r3,r3,104
 2004740:	2c7ffa1e 	bne	r5,r17,200472c <__sfp+0x60>
 2004744:	90800017 	ldw	r2,0(r18)
 2004748:	10001d26 	beq	r2,zero,20047c0 <__sfp+0xf4>
 200474c:	1025883a 	mov	r18,r2
 2004750:	003fee06 	br	200470c <__sfp+0x40>
 2004754:	00bfffc4 	movi	r2,-1
 2004758:	8080038d 	sth	r2,14(r16)
 200475c:	00800044 	movi	r2,1
 2004760:	8080030d 	sth	r2,12(r16)
 2004764:	80001915 	stw	zero,100(r16)
 2004768:	80000015 	stw	zero,0(r16)
 200476c:	80000215 	stw	zero,8(r16)
 2004770:	80000115 	stw	zero,4(r16)
 2004774:	80000415 	stw	zero,16(r16)
 2004778:	80000515 	stw	zero,20(r16)
 200477c:	80000615 	stw	zero,24(r16)
 2004780:	81001704 	addi	r4,r16,92
 2004784:	000b883a 	mov	r5,zero
 2004788:	01800204 	movi	r6,8
 200478c:	20060300 	call	2006030 <memset>
 2004790:	8005883a 	mov	r2,r16
 2004794:	80000c15 	stw	zero,48(r16)
 2004798:	80000d15 	stw	zero,52(r16)
 200479c:	80001115 	stw	zero,68(r16)
 20047a0:	80001215 	stw	zero,72(r16)
 20047a4:	dfc00417 	ldw	ra,16(sp)
 20047a8:	dcc00317 	ldw	r19,12(sp)
 20047ac:	dc800217 	ldw	r18,8(sp)
 20047b0:	dc400117 	ldw	r17,4(sp)
 20047b4:	dc000017 	ldw	r16,0(sp)
 20047b8:	dec00504 	addi	sp,sp,20
 20047bc:	f800283a 	ret
 20047c0:	9809883a 	mov	r4,r19
 20047c4:	01400104 	movi	r5,4
 20047c8:	20046680 	call	2004668 <__sfmoreglue>
 20047cc:	90800015 	stw	r2,0(r18)
 20047d0:	103fde1e 	bne	r2,zero,200474c <__sfp+0x80>
 20047d4:	00800304 	movi	r2,12
 20047d8:	98800015 	stw	r2,0(r19)
 20047dc:	0005883a 	mov	r2,zero
 20047e0:	003ff006 	br	20047a4 <__sfp+0xd8>

020047e4 <_cleanup>:
 20047e4:	00808074 	movhi	r2,513
 20047e8:	10839404 	addi	r2,r2,3664
 20047ec:	11000017 	ldw	r4,0(r2)
 20047f0:	01408074 	movhi	r5,513
 20047f4:	29640c04 	addi	r5,r5,-28624
 20047f8:	20051041 	jmpi	2005104 <_fwalk>

020047fc <__sinit>:
 20047fc:	20800e17 	ldw	r2,56(r4)
 2004800:	10000126 	beq	r2,zero,2004808 <__sinit+0xc>
 2004804:	f800283a 	ret
 2004808:	20044c81 	jmpi	20044c8 <__sinit.part.1>

0200480c <__sfp_lock_acquire>:
 200480c:	f800283a 	ret

02004810 <__sfp_lock_release>:
 2004810:	f800283a 	ret

02004814 <__sinit_lock_acquire>:
 2004814:	f800283a 	ret

02004818 <__sinit_lock_release>:
 2004818:	f800283a 	ret

0200481c <__fp_lock_all>:
 200481c:	00808074 	movhi	r2,513
 2004820:	10839504 	addi	r2,r2,3668
 2004824:	11000017 	ldw	r4,0(r2)
 2004828:	01408034 	movhi	r5,512
 200482c:	29512b04 	addi	r5,r5,17580
 2004830:	20051041 	jmpi	2005104 <_fwalk>

02004834 <__fp_unlock_all>:
 2004834:	00808074 	movhi	r2,513
 2004838:	10839504 	addi	r2,r2,3668
 200483c:	11000017 	ldw	r4,0(r2)
 2004840:	01408034 	movhi	r5,512
 2004844:	29512d04 	addi	r5,r5,17588
 2004848:	20051041 	jmpi	2005104 <_fwalk>

0200484c <_malloc_trim_r>:
 200484c:	defffb04 	addi	sp,sp,-20
 2004850:	dcc00315 	stw	r19,12(sp)
 2004854:	04c08074 	movhi	r19,513
 2004858:	dc800215 	stw	r18,8(sp)
 200485c:	dc400115 	stw	r17,4(sp)
 2004860:	dc000015 	stw	r16,0(sp)
 2004864:	dfc00415 	stw	ra,16(sp)
 2004868:	2821883a 	mov	r16,r5
 200486c:	9cfe1004 	addi	r19,r19,-1984
 2004870:	2025883a 	mov	r18,r4
 2004874:	200cf100 	call	200cf10 <__malloc_lock>
 2004878:	98800217 	ldw	r2,8(r19)
 200487c:	14400117 	ldw	r17,4(r2)
 2004880:	00bfff04 	movi	r2,-4
 2004884:	88a2703a 	and	r17,r17,r2
 2004888:	8c21c83a 	sub	r16,r17,r16
 200488c:	8403fbc4 	addi	r16,r16,4079
 2004890:	8020d33a 	srli	r16,r16,12
 2004894:	0083ffc4 	movi	r2,4095
 2004898:	843fffc4 	addi	r16,r16,-1
 200489c:	8020933a 	slli	r16,r16,12
 20048a0:	1400060e 	bge	r2,r16,20048bc <_malloc_trim_r+0x70>
 20048a4:	9009883a 	mov	r4,r18
 20048a8:	000b883a 	mov	r5,zero
 20048ac:	20076f40 	call	20076f4 <_sbrk_r>
 20048b0:	98c00217 	ldw	r3,8(r19)
 20048b4:	1c47883a 	add	r3,r3,r17
 20048b8:	10c00a26 	beq	r2,r3,20048e4 <_malloc_trim_r+0x98>
 20048bc:	9009883a 	mov	r4,r18
 20048c0:	200cf300 	call	200cf30 <__malloc_unlock>
 20048c4:	0005883a 	mov	r2,zero
 20048c8:	dfc00417 	ldw	ra,16(sp)
 20048cc:	dcc00317 	ldw	r19,12(sp)
 20048d0:	dc800217 	ldw	r18,8(sp)
 20048d4:	dc400117 	ldw	r17,4(sp)
 20048d8:	dc000017 	ldw	r16,0(sp)
 20048dc:	dec00504 	addi	sp,sp,20
 20048e0:	f800283a 	ret
 20048e4:	9009883a 	mov	r4,r18
 20048e8:	040bc83a 	sub	r5,zero,r16
 20048ec:	20076f40 	call	20076f4 <_sbrk_r>
 20048f0:	00ffffc4 	movi	r3,-1
 20048f4:	10c00d26 	beq	r2,r3,200492c <_malloc_trim_r+0xe0>
 20048f8:	00c08074 	movhi	r3,513
 20048fc:	18ca6c04 	addi	r3,r3,10672
 2004900:	18800017 	ldw	r2,0(r3)
 2004904:	99000217 	ldw	r4,8(r19)
 2004908:	8c23c83a 	sub	r17,r17,r16
 200490c:	8c400054 	ori	r17,r17,1
 2004910:	1421c83a 	sub	r16,r2,r16
 2004914:	24400115 	stw	r17,4(r4)
 2004918:	9009883a 	mov	r4,r18
 200491c:	1c000015 	stw	r16,0(r3)
 2004920:	200cf300 	call	200cf30 <__malloc_unlock>
 2004924:	00800044 	movi	r2,1
 2004928:	003fe706 	br	20048c8 <_malloc_trim_r+0x7c>
 200492c:	9009883a 	mov	r4,r18
 2004930:	000b883a 	mov	r5,zero
 2004934:	20076f40 	call	20076f4 <_sbrk_r>
 2004938:	99000217 	ldw	r4,8(r19)
 200493c:	014003c4 	movi	r5,15
 2004940:	1107c83a 	sub	r3,r2,r4
 2004944:	28ffdd0e 	bge	r5,r3,20048bc <_malloc_trim_r+0x70>
 2004948:	01408074 	movhi	r5,513
 200494c:	29439704 	addi	r5,r5,3676
 2004950:	29400017 	ldw	r5,0(r5)
 2004954:	18c00054 	ori	r3,r3,1
 2004958:	20c00115 	stw	r3,4(r4)
 200495c:	00c08074 	movhi	r3,513
 2004960:	1145c83a 	sub	r2,r2,r5
 2004964:	18ca6c04 	addi	r3,r3,10672
 2004968:	18800015 	stw	r2,0(r3)
 200496c:	003fd306 	br	20048bc <_malloc_trim_r+0x70>

02004970 <_free_r>:
 2004970:	28004c26 	beq	r5,zero,2004aa4 <_free_r+0x134>
 2004974:	defffd04 	addi	sp,sp,-12
 2004978:	dc400115 	stw	r17,4(sp)
 200497c:	dc000015 	stw	r16,0(sp)
 2004980:	2023883a 	mov	r17,r4
 2004984:	2821883a 	mov	r16,r5
 2004988:	dfc00215 	stw	ra,8(sp)
 200498c:	200cf100 	call	200cf10 <__malloc_lock>
 2004990:	813fff17 	ldw	r4,-4(r16)
 2004994:	00bfff84 	movi	r2,-2
 2004998:	02408074 	movhi	r9,513
 200499c:	81bffe04 	addi	r6,r16,-8
 20049a0:	2084703a 	and	r2,r4,r2
 20049a4:	4a7e1004 	addi	r9,r9,-1984
 20049a8:	308b883a 	add	r5,r6,r2
 20049ac:	2a000117 	ldw	r8,4(r5)
 20049b0:	49c00217 	ldw	r7,8(r9)
 20049b4:	00ffff04 	movi	r3,-4
 20049b8:	40c6703a 	and	r3,r8,r3
 20049bc:	39405326 	beq	r7,r5,2004b0c <_free_r+0x19c>
 20049c0:	28c00115 	stw	r3,4(r5)
 20049c4:	2100004c 	andi	r4,r4,1
 20049c8:	2000091e 	bne	r4,zero,20049f0 <_free_r+0x80>
 20049cc:	81fffe17 	ldw	r7,-8(r16)
 20049d0:	4a000204 	addi	r8,r9,8
 20049d4:	31cdc83a 	sub	r6,r6,r7
 20049d8:	31000217 	ldw	r4,8(r6)
 20049dc:	11c5883a 	add	r2,r2,r7
 20049e0:	22006126 	beq	r4,r8,2004b68 <_free_r+0x1f8>
 20049e4:	31c00317 	ldw	r7,12(r6)
 20049e8:	21c00315 	stw	r7,12(r4)
 20049ec:	39000215 	stw	r4,8(r7)
 20049f0:	28c9883a 	add	r4,r5,r3
 20049f4:	21c00117 	ldw	r7,4(r4)
 20049f8:	39c0004c 	andi	r7,r7,1
 20049fc:	38000d1e 	bne	r7,zero,2004a34 <_free_r+0xc4>
 2004a00:	29000217 	ldw	r4,8(r5)
 2004a04:	10c5883a 	add	r2,r2,r3
 2004a08:	00c08074 	movhi	r3,513
 2004a0c:	18fe1204 	addi	r3,r3,-1976
 2004a10:	20c07526 	beq	r4,r3,2004be8 <_free_r+0x278>
 2004a14:	29c00317 	ldw	r7,12(r5)
 2004a18:	11400054 	ori	r5,r2,1
 2004a1c:	3087883a 	add	r3,r6,r2
 2004a20:	21c00315 	stw	r7,12(r4)
 2004a24:	39000215 	stw	r4,8(r7)
 2004a28:	31400115 	stw	r5,4(r6)
 2004a2c:	18800015 	stw	r2,0(r3)
 2004a30:	00000406 	br	2004a44 <_free_r+0xd4>
 2004a34:	10c00054 	ori	r3,r2,1
 2004a38:	30c00115 	stw	r3,4(r6)
 2004a3c:	3087883a 	add	r3,r6,r2
 2004a40:	18800015 	stw	r2,0(r3)
 2004a44:	00c07fc4 	movi	r3,511
 2004a48:	18801736 	bltu	r3,r2,2004aa8 <_free_r+0x138>
 2004a4c:	1004d0fa 	srli	r2,r2,3
 2004a50:	01400044 	movi	r5,1
 2004a54:	49000117 	ldw	r4,4(r9)
 2004a58:	1087883a 	add	r3,r2,r2
 2004a5c:	18c7883a 	add	r3,r3,r3
 2004a60:	1005d0ba 	srai	r2,r2,2
 2004a64:	18c7883a 	add	r3,r3,r3
 2004a68:	1a47883a 	add	r3,r3,r9
 2004a6c:	19c00217 	ldw	r7,8(r3)
 2004a70:	2884983a 	sll	r2,r5,r2
 2004a74:	30c00315 	stw	r3,12(r6)
 2004a78:	31c00215 	stw	r7,8(r6)
 2004a7c:	1104b03a 	or	r2,r2,r4
 2004a80:	19800215 	stw	r6,8(r3)
 2004a84:	48800115 	stw	r2,4(r9)
 2004a88:	39800315 	stw	r6,12(r7)
 2004a8c:	8809883a 	mov	r4,r17
 2004a90:	dfc00217 	ldw	ra,8(sp)
 2004a94:	dc400117 	ldw	r17,4(sp)
 2004a98:	dc000017 	ldw	r16,0(sp)
 2004a9c:	dec00304 	addi	sp,sp,12
 2004aa0:	200cf301 	jmpi	200cf30 <__malloc_unlock>
 2004aa4:	f800283a 	ret
 2004aa8:	1006d27a 	srli	r3,r2,9
 2004aac:	01000104 	movi	r4,4
 2004ab0:	20c04036 	bltu	r4,r3,2004bb4 <_free_r+0x244>
 2004ab4:	1006d1ba 	srli	r3,r2,6
 2004ab8:	19400e04 	addi	r5,r3,56
 2004abc:	2947883a 	add	r3,r5,r5
 2004ac0:	18c7883a 	add	r3,r3,r3
 2004ac4:	18c7883a 	add	r3,r3,r3
 2004ac8:	1a49883a 	add	r4,r3,r9
 2004acc:	20c00217 	ldw	r3,8(r4)
 2004ad0:	01c08074 	movhi	r7,513
 2004ad4:	39fe1004 	addi	r7,r7,-1984
 2004ad8:	19003b26 	beq	r3,r4,2004bc8 <_free_r+0x258>
 2004adc:	01ffff04 	movi	r7,-4
 2004ae0:	19400117 	ldw	r5,4(r3)
 2004ae4:	29ca703a 	and	r5,r5,r7
 2004ae8:	1140022e 	bgeu	r2,r5,2004af4 <_free_r+0x184>
 2004aec:	18c00217 	ldw	r3,8(r3)
 2004af0:	20fffb1e 	bne	r4,r3,2004ae0 <_free_r+0x170>
 2004af4:	18800317 	ldw	r2,12(r3)
 2004af8:	30800315 	stw	r2,12(r6)
 2004afc:	30c00215 	stw	r3,8(r6)
 2004b00:	11800215 	stw	r6,8(r2)
 2004b04:	19800315 	stw	r6,12(r3)
 2004b08:	003fe006 	br	2004a8c <_free_r+0x11c>
 2004b0c:	2100004c 	andi	r4,r4,1
 2004b10:	1885883a 	add	r2,r3,r2
 2004b14:	2000071e 	bne	r4,zero,2004b34 <_free_r+0x1c4>
 2004b18:	817ffe17 	ldw	r5,-8(r16)
 2004b1c:	314dc83a 	sub	r6,r6,r5
 2004b20:	30c00317 	ldw	r3,12(r6)
 2004b24:	31000217 	ldw	r4,8(r6)
 2004b28:	1145883a 	add	r2,r2,r5
 2004b2c:	20c00315 	stw	r3,12(r4)
 2004b30:	19000215 	stw	r4,8(r3)
 2004b34:	10c00054 	ori	r3,r2,1
 2004b38:	30c00115 	stw	r3,4(r6)
 2004b3c:	00c08074 	movhi	r3,513
 2004b40:	18c39804 	addi	r3,r3,3680
 2004b44:	18c00017 	ldw	r3,0(r3)
 2004b48:	49800215 	stw	r6,8(r9)
 2004b4c:	10ffcf36 	bltu	r2,r3,2004a8c <_free_r+0x11c>
 2004b50:	00808074 	movhi	r2,513
 2004b54:	108a6404 	addi	r2,r2,10640
 2004b58:	11400017 	ldw	r5,0(r2)
 2004b5c:	8809883a 	mov	r4,r17
 2004b60:	200484c0 	call	200484c <_malloc_trim_r>
 2004b64:	003fc906 	br	2004a8c <_free_r+0x11c>
 2004b68:	28c9883a 	add	r4,r5,r3
 2004b6c:	21000117 	ldw	r4,4(r4)
 2004b70:	2100004c 	andi	r4,r4,1
 2004b74:	20000a1e 	bne	r4,zero,2004ba0 <_free_r+0x230>
 2004b78:	29000317 	ldw	r4,12(r5)
 2004b7c:	29400217 	ldw	r5,8(r5)
 2004b80:	10c5883a 	add	r2,r2,r3
 2004b84:	10c00054 	ori	r3,r2,1
 2004b88:	29000315 	stw	r4,12(r5)
 2004b8c:	21400215 	stw	r5,8(r4)
 2004b90:	30c00115 	stw	r3,4(r6)
 2004b94:	308d883a 	add	r6,r6,r2
 2004b98:	30800015 	stw	r2,0(r6)
 2004b9c:	003fbb06 	br	2004a8c <_free_r+0x11c>
 2004ba0:	10c00054 	ori	r3,r2,1
 2004ba4:	30c00115 	stw	r3,4(r6)
 2004ba8:	308d883a 	add	r6,r6,r2
 2004bac:	30800015 	stw	r2,0(r6)
 2004bb0:	003fb606 	br	2004a8c <_free_r+0x11c>
 2004bb4:	01000504 	movi	r4,20
 2004bb8:	20c01436 	bltu	r4,r3,2004c0c <_free_r+0x29c>
 2004bbc:	194016c4 	addi	r5,r3,91
 2004bc0:	2947883a 	add	r3,r5,r5
 2004bc4:	003fbe06 	br	2004ac0 <_free_r+0x150>
 2004bc8:	280bd0ba 	srai	r5,r5,2
 2004bcc:	00800044 	movi	r2,1
 2004bd0:	39000117 	ldw	r4,4(r7)
 2004bd4:	114a983a 	sll	r5,r2,r5
 2004bd8:	1805883a 	mov	r2,r3
 2004bdc:	2908b03a 	or	r4,r5,r4
 2004be0:	39000115 	stw	r4,4(r7)
 2004be4:	003fc406 	br	2004af8 <_free_r+0x188>
 2004be8:	49800515 	stw	r6,20(r9)
 2004bec:	49800415 	stw	r6,16(r9)
 2004bf0:	10c00054 	ori	r3,r2,1
 2004bf4:	31000315 	stw	r4,12(r6)
 2004bf8:	31000215 	stw	r4,8(r6)
 2004bfc:	30c00115 	stw	r3,4(r6)
 2004c00:	308d883a 	add	r6,r6,r2
 2004c04:	30800015 	stw	r2,0(r6)
 2004c08:	003fa006 	br	2004a8c <_free_r+0x11c>
 2004c0c:	01001504 	movi	r4,84
 2004c10:	20c00436 	bltu	r4,r3,2004c24 <_free_r+0x2b4>
 2004c14:	1006d33a 	srli	r3,r2,12
 2004c18:	19401b84 	addi	r5,r3,110
 2004c1c:	2947883a 	add	r3,r5,r5
 2004c20:	003fa706 	br	2004ac0 <_free_r+0x150>
 2004c24:	01005504 	movi	r4,340
 2004c28:	20c00436 	bltu	r4,r3,2004c3c <_free_r+0x2cc>
 2004c2c:	1006d3fa 	srli	r3,r2,15
 2004c30:	19401dc4 	addi	r5,r3,119
 2004c34:	2947883a 	add	r3,r5,r5
 2004c38:	003fa106 	br	2004ac0 <_free_r+0x150>
 2004c3c:	01015504 	movi	r4,1364
 2004c40:	20c00436 	bltu	r4,r3,2004c54 <_free_r+0x2e4>
 2004c44:	1006d4ba 	srli	r3,r2,18
 2004c48:	19401f04 	addi	r5,r3,124
 2004c4c:	2947883a 	add	r3,r5,r5
 2004c50:	003f9b06 	br	2004ac0 <_free_r+0x150>
 2004c54:	00c03f04 	movi	r3,252
 2004c58:	01401f84 	movi	r5,126
 2004c5c:	003f9806 	br	2004ac0 <_free_r+0x150>

02004c60 <__sfvwrite_r>:
 2004c60:	30800217 	ldw	r2,8(r6)
 2004c64:	10004526 	beq	r2,zero,2004d7c <__sfvwrite_r+0x11c>
 2004c68:	28c0030b 	ldhu	r3,12(r5)
 2004c6c:	defff404 	addi	sp,sp,-48
 2004c70:	dd400715 	stw	r21,28(sp)
 2004c74:	dcc00515 	stw	r19,20(sp)
 2004c78:	dc000215 	stw	r16,8(sp)
 2004c7c:	dfc00b15 	stw	ra,44(sp)
 2004c80:	df000a15 	stw	fp,40(sp)
 2004c84:	ddc00915 	stw	r23,36(sp)
 2004c88:	dd800815 	stw	r22,32(sp)
 2004c8c:	dd000615 	stw	r20,24(sp)
 2004c90:	dc800415 	stw	r18,16(sp)
 2004c94:	dc400315 	stw	r17,12(sp)
 2004c98:	1880020c 	andi	r2,r3,8
 2004c9c:	2821883a 	mov	r16,r5
 2004ca0:	202b883a 	mov	r21,r4
 2004ca4:	3027883a 	mov	r19,r6
 2004ca8:	10002526 	beq	r2,zero,2004d40 <__sfvwrite_r+0xe0>
 2004cac:	28800417 	ldw	r2,16(r5)
 2004cb0:	10002326 	beq	r2,zero,2004d40 <__sfvwrite_r+0xe0>
 2004cb4:	1880008c 	andi	r2,r3,2
 2004cb8:	9c400017 	ldw	r17,0(r19)
 2004cbc:	10003126 	beq	r2,zero,2004d84 <__sfvwrite_r+0x124>
 2004cc0:	0029883a 	mov	r20,zero
 2004cc4:	0025883a 	mov	r18,zero
 2004cc8:	05810004 	movi	r22,1024
 2004ccc:	a00d883a 	mov	r6,r20
 2004cd0:	a809883a 	mov	r4,r21
 2004cd4:	90002526 	beq	r18,zero,2004d6c <__sfvwrite_r+0x10c>
 2004cd8:	900f883a 	mov	r7,r18
 2004cdc:	81400717 	ldw	r5,28(r16)
 2004ce0:	b480012e 	bgeu	r22,r18,2004ce8 <__sfvwrite_r+0x88>
 2004ce4:	01c10004 	movi	r7,1024
 2004ce8:	80800917 	ldw	r2,36(r16)
 2004cec:	103ee83a 	callr	r2
 2004cf0:	0080510e 	bge	zero,r2,2004e38 <__sfvwrite_r+0x1d8>
 2004cf4:	98c00217 	ldw	r3,8(r19)
 2004cf8:	a0a9883a 	add	r20,r20,r2
 2004cfc:	90a5c83a 	sub	r18,r18,r2
 2004d00:	1885c83a 	sub	r2,r3,r2
 2004d04:	98800215 	stw	r2,8(r19)
 2004d08:	103ff01e 	bne	r2,zero,2004ccc <__sfvwrite_r+0x6c>
 2004d0c:	0005883a 	mov	r2,zero
 2004d10:	dfc00b17 	ldw	ra,44(sp)
 2004d14:	df000a17 	ldw	fp,40(sp)
 2004d18:	ddc00917 	ldw	r23,36(sp)
 2004d1c:	dd800817 	ldw	r22,32(sp)
 2004d20:	dd400717 	ldw	r21,28(sp)
 2004d24:	dd000617 	ldw	r20,24(sp)
 2004d28:	dcc00517 	ldw	r19,20(sp)
 2004d2c:	dc800417 	ldw	r18,16(sp)
 2004d30:	dc400317 	ldw	r17,12(sp)
 2004d34:	dc000217 	ldw	r16,8(sp)
 2004d38:	dec00c04 	addi	sp,sp,48
 2004d3c:	f800283a 	ret
 2004d40:	a809883a 	mov	r4,r21
 2004d44:	800b883a 	mov	r5,r16
 2004d48:	20027fc0 	call	20027fc <__swsetup_r>
 2004d4c:	80c0030b 	ldhu	r3,12(r16)
 2004d50:	103fd826 	beq	r2,zero,2004cb4 <__sfvwrite_r+0x54>
 2004d54:	18c01014 	ori	r3,r3,64
 2004d58:	80c0030d 	sth	r3,12(r16)
 2004d5c:	00c00244 	movi	r3,9
 2004d60:	00bfffc4 	movi	r2,-1
 2004d64:	a8c00015 	stw	r3,0(r21)
 2004d68:	003fe906 	br	2004d10 <__sfvwrite_r+0xb0>
 2004d6c:	8d000017 	ldw	r20,0(r17)
 2004d70:	8c800117 	ldw	r18,4(r17)
 2004d74:	8c400204 	addi	r17,r17,8
 2004d78:	003fd406 	br	2004ccc <__sfvwrite_r+0x6c>
 2004d7c:	0005883a 	mov	r2,zero
 2004d80:	f800283a 	ret
 2004d84:	1880004c 	andi	r2,r3,1
 2004d88:	1000301e 	bne	r2,zero,2004e4c <__sfvwrite_r+0x1ec>
 2004d8c:	002f883a 	mov	r23,zero
 2004d90:	0025883a 	mov	r18,zero
 2004d94:	90001c26 	beq	r18,zero,2004e08 <__sfvwrite_r+0x1a8>
 2004d98:	1880800c 	andi	r2,r3,512
 2004d9c:	85000217 	ldw	r20,8(r16)
 2004da0:	10006c26 	beq	r2,zero,2004f54 <__sfvwrite_r+0x2f4>
 2004da4:	a02d883a 	mov	r22,r20
 2004da8:	95008536 	bltu	r18,r20,2004fc0 <__sfvwrite_r+0x360>
 2004dac:	1881200c 	andi	r2,r3,1152
 2004db0:	10009d1e 	bne	r2,zero,2005028 <__sfvwrite_r+0x3c8>
 2004db4:	81000017 	ldw	r4,0(r16)
 2004db8:	a039883a 	mov	fp,r20
 2004dbc:	9029883a 	mov	r20,r18
 2004dc0:	b80b883a 	mov	r5,r23
 2004dc4:	b00d883a 	mov	r6,r22
 2004dc8:	2005ed40 	call	2005ed4 <memmove>
 2004dcc:	80c00217 	ldw	r3,8(r16)
 2004dd0:	81000017 	ldw	r4,0(r16)
 2004dd4:	9005883a 	mov	r2,r18
 2004dd8:	1f39c83a 	sub	fp,r3,fp
 2004ddc:	258f883a 	add	r7,r4,r22
 2004de0:	87000215 	stw	fp,8(r16)
 2004de4:	81c00015 	stw	r7,0(r16)
 2004de8:	98c00217 	ldw	r3,8(r19)
 2004dec:	b8af883a 	add	r23,r23,r2
 2004df0:	90a5c83a 	sub	r18,r18,r2
 2004df4:	1d05c83a 	sub	r2,r3,r20
 2004df8:	98800215 	stw	r2,8(r19)
 2004dfc:	103fc326 	beq	r2,zero,2004d0c <__sfvwrite_r+0xac>
 2004e00:	80c0030b 	ldhu	r3,12(r16)
 2004e04:	903fe41e 	bne	r18,zero,2004d98 <__sfvwrite_r+0x138>
 2004e08:	8dc00017 	ldw	r23,0(r17)
 2004e0c:	8c800117 	ldw	r18,4(r17)
 2004e10:	8c400204 	addi	r17,r17,8
 2004e14:	003fdf06 	br	2004d94 <__sfvwrite_r+0x134>
 2004e18:	20070e00 	call	20070e0 <_realloc_r>
 2004e1c:	102d883a 	mov	r22,r2
 2004e20:	1000a01e 	bne	r2,zero,20050a4 <__sfvwrite_r+0x444>
 2004e24:	81400417 	ldw	r5,16(r16)
 2004e28:	a809883a 	mov	r4,r21
 2004e2c:	20049700 	call	2004970 <_free_r>
 2004e30:	00800304 	movi	r2,12
 2004e34:	a8800015 	stw	r2,0(r21)
 2004e38:	80c0030b 	ldhu	r3,12(r16)
 2004e3c:	00bfffc4 	movi	r2,-1
 2004e40:	18c01014 	ori	r3,r3,64
 2004e44:	80c0030d 	sth	r3,12(r16)
 2004e48:	003fb106 	br	2004d10 <__sfvwrite_r+0xb0>
 2004e4c:	0029883a 	mov	r20,zero
 2004e50:	0011883a 	mov	r8,zero
 2004e54:	0039883a 	mov	fp,zero
 2004e58:	0025883a 	mov	r18,zero
 2004e5c:	90001f26 	beq	r18,zero,2004edc <__sfvwrite_r+0x27c>
 2004e60:	40006826 	beq	r8,zero,2005004 <__sfvwrite_r+0x3a4>
 2004e64:	a02f883a 	mov	r23,r20
 2004e68:	9500012e 	bgeu	r18,r20,2004e70 <__sfvwrite_r+0x210>
 2004e6c:	902f883a 	mov	r23,r18
 2004e70:	81000017 	ldw	r4,0(r16)
 2004e74:	80800417 	ldw	r2,16(r16)
 2004e78:	b82d883a 	mov	r22,r23
 2004e7c:	81800217 	ldw	r6,8(r16)
 2004e80:	81c00517 	ldw	r7,20(r16)
 2004e84:	1100022e 	bgeu	r2,r4,2004e90 <__sfvwrite_r+0x230>
 2004e88:	31c7883a 	add	r3,r6,r7
 2004e8c:	1dc01816 	blt	r3,r23,2004ef0 <__sfvwrite_r+0x290>
 2004e90:	b9c03f16 	blt	r23,r7,2004f90 <__sfvwrite_r+0x330>
 2004e94:	80800917 	ldw	r2,36(r16)
 2004e98:	81400717 	ldw	r5,28(r16)
 2004e9c:	a809883a 	mov	r4,r21
 2004ea0:	da000115 	stw	r8,4(sp)
 2004ea4:	e00d883a 	mov	r6,fp
 2004ea8:	103ee83a 	callr	r2
 2004eac:	102d883a 	mov	r22,r2
 2004eb0:	da000117 	ldw	r8,4(sp)
 2004eb4:	00bfe00e 	bge	zero,r2,2004e38 <__sfvwrite_r+0x1d8>
 2004eb8:	a5a9c83a 	sub	r20,r20,r22
 2004ebc:	a0001f26 	beq	r20,zero,2004f3c <__sfvwrite_r+0x2dc>
 2004ec0:	98800217 	ldw	r2,8(r19)
 2004ec4:	e5b9883a 	add	fp,fp,r22
 2004ec8:	95a5c83a 	sub	r18,r18,r22
 2004ecc:	15adc83a 	sub	r22,r2,r22
 2004ed0:	9d800215 	stw	r22,8(r19)
 2004ed4:	b03f8d26 	beq	r22,zero,2004d0c <__sfvwrite_r+0xac>
 2004ed8:	903fe11e 	bne	r18,zero,2004e60 <__sfvwrite_r+0x200>
 2004edc:	8f000017 	ldw	fp,0(r17)
 2004ee0:	8c800117 	ldw	r18,4(r17)
 2004ee4:	0011883a 	mov	r8,zero
 2004ee8:	8c400204 	addi	r17,r17,8
 2004eec:	003fdb06 	br	2004e5c <__sfvwrite_r+0x1fc>
 2004ef0:	180d883a 	mov	r6,r3
 2004ef4:	e00b883a 	mov	r5,fp
 2004ef8:	da000115 	stw	r8,4(sp)
 2004efc:	d8c00015 	stw	r3,0(sp)
 2004f00:	2005ed40 	call	2005ed4 <memmove>
 2004f04:	d8c00017 	ldw	r3,0(sp)
 2004f08:	80800017 	ldw	r2,0(r16)
 2004f0c:	a809883a 	mov	r4,r21
 2004f10:	800b883a 	mov	r5,r16
 2004f14:	10c5883a 	add	r2,r2,r3
 2004f18:	80800015 	stw	r2,0(r16)
 2004f1c:	d8c00015 	stw	r3,0(sp)
 2004f20:	20042540 	call	2004254 <_fflush_r>
 2004f24:	d8c00017 	ldw	r3,0(sp)
 2004f28:	da000117 	ldw	r8,4(sp)
 2004f2c:	103fc21e 	bne	r2,zero,2004e38 <__sfvwrite_r+0x1d8>
 2004f30:	182d883a 	mov	r22,r3
 2004f34:	a5a9c83a 	sub	r20,r20,r22
 2004f38:	a03fe11e 	bne	r20,zero,2004ec0 <__sfvwrite_r+0x260>
 2004f3c:	a809883a 	mov	r4,r21
 2004f40:	800b883a 	mov	r5,r16
 2004f44:	20042540 	call	2004254 <_fflush_r>
 2004f48:	103fbb1e 	bne	r2,zero,2004e38 <__sfvwrite_r+0x1d8>
 2004f4c:	0011883a 	mov	r8,zero
 2004f50:	003fdb06 	br	2004ec0 <__sfvwrite_r+0x260>
 2004f54:	81000017 	ldw	r4,0(r16)
 2004f58:	80800417 	ldw	r2,16(r16)
 2004f5c:	1100012e 	bgeu	r2,r4,2004f64 <__sfvwrite_r+0x304>
 2004f60:	a4805a36 	bltu	r20,r18,20050cc <__sfvwrite_r+0x46c>
 2004f64:	81c00517 	ldw	r7,20(r16)
 2004f68:	91c01a36 	bltu	r18,r7,2004fd4 <__sfvwrite_r+0x374>
 2004f6c:	80800917 	ldw	r2,36(r16)
 2004f70:	81400717 	ldw	r5,28(r16)
 2004f74:	a809883a 	mov	r4,r21
 2004f78:	b80d883a 	mov	r6,r23
 2004f7c:	103ee83a 	callr	r2
 2004f80:	1029883a 	mov	r20,r2
 2004f84:	00bfac0e 	bge	zero,r2,2004e38 <__sfvwrite_r+0x1d8>
 2004f88:	a005883a 	mov	r2,r20
 2004f8c:	003f9606 	br	2004de8 <__sfvwrite_r+0x188>
 2004f90:	b80d883a 	mov	r6,r23
 2004f94:	e00b883a 	mov	r5,fp
 2004f98:	da000115 	stw	r8,4(sp)
 2004f9c:	2005ed40 	call	2005ed4 <memmove>
 2004fa0:	80800217 	ldw	r2,8(r16)
 2004fa4:	80c00017 	ldw	r3,0(r16)
 2004fa8:	da000117 	ldw	r8,4(sp)
 2004fac:	15c5c83a 	sub	r2,r2,r23
 2004fb0:	1def883a 	add	r23,r3,r23
 2004fb4:	80800215 	stw	r2,8(r16)
 2004fb8:	85c00015 	stw	r23,0(r16)
 2004fbc:	003fbe06 	br	2004eb8 <__sfvwrite_r+0x258>
 2004fc0:	81000017 	ldw	r4,0(r16)
 2004fc4:	9039883a 	mov	fp,r18
 2004fc8:	9029883a 	mov	r20,r18
 2004fcc:	902d883a 	mov	r22,r18
 2004fd0:	003f7b06 	br	2004dc0 <__sfvwrite_r+0x160>
 2004fd4:	b80b883a 	mov	r5,r23
 2004fd8:	900d883a 	mov	r6,r18
 2004fdc:	2005ed40 	call	2005ed4 <memmove>
 2004fe0:	80c00217 	ldw	r3,8(r16)
 2004fe4:	80800017 	ldw	r2,0(r16)
 2004fe8:	9029883a 	mov	r20,r18
 2004fec:	1c87c83a 	sub	r3,r3,r18
 2004ff0:	1485883a 	add	r2,r2,r18
 2004ff4:	80800015 	stw	r2,0(r16)
 2004ff8:	80c00215 	stw	r3,8(r16)
 2004ffc:	9005883a 	mov	r2,r18
 2005000:	003f7906 	br	2004de8 <__sfvwrite_r+0x188>
 2005004:	e009883a 	mov	r4,fp
 2005008:	01400284 	movi	r5,10
 200500c:	900d883a 	mov	r6,r18
 2005010:	2005cb40 	call	2005cb4 <memchr>
 2005014:	10003826 	beq	r2,zero,20050f8 <__sfvwrite_r+0x498>
 2005018:	10800044 	addi	r2,r2,1
 200501c:	1729c83a 	sub	r20,r2,fp
 2005020:	02000044 	movi	r8,1
 2005024:	003f8f06 	br	2004e64 <__sfvwrite_r+0x204>
 2005028:	80800517 	ldw	r2,20(r16)
 200502c:	81400417 	ldw	r5,16(r16)
 2005030:	87000017 	ldw	fp,0(r16)
 2005034:	10a9883a 	add	r20,r2,r2
 2005038:	a085883a 	add	r2,r20,r2
 200503c:	1028d7fa 	srli	r20,r2,31
 2005040:	e179c83a 	sub	fp,fp,r5
 2005044:	e1000044 	addi	r4,fp,1
 2005048:	a085883a 	add	r2,r20,r2
 200504c:	1029d07a 	srai	r20,r2,1
 2005050:	2485883a 	add	r2,r4,r18
 2005054:	a00d883a 	mov	r6,r20
 2005058:	a080022e 	bgeu	r20,r2,2005064 <__sfvwrite_r+0x404>
 200505c:	1029883a 	mov	r20,r2
 2005060:	100d883a 	mov	r6,r2
 2005064:	18c1000c 	andi	r3,r3,1024
 2005068:	a809883a 	mov	r4,r21
 200506c:	183f6a26 	beq	r3,zero,2004e18 <__sfvwrite_r+0x1b8>
 2005070:	300b883a 	mov	r5,r6
 2005074:	200550c0 	call	200550c <_malloc_r>
 2005078:	102d883a 	mov	r22,r2
 200507c:	103f6c26 	beq	r2,zero,2004e30 <__sfvwrite_r+0x1d0>
 2005080:	81400417 	ldw	r5,16(r16)
 2005084:	1009883a 	mov	r4,r2
 2005088:	e00d883a 	mov	r6,fp
 200508c:	2005d9c0 	call	2005d9c <memcpy>
 2005090:	8080030b 	ldhu	r2,12(r16)
 2005094:	00fedfc4 	movi	r3,-1153
 2005098:	10c4703a 	and	r2,r2,r3
 200509c:	10802014 	ori	r2,r2,128
 20050a0:	8080030d 	sth	r2,12(r16)
 20050a4:	b709883a 	add	r4,r22,fp
 20050a8:	a707c83a 	sub	r3,r20,fp
 20050ac:	85800415 	stw	r22,16(r16)
 20050b0:	85000515 	stw	r20,20(r16)
 20050b4:	81000015 	stw	r4,0(r16)
 20050b8:	9039883a 	mov	fp,r18
 20050bc:	80c00215 	stw	r3,8(r16)
 20050c0:	9029883a 	mov	r20,r18
 20050c4:	902d883a 	mov	r22,r18
 20050c8:	003f3d06 	br	2004dc0 <__sfvwrite_r+0x160>
 20050cc:	b80b883a 	mov	r5,r23
 20050d0:	a00d883a 	mov	r6,r20
 20050d4:	2005ed40 	call	2005ed4 <memmove>
 20050d8:	80800017 	ldw	r2,0(r16)
 20050dc:	a809883a 	mov	r4,r21
 20050e0:	800b883a 	mov	r5,r16
 20050e4:	1505883a 	add	r2,r2,r20
 20050e8:	80800015 	stw	r2,0(r16)
 20050ec:	20042540 	call	2004254 <_fflush_r>
 20050f0:	103fa526 	beq	r2,zero,2004f88 <__sfvwrite_r+0x328>
 20050f4:	003f5006 	br	2004e38 <__sfvwrite_r+0x1d8>
 20050f8:	95000044 	addi	r20,r18,1
 20050fc:	02000044 	movi	r8,1
 2005100:	003f5806 	br	2004e64 <__sfvwrite_r+0x204>

02005104 <_fwalk>:
 2005104:	defff804 	addi	sp,sp,-32
 2005108:	dd400515 	stw	r21,20(sp)
 200510c:	2540b804 	addi	r21,r4,736
 2005110:	dd800615 	stw	r22,24(sp)
 2005114:	dd000415 	stw	r20,16(sp)
 2005118:	dfc00715 	stw	ra,28(sp)
 200511c:	dcc00315 	stw	r19,12(sp)
 2005120:	dc800215 	stw	r18,8(sp)
 2005124:	dc400115 	stw	r17,4(sp)
 2005128:	dc000015 	stw	r16,0(sp)
 200512c:	2829883a 	mov	r20,r5
 2005130:	002d883a 	mov	r22,zero
 2005134:	200480c0 	call	200480c <__sfp_lock_acquire>
 2005138:	a8001426 	beq	r21,zero,200518c <_fwalk+0x88>
 200513c:	04ffffc4 	movi	r19,-1
 2005140:	ac400117 	ldw	r17,4(r21)
 2005144:	ac800217 	ldw	r18,8(r21)
 2005148:	8c7fffc4 	addi	r17,r17,-1
 200514c:	88000d16 	blt	r17,zero,2005184 <_fwalk+0x80>
 2005150:	94000304 	addi	r16,r18,12
 2005154:	94800384 	addi	r18,r18,14
 2005158:	80c0000f 	ldh	r3,0(r16)
 200515c:	8c7fffc4 	addi	r17,r17,-1
 2005160:	813ffd04 	addi	r4,r16,-12
 2005164:	18000426 	beq	r3,zero,2005178 <_fwalk+0x74>
 2005168:	90c0000f 	ldh	r3,0(r18)
 200516c:	1cc00226 	beq	r3,r19,2005178 <_fwalk+0x74>
 2005170:	a03ee83a 	callr	r20
 2005174:	b0acb03a 	or	r22,r22,r2
 2005178:	84001a04 	addi	r16,r16,104
 200517c:	94801a04 	addi	r18,r18,104
 2005180:	8cfff51e 	bne	r17,r19,2005158 <_fwalk+0x54>
 2005184:	ad400017 	ldw	r21,0(r21)
 2005188:	a83fed1e 	bne	r21,zero,2005140 <_fwalk+0x3c>
 200518c:	20048100 	call	2004810 <__sfp_lock_release>
 2005190:	b005883a 	mov	r2,r22
 2005194:	dfc00717 	ldw	ra,28(sp)
 2005198:	dd800617 	ldw	r22,24(sp)
 200519c:	dd400517 	ldw	r21,20(sp)
 20051a0:	dd000417 	ldw	r20,16(sp)
 20051a4:	dcc00317 	ldw	r19,12(sp)
 20051a8:	dc800217 	ldw	r18,8(sp)
 20051ac:	dc400117 	ldw	r17,4(sp)
 20051b0:	dc000017 	ldw	r16,0(sp)
 20051b4:	dec00804 	addi	sp,sp,32
 20051b8:	f800283a 	ret

020051bc <_fwalk_reent>:
 20051bc:	defff804 	addi	sp,sp,-32
 20051c0:	dd400515 	stw	r21,20(sp)
 20051c4:	2540b804 	addi	r21,r4,736
 20051c8:	dd800615 	stw	r22,24(sp)
 20051cc:	dd000415 	stw	r20,16(sp)
 20051d0:	dcc00315 	stw	r19,12(sp)
 20051d4:	dfc00715 	stw	ra,28(sp)
 20051d8:	dc800215 	stw	r18,8(sp)
 20051dc:	dc400115 	stw	r17,4(sp)
 20051e0:	dc000015 	stw	r16,0(sp)
 20051e4:	2027883a 	mov	r19,r4
 20051e8:	2829883a 	mov	r20,r5
 20051ec:	002d883a 	mov	r22,zero
 20051f0:	200480c0 	call	200480c <__sfp_lock_acquire>
 20051f4:	a8001326 	beq	r21,zero,2005244 <_fwalk_reent+0x88>
 20051f8:	04bfffc4 	movi	r18,-1
 20051fc:	ac400117 	ldw	r17,4(r21)
 2005200:	ac000217 	ldw	r16,8(r21)
 2005204:	8c7fffc4 	addi	r17,r17,-1
 2005208:	88000c16 	blt	r17,zero,200523c <_fwalk_reent+0x80>
 200520c:	84000304 	addi	r16,r16,12
 2005210:	80c0000f 	ldh	r3,0(r16)
 2005214:	8c7fffc4 	addi	r17,r17,-1
 2005218:	817ffd04 	addi	r5,r16,-12
 200521c:	18000526 	beq	r3,zero,2005234 <_fwalk_reent+0x78>
 2005220:	80c0008f 	ldh	r3,2(r16)
 2005224:	9809883a 	mov	r4,r19
 2005228:	1c800226 	beq	r3,r18,2005234 <_fwalk_reent+0x78>
 200522c:	a03ee83a 	callr	r20
 2005230:	b0acb03a 	or	r22,r22,r2
 2005234:	84001a04 	addi	r16,r16,104
 2005238:	8cbff51e 	bne	r17,r18,2005210 <_fwalk_reent+0x54>
 200523c:	ad400017 	ldw	r21,0(r21)
 2005240:	a83fee1e 	bne	r21,zero,20051fc <_fwalk_reent+0x40>
 2005244:	20048100 	call	2004810 <__sfp_lock_release>
 2005248:	b005883a 	mov	r2,r22
 200524c:	dfc00717 	ldw	ra,28(sp)
 2005250:	dd800617 	ldw	r22,24(sp)
 2005254:	dd400517 	ldw	r21,20(sp)
 2005258:	dd000417 	ldw	r20,16(sp)
 200525c:	dcc00317 	ldw	r19,12(sp)
 2005260:	dc800217 	ldw	r18,8(sp)
 2005264:	dc400117 	ldw	r17,4(sp)
 2005268:	dc000017 	ldw	r16,0(sp)
 200526c:	dec00804 	addi	sp,sp,32
 2005270:	f800283a 	ret

02005274 <_setlocale_r>:
 2005274:	30001b26 	beq	r6,zero,20052e4 <_setlocale_r+0x70>
 2005278:	01408074 	movhi	r5,513
 200527c:	defffe04 	addi	sp,sp,-8
 2005280:	297c8a04 	addi	r5,r5,-3544
 2005284:	3009883a 	mov	r4,r6
 2005288:	dc000015 	stw	r16,0(sp)
 200528c:	dfc00115 	stw	ra,4(sp)
 2005290:	3021883a 	mov	r16,r6
 2005294:	20078840 	call	2007884 <strcmp>
 2005298:	1000061e 	bne	r2,zero,20052b4 <_setlocale_r+0x40>
 200529c:	00808074 	movhi	r2,513
 20052a0:	10bc8904 	addi	r2,r2,-3548
 20052a4:	dfc00117 	ldw	ra,4(sp)
 20052a8:	dc000017 	ldw	r16,0(sp)
 20052ac:	dec00204 	addi	sp,sp,8
 20052b0:	f800283a 	ret
 20052b4:	01408074 	movhi	r5,513
 20052b8:	297c8904 	addi	r5,r5,-3548
 20052bc:	8009883a 	mov	r4,r16
 20052c0:	20078840 	call	2007884 <strcmp>
 20052c4:	103ff526 	beq	r2,zero,200529c <_setlocale_r+0x28>
 20052c8:	01408074 	movhi	r5,513
 20052cc:	297c7404 	addi	r5,r5,-3632
 20052d0:	8009883a 	mov	r4,r16
 20052d4:	20078840 	call	2007884 <strcmp>
 20052d8:	103ff026 	beq	r2,zero,200529c <_setlocale_r+0x28>
 20052dc:	0005883a 	mov	r2,zero
 20052e0:	003ff006 	br	20052a4 <_setlocale_r+0x30>
 20052e4:	00808074 	movhi	r2,513
 20052e8:	10bc8904 	addi	r2,r2,-3548
 20052ec:	f800283a 	ret

020052f0 <__locale_charset>:
 20052f0:	00808074 	movhi	r2,513
 20052f4:	10bdfa04 	addi	r2,r2,-2072
 20052f8:	f800283a 	ret

020052fc <__locale_mb_cur_max>:
 20052fc:	00808074 	movhi	r2,513
 2005300:	10839604 	addi	r2,r2,3672
 2005304:	10800017 	ldw	r2,0(r2)
 2005308:	f800283a 	ret

0200530c <__locale_msgcharset>:
 200530c:	00808074 	movhi	r2,513
 2005310:	10bdf204 	addi	r2,r2,-2104
 2005314:	f800283a 	ret

02005318 <__locale_cjk_lang>:
 2005318:	0005883a 	mov	r2,zero
 200531c:	f800283a 	ret

02005320 <_localeconv_r>:
 2005320:	00808074 	movhi	r2,513
 2005324:	10be0204 	addi	r2,r2,-2040
 2005328:	f800283a 	ret

0200532c <setlocale>:
 200532c:	00c08074 	movhi	r3,513
 2005330:	18c39504 	addi	r3,r3,3668
 2005334:	2005883a 	mov	r2,r4
 2005338:	19000017 	ldw	r4,0(r3)
 200533c:	280d883a 	mov	r6,r5
 2005340:	100b883a 	mov	r5,r2
 2005344:	20052741 	jmpi	2005274 <_setlocale_r>

02005348 <localeconv>:
 2005348:	00808074 	movhi	r2,513
 200534c:	10be0204 	addi	r2,r2,-2040
 2005350:	f800283a 	ret

02005354 <__smakebuf_r>:
 2005354:	2880030b 	ldhu	r2,12(r5)
 2005358:	10c0008c 	andi	r3,r2,2
 200535c:	1800401e 	bne	r3,zero,2005460 <__smakebuf_r+0x10c>
 2005360:	deffec04 	addi	sp,sp,-80
 2005364:	dc000f15 	stw	r16,60(sp)
 2005368:	2821883a 	mov	r16,r5
 200536c:	2940038f 	ldh	r5,14(r5)
 2005370:	dc401015 	stw	r17,64(sp)
 2005374:	dfc01315 	stw	ra,76(sp)
 2005378:	dcc01215 	stw	r19,72(sp)
 200537c:	dc801115 	stw	r18,68(sp)
 2005380:	2023883a 	mov	r17,r4
 2005384:	28001b16 	blt	r5,zero,20053f4 <__smakebuf_r+0xa0>
 2005388:	d80d883a 	mov	r6,sp
 200538c:	20092200 	call	2009220 <_fstat_r>
 2005390:	10001716 	blt	r2,zero,20053f0 <__smakebuf_r+0x9c>
 2005394:	d8800117 	ldw	r2,4(sp)
 2005398:	00e00014 	movui	r3,32768
 200539c:	10bc000c 	andi	r2,r2,61440
 20053a0:	10c03726 	beq	r2,r3,2005480 <__smakebuf_r+0x12c>
 20053a4:	80c0030b 	ldhu	r3,12(r16)
 20053a8:	18c20014 	ori	r3,r3,2048
 20053ac:	80c0030d 	sth	r3,12(r16)
 20053b0:	00c80004 	movi	r3,8192
 20053b4:	10c03c1e 	bne	r2,r3,20054a8 <__smakebuf_r+0x154>
 20053b8:	8140038f 	ldh	r5,14(r16)
 20053bc:	8809883a 	mov	r4,r17
 20053c0:	20092780 	call	2009278 <_isatty_r>
 20053c4:	10004e26 	beq	r2,zero,2005500 <__smakebuf_r+0x1ac>
 20053c8:	8080030b 	ldhu	r2,12(r16)
 20053cc:	04c00044 	movi	r19,1
 20053d0:	80c010c4 	addi	r3,r16,67
 20053d4:	14c4b03a 	or	r2,r2,r19
 20053d8:	8080030d 	sth	r2,12(r16)
 20053dc:	80c00015 	stw	r3,0(r16)
 20053e0:	80c00415 	stw	r3,16(r16)
 20053e4:	84c00515 	stw	r19,20(r16)
 20053e8:	04810004 	movi	r18,1024
 20053ec:	00000706 	br	200540c <__smakebuf_r+0xb8>
 20053f0:	8080030b 	ldhu	r2,12(r16)
 20053f4:	10c0200c 	andi	r3,r2,128
 20053f8:	18001f1e 	bne	r3,zero,2005478 <__smakebuf_r+0x124>
 20053fc:	04810004 	movi	r18,1024
 2005400:	10820014 	ori	r2,r2,2048
 2005404:	8080030d 	sth	r2,12(r16)
 2005408:	0027883a 	mov	r19,zero
 200540c:	8809883a 	mov	r4,r17
 2005410:	900b883a 	mov	r5,r18
 2005414:	200550c0 	call	200550c <_malloc_r>
 2005418:	10002e26 	beq	r2,zero,20054d4 <__smakebuf_r+0x180>
 200541c:	80c0030b 	ldhu	r3,12(r16)
 2005420:	01008034 	movhi	r4,512
 2005424:	21112f04 	addi	r4,r4,17596
 2005428:	89000f15 	stw	r4,60(r17)
 200542c:	18c02014 	ori	r3,r3,128
 2005430:	80c0030d 	sth	r3,12(r16)
 2005434:	80800015 	stw	r2,0(r16)
 2005438:	80800415 	stw	r2,16(r16)
 200543c:	84800515 	stw	r18,20(r16)
 2005440:	98001c1e 	bne	r19,zero,20054b4 <__smakebuf_r+0x160>
 2005444:	dfc01317 	ldw	ra,76(sp)
 2005448:	dcc01217 	ldw	r19,72(sp)
 200544c:	dc801117 	ldw	r18,68(sp)
 2005450:	dc401017 	ldw	r17,64(sp)
 2005454:	dc000f17 	ldw	r16,60(sp)
 2005458:	dec01404 	addi	sp,sp,80
 200545c:	f800283a 	ret
 2005460:	288010c4 	addi	r2,r5,67
 2005464:	28800015 	stw	r2,0(r5)
 2005468:	28800415 	stw	r2,16(r5)
 200546c:	00800044 	movi	r2,1
 2005470:	28800515 	stw	r2,20(r5)
 2005474:	f800283a 	ret
 2005478:	04801004 	movi	r18,64
 200547c:	003fe006 	br	2005400 <__smakebuf_r+0xac>
 2005480:	81000a17 	ldw	r4,40(r16)
 2005484:	00c08034 	movhi	r3,512
 2005488:	18de0804 	addi	r3,r3,30752
 200548c:	20ffc51e 	bne	r4,r3,20053a4 <__smakebuf_r+0x50>
 2005490:	80c0030b 	ldhu	r3,12(r16)
 2005494:	01010004 	movi	r4,1024
 2005498:	81001315 	stw	r4,76(r16)
 200549c:	1906b03a 	or	r3,r3,r4
 20054a0:	80c0030d 	sth	r3,12(r16)
 20054a4:	003fc206 	br	20053b0 <__smakebuf_r+0x5c>
 20054a8:	0027883a 	mov	r19,zero
 20054ac:	04810004 	movi	r18,1024
 20054b0:	003fd606 	br	200540c <__smakebuf_r+0xb8>
 20054b4:	8140038f 	ldh	r5,14(r16)
 20054b8:	8809883a 	mov	r4,r17
 20054bc:	20092780 	call	2009278 <_isatty_r>
 20054c0:	103fe026 	beq	r2,zero,2005444 <__smakebuf_r+0xf0>
 20054c4:	8080030b 	ldhu	r2,12(r16)
 20054c8:	10800054 	ori	r2,r2,1
 20054cc:	8080030d 	sth	r2,12(r16)
 20054d0:	003fdc06 	br	2005444 <__smakebuf_r+0xf0>
 20054d4:	8080030b 	ldhu	r2,12(r16)
 20054d8:	10c0800c 	andi	r3,r2,512
 20054dc:	183fd91e 	bne	r3,zero,2005444 <__smakebuf_r+0xf0>
 20054e0:	10800094 	ori	r2,r2,2
 20054e4:	80c010c4 	addi	r3,r16,67
 20054e8:	8080030d 	sth	r2,12(r16)
 20054ec:	00800044 	movi	r2,1
 20054f0:	80c00015 	stw	r3,0(r16)
 20054f4:	80c00415 	stw	r3,16(r16)
 20054f8:	80800515 	stw	r2,20(r16)
 20054fc:	003fd106 	br	2005444 <__smakebuf_r+0xf0>
 2005500:	04c00044 	movi	r19,1
 2005504:	04810004 	movi	r18,1024
 2005508:	003fc006 	br	200540c <__smakebuf_r+0xb8>

0200550c <_malloc_r>:
 200550c:	defff504 	addi	sp,sp,-44
 2005510:	dc800315 	stw	r18,12(sp)
 2005514:	dfc00a15 	stw	ra,40(sp)
 2005518:	df000915 	stw	fp,36(sp)
 200551c:	ddc00815 	stw	r23,32(sp)
 2005520:	dd800715 	stw	r22,28(sp)
 2005524:	dd400615 	stw	r21,24(sp)
 2005528:	dd000515 	stw	r20,20(sp)
 200552c:	dcc00415 	stw	r19,16(sp)
 2005530:	dc400215 	stw	r17,8(sp)
 2005534:	dc000115 	stw	r16,4(sp)
 2005538:	288002c4 	addi	r2,r5,11
 200553c:	00c00584 	movi	r3,22
 2005540:	2025883a 	mov	r18,r4
 2005544:	18802a2e 	bgeu	r3,r2,20055f0 <_malloc_r+0xe4>
 2005548:	047ffe04 	movi	r17,-8
 200554c:	1462703a 	and	r17,r2,r17
 2005550:	88009e16 	blt	r17,zero,20057cc <_malloc_r+0x2c0>
 2005554:	89409d36 	bltu	r17,r5,20057cc <_malloc_r+0x2c0>
 2005558:	200cf100 	call	200cf10 <__malloc_lock>
 200555c:	00807dc4 	movi	r2,503
 2005560:	14402736 	bltu	r2,r17,2005600 <_malloc_r+0xf4>
 2005564:	8806d0fa 	srli	r3,r17,3
 2005568:	04c08074 	movhi	r19,513
 200556c:	9cfe1004 	addi	r19,r19,-1984
 2005570:	18c5883a 	add	r2,r3,r3
 2005574:	1085883a 	add	r2,r2,r2
 2005578:	1085883a 	add	r2,r2,r2
 200557c:	9885883a 	add	r2,r19,r2
 2005580:	14000317 	ldw	r16,12(r2)
 2005584:	80814a26 	beq	r16,r2,2005ab0 <_malloc_r+0x5a4>
 2005588:	80c00117 	ldw	r3,4(r16)
 200558c:	81000317 	ldw	r4,12(r16)
 2005590:	00bfff04 	movi	r2,-4
 2005594:	1884703a 	and	r2,r3,r2
 2005598:	81400217 	ldw	r5,8(r16)
 200559c:	8085883a 	add	r2,r16,r2
 20055a0:	10c00117 	ldw	r3,4(r2)
 20055a4:	29000315 	stw	r4,12(r5)
 20055a8:	21400215 	stw	r5,8(r4)
 20055ac:	18c00054 	ori	r3,r3,1
 20055b0:	10c00115 	stw	r3,4(r2)
 20055b4:	9009883a 	mov	r4,r18
 20055b8:	200cf300 	call	200cf30 <__malloc_unlock>
 20055bc:	80800204 	addi	r2,r16,8
 20055c0:	dfc00a17 	ldw	ra,40(sp)
 20055c4:	df000917 	ldw	fp,36(sp)
 20055c8:	ddc00817 	ldw	r23,32(sp)
 20055cc:	dd800717 	ldw	r22,28(sp)
 20055d0:	dd400617 	ldw	r21,24(sp)
 20055d4:	dd000517 	ldw	r20,20(sp)
 20055d8:	dcc00417 	ldw	r19,16(sp)
 20055dc:	dc800317 	ldw	r18,12(sp)
 20055e0:	dc400217 	ldw	r17,8(sp)
 20055e4:	dc000117 	ldw	r16,4(sp)
 20055e8:	dec00b04 	addi	sp,sp,44
 20055ec:	f800283a 	ret
 20055f0:	04400404 	movi	r17,16
 20055f4:	89407536 	bltu	r17,r5,20057cc <_malloc_r+0x2c0>
 20055f8:	200cf100 	call	200cf10 <__malloc_lock>
 20055fc:	003fd906 	br	2005564 <_malloc_r+0x58>
 2005600:	8806d27a 	srli	r3,r17,9
 2005604:	18007526 	beq	r3,zero,20057dc <_malloc_r+0x2d0>
 2005608:	00800104 	movi	r2,4
 200560c:	10c0ef36 	bltu	r2,r3,20059cc <_malloc_r+0x4c0>
 2005610:	8806d1ba 	srli	r3,r17,6
 2005614:	19c00e04 	addi	r7,r3,56
 2005618:	39cb883a 	add	r5,r7,r7
 200561c:	04c08074 	movhi	r19,513
 2005620:	294b883a 	add	r5,r5,r5
 2005624:	9cfe1004 	addi	r19,r19,-1984
 2005628:	294b883a 	add	r5,r5,r5
 200562c:	994b883a 	add	r5,r19,r5
 2005630:	2c000317 	ldw	r16,12(r5)
 2005634:	2c000e26 	beq	r5,r16,2005670 <_malloc_r+0x164>
 2005638:	80800117 	ldw	r2,4(r16)
 200563c:	01bfff04 	movi	r6,-4
 2005640:	010003c4 	movi	r4,15
 2005644:	1184703a 	and	r2,r2,r6
 2005648:	1447c83a 	sub	r3,r2,r17
 200564c:	20c00716 	blt	r4,r3,200566c <_malloc_r+0x160>
 2005650:	1800650e 	bge	r3,zero,20057e8 <_malloc_r+0x2dc>
 2005654:	84000317 	ldw	r16,12(r16)
 2005658:	2c000526 	beq	r5,r16,2005670 <_malloc_r+0x164>
 200565c:	80800117 	ldw	r2,4(r16)
 2005660:	1184703a 	and	r2,r2,r6
 2005664:	1447c83a 	sub	r3,r2,r17
 2005668:	20fff90e 	bge	r4,r3,2005650 <_malloc_r+0x144>
 200566c:	39ffffc4 	addi	r7,r7,-1
 2005670:	38c00044 	addi	r3,r7,1
 2005674:	01808074 	movhi	r6,513
 2005678:	9c000417 	ldw	r16,16(r19)
 200567c:	31be1004 	addi	r6,r6,-1984
 2005680:	32400204 	addi	r9,r6,8
 2005684:	82410326 	beq	r16,r9,2005a94 <_malloc_r+0x588>
 2005688:	81000117 	ldw	r4,4(r16)
 200568c:	00bfff04 	movi	r2,-4
 2005690:	208e703a 	and	r7,r4,r2
 2005694:	3c45c83a 	sub	r2,r7,r17
 2005698:	010003c4 	movi	r4,15
 200569c:	2080ee16 	blt	r4,r2,2005a58 <_malloc_r+0x54c>
 20056a0:	32400515 	stw	r9,20(r6)
 20056a4:	32400415 	stw	r9,16(r6)
 20056a8:	1000510e 	bge	r2,zero,20057f0 <_malloc_r+0x2e4>
 20056ac:	00807fc4 	movi	r2,511
 20056b0:	11c0ce36 	bltu	r2,r7,20059ec <_malloc_r+0x4e0>
 20056b4:	3808d0fa 	srli	r4,r7,3
 20056b8:	01c00044 	movi	r7,1
 20056bc:	30800117 	ldw	r2,4(r6)
 20056c0:	210b883a 	add	r5,r4,r4
 20056c4:	294b883a 	add	r5,r5,r5
 20056c8:	2009d0ba 	srai	r4,r4,2
 20056cc:	294b883a 	add	r5,r5,r5
 20056d0:	298b883a 	add	r5,r5,r6
 20056d4:	2a000217 	ldw	r8,8(r5)
 20056d8:	3908983a 	sll	r4,r7,r4
 20056dc:	81400315 	stw	r5,12(r16)
 20056e0:	82000215 	stw	r8,8(r16)
 20056e4:	2088b03a 	or	r4,r4,r2
 20056e8:	2c000215 	stw	r16,8(r5)
 20056ec:	31000115 	stw	r4,4(r6)
 20056f0:	44000315 	stw	r16,12(r8)
 20056f4:	1805d0ba 	srai	r2,r3,2
 20056f8:	01400044 	movi	r5,1
 20056fc:	288a983a 	sll	r5,r5,r2
 2005700:	21404336 	bltu	r4,r5,2005810 <_malloc_r+0x304>
 2005704:	2144703a 	and	r2,r4,r5
 2005708:	10000a1e 	bne	r2,zero,2005734 <_malloc_r+0x228>
 200570c:	00bfff04 	movi	r2,-4
 2005710:	294b883a 	add	r5,r5,r5
 2005714:	1886703a 	and	r3,r3,r2
 2005718:	2144703a 	and	r2,r4,r5
 200571c:	18c00104 	addi	r3,r3,4
 2005720:	1000041e 	bne	r2,zero,2005734 <_malloc_r+0x228>
 2005724:	294b883a 	add	r5,r5,r5
 2005728:	2144703a 	and	r2,r4,r5
 200572c:	18c00104 	addi	r3,r3,4
 2005730:	103ffc26 	beq	r2,zero,2005724 <_malloc_r+0x218>
 2005734:	023fff04 	movi	r8,-4
 2005738:	01c003c4 	movi	r7,15
 200573c:	18c5883a 	add	r2,r3,r3
 2005740:	1085883a 	add	r2,r2,r2
 2005744:	1085883a 	add	r2,r2,r2
 2005748:	9895883a 	add	r10,r19,r2
 200574c:	52c00304 	addi	r11,r10,12
 2005750:	1819883a 	mov	r12,r3
 2005754:	5c000017 	ldw	r16,0(r11)
 2005758:	59bffd04 	addi	r6,r11,-12
 200575c:	8180041e 	bne	r16,r6,2005770 <_malloc_r+0x264>
 2005760:	0000ce06 	br	2005a9c <_malloc_r+0x590>
 2005764:	2000d70e 	bge	r4,zero,2005ac4 <_malloc_r+0x5b8>
 2005768:	84000317 	ldw	r16,12(r16)
 200576c:	8180cb26 	beq	r16,r6,2005a9c <_malloc_r+0x590>
 2005770:	80800117 	ldw	r2,4(r16)
 2005774:	1204703a 	and	r2,r2,r8
 2005778:	1449c83a 	sub	r4,r2,r17
 200577c:	393ff90e 	bge	r7,r4,2005764 <_malloc_r+0x258>
 2005780:	80800317 	ldw	r2,12(r16)
 2005784:	80c00217 	ldw	r3,8(r16)
 2005788:	89400054 	ori	r5,r17,1
 200578c:	81400115 	stw	r5,4(r16)
 2005790:	18800315 	stw	r2,12(r3)
 2005794:	10c00215 	stw	r3,8(r2)
 2005798:	8463883a 	add	r17,r16,r17
 200579c:	9c400515 	stw	r17,20(r19)
 20057a0:	9c400415 	stw	r17,16(r19)
 20057a4:	20800054 	ori	r2,r4,1
 20057a8:	88800115 	stw	r2,4(r17)
 20057ac:	8a400315 	stw	r9,12(r17)
 20057b0:	8a400215 	stw	r9,8(r17)
 20057b4:	8923883a 	add	r17,r17,r4
 20057b8:	89000015 	stw	r4,0(r17)
 20057bc:	9009883a 	mov	r4,r18
 20057c0:	200cf300 	call	200cf30 <__malloc_unlock>
 20057c4:	80800204 	addi	r2,r16,8
 20057c8:	003f7d06 	br	20055c0 <_malloc_r+0xb4>
 20057cc:	00800304 	movi	r2,12
 20057d0:	90800015 	stw	r2,0(r18)
 20057d4:	0005883a 	mov	r2,zero
 20057d8:	003f7906 	br	20055c0 <_malloc_r+0xb4>
 20057dc:	01401f84 	movi	r5,126
 20057e0:	01c00fc4 	movi	r7,63
 20057e4:	003f8d06 	br	200561c <_malloc_r+0x110>
 20057e8:	81000317 	ldw	r4,12(r16)
 20057ec:	003f6a06 	br	2005598 <_malloc_r+0x8c>
 20057f0:	81c5883a 	add	r2,r16,r7
 20057f4:	10c00117 	ldw	r3,4(r2)
 20057f8:	9009883a 	mov	r4,r18
 20057fc:	18c00054 	ori	r3,r3,1
 2005800:	10c00115 	stw	r3,4(r2)
 2005804:	200cf300 	call	200cf30 <__malloc_unlock>
 2005808:	80800204 	addi	r2,r16,8
 200580c:	003f6c06 	br	20055c0 <_malloc_r+0xb4>
 2005810:	9c000217 	ldw	r16,8(r19)
 2005814:	00bfff04 	movi	r2,-4
 2005818:	85800117 	ldw	r22,4(r16)
 200581c:	b0ac703a 	and	r22,r22,r2
 2005820:	b4400336 	bltu	r22,r17,2005830 <_malloc_r+0x324>
 2005824:	b445c83a 	sub	r2,r22,r17
 2005828:	00c003c4 	movi	r3,15
 200582c:	18805d16 	blt	r3,r2,20059a4 <_malloc_r+0x498>
 2005830:	05c08074 	movhi	r23,513
 2005834:	00808074 	movhi	r2,513
 2005838:	bdc39704 	addi	r23,r23,3676
 200583c:	108a6404 	addi	r2,r2,10640
 2005840:	15400017 	ldw	r21,0(r2)
 2005844:	b9000017 	ldw	r4,0(r23)
 2005848:	00ffffc4 	movi	r3,-1
 200584c:	858d883a 	add	r6,r16,r22
 2005850:	8d6b883a 	add	r21,r17,r21
 2005854:	20c0e426 	beq	r4,r3,2005be8 <_malloc_r+0x6dc>
 2005858:	ad4403c4 	addi	r21,r21,4111
 200585c:	00fc0004 	movi	r3,-4096
 2005860:	a8ea703a 	and	r21,r21,r3
 2005864:	9009883a 	mov	r4,r18
 2005868:	a80b883a 	mov	r5,r21
 200586c:	d9800015 	stw	r6,0(sp)
 2005870:	20076f40 	call	20076f4 <_sbrk_r>
 2005874:	00ffffc4 	movi	r3,-1
 2005878:	1029883a 	mov	r20,r2
 200587c:	d9800017 	ldw	r6,0(sp)
 2005880:	10c0a426 	beq	r2,r3,2005b14 <_malloc_r+0x608>
 2005884:	1180a236 	bltu	r2,r6,2005b10 <_malloc_r+0x604>
 2005888:	07008074 	movhi	fp,513
 200588c:	e70a6c04 	addi	fp,fp,10672
 2005890:	e0c00017 	ldw	r3,0(fp)
 2005894:	a8c7883a 	add	r3,r21,r3
 2005898:	e0c00015 	stw	r3,0(fp)
 200589c:	3500da26 	beq	r6,r20,2005c08 <_malloc_r+0x6fc>
 20058a0:	b9000017 	ldw	r4,0(r23)
 20058a4:	00bfffc4 	movi	r2,-1
 20058a8:	2080e426 	beq	r4,r2,2005c3c <_malloc_r+0x730>
 20058ac:	a185c83a 	sub	r2,r20,r6
 20058b0:	1885883a 	add	r2,r3,r2
 20058b4:	e0800015 	stw	r2,0(fp)
 20058b8:	a0c001cc 	andi	r3,r20,7
 20058bc:	1800b526 	beq	r3,zero,2005b94 <_malloc_r+0x688>
 20058c0:	a0e9c83a 	sub	r20,r20,r3
 20058c4:	00840204 	movi	r2,4104
 20058c8:	a5000204 	addi	r20,r20,8
 20058cc:	10c7c83a 	sub	r3,r2,r3
 20058d0:	a545883a 	add	r2,r20,r21
 20058d4:	1083ffcc 	andi	r2,r2,4095
 20058d8:	18abc83a 	sub	r21,r3,r2
 20058dc:	9009883a 	mov	r4,r18
 20058e0:	a80b883a 	mov	r5,r21
 20058e4:	20076f40 	call	20076f4 <_sbrk_r>
 20058e8:	00ffffc4 	movi	r3,-1
 20058ec:	10c0d026 	beq	r2,r3,2005c30 <_malloc_r+0x724>
 20058f0:	1507c83a 	sub	r3,r2,r20
 20058f4:	a8c7883a 	add	r3,r21,r3
 20058f8:	18c00054 	ori	r3,r3,1
 20058fc:	e0800017 	ldw	r2,0(fp)
 2005900:	9d000215 	stw	r20,8(r19)
 2005904:	a0c00115 	stw	r3,4(r20)
 2005908:	a887883a 	add	r3,r21,r2
 200590c:	e0c00015 	stw	r3,0(fp)
 2005910:	84c00e26 	beq	r16,r19,200594c <_malloc_r+0x440>
 2005914:	018003c4 	movi	r6,15
 2005918:	3580a02e 	bgeu	r6,r22,2005b9c <_malloc_r+0x690>
 200591c:	81400117 	ldw	r5,4(r16)
 2005920:	013ffe04 	movi	r4,-8
 2005924:	b0bffd04 	addi	r2,r22,-12
 2005928:	1104703a 	and	r2,r2,r4
 200592c:	2900004c 	andi	r4,r5,1
 2005930:	1108b03a 	or	r4,r2,r4
 2005934:	81000115 	stw	r4,4(r16)
 2005938:	01400144 	movi	r5,5
 200593c:	8089883a 	add	r4,r16,r2
 2005940:	21400115 	stw	r5,4(r4)
 2005944:	21400215 	stw	r5,8(r4)
 2005948:	3080c036 	bltu	r6,r2,2005c4c <_malloc_r+0x740>
 200594c:	00808074 	movhi	r2,513
 2005950:	108a6304 	addi	r2,r2,10636
 2005954:	11000017 	ldw	r4,0(r2)
 2005958:	20c0012e 	bgeu	r4,r3,2005960 <_malloc_r+0x454>
 200595c:	10c00015 	stw	r3,0(r2)
 2005960:	00808074 	movhi	r2,513
 2005964:	108a6204 	addi	r2,r2,10632
 2005968:	11000017 	ldw	r4,0(r2)
 200596c:	9c000217 	ldw	r16,8(r19)
 2005970:	20c0012e 	bgeu	r4,r3,2005978 <_malloc_r+0x46c>
 2005974:	10c00015 	stw	r3,0(r2)
 2005978:	80c00117 	ldw	r3,4(r16)
 200597c:	00bfff04 	movi	r2,-4
 2005980:	1886703a 	and	r3,r3,r2
 2005984:	1c45c83a 	sub	r2,r3,r17
 2005988:	1c400236 	bltu	r3,r17,2005994 <_malloc_r+0x488>
 200598c:	00c003c4 	movi	r3,15
 2005990:	18800416 	blt	r3,r2,20059a4 <_malloc_r+0x498>
 2005994:	9009883a 	mov	r4,r18
 2005998:	200cf300 	call	200cf30 <__malloc_unlock>
 200599c:	0005883a 	mov	r2,zero
 20059a0:	003f0706 	br	20055c0 <_malloc_r+0xb4>
 20059a4:	88c00054 	ori	r3,r17,1
 20059a8:	80c00115 	stw	r3,4(r16)
 20059ac:	8463883a 	add	r17,r16,r17
 20059b0:	10800054 	ori	r2,r2,1
 20059b4:	9c400215 	stw	r17,8(r19)
 20059b8:	88800115 	stw	r2,4(r17)
 20059bc:	9009883a 	mov	r4,r18
 20059c0:	200cf300 	call	200cf30 <__malloc_unlock>
 20059c4:	80800204 	addi	r2,r16,8
 20059c8:	003efd06 	br	20055c0 <_malloc_r+0xb4>
 20059cc:	00800504 	movi	r2,20
 20059d0:	10c0482e 	bgeu	r2,r3,2005af4 <_malloc_r+0x5e8>
 20059d4:	00801504 	movi	r2,84
 20059d8:	10c06836 	bltu	r2,r3,2005b7c <_malloc_r+0x670>
 20059dc:	8806d33a 	srli	r3,r17,12
 20059e0:	19c01b84 	addi	r7,r3,110
 20059e4:	39cb883a 	add	r5,r7,r7
 20059e8:	003f0c06 	br	200561c <_malloc_r+0x110>
 20059ec:	3804d27a 	srli	r2,r7,9
 20059f0:	01000104 	movi	r4,4
 20059f4:	2080422e 	bgeu	r4,r2,2005b00 <_malloc_r+0x5f4>
 20059f8:	01000504 	movi	r4,20
 20059fc:	20807c36 	bltu	r4,r2,2005bf0 <_malloc_r+0x6e4>
 2005a00:	110016c4 	addi	r4,r2,91
 2005a04:	210b883a 	add	r5,r4,r4
 2005a08:	294b883a 	add	r5,r5,r5
 2005a0c:	294b883a 	add	r5,r5,r5
 2005a10:	994b883a 	add	r5,r19,r5
 2005a14:	28800217 	ldw	r2,8(r5)
 2005a18:	02008074 	movhi	r8,513
 2005a1c:	423e1004 	addi	r8,r8,-1984
 2005a20:	11406326 	beq	r2,r5,2005bb0 <_malloc_r+0x6a4>
 2005a24:	01bfff04 	movi	r6,-4
 2005a28:	11000117 	ldw	r4,4(r2)
 2005a2c:	2188703a 	and	r4,r4,r6
 2005a30:	3900022e 	bgeu	r7,r4,2005a3c <_malloc_r+0x530>
 2005a34:	10800217 	ldw	r2,8(r2)
 2005a38:	28bffb1e 	bne	r5,r2,2005a28 <_malloc_r+0x51c>
 2005a3c:	11800317 	ldw	r6,12(r2)
 2005a40:	99000117 	ldw	r4,4(r19)
 2005a44:	81800315 	stw	r6,12(r16)
 2005a48:	80800215 	stw	r2,8(r16)
 2005a4c:	34000215 	stw	r16,8(r6)
 2005a50:	14000315 	stw	r16,12(r2)
 2005a54:	003f2706 	br	20056f4 <_malloc_r+0x1e8>
 2005a58:	88c00054 	ori	r3,r17,1
 2005a5c:	80c00115 	stw	r3,4(r16)
 2005a60:	8463883a 	add	r17,r16,r17
 2005a64:	34400515 	stw	r17,20(r6)
 2005a68:	34400415 	stw	r17,16(r6)
 2005a6c:	10c00054 	ori	r3,r2,1
 2005a70:	8a400315 	stw	r9,12(r17)
 2005a74:	8a400215 	stw	r9,8(r17)
 2005a78:	88c00115 	stw	r3,4(r17)
 2005a7c:	88a3883a 	add	r17,r17,r2
 2005a80:	88800015 	stw	r2,0(r17)
 2005a84:	9009883a 	mov	r4,r18
 2005a88:	200cf300 	call	200cf30 <__malloc_unlock>
 2005a8c:	80800204 	addi	r2,r16,8
 2005a90:	003ecb06 	br	20055c0 <_malloc_r+0xb4>
 2005a94:	31000117 	ldw	r4,4(r6)
 2005a98:	003f1606 	br	20056f4 <_malloc_r+0x1e8>
 2005a9c:	63000044 	addi	r12,r12,1
 2005aa0:	608000cc 	andi	r2,r12,3
 2005aa4:	5ac00204 	addi	r11,r11,8
 2005aa8:	103f2a1e 	bne	r2,zero,2005754 <_malloc_r+0x248>
 2005aac:	00002106 	br	2005b34 <_malloc_r+0x628>
 2005ab0:	80800204 	addi	r2,r16,8
 2005ab4:	84000517 	ldw	r16,20(r16)
 2005ab8:	143eb31e 	bne	r2,r16,2005588 <_malloc_r+0x7c>
 2005abc:	18c00084 	addi	r3,r3,2
 2005ac0:	003eec06 	br	2005674 <_malloc_r+0x168>
 2005ac4:	8085883a 	add	r2,r16,r2
 2005ac8:	10c00117 	ldw	r3,4(r2)
 2005acc:	81000317 	ldw	r4,12(r16)
 2005ad0:	81400217 	ldw	r5,8(r16)
 2005ad4:	18c00054 	ori	r3,r3,1
 2005ad8:	10c00115 	stw	r3,4(r2)
 2005adc:	29000315 	stw	r4,12(r5)
 2005ae0:	21400215 	stw	r5,8(r4)
 2005ae4:	9009883a 	mov	r4,r18
 2005ae8:	200cf300 	call	200cf30 <__malloc_unlock>
 2005aec:	80800204 	addi	r2,r16,8
 2005af0:	003eb306 	br	20055c0 <_malloc_r+0xb4>
 2005af4:	19c016c4 	addi	r7,r3,91
 2005af8:	39cb883a 	add	r5,r7,r7
 2005afc:	003ec706 	br	200561c <_malloc_r+0x110>
 2005b00:	3804d1ba 	srli	r2,r7,6
 2005b04:	11000e04 	addi	r4,r2,56
 2005b08:	210b883a 	add	r5,r4,r4
 2005b0c:	003fbe06 	br	2005a08 <_malloc_r+0x4fc>
 2005b10:	84ff5d26 	beq	r16,r19,2005888 <_malloc_r+0x37c>
 2005b14:	9c000217 	ldw	r16,8(r19)
 2005b18:	00bfff04 	movi	r2,-4
 2005b1c:	80c00117 	ldw	r3,4(r16)
 2005b20:	1886703a 	and	r3,r3,r2
 2005b24:	003f9706 	br	2005984 <_malloc_r+0x478>
 2005b28:	52800017 	ldw	r10,0(r10)
 2005b2c:	18ffffc4 	addi	r3,r3,-1
 2005b30:	50805c1e 	bne	r10,r2,2005ca4 <_malloc_r+0x798>
 2005b34:	190000cc 	andi	r4,r3,3
 2005b38:	50bffe04 	addi	r2,r10,-8
 2005b3c:	203ffa1e 	bne	r4,zero,2005b28 <_malloc_r+0x61c>
 2005b40:	98800117 	ldw	r2,4(r19)
 2005b44:	0146303a 	nor	r3,zero,r5
 2005b48:	1884703a 	and	r2,r3,r2
 2005b4c:	98800115 	stw	r2,4(r19)
 2005b50:	294b883a 	add	r5,r5,r5
 2005b54:	117f2e36 	bltu	r2,r5,2005810 <_malloc_r+0x304>
 2005b58:	283f2d26 	beq	r5,zero,2005810 <_malloc_r+0x304>
 2005b5c:	1146703a 	and	r3,r2,r5
 2005b60:	1800521e 	bne	r3,zero,2005cac <_malloc_r+0x7a0>
 2005b64:	6007883a 	mov	r3,r12
 2005b68:	294b883a 	add	r5,r5,r5
 2005b6c:	1148703a 	and	r4,r2,r5
 2005b70:	18c00104 	addi	r3,r3,4
 2005b74:	203ffc26 	beq	r4,zero,2005b68 <_malloc_r+0x65c>
 2005b78:	003ef006 	br	200573c <_malloc_r+0x230>
 2005b7c:	00805504 	movi	r2,340
 2005b80:	10c01336 	bltu	r2,r3,2005bd0 <_malloc_r+0x6c4>
 2005b84:	8806d3fa 	srli	r3,r17,15
 2005b88:	19c01dc4 	addi	r7,r3,119
 2005b8c:	39cb883a 	add	r5,r7,r7
 2005b90:	003ea206 	br	200561c <_malloc_r+0x110>
 2005b94:	00c40004 	movi	r3,4096
 2005b98:	003f4d06 	br	20058d0 <_malloc_r+0x3c4>
 2005b9c:	00800044 	movi	r2,1
 2005ba0:	a0800115 	stw	r2,4(r20)
 2005ba4:	a021883a 	mov	r16,r20
 2005ba8:	0007883a 	mov	r3,zero
 2005bac:	003f7506 	br	2005984 <_malloc_r+0x478>
 2005bb0:	200bd0ba 	srai	r5,r4,2
 2005bb4:	01800044 	movi	r6,1
 2005bb8:	41000117 	ldw	r4,4(r8)
 2005bbc:	314a983a 	sll	r5,r6,r5
 2005bc0:	100d883a 	mov	r6,r2
 2005bc4:	2908b03a 	or	r4,r5,r4
 2005bc8:	41000115 	stw	r4,4(r8)
 2005bcc:	003f9d06 	br	2005a44 <_malloc_r+0x538>
 2005bd0:	00815504 	movi	r2,1364
 2005bd4:	10c01336 	bltu	r2,r3,2005c24 <_malloc_r+0x718>
 2005bd8:	8806d4ba 	srli	r3,r17,18
 2005bdc:	19c01f04 	addi	r7,r3,124
 2005be0:	39cb883a 	add	r5,r7,r7
 2005be4:	003e8d06 	br	200561c <_malloc_r+0x110>
 2005be8:	ad400404 	addi	r21,r21,16
 2005bec:	003f1d06 	br	2005864 <_malloc_r+0x358>
 2005bf0:	01001504 	movi	r4,84
 2005bf4:	20801c36 	bltu	r4,r2,2005c68 <_malloc_r+0x75c>
 2005bf8:	3804d33a 	srli	r2,r7,12
 2005bfc:	11001b84 	addi	r4,r2,110
 2005c00:	210b883a 	add	r5,r4,r4
 2005c04:	003f8006 	br	2005a08 <_malloc_r+0x4fc>
 2005c08:	3083ffcc 	andi	r2,r6,4095
 2005c0c:	103f241e 	bne	r2,zero,20058a0 <_malloc_r+0x394>
 2005c10:	99000217 	ldw	r4,8(r19)
 2005c14:	ad85883a 	add	r2,r21,r22
 2005c18:	10800054 	ori	r2,r2,1
 2005c1c:	20800115 	stw	r2,4(r4)
 2005c20:	003f4a06 	br	200594c <_malloc_r+0x440>
 2005c24:	01403f04 	movi	r5,252
 2005c28:	01c01f84 	movi	r7,126
 2005c2c:	003e7b06 	br	200561c <_malloc_r+0x110>
 2005c30:	00c00044 	movi	r3,1
 2005c34:	002b883a 	mov	r21,zero
 2005c38:	003f3006 	br	20058fc <_malloc_r+0x3f0>
 2005c3c:	00808074 	movhi	r2,513
 2005c40:	10839704 	addi	r2,r2,3676
 2005c44:	15000015 	stw	r20,0(r2)
 2005c48:	003f1b06 	br	20058b8 <_malloc_r+0x3ac>
 2005c4c:	9009883a 	mov	r4,r18
 2005c50:	81400204 	addi	r5,r16,8
 2005c54:	20049700 	call	2004970 <_free_r>
 2005c58:	00808074 	movhi	r2,513
 2005c5c:	108a6c04 	addi	r2,r2,10672
 2005c60:	10c00017 	ldw	r3,0(r2)
 2005c64:	003f3906 	br	200594c <_malloc_r+0x440>
 2005c68:	01005504 	movi	r4,340
 2005c6c:	20800436 	bltu	r4,r2,2005c80 <_malloc_r+0x774>
 2005c70:	3804d3fa 	srli	r2,r7,15
 2005c74:	11001dc4 	addi	r4,r2,119
 2005c78:	210b883a 	add	r5,r4,r4
 2005c7c:	003f6206 	br	2005a08 <_malloc_r+0x4fc>
 2005c80:	01015504 	movi	r4,1364
 2005c84:	20800436 	bltu	r4,r2,2005c98 <_malloc_r+0x78c>
 2005c88:	3804d4ba 	srli	r2,r7,18
 2005c8c:	11001f04 	addi	r4,r2,124
 2005c90:	210b883a 	add	r5,r4,r4
 2005c94:	003f5c06 	br	2005a08 <_malloc_r+0x4fc>
 2005c98:	01403f04 	movi	r5,252
 2005c9c:	01001f84 	movi	r4,126
 2005ca0:	003f5906 	br	2005a08 <_malloc_r+0x4fc>
 2005ca4:	98800117 	ldw	r2,4(r19)
 2005ca8:	003fa906 	br	2005b50 <_malloc_r+0x644>
 2005cac:	6007883a 	mov	r3,r12
 2005cb0:	003ea206 	br	200573c <_malloc_r+0x230>

02005cb4 <memchr>:
 2005cb4:	208000cc 	andi	r2,r4,3
 2005cb8:	280f883a 	mov	r7,r5
 2005cbc:	10003526 	beq	r2,zero,2005d94 <memchr+0xe0>
 2005cc0:	30bfffc4 	addi	r2,r6,-1
 2005cc4:	30001b26 	beq	r6,zero,2005d34 <memchr+0x80>
 2005cc8:	21800003 	ldbu	r6,0(r4)
 2005ccc:	28c03fcc 	andi	r3,r5,255
 2005cd0:	30c01a26 	beq	r6,r3,2005d3c <memchr+0x88>
 2005cd4:	180d883a 	mov	r6,r3
 2005cd8:	00000406 	br	2005cec <memchr+0x38>
 2005cdc:	10001526 	beq	r2,zero,2005d34 <memchr+0x80>
 2005ce0:	20c00003 	ldbu	r3,0(r4)
 2005ce4:	10bfffc4 	addi	r2,r2,-1
 2005ce8:	19801426 	beq	r3,r6,2005d3c <memchr+0x88>
 2005cec:	21000044 	addi	r4,r4,1
 2005cf0:	20c000cc 	andi	r3,r4,3
 2005cf4:	183ff91e 	bne	r3,zero,2005cdc <memchr+0x28>
 2005cf8:	024000c4 	movi	r9,3
 2005cfc:	48801136 	bltu	r9,r2,2005d44 <memchr+0x90>
 2005d00:	10000c26 	beq	r2,zero,2005d34 <memchr+0x80>
 2005d04:	20c00003 	ldbu	r3,0(r4)
 2005d08:	29403fcc 	andi	r5,r5,255
 2005d0c:	19400b26 	beq	r3,r5,2005d3c <memchr+0x88>
 2005d10:	20c00044 	addi	r3,r4,1
 2005d14:	2085883a 	add	r2,r4,r2
 2005d18:	39803fcc 	andi	r6,r7,255
 2005d1c:	00000306 	br	2005d2c <memchr+0x78>
 2005d20:	18c00044 	addi	r3,r3,1
 2005d24:	197fffc3 	ldbu	r5,-1(r3)
 2005d28:	29800426 	beq	r5,r6,2005d3c <memchr+0x88>
 2005d2c:	1809883a 	mov	r4,r3
 2005d30:	18bffb1e 	bne	r3,r2,2005d20 <memchr+0x6c>
 2005d34:	0005883a 	mov	r2,zero
 2005d38:	f800283a 	ret
 2005d3c:	2005883a 	mov	r2,r4
 2005d40:	f800283a 	ret
 2005d44:	28c03fcc 	andi	r3,r5,255
 2005d48:	1810923a 	slli	r8,r3,8
 2005d4c:	02ffbff4 	movhi	r11,65279
 2005d50:	02a02074 	movhi	r10,32897
 2005d54:	40c6b03a 	or	r3,r8,r3
 2005d58:	1810943a 	slli	r8,r3,16
 2005d5c:	5affbfc4 	addi	r11,r11,-257
 2005d60:	52a02004 	addi	r10,r10,-32640
 2005d64:	40d0b03a 	or	r8,r8,r3
 2005d68:	20c00017 	ldw	r3,0(r4)
 2005d6c:	40c6f03a 	xor	r3,r8,r3
 2005d70:	1acd883a 	add	r6,r3,r11
 2005d74:	00c6303a 	nor	r3,zero,r3
 2005d78:	30c6703a 	and	r3,r6,r3
 2005d7c:	1a86703a 	and	r3,r3,r10
 2005d80:	183fdf1e 	bne	r3,zero,2005d00 <memchr+0x4c>
 2005d84:	10bfff04 	addi	r2,r2,-4
 2005d88:	21000104 	addi	r4,r4,4
 2005d8c:	48bff636 	bltu	r9,r2,2005d68 <memchr+0xb4>
 2005d90:	003fdb06 	br	2005d00 <memchr+0x4c>
 2005d94:	3005883a 	mov	r2,r6
 2005d98:	003fd706 	br	2005cf8 <memchr+0x44>

02005d9c <memcpy>:
 2005d9c:	deffff04 	addi	sp,sp,-4
 2005da0:	dc000015 	stw	r16,0(sp)
 2005da4:	00c003c4 	movi	r3,15
 2005da8:	2005883a 	mov	r2,r4
 2005dac:	1980432e 	bgeu	r3,r6,2005ebc <memcpy+0x120>
 2005db0:	2146b03a 	or	r3,r4,r5
 2005db4:	18c000cc 	andi	r3,r3,3
 2005db8:	1800421e 	bne	r3,zero,2005ec4 <memcpy+0x128>
 2005dbc:	343ffc04 	addi	r16,r6,-16
 2005dc0:	8020d13a 	srli	r16,r16,4
 2005dc4:	28c00104 	addi	r3,r5,4
 2005dc8:	23400104 	addi	r13,r4,4
 2005dcc:	801e913a 	slli	r15,r16,4
 2005dd0:	2b000204 	addi	r12,r5,8
 2005dd4:	22c00204 	addi	r11,r4,8
 2005dd8:	7bc00504 	addi	r15,r15,20
 2005ddc:	2a800304 	addi	r10,r5,12
 2005de0:	22400304 	addi	r9,r4,12
 2005de4:	2bdf883a 	add	r15,r5,r15
 2005de8:	2811883a 	mov	r8,r5
 2005dec:	200f883a 	mov	r7,r4
 2005df0:	41000017 	ldw	r4,0(r8)
 2005df4:	39c00404 	addi	r7,r7,16
 2005df8:	18c00404 	addi	r3,r3,16
 2005dfc:	393ffc15 	stw	r4,-16(r7)
 2005e00:	1bbffc17 	ldw	r14,-16(r3)
 2005e04:	6b400404 	addi	r13,r13,16
 2005e08:	5ac00404 	addi	r11,r11,16
 2005e0c:	6bbffc15 	stw	r14,-16(r13)
 2005e10:	63800017 	ldw	r14,0(r12)
 2005e14:	4a400404 	addi	r9,r9,16
 2005e18:	42000404 	addi	r8,r8,16
 2005e1c:	5bbffc15 	stw	r14,-16(r11)
 2005e20:	53800017 	ldw	r14,0(r10)
 2005e24:	63000404 	addi	r12,r12,16
 2005e28:	52800404 	addi	r10,r10,16
 2005e2c:	4bbffc15 	stw	r14,-16(r9)
 2005e30:	1bffef1e 	bne	r3,r15,2005df0 <memcpy+0x54>
 2005e34:	81c00044 	addi	r7,r16,1
 2005e38:	380e913a 	slli	r7,r7,4
 2005e3c:	310003cc 	andi	r4,r6,15
 2005e40:	02c000c4 	movi	r11,3
 2005e44:	11c7883a 	add	r3,r2,r7
 2005e48:	29cb883a 	add	r5,r5,r7
 2005e4c:	59001f2e 	bgeu	r11,r4,2005ecc <memcpy+0x130>
 2005e50:	1813883a 	mov	r9,r3
 2005e54:	2811883a 	mov	r8,r5
 2005e58:	200f883a 	mov	r7,r4
 2005e5c:	42800017 	ldw	r10,0(r8)
 2005e60:	4a400104 	addi	r9,r9,4
 2005e64:	39ffff04 	addi	r7,r7,-4
 2005e68:	4abfff15 	stw	r10,-4(r9)
 2005e6c:	42000104 	addi	r8,r8,4
 2005e70:	59fffa36 	bltu	r11,r7,2005e5c <memcpy+0xc0>
 2005e74:	213fff04 	addi	r4,r4,-4
 2005e78:	2008d0ba 	srli	r4,r4,2
 2005e7c:	318000cc 	andi	r6,r6,3
 2005e80:	21000044 	addi	r4,r4,1
 2005e84:	2109883a 	add	r4,r4,r4
 2005e88:	2109883a 	add	r4,r4,r4
 2005e8c:	1907883a 	add	r3,r3,r4
 2005e90:	290b883a 	add	r5,r5,r4
 2005e94:	30000626 	beq	r6,zero,2005eb0 <memcpy+0x114>
 2005e98:	198d883a 	add	r6,r3,r6
 2005e9c:	29c00003 	ldbu	r7,0(r5)
 2005ea0:	18c00044 	addi	r3,r3,1
 2005ea4:	29400044 	addi	r5,r5,1
 2005ea8:	19ffffc5 	stb	r7,-1(r3)
 2005eac:	19bffb1e 	bne	r3,r6,2005e9c <memcpy+0x100>
 2005eb0:	dc000017 	ldw	r16,0(sp)
 2005eb4:	dec00104 	addi	sp,sp,4
 2005eb8:	f800283a 	ret
 2005ebc:	2007883a 	mov	r3,r4
 2005ec0:	003ff406 	br	2005e94 <memcpy+0xf8>
 2005ec4:	2007883a 	mov	r3,r4
 2005ec8:	003ff306 	br	2005e98 <memcpy+0xfc>
 2005ecc:	200d883a 	mov	r6,r4
 2005ed0:	003ff006 	br	2005e94 <memcpy+0xf8>

02005ed4 <memmove>:
 2005ed4:	2005883a 	mov	r2,r4
 2005ed8:	29000b2e 	bgeu	r5,r4,2005f08 <memmove+0x34>
 2005edc:	298f883a 	add	r7,r5,r6
 2005ee0:	21c0092e 	bgeu	r4,r7,2005f08 <memmove+0x34>
 2005ee4:	2187883a 	add	r3,r4,r6
 2005ee8:	198bc83a 	sub	r5,r3,r6
 2005eec:	30004b26 	beq	r6,zero,200601c <memmove+0x148>
 2005ef0:	39ffffc4 	addi	r7,r7,-1
 2005ef4:	39000003 	ldbu	r4,0(r7)
 2005ef8:	18ffffc4 	addi	r3,r3,-1
 2005efc:	19000005 	stb	r4,0(r3)
 2005f00:	197ffb1e 	bne	r3,r5,2005ef0 <memmove+0x1c>
 2005f04:	f800283a 	ret
 2005f08:	00c003c4 	movi	r3,15
 2005f0c:	1980412e 	bgeu	r3,r6,2006014 <memmove+0x140>
 2005f10:	1146b03a 	or	r3,r2,r5
 2005f14:	18c000cc 	andi	r3,r3,3
 2005f18:	1800411e 	bne	r3,zero,2006020 <memmove+0x14c>
 2005f1c:	33fffc04 	addi	r15,r6,-16
 2005f20:	781ed13a 	srli	r15,r15,4
 2005f24:	28c00104 	addi	r3,r5,4
 2005f28:	13400104 	addi	r13,r2,4
 2005f2c:	781c913a 	slli	r14,r15,4
 2005f30:	2b000204 	addi	r12,r5,8
 2005f34:	12c00204 	addi	r11,r2,8
 2005f38:	73800504 	addi	r14,r14,20
 2005f3c:	2a800304 	addi	r10,r5,12
 2005f40:	12400304 	addi	r9,r2,12
 2005f44:	2b9d883a 	add	r14,r5,r14
 2005f48:	2811883a 	mov	r8,r5
 2005f4c:	100f883a 	mov	r7,r2
 2005f50:	41000017 	ldw	r4,0(r8)
 2005f54:	39c00404 	addi	r7,r7,16
 2005f58:	18c00404 	addi	r3,r3,16
 2005f5c:	393ffc15 	stw	r4,-16(r7)
 2005f60:	193ffc17 	ldw	r4,-16(r3)
 2005f64:	6b400404 	addi	r13,r13,16
 2005f68:	5ac00404 	addi	r11,r11,16
 2005f6c:	693ffc15 	stw	r4,-16(r13)
 2005f70:	61000017 	ldw	r4,0(r12)
 2005f74:	4a400404 	addi	r9,r9,16
 2005f78:	42000404 	addi	r8,r8,16
 2005f7c:	593ffc15 	stw	r4,-16(r11)
 2005f80:	51000017 	ldw	r4,0(r10)
 2005f84:	63000404 	addi	r12,r12,16
 2005f88:	52800404 	addi	r10,r10,16
 2005f8c:	493ffc15 	stw	r4,-16(r9)
 2005f90:	1bbfef1e 	bne	r3,r14,2005f50 <memmove+0x7c>
 2005f94:	79000044 	addi	r4,r15,1
 2005f98:	2008913a 	slli	r4,r4,4
 2005f9c:	328003cc 	andi	r10,r6,15
 2005fa0:	02c000c4 	movi	r11,3
 2005fa4:	1107883a 	add	r3,r2,r4
 2005fa8:	290b883a 	add	r5,r5,r4
 2005fac:	5a801e2e 	bgeu	r11,r10,2006028 <memmove+0x154>
 2005fb0:	1813883a 	mov	r9,r3
 2005fb4:	2811883a 	mov	r8,r5
 2005fb8:	500f883a 	mov	r7,r10
 2005fbc:	41000017 	ldw	r4,0(r8)
 2005fc0:	4a400104 	addi	r9,r9,4
 2005fc4:	39ffff04 	addi	r7,r7,-4
 2005fc8:	493fff15 	stw	r4,-4(r9)
 2005fcc:	42000104 	addi	r8,r8,4
 2005fd0:	59fffa36 	bltu	r11,r7,2005fbc <memmove+0xe8>
 2005fd4:	513fff04 	addi	r4,r10,-4
 2005fd8:	2008d0ba 	srli	r4,r4,2
 2005fdc:	318000cc 	andi	r6,r6,3
 2005fe0:	21000044 	addi	r4,r4,1
 2005fe4:	2109883a 	add	r4,r4,r4
 2005fe8:	2109883a 	add	r4,r4,r4
 2005fec:	1907883a 	add	r3,r3,r4
 2005ff0:	290b883a 	add	r5,r5,r4
 2005ff4:	30000926 	beq	r6,zero,200601c <memmove+0x148>
 2005ff8:	198d883a 	add	r6,r3,r6
 2005ffc:	29c00003 	ldbu	r7,0(r5)
 2006000:	18c00044 	addi	r3,r3,1
 2006004:	29400044 	addi	r5,r5,1
 2006008:	19ffffc5 	stb	r7,-1(r3)
 200600c:	19bffb1e 	bne	r3,r6,2005ffc <memmove+0x128>
 2006010:	f800283a 	ret
 2006014:	1007883a 	mov	r3,r2
 2006018:	003ff606 	br	2005ff4 <memmove+0x120>
 200601c:	f800283a 	ret
 2006020:	1007883a 	mov	r3,r2
 2006024:	003ff406 	br	2005ff8 <memmove+0x124>
 2006028:	500d883a 	mov	r6,r10
 200602c:	003ff106 	br	2005ff4 <memmove+0x120>

02006030 <memset>:
 2006030:	20c000cc 	andi	r3,r4,3
 2006034:	2005883a 	mov	r2,r4
 2006038:	18004326 	beq	r3,zero,2006148 <memset+0x118>
 200603c:	31ffffc4 	addi	r7,r6,-1
 2006040:	30004026 	beq	r6,zero,2006144 <memset+0x114>
 2006044:	2813883a 	mov	r9,r5
 2006048:	200d883a 	mov	r6,r4
 200604c:	2007883a 	mov	r3,r4
 2006050:	00000406 	br	2006064 <memset+0x34>
 2006054:	3a3fffc4 	addi	r8,r7,-1
 2006058:	31800044 	addi	r6,r6,1
 200605c:	38003926 	beq	r7,zero,2006144 <memset+0x114>
 2006060:	400f883a 	mov	r7,r8
 2006064:	18c00044 	addi	r3,r3,1
 2006068:	32400005 	stb	r9,0(r6)
 200606c:	1a0000cc 	andi	r8,r3,3
 2006070:	403ff81e 	bne	r8,zero,2006054 <memset+0x24>
 2006074:	010000c4 	movi	r4,3
 2006078:	21c02d2e 	bgeu	r4,r7,2006130 <memset+0x100>
 200607c:	29803fcc 	andi	r6,r5,255
 2006080:	3008923a 	slli	r4,r6,8
 2006084:	218cb03a 	or	r6,r4,r6
 2006088:	3008943a 	slli	r4,r6,16
 200608c:	218cb03a 	or	r6,r4,r6
 2006090:	010003c4 	movi	r4,15
 2006094:	21c0182e 	bgeu	r4,r7,20060f8 <memset+0xc8>
 2006098:	3b3ffc04 	addi	r12,r7,-16
 200609c:	6018d13a 	srli	r12,r12,4
 20060a0:	1a000104 	addi	r8,r3,4
 20060a4:	1ac00204 	addi	r11,r3,8
 20060a8:	6008913a 	slli	r4,r12,4
 20060ac:	1a800304 	addi	r10,r3,12
 20060b0:	1813883a 	mov	r9,r3
 20060b4:	21000504 	addi	r4,r4,20
 20060b8:	1909883a 	add	r4,r3,r4
 20060bc:	49800015 	stw	r6,0(r9)
 20060c0:	41800015 	stw	r6,0(r8)
 20060c4:	59800015 	stw	r6,0(r11)
 20060c8:	51800015 	stw	r6,0(r10)
 20060cc:	42000404 	addi	r8,r8,16
 20060d0:	4a400404 	addi	r9,r9,16
 20060d4:	5ac00404 	addi	r11,r11,16
 20060d8:	52800404 	addi	r10,r10,16
 20060dc:	413ff71e 	bne	r8,r4,20060bc <memset+0x8c>
 20060e0:	63000044 	addi	r12,r12,1
 20060e4:	6018913a 	slli	r12,r12,4
 20060e8:	39c003cc 	andi	r7,r7,15
 20060ec:	010000c4 	movi	r4,3
 20060f0:	1b07883a 	add	r3,r3,r12
 20060f4:	21c00e2e 	bgeu	r4,r7,2006130 <memset+0x100>
 20060f8:	1813883a 	mov	r9,r3
 20060fc:	3811883a 	mov	r8,r7
 2006100:	010000c4 	movi	r4,3
 2006104:	49800015 	stw	r6,0(r9)
 2006108:	423fff04 	addi	r8,r8,-4
 200610c:	4a400104 	addi	r9,r9,4
 2006110:	223ffc36 	bltu	r4,r8,2006104 <memset+0xd4>
 2006114:	393fff04 	addi	r4,r7,-4
 2006118:	2008d0ba 	srli	r4,r4,2
 200611c:	39c000cc 	andi	r7,r7,3
 2006120:	21000044 	addi	r4,r4,1
 2006124:	2109883a 	add	r4,r4,r4
 2006128:	2109883a 	add	r4,r4,r4
 200612c:	1907883a 	add	r3,r3,r4
 2006130:	38000426 	beq	r7,zero,2006144 <memset+0x114>
 2006134:	19cf883a 	add	r7,r3,r7
 2006138:	19400005 	stb	r5,0(r3)
 200613c:	18c00044 	addi	r3,r3,1
 2006140:	19fffd1e 	bne	r3,r7,2006138 <memset+0x108>
 2006144:	f800283a 	ret
 2006148:	2007883a 	mov	r3,r4
 200614c:	300f883a 	mov	r7,r6
 2006150:	003fc806 	br	2006074 <memset+0x44>

02006154 <_Balloc>:
 2006154:	20801317 	ldw	r2,76(r4)
 2006158:	defffc04 	addi	sp,sp,-16
 200615c:	dc400115 	stw	r17,4(sp)
 2006160:	dc000015 	stw	r16,0(sp)
 2006164:	dfc00315 	stw	ra,12(sp)
 2006168:	dc800215 	stw	r18,8(sp)
 200616c:	2023883a 	mov	r17,r4
 2006170:	2821883a 	mov	r16,r5
 2006174:	10000f26 	beq	r2,zero,20061b4 <_Balloc+0x60>
 2006178:	8407883a 	add	r3,r16,r16
 200617c:	18c7883a 	add	r3,r3,r3
 2006180:	10c7883a 	add	r3,r2,r3
 2006184:	18800017 	ldw	r2,0(r3)
 2006188:	10001126 	beq	r2,zero,20061d0 <_Balloc+0x7c>
 200618c:	11000017 	ldw	r4,0(r2)
 2006190:	19000015 	stw	r4,0(r3)
 2006194:	10000415 	stw	zero,16(r2)
 2006198:	10000315 	stw	zero,12(r2)
 200619c:	dfc00317 	ldw	ra,12(sp)
 20061a0:	dc800217 	ldw	r18,8(sp)
 20061a4:	dc400117 	ldw	r17,4(sp)
 20061a8:	dc000017 	ldw	r16,0(sp)
 20061ac:	dec00404 	addi	sp,sp,16
 20061b0:	f800283a 	ret
 20061b4:	01400104 	movi	r5,4
 20061b8:	01800844 	movi	r6,33
 20061bc:	2008e6c0 	call	2008e6c <_calloc_r>
 20061c0:	88801315 	stw	r2,76(r17)
 20061c4:	103fec1e 	bne	r2,zero,2006178 <_Balloc+0x24>
 20061c8:	0005883a 	mov	r2,zero
 20061cc:	003ff306 	br	200619c <_Balloc+0x48>
 20061d0:	01400044 	movi	r5,1
 20061d4:	2c24983a 	sll	r18,r5,r16
 20061d8:	8809883a 	mov	r4,r17
 20061dc:	91800144 	addi	r6,r18,5
 20061e0:	318d883a 	add	r6,r6,r6
 20061e4:	318d883a 	add	r6,r6,r6
 20061e8:	2008e6c0 	call	2008e6c <_calloc_r>
 20061ec:	103ff626 	beq	r2,zero,20061c8 <_Balloc+0x74>
 20061f0:	14000115 	stw	r16,4(r2)
 20061f4:	14800215 	stw	r18,8(r2)
 20061f8:	003fe606 	br	2006194 <_Balloc+0x40>

020061fc <_Bfree>:
 20061fc:	28000826 	beq	r5,zero,2006220 <_Bfree+0x24>
 2006200:	28c00117 	ldw	r3,4(r5)
 2006204:	20801317 	ldw	r2,76(r4)
 2006208:	18c7883a 	add	r3,r3,r3
 200620c:	18c7883a 	add	r3,r3,r3
 2006210:	10c5883a 	add	r2,r2,r3
 2006214:	10c00017 	ldw	r3,0(r2)
 2006218:	28c00015 	stw	r3,0(r5)
 200621c:	11400015 	stw	r5,0(r2)
 2006220:	f800283a 	ret

02006224 <__multadd>:
 2006224:	defffa04 	addi	sp,sp,-24
 2006228:	dc000115 	stw	r16,4(sp)
 200622c:	2c000417 	ldw	r16,16(r5)
 2006230:	dc800315 	stw	r18,12(sp)
 2006234:	dc400215 	stw	r17,8(sp)
 2006238:	dfc00515 	stw	ra,20(sp)
 200623c:	dcc00415 	stw	r19,16(sp)
 2006240:	2823883a 	mov	r17,r5
 2006244:	2025883a 	mov	r18,r4
 2006248:	2a400504 	addi	r9,r5,20
 200624c:	0015883a 	mov	r10,zero
 2006250:	4a000017 	ldw	r8,0(r9)
 2006254:	4a400104 	addi	r9,r9,4
 2006258:	52800044 	addi	r10,r10,1
 200625c:	40ffffcc 	andi	r3,r8,65535
 2006260:	1987383a 	mul	r3,r3,r6
 2006264:	4010d43a 	srli	r8,r8,16
 2006268:	19cf883a 	add	r7,r3,r7
 200626c:	4191383a 	mul	r8,r8,r6
 2006270:	3816d43a 	srli	r11,r7,16
 2006274:	38ffffcc 	andi	r3,r7,65535
 2006278:	5a0f883a 	add	r7,r11,r8
 200627c:	3810943a 	slli	r8,r7,16
 2006280:	380ed43a 	srli	r7,r7,16
 2006284:	40c7883a 	add	r3,r8,r3
 2006288:	48ffff15 	stw	r3,-4(r9)
 200628c:	543ff016 	blt	r10,r16,2006250 <__multadd+0x2c>
 2006290:	38000926 	beq	r7,zero,20062b8 <__multadd+0x94>
 2006294:	88800217 	ldw	r2,8(r17)
 2006298:	80800f0e 	bge	r16,r2,20062d8 <__multadd+0xb4>
 200629c:	80800144 	addi	r2,r16,5
 20062a0:	1085883a 	add	r2,r2,r2
 20062a4:	1085883a 	add	r2,r2,r2
 20062a8:	8885883a 	add	r2,r17,r2
 20062ac:	11c00015 	stw	r7,0(r2)
 20062b0:	84000044 	addi	r16,r16,1
 20062b4:	8c000415 	stw	r16,16(r17)
 20062b8:	8805883a 	mov	r2,r17
 20062bc:	dfc00517 	ldw	ra,20(sp)
 20062c0:	dcc00417 	ldw	r19,16(sp)
 20062c4:	dc800317 	ldw	r18,12(sp)
 20062c8:	dc400217 	ldw	r17,8(sp)
 20062cc:	dc000117 	ldw	r16,4(sp)
 20062d0:	dec00604 	addi	sp,sp,24
 20062d4:	f800283a 	ret
 20062d8:	89400117 	ldw	r5,4(r17)
 20062dc:	9009883a 	mov	r4,r18
 20062e0:	d9c00015 	stw	r7,0(sp)
 20062e4:	29400044 	addi	r5,r5,1
 20062e8:	20061540 	call	2006154 <_Balloc>
 20062ec:	89800417 	ldw	r6,16(r17)
 20062f0:	89400304 	addi	r5,r17,12
 20062f4:	11000304 	addi	r4,r2,12
 20062f8:	31800084 	addi	r6,r6,2
 20062fc:	318d883a 	add	r6,r6,r6
 2006300:	318d883a 	add	r6,r6,r6
 2006304:	1027883a 	mov	r19,r2
 2006308:	2005d9c0 	call	2005d9c <memcpy>
 200630c:	89000117 	ldw	r4,4(r17)
 2006310:	90c01317 	ldw	r3,76(r18)
 2006314:	d9c00017 	ldw	r7,0(sp)
 2006318:	2109883a 	add	r4,r4,r4
 200631c:	2109883a 	add	r4,r4,r4
 2006320:	1907883a 	add	r3,r3,r4
 2006324:	18800017 	ldw	r2,0(r3)
 2006328:	88800015 	stw	r2,0(r17)
 200632c:	1c400015 	stw	r17,0(r3)
 2006330:	9823883a 	mov	r17,r19
 2006334:	003fd906 	br	200629c <__multadd+0x78>

02006338 <__s2b>:
 2006338:	defff904 	addi	sp,sp,-28
 200633c:	dc400115 	stw	r17,4(sp)
 2006340:	dc000015 	stw	r16,0(sp)
 2006344:	2023883a 	mov	r17,r4
 2006348:	2821883a 	mov	r16,r5
 200634c:	39000204 	addi	r4,r7,8
 2006350:	01400244 	movi	r5,9
 2006354:	dcc00315 	stw	r19,12(sp)
 2006358:	dc800215 	stw	r18,8(sp)
 200635c:	dfc00615 	stw	ra,24(sp)
 2006360:	dd400515 	stw	r21,20(sp)
 2006364:	dd000415 	stw	r20,16(sp)
 2006368:	3825883a 	mov	r18,r7
 200636c:	3027883a 	mov	r19,r6
 2006370:	200a2b00 	call	200a2b0 <__divsi3>
 2006374:	00c00044 	movi	r3,1
 2006378:	000b883a 	mov	r5,zero
 200637c:	1880030e 	bge	r3,r2,200638c <__s2b+0x54>
 2006380:	18c7883a 	add	r3,r3,r3
 2006384:	29400044 	addi	r5,r5,1
 2006388:	18bffd16 	blt	r3,r2,2006380 <__s2b+0x48>
 200638c:	8809883a 	mov	r4,r17
 2006390:	20061540 	call	2006154 <_Balloc>
 2006394:	d8c00717 	ldw	r3,28(sp)
 2006398:	10c00515 	stw	r3,20(r2)
 200639c:	00c00044 	movi	r3,1
 20063a0:	10c00415 	stw	r3,16(r2)
 20063a4:	00c00244 	movi	r3,9
 20063a8:	1cc0210e 	bge	r3,r19,2006430 <__s2b+0xf8>
 20063ac:	80eb883a 	add	r21,r16,r3
 20063b0:	a829883a 	mov	r20,r21
 20063b4:	84e1883a 	add	r16,r16,r19
 20063b8:	a1c00007 	ldb	r7,0(r20)
 20063bc:	8809883a 	mov	r4,r17
 20063c0:	a5000044 	addi	r20,r20,1
 20063c4:	100b883a 	mov	r5,r2
 20063c8:	01800284 	movi	r6,10
 20063cc:	39fff404 	addi	r7,r7,-48
 20063d0:	20062240 	call	2006224 <__multadd>
 20063d4:	a43ff81e 	bne	r20,r16,20063b8 <__s2b+0x80>
 20063d8:	ace1883a 	add	r16,r21,r19
 20063dc:	843ffe04 	addi	r16,r16,-8
 20063e0:	9c800a0e 	bge	r19,r18,200640c <__s2b+0xd4>
 20063e4:	94e5c83a 	sub	r18,r18,r19
 20063e8:	84a5883a 	add	r18,r16,r18
 20063ec:	81c00007 	ldb	r7,0(r16)
 20063f0:	8809883a 	mov	r4,r17
 20063f4:	84000044 	addi	r16,r16,1
 20063f8:	100b883a 	mov	r5,r2
 20063fc:	01800284 	movi	r6,10
 2006400:	39fff404 	addi	r7,r7,-48
 2006404:	20062240 	call	2006224 <__multadd>
 2006408:	84bff81e 	bne	r16,r18,20063ec <__s2b+0xb4>
 200640c:	dfc00617 	ldw	ra,24(sp)
 2006410:	dd400517 	ldw	r21,20(sp)
 2006414:	dd000417 	ldw	r20,16(sp)
 2006418:	dcc00317 	ldw	r19,12(sp)
 200641c:	dc800217 	ldw	r18,8(sp)
 2006420:	dc400117 	ldw	r17,4(sp)
 2006424:	dc000017 	ldw	r16,0(sp)
 2006428:	dec00704 	addi	sp,sp,28
 200642c:	f800283a 	ret
 2006430:	84000284 	addi	r16,r16,10
 2006434:	1827883a 	mov	r19,r3
 2006438:	003fe906 	br	20063e0 <__s2b+0xa8>

0200643c <__hi0bits>:
 200643c:	20bfffec 	andhi	r2,r4,65535
 2006440:	1000141e 	bne	r2,zero,2006494 <__hi0bits+0x58>
 2006444:	2008943a 	slli	r4,r4,16
 2006448:	00800404 	movi	r2,16
 200644c:	20ffc02c 	andhi	r3,r4,65280
 2006450:	1800021e 	bne	r3,zero,200645c <__hi0bits+0x20>
 2006454:	2008923a 	slli	r4,r4,8
 2006458:	10800204 	addi	r2,r2,8
 200645c:	20fc002c 	andhi	r3,r4,61440
 2006460:	1800021e 	bne	r3,zero,200646c <__hi0bits+0x30>
 2006464:	2008913a 	slli	r4,r4,4
 2006468:	10800104 	addi	r2,r2,4
 200646c:	20f0002c 	andhi	r3,r4,49152
 2006470:	1800031e 	bne	r3,zero,2006480 <__hi0bits+0x44>
 2006474:	2109883a 	add	r4,r4,r4
 2006478:	10800084 	addi	r2,r2,2
 200647c:	2109883a 	add	r4,r4,r4
 2006480:	20000316 	blt	r4,zero,2006490 <__hi0bits+0x54>
 2006484:	2110002c 	andhi	r4,r4,16384
 2006488:	2000041e 	bne	r4,zero,200649c <__hi0bits+0x60>
 200648c:	00800804 	movi	r2,32
 2006490:	f800283a 	ret
 2006494:	0005883a 	mov	r2,zero
 2006498:	003fec06 	br	200644c <__hi0bits+0x10>
 200649c:	10800044 	addi	r2,r2,1
 20064a0:	f800283a 	ret

020064a4 <__lo0bits>:
 20064a4:	20c00017 	ldw	r3,0(r4)
 20064a8:	188001cc 	andi	r2,r3,7
 20064ac:	10000826 	beq	r2,zero,20064d0 <__lo0bits+0x2c>
 20064b0:	1880004c 	andi	r2,r3,1
 20064b4:	1000211e 	bne	r2,zero,200653c <__lo0bits+0x98>
 20064b8:	1880008c 	andi	r2,r3,2
 20064bc:	1000211e 	bne	r2,zero,2006544 <__lo0bits+0xa0>
 20064c0:	1806d0ba 	srli	r3,r3,2
 20064c4:	00800084 	movi	r2,2
 20064c8:	20c00015 	stw	r3,0(r4)
 20064cc:	f800283a 	ret
 20064d0:	18bfffcc 	andi	r2,r3,65535
 20064d4:	10001326 	beq	r2,zero,2006524 <__lo0bits+0x80>
 20064d8:	0005883a 	mov	r2,zero
 20064dc:	19403fcc 	andi	r5,r3,255
 20064e0:	2800021e 	bne	r5,zero,20064ec <__lo0bits+0x48>
 20064e4:	1806d23a 	srli	r3,r3,8
 20064e8:	10800204 	addi	r2,r2,8
 20064ec:	194003cc 	andi	r5,r3,15
 20064f0:	2800021e 	bne	r5,zero,20064fc <__lo0bits+0x58>
 20064f4:	1806d13a 	srli	r3,r3,4
 20064f8:	10800104 	addi	r2,r2,4
 20064fc:	194000cc 	andi	r5,r3,3
 2006500:	2800021e 	bne	r5,zero,200650c <__lo0bits+0x68>
 2006504:	1806d0ba 	srli	r3,r3,2
 2006508:	10800084 	addi	r2,r2,2
 200650c:	1940004c 	andi	r5,r3,1
 2006510:	2800081e 	bne	r5,zero,2006534 <__lo0bits+0x90>
 2006514:	1806d07a 	srli	r3,r3,1
 2006518:	1800051e 	bne	r3,zero,2006530 <__lo0bits+0x8c>
 200651c:	00800804 	movi	r2,32
 2006520:	f800283a 	ret
 2006524:	1806d43a 	srli	r3,r3,16
 2006528:	00800404 	movi	r2,16
 200652c:	003feb06 	br	20064dc <__lo0bits+0x38>
 2006530:	10800044 	addi	r2,r2,1
 2006534:	20c00015 	stw	r3,0(r4)
 2006538:	f800283a 	ret
 200653c:	0005883a 	mov	r2,zero
 2006540:	f800283a 	ret
 2006544:	1806d07a 	srli	r3,r3,1
 2006548:	00800044 	movi	r2,1
 200654c:	20c00015 	stw	r3,0(r4)
 2006550:	f800283a 	ret

02006554 <__i2b>:
 2006554:	defffd04 	addi	sp,sp,-12
 2006558:	dc000015 	stw	r16,0(sp)
 200655c:	04000044 	movi	r16,1
 2006560:	dc400115 	stw	r17,4(sp)
 2006564:	2823883a 	mov	r17,r5
 2006568:	800b883a 	mov	r5,r16
 200656c:	dfc00215 	stw	ra,8(sp)
 2006570:	20061540 	call	2006154 <_Balloc>
 2006574:	14400515 	stw	r17,20(r2)
 2006578:	14000415 	stw	r16,16(r2)
 200657c:	dfc00217 	ldw	ra,8(sp)
 2006580:	dc400117 	ldw	r17,4(sp)
 2006584:	dc000017 	ldw	r16,0(sp)
 2006588:	dec00304 	addi	sp,sp,12
 200658c:	f800283a 	ret

02006590 <__multiply>:
 2006590:	defffa04 	addi	sp,sp,-24
 2006594:	dcc00315 	stw	r19,12(sp)
 2006598:	dc800215 	stw	r18,8(sp)
 200659c:	2cc00417 	ldw	r19,16(r5)
 20065a0:	34800417 	ldw	r18,16(r6)
 20065a4:	dd000415 	stw	r20,16(sp)
 20065a8:	dc400115 	stw	r17,4(sp)
 20065ac:	dfc00515 	stw	ra,20(sp)
 20065b0:	dc000015 	stw	r16,0(sp)
 20065b4:	2829883a 	mov	r20,r5
 20065b8:	3023883a 	mov	r17,r6
 20065bc:	9c807016 	blt	r19,r18,2006780 <__multiply+0x1f0>
 20065c0:	9005883a 	mov	r2,r18
 20065c4:	9825883a 	mov	r18,r19
 20065c8:	1027883a 	mov	r19,r2
 20065cc:	a0800217 	ldw	r2,8(r20)
 20065d0:	94e1883a 	add	r16,r18,r19
 20065d4:	a1400117 	ldw	r5,4(r20)
 20065d8:	1400010e 	bge	r2,r16,20065e0 <__multiply+0x50>
 20065dc:	29400044 	addi	r5,r5,1
 20065e0:	20061540 	call	2006154 <_Balloc>
 20065e4:	8417883a 	add	r11,r16,r16
 20065e8:	13000504 	addi	r12,r2,20
 20065ec:	5ad7883a 	add	r11,r11,r11
 20065f0:	62d7883a 	add	r11,r12,r11
 20065f4:	6007883a 	mov	r3,r12
 20065f8:	62c0032e 	bgeu	r12,r11,2006608 <__multiply+0x78>
 20065fc:	18000015 	stw	zero,0(r3)
 2006600:	18c00104 	addi	r3,r3,4
 2006604:	1afffd36 	bltu	r3,r11,20065fc <__multiply+0x6c>
 2006608:	9ce7883a 	add	r19,r19,r19
 200660c:	94a5883a 	add	r18,r18,r18
 2006610:	89800504 	addi	r6,r17,20
 2006614:	9ce7883a 	add	r19,r19,r19
 2006618:	a3800504 	addi	r14,r20,20
 200661c:	94a5883a 	add	r18,r18,r18
 2006620:	34db883a 	add	r13,r6,r19
 2006624:	7495883a 	add	r10,r14,r18
 2006628:	3340422e 	bgeu	r6,r13,2006734 <__multiply+0x1a4>
 200662c:	34400017 	ldw	r17,0(r6)
 2006630:	8cbfffcc 	andi	r18,r17,65535
 2006634:	90001b26 	beq	r18,zero,20066a4 <__multiply+0x114>
 2006638:	6013883a 	mov	r9,r12
 200663c:	7023883a 	mov	r17,r14
 2006640:	0011883a 	mov	r8,zero
 2006644:	88c00017 	ldw	r3,0(r17)
 2006648:	4bc00017 	ldw	r15,0(r9)
 200664c:	8c400104 	addi	r17,r17,4
 2006650:	19ffffcc 	andi	r7,r3,65535
 2006654:	3c8f383a 	mul	r7,r7,r18
 2006658:	1808d43a 	srli	r4,r3,16
 200665c:	797fffcc 	andi	r5,r15,65535
 2006660:	29cb883a 	add	r5,r5,r7
 2006664:	2a0b883a 	add	r5,r5,r8
 2006668:	2489383a 	mul	r4,r4,r18
 200666c:	7806d43a 	srli	r3,r15,16
 2006670:	2810d43a 	srli	r8,r5,16
 2006674:	297fffcc 	andi	r5,r5,65535
 2006678:	1907883a 	add	r3,r3,r4
 200667c:	1a07883a 	add	r3,r3,r8
 2006680:	1808943a 	slli	r4,r3,16
 2006684:	480f883a 	mov	r7,r9
 2006688:	1810d43a 	srli	r8,r3,16
 200668c:	214ab03a 	or	r5,r4,r5
 2006690:	49400015 	stw	r5,0(r9)
 2006694:	4a400104 	addi	r9,r9,4
 2006698:	8abfea36 	bltu	r17,r10,2006644 <__multiply+0xb4>
 200669c:	3a000115 	stw	r8,4(r7)
 20066a0:	34400017 	ldw	r17,0(r6)
 20066a4:	8822d43a 	srli	r17,r17,16
 20066a8:	88001f26 	beq	r17,zero,2006728 <__multiply+0x198>
 20066ac:	60c00017 	ldw	r3,0(r12)
 20066b0:	7013883a 	mov	r9,r14
 20066b4:	601f883a 	mov	r15,r12
 20066b8:	1811883a 	mov	r8,r3
 20066bc:	6027883a 	mov	r19,r12
 20066c0:	000f883a 	mov	r7,zero
 20066c4:	00000106 	br	20066cc <__multiply+0x13c>
 20066c8:	9027883a 	mov	r19,r18
 20066cc:	4940000b 	ldhu	r5,0(r9)
 20066d0:	4010d43a 	srli	r8,r8,16
 20066d4:	193fffcc 	andi	r4,r3,65535
 20066d8:	2c4b383a 	mul	r5,r5,r17
 20066dc:	7bc00104 	addi	r15,r15,4
 20066e0:	4a400104 	addi	r9,r9,4
 20066e4:	2a0b883a 	add	r5,r5,r8
 20066e8:	29cb883a 	add	r5,r5,r7
 20066ec:	2806943a 	slli	r3,r5,16
 20066f0:	9c800104 	addi	r18,r19,4
 20066f4:	280ad43a 	srli	r5,r5,16
 20066f8:	1908b03a 	or	r4,r3,r4
 20066fc:	793fff15 	stw	r4,-4(r15)
 2006700:	48ffff17 	ldw	r3,-4(r9)
 2006704:	92000017 	ldw	r8,0(r18)
 2006708:	1806d43a 	srli	r3,r3,16
 200670c:	413fffcc 	andi	r4,r8,65535
 2006710:	1c47383a 	mul	r3,r3,r17
 2006714:	1907883a 	add	r3,r3,r4
 2006718:	1947883a 	add	r3,r3,r5
 200671c:	180ed43a 	srli	r7,r3,16
 2006720:	4abfe936 	bltu	r9,r10,20066c8 <__multiply+0x138>
 2006724:	98c00115 	stw	r3,4(r19)
 2006728:	31800104 	addi	r6,r6,4
 200672c:	63000104 	addi	r12,r12,4
 2006730:	337fbe36 	bltu	r6,r13,200662c <__multiply+0x9c>
 2006734:	0400090e 	bge	zero,r16,200675c <__multiply+0x1cc>
 2006738:	58ffff17 	ldw	r3,-4(r11)
 200673c:	5affff04 	addi	r11,r11,-4
 2006740:	18000326 	beq	r3,zero,2006750 <__multiply+0x1c0>
 2006744:	00000506 	br	200675c <__multiply+0x1cc>
 2006748:	58c00017 	ldw	r3,0(r11)
 200674c:	1800031e 	bne	r3,zero,200675c <__multiply+0x1cc>
 2006750:	843fffc4 	addi	r16,r16,-1
 2006754:	5affff04 	addi	r11,r11,-4
 2006758:	803ffb1e 	bne	r16,zero,2006748 <__multiply+0x1b8>
 200675c:	14000415 	stw	r16,16(r2)
 2006760:	dfc00517 	ldw	ra,20(sp)
 2006764:	dd000417 	ldw	r20,16(sp)
 2006768:	dcc00317 	ldw	r19,12(sp)
 200676c:	dc800217 	ldw	r18,8(sp)
 2006770:	dc400117 	ldw	r17,4(sp)
 2006774:	dc000017 	ldw	r16,0(sp)
 2006778:	dec00604 	addi	sp,sp,24
 200677c:	f800283a 	ret
 2006780:	3029883a 	mov	r20,r6
 2006784:	2823883a 	mov	r17,r5
 2006788:	003f9006 	br	20065cc <__multiply+0x3c>

0200678c <__pow5mult>:
 200678c:	defffa04 	addi	sp,sp,-24
 2006790:	dcc00315 	stw	r19,12(sp)
 2006794:	dc800215 	stw	r18,8(sp)
 2006798:	dc000015 	stw	r16,0(sp)
 200679c:	dfc00515 	stw	ra,20(sp)
 20067a0:	dd000415 	stw	r20,16(sp)
 20067a4:	dc400115 	stw	r17,4(sp)
 20067a8:	308000cc 	andi	r2,r6,3
 20067ac:	3021883a 	mov	r16,r6
 20067b0:	2027883a 	mov	r19,r4
 20067b4:	2825883a 	mov	r18,r5
 20067b8:	10002e1e 	bne	r2,zero,2006874 <__pow5mult+0xe8>
 20067bc:	8021d0ba 	srai	r16,r16,2
 20067c0:	80001a26 	beq	r16,zero,200682c <__pow5mult+0xa0>
 20067c4:	9c401217 	ldw	r17,72(r19)
 20067c8:	8800061e 	bne	r17,zero,20067e4 <__pow5mult+0x58>
 20067cc:	00003406 	br	20068a0 <__pow5mult+0x114>
 20067d0:	8021d07a 	srai	r16,r16,1
 20067d4:	80001526 	beq	r16,zero,200682c <__pow5mult+0xa0>
 20067d8:	88800017 	ldw	r2,0(r17)
 20067dc:	10001c26 	beq	r2,zero,2006850 <__pow5mult+0xc4>
 20067e0:	1023883a 	mov	r17,r2
 20067e4:	80c0004c 	andi	r3,r16,1
 20067e8:	183ff926 	beq	r3,zero,20067d0 <__pow5mult+0x44>
 20067ec:	900b883a 	mov	r5,r18
 20067f0:	880d883a 	mov	r6,r17
 20067f4:	9809883a 	mov	r4,r19
 20067f8:	20065900 	call	2006590 <__multiply>
 20067fc:	90001b26 	beq	r18,zero,200686c <__pow5mult+0xe0>
 2006800:	91c00117 	ldw	r7,4(r18)
 2006804:	98c01317 	ldw	r3,76(r19)
 2006808:	8021d07a 	srai	r16,r16,1
 200680c:	39cf883a 	add	r7,r7,r7
 2006810:	39cf883a 	add	r7,r7,r7
 2006814:	19c7883a 	add	r3,r3,r7
 2006818:	19000017 	ldw	r4,0(r3)
 200681c:	91000015 	stw	r4,0(r18)
 2006820:	1c800015 	stw	r18,0(r3)
 2006824:	1025883a 	mov	r18,r2
 2006828:	803feb1e 	bne	r16,zero,20067d8 <__pow5mult+0x4c>
 200682c:	9005883a 	mov	r2,r18
 2006830:	dfc00517 	ldw	ra,20(sp)
 2006834:	dd000417 	ldw	r20,16(sp)
 2006838:	dcc00317 	ldw	r19,12(sp)
 200683c:	dc800217 	ldw	r18,8(sp)
 2006840:	dc400117 	ldw	r17,4(sp)
 2006844:	dc000017 	ldw	r16,0(sp)
 2006848:	dec00604 	addi	sp,sp,24
 200684c:	f800283a 	ret
 2006850:	9809883a 	mov	r4,r19
 2006854:	880b883a 	mov	r5,r17
 2006858:	880d883a 	mov	r6,r17
 200685c:	20065900 	call	2006590 <__multiply>
 2006860:	88800015 	stw	r2,0(r17)
 2006864:	10000015 	stw	zero,0(r2)
 2006868:	003fdd06 	br	20067e0 <__pow5mult+0x54>
 200686c:	1025883a 	mov	r18,r2
 2006870:	003fd706 	br	20067d0 <__pow5mult+0x44>
 2006874:	10bfffc4 	addi	r2,r2,-1
 2006878:	1085883a 	add	r2,r2,r2
 200687c:	00c08074 	movhi	r3,513
 2006880:	18fc8d04 	addi	r3,r3,-3532
 2006884:	1085883a 	add	r2,r2,r2
 2006888:	1885883a 	add	r2,r3,r2
 200688c:	11800017 	ldw	r6,0(r2)
 2006890:	000f883a 	mov	r7,zero
 2006894:	20062240 	call	2006224 <__multadd>
 2006898:	1025883a 	mov	r18,r2
 200689c:	003fc706 	br	20067bc <__pow5mult+0x30>
 20068a0:	05000044 	movi	r20,1
 20068a4:	9809883a 	mov	r4,r19
 20068a8:	a00b883a 	mov	r5,r20
 20068ac:	20061540 	call	2006154 <_Balloc>
 20068b0:	1023883a 	mov	r17,r2
 20068b4:	00809c44 	movi	r2,625
 20068b8:	88800515 	stw	r2,20(r17)
 20068bc:	8d000415 	stw	r20,16(r17)
 20068c0:	9c401215 	stw	r17,72(r19)
 20068c4:	88000015 	stw	zero,0(r17)
 20068c8:	003fc606 	br	20067e4 <__pow5mult+0x58>

020068cc <__lshift>:
 20068cc:	defff904 	addi	sp,sp,-28
 20068d0:	dd000415 	stw	r20,16(sp)
 20068d4:	dcc00315 	stw	r19,12(sp)
 20068d8:	3029d17a 	srai	r20,r6,5
 20068dc:	2cc00417 	ldw	r19,16(r5)
 20068e0:	28800217 	ldw	r2,8(r5)
 20068e4:	dd400515 	stw	r21,20(sp)
 20068e8:	a4e7883a 	add	r19,r20,r19
 20068ec:	dc800215 	stw	r18,8(sp)
 20068f0:	dc400115 	stw	r17,4(sp)
 20068f4:	dc000015 	stw	r16,0(sp)
 20068f8:	dfc00615 	stw	ra,24(sp)
 20068fc:	9c000044 	addi	r16,r19,1
 2006900:	2823883a 	mov	r17,r5
 2006904:	302b883a 	mov	r21,r6
 2006908:	2025883a 	mov	r18,r4
 200690c:	29400117 	ldw	r5,4(r5)
 2006910:	1400030e 	bge	r2,r16,2006920 <__lshift+0x54>
 2006914:	1085883a 	add	r2,r2,r2
 2006918:	29400044 	addi	r5,r5,1
 200691c:	143ffd16 	blt	r2,r16,2006914 <__lshift+0x48>
 2006920:	9009883a 	mov	r4,r18
 2006924:	20061540 	call	2006154 <_Balloc>
 2006928:	11c00504 	addi	r7,r2,20
 200692c:	0500090e 	bge	zero,r20,2006954 <__lshift+0x88>
 2006930:	3811883a 	mov	r8,r7
 2006934:	0007883a 	mov	r3,zero
 2006938:	40000015 	stw	zero,0(r8)
 200693c:	18c00044 	addi	r3,r3,1
 2006940:	42000104 	addi	r8,r8,4
 2006944:	1d3ffc1e 	bne	r3,r20,2006938 <__lshift+0x6c>
 2006948:	18c7883a 	add	r3,r3,r3
 200694c:	18c7883a 	add	r3,r3,r3
 2006950:	38cf883a 	add	r7,r7,r3
 2006954:	89000417 	ldw	r4,16(r17)
 2006958:	88c00504 	addi	r3,r17,20
 200695c:	a98007cc 	andi	r6,r21,31
 2006960:	2109883a 	add	r4,r4,r4
 2006964:	2109883a 	add	r4,r4,r4
 2006968:	1909883a 	add	r4,r3,r4
 200696c:	30002326 	beq	r6,zero,20069fc <__lshift+0x130>
 2006970:	01400804 	movi	r5,32
 2006974:	298bc83a 	sub	r5,r5,r6
 2006978:	0013883a 	mov	r9,zero
 200697c:	1a000017 	ldw	r8,0(r3)
 2006980:	3815883a 	mov	r10,r7
 2006984:	39c00104 	addi	r7,r7,4
 2006988:	4190983a 	sll	r8,r8,r6
 200698c:	18c00104 	addi	r3,r3,4
 2006990:	4a10b03a 	or	r8,r9,r8
 2006994:	3a3fff15 	stw	r8,-4(r7)
 2006998:	1a3fff17 	ldw	r8,-4(r3)
 200699c:	4152d83a 	srl	r9,r8,r5
 20069a0:	193ff636 	bltu	r3,r4,200697c <__lshift+0xb0>
 20069a4:	52400115 	stw	r9,4(r10)
 20069a8:	48000126 	beq	r9,zero,20069b0 <__lshift+0xe4>
 20069ac:	9c000084 	addi	r16,r19,2
 20069b0:	89000117 	ldw	r4,4(r17)
 20069b4:	90c01317 	ldw	r3,76(r18)
 20069b8:	843fffc4 	addi	r16,r16,-1
 20069bc:	2109883a 	add	r4,r4,r4
 20069c0:	2109883a 	add	r4,r4,r4
 20069c4:	1907883a 	add	r3,r3,r4
 20069c8:	19000017 	ldw	r4,0(r3)
 20069cc:	14000415 	stw	r16,16(r2)
 20069d0:	89000015 	stw	r4,0(r17)
 20069d4:	1c400015 	stw	r17,0(r3)
 20069d8:	dfc00617 	ldw	ra,24(sp)
 20069dc:	dd400517 	ldw	r21,20(sp)
 20069e0:	dd000417 	ldw	r20,16(sp)
 20069e4:	dcc00317 	ldw	r19,12(sp)
 20069e8:	dc800217 	ldw	r18,8(sp)
 20069ec:	dc400117 	ldw	r17,4(sp)
 20069f0:	dc000017 	ldw	r16,0(sp)
 20069f4:	dec00704 	addi	sp,sp,28
 20069f8:	f800283a 	ret
 20069fc:	19400017 	ldw	r5,0(r3)
 2006a00:	39c00104 	addi	r7,r7,4
 2006a04:	18c00104 	addi	r3,r3,4
 2006a08:	397fff15 	stw	r5,-4(r7)
 2006a0c:	193ffb36 	bltu	r3,r4,20069fc <__lshift+0x130>
 2006a10:	003fe706 	br	20069b0 <__lshift+0xe4>

02006a14 <__mcmp>:
 2006a14:	20800417 	ldw	r2,16(r4)
 2006a18:	28c00417 	ldw	r3,16(r5)
 2006a1c:	10c5c83a 	sub	r2,r2,r3
 2006a20:	1000111e 	bne	r2,zero,2006a68 <__mcmp+0x54>
 2006a24:	18c7883a 	add	r3,r3,r3
 2006a28:	18c7883a 	add	r3,r3,r3
 2006a2c:	21000504 	addi	r4,r4,20
 2006a30:	29400504 	addi	r5,r5,20
 2006a34:	20c5883a 	add	r2,r4,r3
 2006a38:	28cb883a 	add	r5,r5,r3
 2006a3c:	00000106 	br	2006a44 <__mcmp+0x30>
 2006a40:	20800a2e 	bgeu	r4,r2,2006a6c <__mcmp+0x58>
 2006a44:	10bfff04 	addi	r2,r2,-4
 2006a48:	297fff04 	addi	r5,r5,-4
 2006a4c:	11800017 	ldw	r6,0(r2)
 2006a50:	28c00017 	ldw	r3,0(r5)
 2006a54:	30fffa26 	beq	r6,r3,2006a40 <__mcmp+0x2c>
 2006a58:	30c00236 	bltu	r6,r3,2006a64 <__mcmp+0x50>
 2006a5c:	00800044 	movi	r2,1
 2006a60:	f800283a 	ret
 2006a64:	00bfffc4 	movi	r2,-1
 2006a68:	f800283a 	ret
 2006a6c:	0005883a 	mov	r2,zero
 2006a70:	f800283a 	ret

02006a74 <__mdiff>:
 2006a74:	defffb04 	addi	sp,sp,-20
 2006a78:	dc000015 	stw	r16,0(sp)
 2006a7c:	2821883a 	mov	r16,r5
 2006a80:	dcc00315 	stw	r19,12(sp)
 2006a84:	300b883a 	mov	r5,r6
 2006a88:	2027883a 	mov	r19,r4
 2006a8c:	8009883a 	mov	r4,r16
 2006a90:	dc800215 	stw	r18,8(sp)
 2006a94:	dfc00415 	stw	ra,16(sp)
 2006a98:	dc400115 	stw	r17,4(sp)
 2006a9c:	3025883a 	mov	r18,r6
 2006aa0:	2006a140 	call	2006a14 <__mcmp>
 2006aa4:	10005226 	beq	r2,zero,2006bf0 <__mdiff+0x17c>
 2006aa8:	10004c16 	blt	r2,zero,2006bdc <__mdiff+0x168>
 2006aac:	0023883a 	mov	r17,zero
 2006ab0:	81400117 	ldw	r5,4(r16)
 2006ab4:	9809883a 	mov	r4,r19
 2006ab8:	20061540 	call	2006154 <_Balloc>
 2006abc:	83400417 	ldw	r13,16(r16)
 2006ac0:	93800417 	ldw	r14,16(r18)
 2006ac4:	81000504 	addi	r4,r16,20
 2006ac8:	6b59883a 	add	r12,r13,r13
 2006acc:	739d883a 	add	r14,r14,r14
 2006ad0:	6319883a 	add	r12,r12,r12
 2006ad4:	91800504 	addi	r6,r18,20
 2006ad8:	739d883a 	add	r14,r14,r14
 2006adc:	14400315 	stw	r17,12(r2)
 2006ae0:	2319883a 	add	r12,r4,r12
 2006ae4:	339d883a 	add	r14,r6,r14
 2006ae8:	12400504 	addi	r9,r2,20
 2006aec:	0007883a 	mov	r3,zero
 2006af0:	22000017 	ldw	r8,0(r4)
 2006af4:	32800017 	ldw	r10,0(r6)
 2006af8:	4ac00104 	addi	r11,r9,4
 2006afc:	41ffffcc 	andi	r7,r8,65535
 2006b00:	38c7883a 	add	r3,r7,r3
 2006b04:	51ffffcc 	andi	r7,r10,65535
 2006b08:	19cfc83a 	sub	r7,r3,r7
 2006b0c:	4010d43a 	srli	r8,r8,16
 2006b10:	5014d43a 	srli	r10,r10,16
 2006b14:	3807d43a 	srai	r3,r7,16
 2006b18:	39ffffcc 	andi	r7,r7,65535
 2006b1c:	4291c83a 	sub	r8,r8,r10
 2006b20:	40c7883a 	add	r3,r8,r3
 2006b24:	1810943a 	slli	r8,r3,16
 2006b28:	31800104 	addi	r6,r6,4
 2006b2c:	21000104 	addi	r4,r4,4
 2006b30:	41ceb03a 	or	r7,r8,r7
 2006b34:	49c00015 	stw	r7,0(r9)
 2006b38:	1807d43a 	srai	r3,r3,16
 2006b3c:	580b883a 	mov	r5,r11
 2006b40:	5813883a 	mov	r9,r11
 2006b44:	33bfea36 	bltu	r6,r14,2006af0 <__mdiff+0x7c>
 2006b48:	2011883a 	mov	r8,r4
 2006b4c:	2300152e 	bgeu	r4,r12,2006ba4 <__mdiff+0x130>
 2006b50:	21400017 	ldw	r5,0(r4)
 2006b54:	4a400104 	addi	r9,r9,4
 2006b58:	21000104 	addi	r4,r4,4
 2006b5c:	29ffffcc 	andi	r7,r5,65535
 2006b60:	38c7883a 	add	r3,r7,r3
 2006b64:	280ad43a 	srli	r5,r5,16
 2006b68:	180dd43a 	srai	r6,r3,16
 2006b6c:	19ffffcc 	andi	r7,r3,65535
 2006b70:	3147883a 	add	r3,r6,r5
 2006b74:	180a943a 	slli	r5,r3,16
 2006b78:	1807d43a 	srai	r3,r3,16
 2006b7c:	29ceb03a 	or	r7,r5,r7
 2006b80:	49ffff15 	stw	r7,-4(r9)
 2006b84:	233ff236 	bltu	r4,r12,2006b50 <__mdiff+0xdc>
 2006b88:	0206303a 	nor	r3,zero,r8
 2006b8c:	1b07883a 	add	r3,r3,r12
 2006b90:	1806d0ba 	srli	r3,r3,2
 2006b94:	18c00044 	addi	r3,r3,1
 2006b98:	18c7883a 	add	r3,r3,r3
 2006b9c:	18c7883a 	add	r3,r3,r3
 2006ba0:	58cb883a 	add	r5,r11,r3
 2006ba4:	28ffff04 	addi	r3,r5,-4
 2006ba8:	3800041e 	bne	r7,zero,2006bbc <__mdiff+0x148>
 2006bac:	18ffff04 	addi	r3,r3,-4
 2006bb0:	19000017 	ldw	r4,0(r3)
 2006bb4:	6b7fffc4 	addi	r13,r13,-1
 2006bb8:	203ffc26 	beq	r4,zero,2006bac <__mdiff+0x138>
 2006bbc:	13400415 	stw	r13,16(r2)
 2006bc0:	dfc00417 	ldw	ra,16(sp)
 2006bc4:	dcc00317 	ldw	r19,12(sp)
 2006bc8:	dc800217 	ldw	r18,8(sp)
 2006bcc:	dc400117 	ldw	r17,4(sp)
 2006bd0:	dc000017 	ldw	r16,0(sp)
 2006bd4:	dec00504 	addi	sp,sp,20
 2006bd8:	f800283a 	ret
 2006bdc:	8005883a 	mov	r2,r16
 2006be0:	04400044 	movi	r17,1
 2006be4:	9021883a 	mov	r16,r18
 2006be8:	1025883a 	mov	r18,r2
 2006bec:	003fb006 	br	2006ab0 <__mdiff+0x3c>
 2006bf0:	9809883a 	mov	r4,r19
 2006bf4:	000b883a 	mov	r5,zero
 2006bf8:	20061540 	call	2006154 <_Balloc>
 2006bfc:	00c00044 	movi	r3,1
 2006c00:	10c00415 	stw	r3,16(r2)
 2006c04:	10000515 	stw	zero,20(r2)
 2006c08:	003fed06 	br	2006bc0 <__mdiff+0x14c>

02006c0c <__ulp>:
 2006c0c:	295ffc2c 	andhi	r5,r5,32752
 2006c10:	00bf3034 	movhi	r2,64704
 2006c14:	2887883a 	add	r3,r5,r2
 2006c18:	00c0020e 	bge	zero,r3,2006c24 <__ulp+0x18>
 2006c1c:	0005883a 	mov	r2,zero
 2006c20:	f800283a 	ret
 2006c24:	00c7c83a 	sub	r3,zero,r3
 2006c28:	180bd53a 	srai	r5,r3,20
 2006c2c:	008004c4 	movi	r2,19
 2006c30:	11400a0e 	bge	r2,r5,2006c5c <__ulp+0x50>
 2006c34:	00800c84 	movi	r2,50
 2006c38:	0007883a 	mov	r3,zero
 2006c3c:	11400516 	blt	r2,r5,2006c54 <__ulp+0x48>
 2006c40:	00800cc4 	movi	r2,51
 2006c44:	114bc83a 	sub	r5,r2,r5
 2006c48:	00800044 	movi	r2,1
 2006c4c:	1144983a 	sll	r2,r2,r5
 2006c50:	f800283a 	ret
 2006c54:	00800044 	movi	r2,1
 2006c58:	f800283a 	ret
 2006c5c:	00800234 	movhi	r2,8
 2006c60:	1147d83a 	sra	r3,r2,r5
 2006c64:	0005883a 	mov	r2,zero
 2006c68:	f800283a 	ret

02006c6c <__b2d>:
 2006c6c:	defffa04 	addi	sp,sp,-24
 2006c70:	dc000015 	stw	r16,0(sp)
 2006c74:	24000417 	ldw	r16,16(r4)
 2006c78:	dc400115 	stw	r17,4(sp)
 2006c7c:	24400504 	addi	r17,r4,20
 2006c80:	8421883a 	add	r16,r16,r16
 2006c84:	8421883a 	add	r16,r16,r16
 2006c88:	8c21883a 	add	r16,r17,r16
 2006c8c:	dc800215 	stw	r18,8(sp)
 2006c90:	84bfff17 	ldw	r18,-4(r16)
 2006c94:	dd000415 	stw	r20,16(sp)
 2006c98:	dcc00315 	stw	r19,12(sp)
 2006c9c:	9009883a 	mov	r4,r18
 2006ca0:	2829883a 	mov	r20,r5
 2006ca4:	dfc00515 	stw	ra,20(sp)
 2006ca8:	200643c0 	call	200643c <__hi0bits>
 2006cac:	00c00804 	movi	r3,32
 2006cb0:	1887c83a 	sub	r3,r3,r2
 2006cb4:	a0c00015 	stw	r3,0(r20)
 2006cb8:	00c00284 	movi	r3,10
 2006cbc:	84ffff04 	addi	r19,r16,-4
 2006cc0:	18801216 	blt	r3,r2,2006d0c <__b2d+0xa0>
 2006cc4:	014002c4 	movi	r5,11
 2006cc8:	2889c83a 	sub	r4,r5,r2
 2006ccc:	9106d83a 	srl	r3,r18,r4
 2006cd0:	18cffc34 	orhi	r3,r3,16368
 2006cd4:	8cc0282e 	bgeu	r17,r19,2006d78 <__b2d+0x10c>
 2006cd8:	817ffe17 	ldw	r5,-8(r16)
 2006cdc:	290ad83a 	srl	r5,r5,r4
 2006ce0:	10800544 	addi	r2,r2,21
 2006ce4:	9084983a 	sll	r2,r18,r2
 2006ce8:	2884b03a 	or	r2,r5,r2
 2006cec:	dfc00517 	ldw	ra,20(sp)
 2006cf0:	dd000417 	ldw	r20,16(sp)
 2006cf4:	dcc00317 	ldw	r19,12(sp)
 2006cf8:	dc800217 	ldw	r18,8(sp)
 2006cfc:	dc400117 	ldw	r17,4(sp)
 2006d00:	dc000017 	ldw	r16,0(sp)
 2006d04:	dec00604 	addi	sp,sp,24
 2006d08:	f800283a 	ret
 2006d0c:	113ffd44 	addi	r4,r2,-11
 2006d10:	8cc00f2e 	bgeu	r17,r19,2006d50 <__b2d+0xe4>
 2006d14:	81bffe04 	addi	r6,r16,-8
 2006d18:	817ffe17 	ldw	r5,-8(r16)
 2006d1c:	20001326 	beq	r4,zero,2006d6c <__b2d+0x100>
 2006d20:	00c00ac4 	movi	r3,43
 2006d24:	1885c83a 	sub	r2,r3,r2
 2006d28:	2886d83a 	srl	r3,r5,r2
 2006d2c:	9124983a 	sll	r18,r18,r4
 2006d30:	90e4b03a 	or	r18,r18,r3
 2006d34:	90cffc34 	orhi	r3,r18,16368
 2006d38:	8980112e 	bgeu	r17,r6,2006d80 <__b2d+0x114>
 2006d3c:	81bffd17 	ldw	r6,-12(r16)
 2006d40:	308cd83a 	srl	r6,r6,r2
 2006d44:	2904983a 	sll	r2,r5,r4
 2006d48:	1184b03a 	or	r2,r2,r6
 2006d4c:	003fe706 	br	2006cec <__b2d+0x80>
 2006d50:	20000526 	beq	r4,zero,2006d68 <__b2d+0xfc>
 2006d54:	9124983a 	sll	r18,r18,r4
 2006d58:	000d883a 	mov	r6,zero
 2006d5c:	000b883a 	mov	r5,zero
 2006d60:	90cffc34 	orhi	r3,r18,16368
 2006d64:	003ff706 	br	2006d44 <__b2d+0xd8>
 2006d68:	000b883a 	mov	r5,zero
 2006d6c:	90cffc34 	orhi	r3,r18,16368
 2006d70:	2805883a 	mov	r2,r5
 2006d74:	003fdd06 	br	2006cec <__b2d+0x80>
 2006d78:	000b883a 	mov	r5,zero
 2006d7c:	003fd806 	br	2006ce0 <__b2d+0x74>
 2006d80:	000d883a 	mov	r6,zero
 2006d84:	003fef06 	br	2006d44 <__b2d+0xd8>

02006d88 <__d2b>:
 2006d88:	defff704 	addi	sp,sp,-36
 2006d8c:	dc000215 	stw	r16,8(sp)
 2006d90:	3021883a 	mov	r16,r6
 2006d94:	dc400315 	stw	r17,12(sp)
 2006d98:	8022907a 	slli	r17,r16,1
 2006d9c:	dd400715 	stw	r21,28(sp)
 2006da0:	282b883a 	mov	r21,r5
 2006da4:	01400044 	movi	r5,1
 2006da8:	dd000615 	stw	r20,24(sp)
 2006dac:	dcc00515 	stw	r19,20(sp)
 2006db0:	dc800415 	stw	r18,16(sp)
 2006db4:	dfc00815 	stw	ra,32(sp)
 2006db8:	3829883a 	mov	r20,r7
 2006dbc:	dc800917 	ldw	r18,36(sp)
 2006dc0:	8822d57a 	srli	r17,r17,21
 2006dc4:	20061540 	call	2006154 <_Balloc>
 2006dc8:	1027883a 	mov	r19,r2
 2006dcc:	00800434 	movhi	r2,16
 2006dd0:	10bfffc4 	addi	r2,r2,-1
 2006dd4:	808c703a 	and	r6,r16,r2
 2006dd8:	88000126 	beq	r17,zero,2006de0 <__d2b+0x58>
 2006ddc:	31800434 	orhi	r6,r6,16
 2006de0:	d9800015 	stw	r6,0(sp)
 2006de4:	a8001f26 	beq	r21,zero,2006e64 <__d2b+0xdc>
 2006de8:	d9000104 	addi	r4,sp,4
 2006dec:	dd400115 	stw	r21,4(sp)
 2006df0:	20064a40 	call	20064a4 <__lo0bits>
 2006df4:	d8c00017 	ldw	r3,0(sp)
 2006df8:	1000291e 	bne	r2,zero,2006ea0 <__d2b+0x118>
 2006dfc:	d9000117 	ldw	r4,4(sp)
 2006e00:	99000515 	stw	r4,20(r19)
 2006e04:	1820c03a 	cmpne	r16,r3,zero
 2006e08:	84000044 	addi	r16,r16,1
 2006e0c:	98c00615 	stw	r3,24(r19)
 2006e10:	9c000415 	stw	r16,16(r19)
 2006e14:	88001b1e 	bne	r17,zero,2006e84 <__d2b+0xfc>
 2006e18:	800690ba 	slli	r3,r16,2
 2006e1c:	10bef384 	addi	r2,r2,-1074
 2006e20:	a0800015 	stw	r2,0(r20)
 2006e24:	98c5883a 	add	r2,r19,r3
 2006e28:	11000417 	ldw	r4,16(r2)
 2006e2c:	8020917a 	slli	r16,r16,5
 2006e30:	200643c0 	call	200643c <__hi0bits>
 2006e34:	8085c83a 	sub	r2,r16,r2
 2006e38:	90800015 	stw	r2,0(r18)
 2006e3c:	9805883a 	mov	r2,r19
 2006e40:	dfc00817 	ldw	ra,32(sp)
 2006e44:	dd400717 	ldw	r21,28(sp)
 2006e48:	dd000617 	ldw	r20,24(sp)
 2006e4c:	dcc00517 	ldw	r19,20(sp)
 2006e50:	dc800417 	ldw	r18,16(sp)
 2006e54:	dc400317 	ldw	r17,12(sp)
 2006e58:	dc000217 	ldw	r16,8(sp)
 2006e5c:	dec00904 	addi	sp,sp,36
 2006e60:	f800283a 	ret
 2006e64:	d809883a 	mov	r4,sp
 2006e68:	20064a40 	call	20064a4 <__lo0bits>
 2006e6c:	d8c00017 	ldw	r3,0(sp)
 2006e70:	04000044 	movi	r16,1
 2006e74:	9c000415 	stw	r16,16(r19)
 2006e78:	98c00515 	stw	r3,20(r19)
 2006e7c:	10800804 	addi	r2,r2,32
 2006e80:	883fe526 	beq	r17,zero,2006e18 <__d2b+0x90>
 2006e84:	8c7ef344 	addi	r17,r17,-1075
 2006e88:	88a3883a 	add	r17,r17,r2
 2006e8c:	00c00d44 	movi	r3,53
 2006e90:	a4400015 	stw	r17,0(r20)
 2006e94:	1885c83a 	sub	r2,r3,r2
 2006e98:	90800015 	stw	r2,0(r18)
 2006e9c:	003fe706 	br	2006e3c <__d2b+0xb4>
 2006ea0:	01000804 	movi	r4,32
 2006ea4:	2089c83a 	sub	r4,r4,r2
 2006ea8:	1908983a 	sll	r4,r3,r4
 2006eac:	d9400117 	ldw	r5,4(sp)
 2006eb0:	1886d83a 	srl	r3,r3,r2
 2006eb4:	2148b03a 	or	r4,r4,r5
 2006eb8:	99000515 	stw	r4,20(r19)
 2006ebc:	d8c00015 	stw	r3,0(sp)
 2006ec0:	003fd006 	br	2006e04 <__d2b+0x7c>

02006ec4 <__ratio>:
 2006ec4:	defff904 	addi	sp,sp,-28
 2006ec8:	dc400315 	stw	r17,12(sp)
 2006ecc:	2823883a 	mov	r17,r5
 2006ed0:	d9400104 	addi	r5,sp,4
 2006ed4:	dfc00615 	stw	ra,24(sp)
 2006ed8:	dcc00515 	stw	r19,20(sp)
 2006edc:	dc800415 	stw	r18,16(sp)
 2006ee0:	2027883a 	mov	r19,r4
 2006ee4:	dc000215 	stw	r16,8(sp)
 2006ee8:	2006c6c0 	call	2006c6c <__b2d>
 2006eec:	8809883a 	mov	r4,r17
 2006ef0:	d80b883a 	mov	r5,sp
 2006ef4:	1025883a 	mov	r18,r2
 2006ef8:	1821883a 	mov	r16,r3
 2006efc:	2006c6c0 	call	2006c6c <__b2d>
 2006f00:	8a400417 	ldw	r9,16(r17)
 2006f04:	9a000417 	ldw	r8,16(r19)
 2006f08:	100d883a 	mov	r6,r2
 2006f0c:	d8800017 	ldw	r2,0(sp)
 2006f10:	4251c83a 	sub	r8,r8,r9
 2006f14:	4012917a 	slli	r9,r8,5
 2006f18:	da000117 	ldw	r8,4(sp)
 2006f1c:	4091c83a 	sub	r8,r8,r2
 2006f20:	4251883a 	add	r8,r8,r9
 2006f24:	02000d0e 	bge	zero,r8,2006f5c <__ratio+0x98>
 2006f28:	4010953a 	slli	r8,r8,20
 2006f2c:	4421883a 	add	r16,r8,r16
 2006f30:	9009883a 	mov	r4,r18
 2006f34:	800b883a 	mov	r5,r16
 2006f38:	180f883a 	mov	r7,r3
 2006f3c:	200ac0c0 	call	200ac0c <__divdf3>
 2006f40:	dfc00617 	ldw	ra,24(sp)
 2006f44:	dcc00517 	ldw	r19,20(sp)
 2006f48:	dc800417 	ldw	r18,16(sp)
 2006f4c:	dc400317 	ldw	r17,12(sp)
 2006f50:	dc000217 	ldw	r16,8(sp)
 2006f54:	dec00704 	addi	sp,sp,28
 2006f58:	f800283a 	ret
 2006f5c:	4010953a 	slli	r8,r8,20
 2006f60:	1a07c83a 	sub	r3,r3,r8
 2006f64:	003ff206 	br	2006f30 <__ratio+0x6c>

02006f68 <_mprec_log10>:
 2006f68:	defffe04 	addi	sp,sp,-8
 2006f6c:	dc000015 	stw	r16,0(sp)
 2006f70:	dfc00115 	stw	ra,4(sp)
 2006f74:	008005c4 	movi	r2,23
 2006f78:	2021883a 	mov	r16,r4
 2006f7c:	11000d0e 	bge	r2,r4,2006fb4 <_mprec_log10+0x4c>
 2006f80:	0005883a 	mov	r2,zero
 2006f84:	00cffc34 	movhi	r3,16368
 2006f88:	843fffc4 	addi	r16,r16,-1
 2006f8c:	1009883a 	mov	r4,r2
 2006f90:	180b883a 	mov	r5,r3
 2006f94:	000d883a 	mov	r6,zero
 2006f98:	01d00934 	movhi	r7,16420
 2006f9c:	200b71c0 	call	200b71c <__muldf3>
 2006fa0:	803ff91e 	bne	r16,zero,2006f88 <_mprec_log10+0x20>
 2006fa4:	dfc00117 	ldw	ra,4(sp)
 2006fa8:	dc000017 	ldw	r16,0(sp)
 2006fac:	dec00204 	addi	sp,sp,8
 2006fb0:	f800283a 	ret
 2006fb4:	202090fa 	slli	r16,r4,3
 2006fb8:	00808074 	movhi	r2,513
 2006fbc:	10bca404 	addi	r2,r2,-3440
 2006fc0:	1421883a 	add	r16,r2,r16
 2006fc4:	80800017 	ldw	r2,0(r16)
 2006fc8:	80c00117 	ldw	r3,4(r16)
 2006fcc:	dfc00117 	ldw	ra,4(sp)
 2006fd0:	dc000017 	ldw	r16,0(sp)
 2006fd4:	dec00204 	addi	sp,sp,8
 2006fd8:	f800283a 	ret

02006fdc <__copybits>:
 2006fdc:	297fffc4 	addi	r5,r5,-1
 2006fe0:	280fd17a 	srai	r7,r5,5
 2006fe4:	30c00417 	ldw	r3,16(r6)
 2006fe8:	30800504 	addi	r2,r6,20
 2006fec:	39c00044 	addi	r7,r7,1
 2006ff0:	18c7883a 	add	r3,r3,r3
 2006ff4:	39cf883a 	add	r7,r7,r7
 2006ff8:	18c7883a 	add	r3,r3,r3
 2006ffc:	39cf883a 	add	r7,r7,r7
 2007000:	10c7883a 	add	r3,r2,r3
 2007004:	21cf883a 	add	r7,r4,r7
 2007008:	10c00d2e 	bgeu	r2,r3,2007040 <__copybits+0x64>
 200700c:	200b883a 	mov	r5,r4
 2007010:	12000017 	ldw	r8,0(r2)
 2007014:	29400104 	addi	r5,r5,4
 2007018:	10800104 	addi	r2,r2,4
 200701c:	2a3fff15 	stw	r8,-4(r5)
 2007020:	10fffb36 	bltu	r2,r3,2007010 <__copybits+0x34>
 2007024:	1985c83a 	sub	r2,r3,r6
 2007028:	10bffac4 	addi	r2,r2,-21
 200702c:	1004d0ba 	srli	r2,r2,2
 2007030:	10800044 	addi	r2,r2,1
 2007034:	1085883a 	add	r2,r2,r2
 2007038:	1085883a 	add	r2,r2,r2
 200703c:	2089883a 	add	r4,r4,r2
 2007040:	21c0032e 	bgeu	r4,r7,2007050 <__copybits+0x74>
 2007044:	20000015 	stw	zero,0(r4)
 2007048:	21000104 	addi	r4,r4,4
 200704c:	21fffd36 	bltu	r4,r7,2007044 <__copybits+0x68>
 2007050:	f800283a 	ret

02007054 <__any_on>:
 2007054:	20c00417 	ldw	r3,16(r4)
 2007058:	2805d17a 	srai	r2,r5,5
 200705c:	21000504 	addi	r4,r4,20
 2007060:	18800d0e 	bge	r3,r2,2007098 <__any_on+0x44>
 2007064:	18c7883a 	add	r3,r3,r3
 2007068:	18c7883a 	add	r3,r3,r3
 200706c:	20c7883a 	add	r3,r4,r3
 2007070:	20c0192e 	bgeu	r4,r3,20070d8 <__any_on+0x84>
 2007074:	18bfff17 	ldw	r2,-4(r3)
 2007078:	18ffff04 	addi	r3,r3,-4
 200707c:	1000041e 	bne	r2,zero,2007090 <__any_on+0x3c>
 2007080:	20c0142e 	bgeu	r4,r3,20070d4 <__any_on+0x80>
 2007084:	18ffff04 	addi	r3,r3,-4
 2007088:	19400017 	ldw	r5,0(r3)
 200708c:	283ffc26 	beq	r5,zero,2007080 <__any_on+0x2c>
 2007090:	00800044 	movi	r2,1
 2007094:	f800283a 	ret
 2007098:	10c00a0e 	bge	r2,r3,20070c4 <__any_on+0x70>
 200709c:	1085883a 	add	r2,r2,r2
 20070a0:	1085883a 	add	r2,r2,r2
 20070a4:	294007cc 	andi	r5,r5,31
 20070a8:	2087883a 	add	r3,r4,r2
 20070ac:	283ff026 	beq	r5,zero,2007070 <__any_on+0x1c>
 20070b0:	19800017 	ldw	r6,0(r3)
 20070b4:	3144d83a 	srl	r2,r6,r5
 20070b8:	114a983a 	sll	r5,r2,r5
 20070bc:	29bff41e 	bne	r5,r6,2007090 <__any_on+0x3c>
 20070c0:	003feb06 	br	2007070 <__any_on+0x1c>
 20070c4:	1085883a 	add	r2,r2,r2
 20070c8:	1085883a 	add	r2,r2,r2
 20070cc:	2087883a 	add	r3,r4,r2
 20070d0:	003fe706 	br	2007070 <__any_on+0x1c>
 20070d4:	f800283a 	ret
 20070d8:	0005883a 	mov	r2,zero
 20070dc:	f800283a 	ret

020070e0 <_realloc_r>:
 20070e0:	defff604 	addi	sp,sp,-40
 20070e4:	dcc00315 	stw	r19,12(sp)
 20070e8:	dc400115 	stw	r17,4(sp)
 20070ec:	dfc00915 	stw	ra,36(sp)
 20070f0:	df000815 	stw	fp,32(sp)
 20070f4:	ddc00715 	stw	r23,28(sp)
 20070f8:	dd800615 	stw	r22,24(sp)
 20070fc:	dd400515 	stw	r21,20(sp)
 2007100:	dd000415 	stw	r20,16(sp)
 2007104:	dc800215 	stw	r18,8(sp)
 2007108:	dc000015 	stw	r16,0(sp)
 200710c:	2827883a 	mov	r19,r5
 2007110:	3023883a 	mov	r17,r6
 2007114:	2800bf26 	beq	r5,zero,2007414 <_realloc_r+0x334>
 2007118:	2025883a 	mov	r18,r4
 200711c:	200cf100 	call	200cf10 <__malloc_lock>
 2007120:	98ffff17 	ldw	r3,-4(r19)
 2007124:	01bfff04 	movi	r6,-4
 2007128:	890002c4 	addi	r4,r17,11
 200712c:	01c00584 	movi	r7,22
 2007130:	9d7ffe04 	addi	r21,r19,-8
 2007134:	19a0703a 	and	r16,r3,r6
 2007138:	39003f2e 	bgeu	r7,r4,2007238 <_realloc_r+0x158>
 200713c:	053ffe04 	movi	r20,-8
 2007140:	2528703a 	and	r20,r4,r20
 2007144:	a00f883a 	mov	r7,r20
 2007148:	a0008216 	blt	r20,zero,2007354 <_realloc_r+0x274>
 200714c:	a4408136 	bltu	r20,r17,2007354 <_realloc_r+0x274>
 2007150:	81c03c0e 	bge	r16,r7,2007244 <_realloc_r+0x164>
 2007154:	07008074 	movhi	fp,513
 2007158:	e73e1004 	addi	fp,fp,-1984
 200715c:	e1000217 	ldw	r4,8(fp)
 2007160:	ac05883a 	add	r2,r21,r16
 2007164:	2080bf26 	beq	r4,r2,2007464 <_realloc_r+0x384>
 2007168:	11000117 	ldw	r4,4(r2)
 200716c:	023fff84 	movi	r8,-2
 2007170:	2210703a 	and	r8,r4,r8
 2007174:	1211883a 	add	r8,r2,r8
 2007178:	41400117 	ldw	r5,4(r8)
 200717c:	2940004c 	andi	r5,r5,1
 2007180:	28004a1e 	bne	r5,zero,20072ac <_realloc_r+0x1cc>
 2007184:	017fff04 	movi	r5,-4
 2007188:	2148703a 	and	r4,r4,r5
 200718c:	2409883a 	add	r4,r4,r16
 2007190:	21c0ad0e 	bge	r4,r7,2007448 <_realloc_r+0x368>
 2007194:	18c0004c 	andi	r3,r3,1
 2007198:	18007f1e 	bne	r3,zero,2007398 <_realloc_r+0x2b8>
 200719c:	9dfffe17 	ldw	r23,-8(r19)
 20071a0:	adefc83a 	sub	r23,r21,r23
 20071a4:	bd800117 	ldw	r22,4(r23)
 20071a8:	b14a703a 	and	r5,r22,r5
 20071ac:	216d883a 	add	r22,r4,r5
 20071b0:	b1c04516 	blt	r22,r7,20072c8 <_realloc_r+0x1e8>
 20071b4:	10c00317 	ldw	r3,12(r2)
 20071b8:	10800217 	ldw	r2,8(r2)
 20071bc:	81bfff04 	addi	r6,r16,-4
 20071c0:	bc400204 	addi	r17,r23,8
 20071c4:	10c00315 	stw	r3,12(r2)
 20071c8:	18800215 	stw	r2,8(r3)
 20071cc:	b9400217 	ldw	r5,8(r23)
 20071d0:	b8c00317 	ldw	r3,12(r23)
 20071d4:	00800904 	movi	r2,36
 20071d8:	28c00315 	stw	r3,12(r5)
 20071dc:	19400215 	stw	r5,8(r3)
 20071e0:	1180ef36 	bltu	r2,r6,20075a0 <_realloc_r+0x4c0>
 20071e4:	008004c4 	movi	r2,19
 20071e8:	1180da2e 	bgeu	r2,r6,2007554 <_realloc_r+0x474>
 20071ec:	98800017 	ldw	r2,0(r19)
 20071f0:	b8800215 	stw	r2,8(r23)
 20071f4:	98800117 	ldw	r2,4(r19)
 20071f8:	b8800315 	stw	r2,12(r23)
 20071fc:	008006c4 	movi	r2,27
 2007200:	1180fc2e 	bgeu	r2,r6,20075f4 <_realloc_r+0x514>
 2007204:	98800217 	ldw	r2,8(r19)
 2007208:	b8800415 	stw	r2,16(r23)
 200720c:	98800317 	ldw	r2,12(r19)
 2007210:	b8800515 	stw	r2,20(r23)
 2007214:	00800904 	movi	r2,36
 2007218:	3080421e 	bne	r6,r2,2007324 <_realloc_r+0x244>
 200721c:	98800417 	ldw	r2,16(r19)
 2007220:	9cc00604 	addi	r19,r19,24
 2007224:	b8c00804 	addi	r3,r23,32
 2007228:	b8800615 	stw	r2,24(r23)
 200722c:	98bfff17 	ldw	r2,-4(r19)
 2007230:	b8800715 	stw	r2,28(r23)
 2007234:	00003d06 	br	200732c <_realloc_r+0x24c>
 2007238:	01c00404 	movi	r7,16
 200723c:	3829883a 	mov	r20,r7
 2007240:	003fc206 	br	200714c <_realloc_r+0x6c>
 2007244:	9823883a 	mov	r17,r19
 2007248:	850fc83a 	sub	r7,r16,r20
 200724c:	008003c4 	movi	r2,15
 2007250:	18c0004c 	andi	r3,r3,1
 2007254:	11c04336 	bltu	r2,r7,2007364 <_realloc_r+0x284>
 2007258:	1c06b03a 	or	r3,r3,r16
 200725c:	a8c00115 	stw	r3,4(r21)
 2007260:	ac21883a 	add	r16,r21,r16
 2007264:	80c00117 	ldw	r3,4(r16)
 2007268:	18c00054 	ori	r3,r3,1
 200726c:	80c00115 	stw	r3,4(r16)
 2007270:	9009883a 	mov	r4,r18
 2007274:	200cf300 	call	200cf30 <__malloc_unlock>
 2007278:	8805883a 	mov	r2,r17
 200727c:	dfc00917 	ldw	ra,36(sp)
 2007280:	df000817 	ldw	fp,32(sp)
 2007284:	ddc00717 	ldw	r23,28(sp)
 2007288:	dd800617 	ldw	r22,24(sp)
 200728c:	dd400517 	ldw	r21,20(sp)
 2007290:	dd000417 	ldw	r20,16(sp)
 2007294:	dcc00317 	ldw	r19,12(sp)
 2007298:	dc800217 	ldw	r18,8(sp)
 200729c:	dc400117 	ldw	r17,4(sp)
 20072a0:	dc000017 	ldw	r16,0(sp)
 20072a4:	dec00a04 	addi	sp,sp,40
 20072a8:	f800283a 	ret
 20072ac:	18c0004c 	andi	r3,r3,1
 20072b0:	1800391e 	bne	r3,zero,2007398 <_realloc_r+0x2b8>
 20072b4:	9dfffe17 	ldw	r23,-8(r19)
 20072b8:	00bfff04 	movi	r2,-4
 20072bc:	adefc83a 	sub	r23,r21,r23
 20072c0:	b9400117 	ldw	r5,4(r23)
 20072c4:	288a703a 	and	r5,r5,r2
 20072c8:	2c2d883a 	add	r22,r5,r16
 20072cc:	b1c03216 	blt	r22,r7,2007398 <_realloc_r+0x2b8>
 20072d0:	b8800317 	ldw	r2,12(r23)
 20072d4:	b8c00217 	ldw	r3,8(r23)
 20072d8:	81bfff04 	addi	r6,r16,-4
 20072dc:	01000904 	movi	r4,36
 20072e0:	18800315 	stw	r2,12(r3)
 20072e4:	10c00215 	stw	r3,8(r2)
 20072e8:	bc400204 	addi	r17,r23,8
 20072ec:	2180ac36 	bltu	r4,r6,20075a0 <_realloc_r+0x4c0>
 20072f0:	008004c4 	movi	r2,19
 20072f4:	1180972e 	bgeu	r2,r6,2007554 <_realloc_r+0x474>
 20072f8:	98800017 	ldw	r2,0(r19)
 20072fc:	b8800215 	stw	r2,8(r23)
 2007300:	98800117 	ldw	r2,4(r19)
 2007304:	b8800315 	stw	r2,12(r23)
 2007308:	008006c4 	movi	r2,27
 200730c:	1180b92e 	bgeu	r2,r6,20075f4 <_realloc_r+0x514>
 2007310:	98800217 	ldw	r2,8(r19)
 2007314:	b8800415 	stw	r2,16(r23)
 2007318:	98800317 	ldw	r2,12(r19)
 200731c:	b8800515 	stw	r2,20(r23)
 2007320:	313fbe26 	beq	r6,r4,200721c <_realloc_r+0x13c>
 2007324:	b8c00604 	addi	r3,r23,24
 2007328:	9cc00404 	addi	r19,r19,16
 200732c:	98800017 	ldw	r2,0(r19)
 2007330:	b021883a 	mov	r16,r22
 2007334:	b82b883a 	mov	r21,r23
 2007338:	18800015 	stw	r2,0(r3)
 200733c:	98800117 	ldw	r2,4(r19)
 2007340:	18800115 	stw	r2,4(r3)
 2007344:	98800217 	ldw	r2,8(r19)
 2007348:	18800215 	stw	r2,8(r3)
 200734c:	b8c00117 	ldw	r3,4(r23)
 2007350:	003fbd06 	br	2007248 <_realloc_r+0x168>
 2007354:	00800304 	movi	r2,12
 2007358:	90800015 	stw	r2,0(r18)
 200735c:	0005883a 	mov	r2,zero
 2007360:	003fc606 	br	200727c <_realloc_r+0x19c>
 2007364:	1d06b03a 	or	r3,r3,r20
 2007368:	ad0b883a 	add	r5,r21,r20
 200736c:	a8c00115 	stw	r3,4(r21)
 2007370:	38800054 	ori	r2,r7,1
 2007374:	28800115 	stw	r2,4(r5)
 2007378:	29cf883a 	add	r7,r5,r7
 200737c:	38800117 	ldw	r2,4(r7)
 2007380:	9009883a 	mov	r4,r18
 2007384:	29400204 	addi	r5,r5,8
 2007388:	10800054 	ori	r2,r2,1
 200738c:	38800115 	stw	r2,4(r7)
 2007390:	20049700 	call	2004970 <_free_r>
 2007394:	003fb606 	br	2007270 <_realloc_r+0x190>
 2007398:	880b883a 	mov	r5,r17
 200739c:	9009883a 	mov	r4,r18
 20073a0:	200550c0 	call	200550c <_malloc_r>
 20073a4:	1023883a 	mov	r17,r2
 20073a8:	1000aa26 	beq	r2,zero,2007654 <_realloc_r+0x574>
 20073ac:	98ffff17 	ldw	r3,-4(r19)
 20073b0:	113ffe04 	addi	r4,r2,-8
 20073b4:	00bfff84 	movi	r2,-2
 20073b8:	1884703a 	and	r2,r3,r2
 20073bc:	a885883a 	add	r2,r21,r2
 20073c0:	20808626 	beq	r4,r2,20075dc <_realloc_r+0x4fc>
 20073c4:	81bfff04 	addi	r6,r16,-4
 20073c8:	00800904 	movi	r2,36
 20073cc:	11807036 	bltu	r2,r6,2007590 <_realloc_r+0x4b0>
 20073d0:	00c004c4 	movi	r3,19
 20073d4:	19805636 	bltu	r3,r6,2007530 <_realloc_r+0x450>
 20073d8:	8805883a 	mov	r2,r17
 20073dc:	9807883a 	mov	r3,r19
 20073e0:	19000017 	ldw	r4,0(r3)
 20073e4:	11000015 	stw	r4,0(r2)
 20073e8:	19000117 	ldw	r4,4(r3)
 20073ec:	11000115 	stw	r4,4(r2)
 20073f0:	18c00217 	ldw	r3,8(r3)
 20073f4:	10c00215 	stw	r3,8(r2)
 20073f8:	980b883a 	mov	r5,r19
 20073fc:	9009883a 	mov	r4,r18
 2007400:	20049700 	call	2004970 <_free_r>
 2007404:	9009883a 	mov	r4,r18
 2007408:	200cf300 	call	200cf30 <__malloc_unlock>
 200740c:	8805883a 	mov	r2,r17
 2007410:	003f9a06 	br	200727c <_realloc_r+0x19c>
 2007414:	300b883a 	mov	r5,r6
 2007418:	dfc00917 	ldw	ra,36(sp)
 200741c:	df000817 	ldw	fp,32(sp)
 2007420:	ddc00717 	ldw	r23,28(sp)
 2007424:	dd800617 	ldw	r22,24(sp)
 2007428:	dd400517 	ldw	r21,20(sp)
 200742c:	dd000417 	ldw	r20,16(sp)
 2007430:	dcc00317 	ldw	r19,12(sp)
 2007434:	dc800217 	ldw	r18,8(sp)
 2007438:	dc400117 	ldw	r17,4(sp)
 200743c:	dc000017 	ldw	r16,0(sp)
 2007440:	dec00a04 	addi	sp,sp,40
 2007444:	200550c1 	jmpi	200550c <_malloc_r>
 2007448:	11400317 	ldw	r5,12(r2)
 200744c:	10800217 	ldw	r2,8(r2)
 2007450:	9823883a 	mov	r17,r19
 2007454:	2021883a 	mov	r16,r4
 2007458:	11400315 	stw	r5,12(r2)
 200745c:	28800215 	stw	r2,8(r5)
 2007460:	003f7906 	br	2007248 <_realloc_r+0x168>
 2007464:	21000117 	ldw	r4,4(r4)
 2007468:	00bfff04 	movi	r2,-4
 200746c:	a1800404 	addi	r6,r20,16
 2007470:	2088703a 	and	r4,r4,r2
 2007474:	2409883a 	add	r4,r4,r16
 2007478:	2180380e 	bge	r4,r6,200755c <_realloc_r+0x47c>
 200747c:	18c0004c 	andi	r3,r3,1
 2007480:	183fc51e 	bne	r3,zero,2007398 <_realloc_r+0x2b8>
 2007484:	9dfffe17 	ldw	r23,-8(r19)
 2007488:	adefc83a 	sub	r23,r21,r23
 200748c:	b9400117 	ldw	r5,4(r23)
 2007490:	288a703a 	and	r5,r5,r2
 2007494:	216d883a 	add	r22,r4,r5
 2007498:	b1bf8b16 	blt	r22,r6,20072c8 <_realloc_r+0x1e8>
 200749c:	b8800317 	ldw	r2,12(r23)
 20074a0:	b8c00217 	ldw	r3,8(r23)
 20074a4:	81bfff04 	addi	r6,r16,-4
 20074a8:	01000904 	movi	r4,36
 20074ac:	18800315 	stw	r2,12(r3)
 20074b0:	10c00215 	stw	r3,8(r2)
 20074b4:	bc400204 	addi	r17,r23,8
 20074b8:	21805a36 	bltu	r4,r6,2007624 <_realloc_r+0x544>
 20074bc:	008004c4 	movi	r2,19
 20074c0:	1180562e 	bgeu	r2,r6,200761c <_realloc_r+0x53c>
 20074c4:	98800017 	ldw	r2,0(r19)
 20074c8:	b8800215 	stw	r2,8(r23)
 20074cc:	98800117 	ldw	r2,4(r19)
 20074d0:	b8800315 	stw	r2,12(r23)
 20074d4:	008006c4 	movi	r2,27
 20074d8:	11805636 	bltu	r2,r6,2007634 <_realloc_r+0x554>
 20074dc:	b8800404 	addi	r2,r23,16
 20074e0:	9cc00204 	addi	r19,r19,8
 20074e4:	98c00017 	ldw	r3,0(r19)
 20074e8:	10c00015 	stw	r3,0(r2)
 20074ec:	98c00117 	ldw	r3,4(r19)
 20074f0:	10c00115 	stw	r3,4(r2)
 20074f4:	98c00217 	ldw	r3,8(r19)
 20074f8:	10c00215 	stw	r3,8(r2)
 20074fc:	bd07883a 	add	r3,r23,r20
 2007500:	b505c83a 	sub	r2,r22,r20
 2007504:	e0c00215 	stw	r3,8(fp)
 2007508:	10800054 	ori	r2,r2,1
 200750c:	18800115 	stw	r2,4(r3)
 2007510:	b8800117 	ldw	r2,4(r23)
 2007514:	9009883a 	mov	r4,r18
 2007518:	1080004c 	andi	r2,r2,1
 200751c:	a0a8b03a 	or	r20,r20,r2
 2007520:	bd000115 	stw	r20,4(r23)
 2007524:	200cf300 	call	200cf30 <__malloc_unlock>
 2007528:	8805883a 	mov	r2,r17
 200752c:	003f5306 	br	200727c <_realloc_r+0x19c>
 2007530:	98c00017 	ldw	r3,0(r19)
 2007534:	88c00015 	stw	r3,0(r17)
 2007538:	98c00117 	ldw	r3,4(r19)
 200753c:	88c00115 	stw	r3,4(r17)
 2007540:	00c006c4 	movi	r3,27
 2007544:	19801d36 	bltu	r3,r6,20075bc <_realloc_r+0x4dc>
 2007548:	88800204 	addi	r2,r17,8
 200754c:	98c00204 	addi	r3,r19,8
 2007550:	003fa306 	br	20073e0 <_realloc_r+0x300>
 2007554:	8807883a 	mov	r3,r17
 2007558:	003f7406 	br	200732c <_realloc_r+0x24c>
 200755c:	ad2b883a 	add	r21,r21,r20
 2007560:	2505c83a 	sub	r2,r4,r20
 2007564:	e5400215 	stw	r21,8(fp)
 2007568:	10800054 	ori	r2,r2,1
 200756c:	a8800115 	stw	r2,4(r21)
 2007570:	98bfff17 	ldw	r2,-4(r19)
 2007574:	9009883a 	mov	r4,r18
 2007578:	1080004c 	andi	r2,r2,1
 200757c:	a0a8b03a 	or	r20,r20,r2
 2007580:	9d3fff15 	stw	r20,-4(r19)
 2007584:	200cf300 	call	200cf30 <__malloc_unlock>
 2007588:	9805883a 	mov	r2,r19
 200758c:	003f3b06 	br	200727c <_realloc_r+0x19c>
 2007590:	8809883a 	mov	r4,r17
 2007594:	980b883a 	mov	r5,r19
 2007598:	2005ed40 	call	2005ed4 <memmove>
 200759c:	003f9606 	br	20073f8 <_realloc_r+0x318>
 20075a0:	8809883a 	mov	r4,r17
 20075a4:	980b883a 	mov	r5,r19
 20075a8:	2005ed40 	call	2005ed4 <memmove>
 20075ac:	b8c00117 	ldw	r3,4(r23)
 20075b0:	b021883a 	mov	r16,r22
 20075b4:	b82b883a 	mov	r21,r23
 20075b8:	003f2306 	br	2007248 <_realloc_r+0x168>
 20075bc:	98c00217 	ldw	r3,8(r19)
 20075c0:	88c00215 	stw	r3,8(r17)
 20075c4:	98c00317 	ldw	r3,12(r19)
 20075c8:	88c00315 	stw	r3,12(r17)
 20075cc:	30800c26 	beq	r6,r2,2007600 <_realloc_r+0x520>
 20075d0:	88800404 	addi	r2,r17,16
 20075d4:	98c00404 	addi	r3,r19,16
 20075d8:	003f8106 	br	20073e0 <_realloc_r+0x300>
 20075dc:	893fff17 	ldw	r4,-4(r17)
 20075e0:	00bfff04 	movi	r2,-4
 20075e4:	9823883a 	mov	r17,r19
 20075e8:	2084703a 	and	r2,r4,r2
 20075ec:	80a1883a 	add	r16,r16,r2
 20075f0:	003f1506 	br	2007248 <_realloc_r+0x168>
 20075f4:	b8c00404 	addi	r3,r23,16
 20075f8:	9cc00204 	addi	r19,r19,8
 20075fc:	003f4b06 	br	200732c <_realloc_r+0x24c>
 2007600:	99000417 	ldw	r4,16(r19)
 2007604:	88800604 	addi	r2,r17,24
 2007608:	98c00604 	addi	r3,r19,24
 200760c:	89000415 	stw	r4,16(r17)
 2007610:	99000517 	ldw	r4,20(r19)
 2007614:	89000515 	stw	r4,20(r17)
 2007618:	003f7106 	br	20073e0 <_realloc_r+0x300>
 200761c:	8805883a 	mov	r2,r17
 2007620:	003fb006 	br	20074e4 <_realloc_r+0x404>
 2007624:	8809883a 	mov	r4,r17
 2007628:	980b883a 	mov	r5,r19
 200762c:	2005ed40 	call	2005ed4 <memmove>
 2007630:	003fb206 	br	20074fc <_realloc_r+0x41c>
 2007634:	98800217 	ldw	r2,8(r19)
 2007638:	b8800415 	stw	r2,16(r23)
 200763c:	98800317 	ldw	r2,12(r19)
 2007640:	b8800515 	stw	r2,20(r23)
 2007644:	31000726 	beq	r6,r4,2007664 <_realloc_r+0x584>
 2007648:	b8800604 	addi	r2,r23,24
 200764c:	9cc00404 	addi	r19,r19,16
 2007650:	003fa406 	br	20074e4 <_realloc_r+0x404>
 2007654:	9009883a 	mov	r4,r18
 2007658:	200cf300 	call	200cf30 <__malloc_unlock>
 200765c:	0005883a 	mov	r2,zero
 2007660:	003f0606 	br	200727c <_realloc_r+0x19c>
 2007664:	98c00417 	ldw	r3,16(r19)
 2007668:	9cc00604 	addi	r19,r19,24
 200766c:	b8800804 	addi	r2,r23,32
 2007670:	b8c00615 	stw	r3,24(r23)
 2007674:	98ffff17 	ldw	r3,-4(r19)
 2007678:	b8c00715 	stw	r3,28(r23)
 200767c:	003f9906 	br	20074e4 <_realloc_r+0x404>

02007680 <__fpclassifyd>:
 2007680:	00a00034 	movhi	r2,32768
 2007684:	10bfffc4 	addi	r2,r2,-1
 2007688:	2884703a 	and	r2,r5,r2
 200768c:	10000726 	beq	r2,zero,20076ac <__fpclassifyd+0x2c>
 2007690:	00fffc34 	movhi	r3,65520
 2007694:	019ff834 	movhi	r6,32736
 2007698:	28c7883a 	add	r3,r5,r3
 200769c:	31bfffc4 	addi	r6,r6,-1
 20076a0:	30c00536 	bltu	r6,r3,20076b8 <__fpclassifyd+0x38>
 20076a4:	00800104 	movi	r2,4
 20076a8:	f800283a 	ret
 20076ac:	2000021e 	bne	r4,zero,20076b8 <__fpclassifyd+0x38>
 20076b0:	00800084 	movi	r2,2
 20076b4:	f800283a 	ret
 20076b8:	00dffc34 	movhi	r3,32752
 20076bc:	019ff834 	movhi	r6,32736
 20076c0:	28cb883a 	add	r5,r5,r3
 20076c4:	31bfffc4 	addi	r6,r6,-1
 20076c8:	317ff62e 	bgeu	r6,r5,20076a4 <__fpclassifyd+0x24>
 20076cc:	01400434 	movhi	r5,16
 20076d0:	297fffc4 	addi	r5,r5,-1
 20076d4:	28800236 	bltu	r5,r2,20076e0 <__fpclassifyd+0x60>
 20076d8:	008000c4 	movi	r2,3
 20076dc:	f800283a 	ret
 20076e0:	10c00226 	beq	r2,r3,20076ec <__fpclassifyd+0x6c>
 20076e4:	0005883a 	mov	r2,zero
 20076e8:	f800283a 	ret
 20076ec:	2005003a 	cmpeq	r2,r4,zero
 20076f0:	f800283a 	ret

020076f4 <_sbrk_r>:
 20076f4:	defffd04 	addi	sp,sp,-12
 20076f8:	dc000015 	stw	r16,0(sp)
 20076fc:	04008074 	movhi	r16,513
 2007700:	dc400115 	stw	r17,4(sp)
 2007704:	840a6504 	addi	r16,r16,10644
 2007708:	2023883a 	mov	r17,r4
 200770c:	2809883a 	mov	r4,r5
 2007710:	dfc00215 	stw	ra,8(sp)
 2007714:	80000015 	stw	zero,0(r16)
 2007718:	200d0fc0 	call	200d0fc <sbrk>
 200771c:	00ffffc4 	movi	r3,-1
 2007720:	10c00526 	beq	r2,r3,2007738 <_sbrk_r+0x44>
 2007724:	dfc00217 	ldw	ra,8(sp)
 2007728:	dc400117 	ldw	r17,4(sp)
 200772c:	dc000017 	ldw	r16,0(sp)
 2007730:	dec00304 	addi	sp,sp,12
 2007734:	f800283a 	ret
 2007738:	80c00017 	ldw	r3,0(r16)
 200773c:	183ff926 	beq	r3,zero,2007724 <_sbrk_r+0x30>
 2007740:	88c00015 	stw	r3,0(r17)
 2007744:	003ff706 	br	2007724 <_sbrk_r+0x30>

02007748 <__sread>:
 2007748:	defffe04 	addi	sp,sp,-8
 200774c:	dc000015 	stw	r16,0(sp)
 2007750:	2821883a 	mov	r16,r5
 2007754:	2940038f 	ldh	r5,14(r5)
 2007758:	dfc00115 	stw	ra,4(sp)
 200775c:	20093280 	call	2009328 <_read_r>
 2007760:	10000716 	blt	r2,zero,2007780 <__sread+0x38>
 2007764:	80c01417 	ldw	r3,80(r16)
 2007768:	1887883a 	add	r3,r3,r2
 200776c:	80c01415 	stw	r3,80(r16)
 2007770:	dfc00117 	ldw	ra,4(sp)
 2007774:	dc000017 	ldw	r16,0(sp)
 2007778:	dec00204 	addi	sp,sp,8
 200777c:	f800283a 	ret
 2007780:	80c0030b 	ldhu	r3,12(r16)
 2007784:	18fbffcc 	andi	r3,r3,61439
 2007788:	80c0030d 	sth	r3,12(r16)
 200778c:	dfc00117 	ldw	ra,4(sp)
 2007790:	dc000017 	ldw	r16,0(sp)
 2007794:	dec00204 	addi	sp,sp,8
 2007798:	f800283a 	ret

0200779c <__seofread>:
 200779c:	0005883a 	mov	r2,zero
 20077a0:	f800283a 	ret

020077a4 <__swrite>:
 20077a4:	2880030b 	ldhu	r2,12(r5)
 20077a8:	defffb04 	addi	sp,sp,-20
 20077ac:	dcc00315 	stw	r19,12(sp)
 20077b0:	dc800215 	stw	r18,8(sp)
 20077b4:	dc400115 	stw	r17,4(sp)
 20077b8:	dc000015 	stw	r16,0(sp)
 20077bc:	dfc00415 	stw	ra,16(sp)
 20077c0:	10c0400c 	andi	r3,r2,256
 20077c4:	2821883a 	mov	r16,r5
 20077c8:	2027883a 	mov	r19,r4
 20077cc:	3025883a 	mov	r18,r6
 20077d0:	3823883a 	mov	r17,r7
 20077d4:	18000526 	beq	r3,zero,20077ec <__swrite+0x48>
 20077d8:	2940038f 	ldh	r5,14(r5)
 20077dc:	000d883a 	mov	r6,zero
 20077e0:	01c00084 	movi	r7,2
 20077e4:	20092cc0 	call	20092cc <_lseek_r>
 20077e8:	8080030b 	ldhu	r2,12(r16)
 20077ec:	8140038f 	ldh	r5,14(r16)
 20077f0:	10bbffcc 	andi	r2,r2,61439
 20077f4:	9809883a 	mov	r4,r19
 20077f8:	900d883a 	mov	r6,r18
 20077fc:	880f883a 	mov	r7,r17
 2007800:	8080030d 	sth	r2,12(r16)
 2007804:	dfc00417 	ldw	ra,16(sp)
 2007808:	dcc00317 	ldw	r19,12(sp)
 200780c:	dc800217 	ldw	r18,8(sp)
 2007810:	dc400117 	ldw	r17,4(sp)
 2007814:	dc000017 	ldw	r16,0(sp)
 2007818:	dec00504 	addi	sp,sp,20
 200781c:	2008dbc1 	jmpi	2008dbc <_write_r>

02007820 <__sseek>:
 2007820:	defffe04 	addi	sp,sp,-8
 2007824:	dc000015 	stw	r16,0(sp)
 2007828:	2821883a 	mov	r16,r5
 200782c:	2940038f 	ldh	r5,14(r5)
 2007830:	dfc00115 	stw	ra,4(sp)
 2007834:	20092cc0 	call	20092cc <_lseek_r>
 2007838:	00ffffc4 	movi	r3,-1
 200783c:	10c00826 	beq	r2,r3,2007860 <__sseek+0x40>
 2007840:	80c0030b 	ldhu	r3,12(r16)
 2007844:	80801415 	stw	r2,80(r16)
 2007848:	18c40014 	ori	r3,r3,4096
 200784c:	80c0030d 	sth	r3,12(r16)
 2007850:	dfc00117 	ldw	ra,4(sp)
 2007854:	dc000017 	ldw	r16,0(sp)
 2007858:	dec00204 	addi	sp,sp,8
 200785c:	f800283a 	ret
 2007860:	80c0030b 	ldhu	r3,12(r16)
 2007864:	18fbffcc 	andi	r3,r3,61439
 2007868:	80c0030d 	sth	r3,12(r16)
 200786c:	dfc00117 	ldw	ra,4(sp)
 2007870:	dc000017 	ldw	r16,0(sp)
 2007874:	dec00204 	addi	sp,sp,8
 2007878:	f800283a 	ret

0200787c <__sclose>:
 200787c:	2940038f 	ldh	r5,14(r5)
 2007880:	2008e181 	jmpi	2008e18 <_close_r>

02007884 <strcmp>:
 2007884:	2144b03a 	or	r2,r4,r5
 2007888:	108000cc 	andi	r2,r2,3
 200788c:	1000171e 	bne	r2,zero,20078ec <strcmp+0x68>
 2007890:	20800017 	ldw	r2,0(r4)
 2007894:	28c00017 	ldw	r3,0(r5)
 2007898:	10c0141e 	bne	r2,r3,20078ec <strcmp+0x68>
 200789c:	027fbff4 	movhi	r9,65279
 20078a0:	4a7fbfc4 	addi	r9,r9,-257
 20078a4:	0086303a 	nor	r3,zero,r2
 20078a8:	02202074 	movhi	r8,32897
 20078ac:	1245883a 	add	r2,r2,r9
 20078b0:	42202004 	addi	r8,r8,-32640
 20078b4:	10c4703a 	and	r2,r2,r3
 20078b8:	1204703a 	and	r2,r2,r8
 20078bc:	10000226 	beq	r2,zero,20078c8 <strcmp+0x44>
 20078c0:	00001706 	br	2007920 <strcmp+0x9c>
 20078c4:	1000161e 	bne	r2,zero,2007920 <strcmp+0x9c>
 20078c8:	21000104 	addi	r4,r4,4
 20078cc:	20c00017 	ldw	r3,0(r4)
 20078d0:	29400104 	addi	r5,r5,4
 20078d4:	29800017 	ldw	r6,0(r5)
 20078d8:	1a4f883a 	add	r7,r3,r9
 20078dc:	00c4303a 	nor	r2,zero,r3
 20078e0:	3884703a 	and	r2,r7,r2
 20078e4:	1204703a 	and	r2,r2,r8
 20078e8:	19bff626 	beq	r3,r6,20078c4 <strcmp+0x40>
 20078ec:	20800007 	ldb	r2,0(r4)
 20078f0:	1000051e 	bne	r2,zero,2007908 <strcmp+0x84>
 20078f4:	00000606 	br	2007910 <strcmp+0x8c>
 20078f8:	21000044 	addi	r4,r4,1
 20078fc:	20800007 	ldb	r2,0(r4)
 2007900:	29400044 	addi	r5,r5,1
 2007904:	10000226 	beq	r2,zero,2007910 <strcmp+0x8c>
 2007908:	28c00007 	ldb	r3,0(r5)
 200790c:	10fffa26 	beq	r2,r3,20078f8 <strcmp+0x74>
 2007910:	20800003 	ldbu	r2,0(r4)
 2007914:	28c00003 	ldbu	r3,0(r5)
 2007918:	10c5c83a 	sub	r2,r2,r3
 200791c:	f800283a 	ret
 2007920:	0005883a 	mov	r2,zero
 2007924:	f800283a 	ret

02007928 <__sprint_r.part.0>:
 2007928:	28801917 	ldw	r2,100(r5)
 200792c:	defff604 	addi	sp,sp,-40
 2007930:	dd400515 	stw	r21,20(sp)
 2007934:	dcc00315 	stw	r19,12(sp)
 2007938:	dfc00915 	stw	ra,36(sp)
 200793c:	df000815 	stw	fp,32(sp)
 2007940:	ddc00715 	stw	r23,28(sp)
 2007944:	dd800615 	stw	r22,24(sp)
 2007948:	dd000415 	stw	r20,16(sp)
 200794c:	dc800215 	stw	r18,8(sp)
 2007950:	dc400115 	stw	r17,4(sp)
 2007954:	dc000015 	stw	r16,0(sp)
 2007958:	1088000c 	andi	r2,r2,8192
 200795c:	2827883a 	mov	r19,r5
 2007960:	302b883a 	mov	r21,r6
 2007964:	10002d26 	beq	r2,zero,2007a1c <__sprint_r.part.0+0xf4>
 2007968:	30800217 	ldw	r2,8(r6)
 200796c:	35800017 	ldw	r22,0(r6)
 2007970:	10002826 	beq	r2,zero,2007a14 <__sprint_r.part.0+0xec>
 2007974:	2029883a 	mov	r20,r4
 2007978:	b5c00104 	addi	r23,r22,4
 200797c:	04bfffc4 	movi	r18,-1
 2007980:	bc400017 	ldw	r17,0(r23)
 2007984:	b4000017 	ldw	r16,0(r22)
 2007988:	0039883a 	mov	fp,zero
 200798c:	8822d0ba 	srli	r17,r17,2
 2007990:	04400316 	blt	zero,r17,20079a0 <__sprint_r.part.0+0x78>
 2007994:	00001706 	br	20079f4 <__sprint_r.part.0+0xcc>
 2007998:	84000104 	addi	r16,r16,4
 200799c:	8f001526 	beq	r17,fp,20079f4 <__sprint_r.part.0+0xcc>
 20079a0:	81400017 	ldw	r5,0(r16)
 20079a4:	a009883a 	mov	r4,r20
 20079a8:	980d883a 	mov	r6,r19
 20079ac:	20090440 	call	2009044 <_fputwc_r>
 20079b0:	e7000044 	addi	fp,fp,1
 20079b4:	14bff81e 	bne	r2,r18,2007998 <__sprint_r.part.0+0x70>
 20079b8:	9005883a 	mov	r2,r18
 20079bc:	a8000215 	stw	zero,8(r21)
 20079c0:	a8000115 	stw	zero,4(r21)
 20079c4:	dfc00917 	ldw	ra,36(sp)
 20079c8:	df000817 	ldw	fp,32(sp)
 20079cc:	ddc00717 	ldw	r23,28(sp)
 20079d0:	dd800617 	ldw	r22,24(sp)
 20079d4:	dd400517 	ldw	r21,20(sp)
 20079d8:	dd000417 	ldw	r20,16(sp)
 20079dc:	dcc00317 	ldw	r19,12(sp)
 20079e0:	dc800217 	ldw	r18,8(sp)
 20079e4:	dc400117 	ldw	r17,4(sp)
 20079e8:	dc000017 	ldw	r16,0(sp)
 20079ec:	dec00a04 	addi	sp,sp,40
 20079f0:	f800283a 	ret
 20079f4:	a8c00217 	ldw	r3,8(r21)
 20079f8:	8c63883a 	add	r17,r17,r17
 20079fc:	8c63883a 	add	r17,r17,r17
 2007a00:	1c45c83a 	sub	r2,r3,r17
 2007a04:	a8800215 	stw	r2,8(r21)
 2007a08:	b5800204 	addi	r22,r22,8
 2007a0c:	bdc00204 	addi	r23,r23,8
 2007a10:	103fdb1e 	bne	r2,zero,2007980 <__sprint_r.part.0+0x58>
 2007a14:	0005883a 	mov	r2,zero
 2007a18:	003fe806 	br	20079bc <__sprint_r.part.0+0x94>
 2007a1c:	2004c600 	call	2004c60 <__sfvwrite_r>
 2007a20:	003fe606 	br	20079bc <__sprint_r.part.0+0x94>

02007a24 <__sprint_r>:
 2007a24:	30c00217 	ldw	r3,8(r6)
 2007a28:	18000126 	beq	r3,zero,2007a30 <__sprint_r+0xc>
 2007a2c:	20079281 	jmpi	2007928 <__sprint_r.part.0>
 2007a30:	30000115 	stw	zero,4(r6)
 2007a34:	0005883a 	mov	r2,zero
 2007a38:	f800283a 	ret

02007a3c <___vfiprintf_internal_r>:
 2007a3c:	defeca04 	addi	sp,sp,-1240
 2007a40:	dd813215 	stw	r22,1224(sp)
 2007a44:	dd013015 	stw	r20,1216(sp)
 2007a48:	dfc13515 	stw	ra,1236(sp)
 2007a4c:	df013415 	stw	fp,1232(sp)
 2007a50:	ddc13315 	stw	r23,1228(sp)
 2007a54:	dd413115 	stw	r21,1220(sp)
 2007a58:	dcc12f15 	stw	r19,1212(sp)
 2007a5c:	dc812e15 	stw	r18,1208(sp)
 2007a60:	dc412d15 	stw	r17,1204(sp)
 2007a64:	dc012c15 	stw	r16,1200(sp)
 2007a68:	d9012015 	stw	r4,1152(sp)
 2007a6c:	d9c12115 	stw	r7,1156(sp)
 2007a70:	2829883a 	mov	r20,r5
 2007a74:	302d883a 	mov	r22,r6
 2007a78:	20000226 	beq	r4,zero,2007a84 <___vfiprintf_internal_r+0x48>
 2007a7c:	20800e17 	ldw	r2,56(r4)
 2007a80:	1001d326 	beq	r2,zero,20081d0 <___vfiprintf_internal_r+0x794>
 2007a84:	a0c0030b 	ldhu	r3,12(r20)
 2007a88:	1908000c 	andi	r4,r3,8192
 2007a8c:	1805883a 	mov	r2,r3
 2007a90:	2000071e 	bne	r4,zero,2007ab0 <___vfiprintf_internal_r+0x74>
 2007a94:	a1001917 	ldw	r4,100(r20)
 2007a98:	18880014 	ori	r2,r3,8192
 2007a9c:	00f7ffc4 	movi	r3,-8193
 2007aa0:	20c8703a 	and	r4,r4,r3
 2007aa4:	a080030d 	sth	r2,12(r20)
 2007aa8:	1007883a 	mov	r3,r2
 2007aac:	a1001915 	stw	r4,100(r20)
 2007ab0:	1100020c 	andi	r4,r2,8
 2007ab4:	20018926 	beq	r4,zero,20080dc <___vfiprintf_internal_r+0x6a0>
 2007ab8:	a1000417 	ldw	r4,16(r20)
 2007abc:	20018726 	beq	r4,zero,20080dc <___vfiprintf_internal_r+0x6a0>
 2007ac0:	1080068c 	andi	r2,r2,26
 2007ac4:	01000284 	movi	r4,10
 2007ac8:	11018d26 	beq	r2,r4,2008100 <___vfiprintf_internal_r+0x6c4>
 2007acc:	da810a04 	addi	r10,sp,1064
 2007ad0:	dac109c4 	addi	r11,sp,1063
 2007ad4:	07008074 	movhi	fp,513
 2007ad8:	05c08074 	movhi	r23,513
 2007adc:	da811e15 	stw	r10,1144(sp)
 2007ae0:	52d5c83a 	sub	r10,r10,r11
 2007ae4:	e73cda04 	addi	fp,fp,-3224
 2007ae8:	bdfcd604 	addi	r23,r23,-3240
 2007aec:	dac11f15 	stw	r11,1148(sp)
 2007af0:	dec11a15 	stw	sp,1128(sp)
 2007af4:	d8011c15 	stw	zero,1136(sp)
 2007af8:	d8011b15 	stw	zero,1132(sp)
 2007afc:	d8012615 	stw	zero,1176(sp)
 2007b00:	d8012215 	stw	zero,1160(sp)
 2007b04:	da812715 	stw	r10,1180(sp)
 2007b08:	d811883a 	mov	r8,sp
 2007b0c:	b021883a 	mov	r16,r22
 2007b10:	80800007 	ldb	r2,0(r16)
 2007b14:	10039c26 	beq	r2,zero,2008988 <___vfiprintf_internal_r+0xf4c>
 2007b18:	01000944 	movi	r4,37
 2007b1c:	11039a26 	beq	r2,r4,2008988 <___vfiprintf_internal_r+0xf4c>
 2007b20:	8005883a 	mov	r2,r16
 2007b24:	00000106 	br	2007b2c <___vfiprintf_internal_r+0xf0>
 2007b28:	19000326 	beq	r3,r4,2007b38 <___vfiprintf_internal_r+0xfc>
 2007b2c:	10800044 	addi	r2,r2,1
 2007b30:	10c00007 	ldb	r3,0(r2)
 2007b34:	183ffc1e 	bne	r3,zero,2007b28 <___vfiprintf_internal_r+0xec>
 2007b38:	1425c83a 	sub	r18,r2,r16
 2007b3c:	1023883a 	mov	r17,r2
 2007b40:	90001026 	beq	r18,zero,2007b84 <___vfiprintf_internal_r+0x148>
 2007b44:	d8c11c17 	ldw	r3,1136(sp)
 2007b48:	d8811b17 	ldw	r2,1132(sp)
 2007b4c:	44000015 	stw	r16,0(r8)
 2007b50:	90c7883a 	add	r3,r18,r3
 2007b54:	10800044 	addi	r2,r2,1
 2007b58:	44800115 	stw	r18,4(r8)
 2007b5c:	d8c11c15 	stw	r3,1136(sp)
 2007b60:	d8811b15 	stw	r2,1132(sp)
 2007b64:	010001c4 	movi	r4,7
 2007b68:	2080750e 	bge	r4,r2,2007d40 <___vfiprintf_internal_r+0x304>
 2007b6c:	18039d1e 	bne	r3,zero,20089e4 <___vfiprintf_internal_r+0xfa8>
 2007b70:	dac12217 	ldw	r11,1160(sp)
 2007b74:	d8011b15 	stw	zero,1132(sp)
 2007b78:	d811883a 	mov	r8,sp
 2007b7c:	5c97883a 	add	r11,r11,r18
 2007b80:	dac12215 	stw	r11,1160(sp)
 2007b84:	88800007 	ldb	r2,0(r17)
 2007b88:	1002e026 	beq	r2,zero,200870c <___vfiprintf_internal_r+0xcd0>
 2007b8c:	88c00047 	ldb	r3,1(r17)
 2007b90:	8c000044 	addi	r16,r17,1
 2007b94:	d8011d85 	stb	zero,1142(sp)
 2007b98:	000d883a 	mov	r6,zero
 2007b9c:	027fffc4 	movi	r9,-1
 2007ba0:	0027883a 	mov	r19,zero
 2007ba4:	002b883a 	mov	r21,zero
 2007ba8:	01001604 	movi	r4,88
 2007bac:	01400244 	movi	r5,9
 2007bb0:	03000a84 	movi	r12,42
 2007bb4:	01c01b04 	movi	r7,108
 2007bb8:	84000044 	addi	r16,r16,1
 2007bbc:	18bff804 	addi	r2,r3,-32
 2007bc0:	20825f36 	bltu	r4,r2,2008540 <___vfiprintf_internal_r+0xb04>
 2007bc4:	100490ba 	slli	r2,r2,2
 2007bc8:	02808034 	movhi	r10,512
 2007bcc:	529ef704 	addi	r10,r10,31708
 2007bd0:	1285883a 	add	r2,r2,r10
 2007bd4:	10800017 	ldw	r2,0(r2)
 2007bd8:	1000683a 	jmp	r2
 2007bdc:	020083b0 	cmpltui	r8,zero,526
 2007be0:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007be4:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007be8:	02008534 	movhi	r8,532
 2007bec:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007bf0:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007bf4:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007bf8:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007bfc:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007c00:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007c04:	0200850c 	andi	r8,zero,532
 2007c08:	02008528 	cmpgeui	r8,zero,532
 2007c0c:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007c10:	020081e0 	cmpeqi	r8,zero,519
 2007c14:	02008340 	call	200834 <__alt_mem_sdram-0x1dff7cc>
 2007c18:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007c1c:	020082c4 	movi	r8,523
 2007c20:	020082d0 	cmplti	r8,zero,523
 2007c24:	020082d0 	cmplti	r8,zero,523
 2007c28:	020082d0 	cmplti	r8,zero,523
 2007c2c:	020082d0 	cmplti	r8,zero,523
 2007c30:	020082d0 	cmplti	r8,zero,523
 2007c34:	020082d0 	cmplti	r8,zero,523
 2007c38:	020082d0 	cmplti	r8,zero,523
 2007c3c:	020082d0 	cmplti	r8,zero,523
 2007c40:	020082d0 	cmplti	r8,zero,523
 2007c44:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007c48:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007c4c:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007c50:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007c54:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007c58:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007c5c:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007c60:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007c64:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007c68:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007c6c:	020082fc 	xorhi	r8,zero,523
 2007c70:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007c74:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007c78:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007c7c:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007c80:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007c84:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007c88:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007c8c:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007c90:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007c94:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007c98:	02007d90 	cmplti	r8,zero,502
 2007c9c:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007ca0:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007ca4:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007ca8:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007cac:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007cb0:	02007d54 	movui	r8,501
 2007cb4:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007cb8:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007cbc:	0200823c 	xorhi	r8,zero,520
 2007cc0:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007cc4:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007cc8:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007ccc:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007cd0:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007cd4:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007cd8:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007cdc:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007ce0:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007ce4:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007ce8:	02008294 	movui	r8,522
 2007cec:	0200842c 	andhi	r8,zero,528
 2007cf0:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007cf4:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007cf8:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007cfc:	020084b4 	movhi	r8,530
 2007d00:	0200842c 	andhi	r8,zero,528
 2007d04:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007d08:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007d0c:	020084c0 	call	20084c <__alt_mem_sdram-0x1dff7b4>
 2007d10:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007d14:	02008380 	call	200838 <__alt_mem_sdram-0x1dff7c8>
 2007d18:	02007d94 	movui	r8,502
 2007d1c:	02008468 	cmpgeui	r8,zero,529
 2007d20:	020084a8 	cmpgeui	r8,zero,530
 2007d24:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007d28:	020083cc 	andi	r8,zero,527
 2007d2c:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007d30:	02007d58 	cmpnei	r8,zero,501
 2007d34:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007d38:	02008540 	call	200854 <__alt_mem_sdram-0x1dff7ac>
 2007d3c:	020084d0 	cmplti	r8,zero,531
 2007d40:	42000204 	addi	r8,r8,8
 2007d44:	dac12217 	ldw	r11,1160(sp)
 2007d48:	5c97883a 	add	r11,r11,r18
 2007d4c:	dac12215 	stw	r11,1160(sp)
 2007d50:	003f8c06 	br	2007b84 <___vfiprintf_internal_r+0x148>
 2007d54:	ad400414 	ori	r21,r21,16
 2007d58:	a880080c 	andi	r2,r21,32
 2007d5c:	10012f1e 	bne	r2,zero,200821c <___vfiprintf_internal_r+0x7e0>
 2007d60:	a880040c 	andi	r2,r21,16
 2007d64:	1001ff1e 	bne	r2,zero,2008564 <___vfiprintf_internal_r+0xb28>
 2007d68:	a880100c 	andi	r2,r21,64
 2007d6c:	1001fd26 	beq	r2,zero,2008564 <___vfiprintf_internal_r+0xb28>
 2007d70:	da812117 	ldw	r10,1156(sp)
 2007d74:	002d883a 	mov	r22,zero
 2007d78:	00800044 	movi	r2,1
 2007d7c:	5480000b 	ldhu	r18,0(r10)
 2007d80:	52800104 	addi	r10,r10,4
 2007d84:	da812115 	stw	r10,1156(sp)
 2007d88:	9009883a 	mov	r4,r18
 2007d8c:	00000a06 	br	2007db8 <___vfiprintf_internal_r+0x37c>
 2007d90:	ad400414 	ori	r21,r21,16
 2007d94:	a880080c 	andi	r2,r21,32
 2007d98:	10011426 	beq	r2,zero,20081ec <___vfiprintf_internal_r+0x7b0>
 2007d9c:	da812117 	ldw	r10,1156(sp)
 2007da0:	0005883a 	mov	r2,zero
 2007da4:	54800017 	ldw	r18,0(r10)
 2007da8:	55800117 	ldw	r22,4(r10)
 2007dac:	52800204 	addi	r10,r10,8
 2007db0:	da812115 	stw	r10,1156(sp)
 2007db4:	9588b03a 	or	r4,r18,r22
 2007db8:	d8011d85 	stb	zero,1142(sp)
 2007dbc:	4823883a 	mov	r17,r9
 2007dc0:	0019883a 	mov	r12,zero
 2007dc4:	48000216 	blt	r9,zero,2007dd0 <___vfiprintf_internal_r+0x394>
 2007dc8:	00ffdfc4 	movi	r3,-129
 2007dcc:	a8ea703a 	and	r21,r21,r3
 2007dd0:	2002221e 	bne	r4,zero,200865c <___vfiprintf_internal_r+0xc20>
 2007dd4:	4802c726 	beq	r9,zero,20088f4 <___vfiprintf_internal_r+0xeb8>
 2007dd8:	10803fcc 	andi	r2,r2,255
 2007ddc:	00c00044 	movi	r3,1
 2007de0:	10c24426 	beq	r2,r3,20086f4 <___vfiprintf_internal_r+0xcb8>
 2007de4:	00c00084 	movi	r3,2
 2007de8:	10c2cc26 	beq	r2,r3,200891c <___vfiprintf_internal_r+0xee0>
 2007dec:	d8c10a04 	addi	r3,sp,1064
 2007df0:	9008d0fa 	srli	r4,r18,3
 2007df4:	b00a977a 	slli	r5,r22,29
 2007df8:	b02cd0fa 	srli	r22,r22,3
 2007dfc:	948001cc 	andi	r18,r18,7
 2007e00:	90800c04 	addi	r2,r18,48
 2007e04:	18ffffc4 	addi	r3,r3,-1
 2007e08:	2924b03a 	or	r18,r5,r4
 2007e0c:	18800005 	stb	r2,0(r3)
 2007e10:	9588b03a 	or	r4,r18,r22
 2007e14:	203ff61e 	bne	r4,zero,2007df0 <___vfiprintf_internal_r+0x3b4>
 2007e18:	a900004c 	andi	r4,r21,1
 2007e1c:	d8c12415 	stw	r3,1168(sp)
 2007e20:	2002fb1e 	bne	r4,zero,2008a10 <___vfiprintf_internal_r+0xfd4>
 2007e24:	da811e17 	ldw	r10,1144(sp)
 2007e28:	50e3c83a 	sub	r17,r10,r3
 2007e2c:	8825883a 	mov	r18,r17
 2007e30:	8a40010e 	bge	r17,r9,2007e38 <___vfiprintf_internal_r+0x3fc>
 2007e34:	4825883a 	mov	r18,r9
 2007e38:	63003fcc 	andi	r12,r12,255
 2007e3c:	6300201c 	xori	r12,r12,128
 2007e40:	633fe004 	addi	r12,r12,-128
 2007e44:	60000126 	beq	r12,zero,2007e4c <___vfiprintf_internal_r+0x410>
 2007e48:	94800044 	addi	r18,r18,1
 2007e4c:	ab80008c 	andi	r14,r21,2
 2007e50:	70000126 	beq	r14,zero,2007e58 <___vfiprintf_internal_r+0x41c>
 2007e54:	94800084 	addi	r18,r18,2
 2007e58:	ad80210c 	andi	r22,r21,132
 2007e5c:	b001df1e 	bne	r22,zero,20085dc <___vfiprintf_internal_r+0xba0>
 2007e60:	9c8fc83a 	sub	r7,r19,r18
 2007e64:	01c1dd0e 	bge	zero,r7,20085dc <___vfiprintf_internal_r+0xba0>
 2007e68:	03000404 	movi	r12,16
 2007e6c:	d8811c17 	ldw	r2,1136(sp)
 2007e70:	61c3920e 	bge	r12,r7,2008cbc <___vfiprintf_internal_r+0x1280>
 2007e74:	02808074 	movhi	r10,513
 2007e78:	52bcda04 	addi	r10,r10,-3224
 2007e7c:	dc012915 	stw	r16,1188(sp)
 2007e80:	d9811b17 	ldw	r6,1132(sp)
 2007e84:	da812315 	stw	r10,1164(sp)
 2007e88:	00c001c4 	movi	r3,7
 2007e8c:	da412515 	stw	r9,1172(sp)
 2007e90:	db812815 	stw	r14,1184(sp)
 2007e94:	3821883a 	mov	r16,r7
 2007e98:	00000506 	br	2007eb0 <___vfiprintf_internal_r+0x474>
 2007e9c:	31400084 	addi	r5,r6,2
 2007ea0:	42000204 	addi	r8,r8,8
 2007ea4:	200d883a 	mov	r6,r4
 2007ea8:	843ffc04 	addi	r16,r16,-16
 2007eac:	64000d0e 	bge	r12,r16,2007ee4 <___vfiprintf_internal_r+0x4a8>
 2007eb0:	10800404 	addi	r2,r2,16
 2007eb4:	31000044 	addi	r4,r6,1
 2007eb8:	47000015 	stw	fp,0(r8)
 2007ebc:	43000115 	stw	r12,4(r8)
 2007ec0:	d8811c15 	stw	r2,1136(sp)
 2007ec4:	d9011b15 	stw	r4,1132(sp)
 2007ec8:	193ff40e 	bge	r3,r4,2007e9c <___vfiprintf_internal_r+0x460>
 2007ecc:	1001b51e 	bne	r2,zero,20085a4 <___vfiprintf_internal_r+0xb68>
 2007ed0:	843ffc04 	addi	r16,r16,-16
 2007ed4:	000d883a 	mov	r6,zero
 2007ed8:	01400044 	movi	r5,1
 2007edc:	d811883a 	mov	r8,sp
 2007ee0:	643ff316 	blt	r12,r16,2007eb0 <___vfiprintf_internal_r+0x474>
 2007ee4:	800f883a 	mov	r7,r16
 2007ee8:	da412517 	ldw	r9,1172(sp)
 2007eec:	db812817 	ldw	r14,1184(sp)
 2007ef0:	dc012917 	ldw	r16,1188(sp)
 2007ef4:	dac12317 	ldw	r11,1164(sp)
 2007ef8:	3887883a 	add	r3,r7,r2
 2007efc:	41c00115 	stw	r7,4(r8)
 2007f00:	42c00015 	stw	r11,0(r8)
 2007f04:	d8c11c15 	stw	r3,1136(sp)
 2007f08:	d9411b15 	stw	r5,1132(sp)
 2007f0c:	008001c4 	movi	r2,7
 2007f10:	11429316 	blt	r2,r5,2008960 <___vfiprintf_internal_r+0xf24>
 2007f14:	d9011d87 	ldb	r4,1142(sp)
 2007f18:	42000204 	addi	r8,r8,8
 2007f1c:	28800044 	addi	r2,r5,1
 2007f20:	2001b31e 	bne	r4,zero,20085f0 <___vfiprintf_internal_r+0xbb4>
 2007f24:	70000c26 	beq	r14,zero,2007f58 <___vfiprintf_internal_r+0x51c>
 2007f28:	d9011d04 	addi	r4,sp,1140
 2007f2c:	18c00084 	addi	r3,r3,2
 2007f30:	41000015 	stw	r4,0(r8)
 2007f34:	01000084 	movi	r4,2
 2007f38:	41000115 	stw	r4,4(r8)
 2007f3c:	d8c11c15 	stw	r3,1136(sp)
 2007f40:	d8811b15 	stw	r2,1132(sp)
 2007f44:	010001c4 	movi	r4,7
 2007f48:	20826516 	blt	r4,r2,20088e0 <___vfiprintf_internal_r+0xea4>
 2007f4c:	100b883a 	mov	r5,r2
 2007f50:	42000204 	addi	r8,r8,8
 2007f54:	10800044 	addi	r2,r2,1
 2007f58:	01002004 	movi	r4,128
 2007f5c:	b1021a26 	beq	r22,r4,20087c8 <___vfiprintf_internal_r+0xd8c>
 2007f60:	4c6dc83a 	sub	r22,r9,r17
 2007f64:	0580230e 	bge	zero,r22,2007ff4 <___vfiprintf_internal_r+0x5b8>
 2007f68:	01c00404 	movi	r7,16
 2007f6c:	3d83300e 	bge	r7,r22,2008c30 <___vfiprintf_internal_r+0x11f4>
 2007f70:	00808074 	movhi	r2,513
 2007f74:	10bcd604 	addi	r2,r2,-3240
 2007f78:	d8812315 	stw	r2,1164(sp)
 2007f7c:	030001c4 	movi	r12,7
 2007f80:	00000506 	br	2007f98 <___vfiprintf_internal_r+0x55c>
 2007f84:	28800084 	addi	r2,r5,2
 2007f88:	42000204 	addi	r8,r8,8
 2007f8c:	200b883a 	mov	r5,r4
 2007f90:	b5bffc04 	addi	r22,r22,-16
 2007f94:	3d800d0e 	bge	r7,r22,2007fcc <___vfiprintf_internal_r+0x590>
 2007f98:	18c00404 	addi	r3,r3,16
 2007f9c:	29000044 	addi	r4,r5,1
 2007fa0:	45c00015 	stw	r23,0(r8)
 2007fa4:	41c00115 	stw	r7,4(r8)
 2007fa8:	d8c11c15 	stw	r3,1136(sp)
 2007fac:	d9011b15 	stw	r4,1132(sp)
 2007fb0:	613ff40e 	bge	r12,r4,2007f84 <___vfiprintf_internal_r+0x548>
 2007fb4:	18019b1e 	bne	r3,zero,2008624 <___vfiprintf_internal_r+0xbe8>
 2007fb8:	b5bffc04 	addi	r22,r22,-16
 2007fbc:	000b883a 	mov	r5,zero
 2007fc0:	00800044 	movi	r2,1
 2007fc4:	d811883a 	mov	r8,sp
 2007fc8:	3dbff316 	blt	r7,r22,2007f98 <___vfiprintf_internal_r+0x55c>
 2007fcc:	da812317 	ldw	r10,1164(sp)
 2007fd0:	1d87883a 	add	r3,r3,r22
 2007fd4:	45800115 	stw	r22,4(r8)
 2007fd8:	42800015 	stw	r10,0(r8)
 2007fdc:	d8c11c15 	stw	r3,1136(sp)
 2007fe0:	d8811b15 	stw	r2,1132(sp)
 2007fe4:	010001c4 	movi	r4,7
 2007fe8:	2081dd16 	blt	r4,r2,2008760 <___vfiprintf_internal_r+0xd24>
 2007fec:	42000204 	addi	r8,r8,8
 2007ff0:	10800044 	addi	r2,r2,1
 2007ff4:	da812417 	ldw	r10,1168(sp)
 2007ff8:	1c47883a 	add	r3,r3,r17
 2007ffc:	44400115 	stw	r17,4(r8)
 2008000:	42800015 	stw	r10,0(r8)
 2008004:	d8c11c15 	stw	r3,1136(sp)
 2008008:	d8811b15 	stw	r2,1132(sp)
 200800c:	010001c4 	movi	r4,7
 2008010:	2081dc0e 	bge	r4,r2,2008784 <___vfiprintf_internal_r+0xd48>
 2008014:	1802611e 	bne	r3,zero,200899c <___vfiprintf_internal_r+0xf60>
 2008018:	d8011b15 	stw	zero,1132(sp)
 200801c:	aac0010c 	andi	r11,r21,4
 2008020:	58002726 	beq	r11,zero,20080c0 <___vfiprintf_internal_r+0x684>
 2008024:	9ca3c83a 	sub	r17,r19,r18
 2008028:	d811883a 	mov	r8,sp
 200802c:	0443510e 	bge	zero,r17,2008d74 <___vfiprintf_internal_r+0x1338>
 2008030:	01c00404 	movi	r7,16
 2008034:	3c43320e 	bge	r7,r17,2008d00 <___vfiprintf_internal_r+0x12c4>
 2008038:	00808074 	movhi	r2,513
 200803c:	10bcda04 	addi	r2,r2,-3224
 2008040:	d9011b17 	ldw	r4,1132(sp)
 2008044:	d8812315 	stw	r2,1164(sp)
 2008048:	382d883a 	mov	r22,r7
 200804c:	054001c4 	movi	r21,7
 2008050:	00000506 	br	2008068 <___vfiprintf_internal_r+0x62c>
 2008054:	21400084 	addi	r5,r4,2
 2008058:	42000204 	addi	r8,r8,8
 200805c:	1009883a 	mov	r4,r2
 2008060:	8c7ffc04 	addi	r17,r17,-16
 2008064:	b4400d0e 	bge	r22,r17,200809c <___vfiprintf_internal_r+0x660>
 2008068:	18c00404 	addi	r3,r3,16
 200806c:	20800044 	addi	r2,r4,1
 2008070:	47000015 	stw	fp,0(r8)
 2008074:	45800115 	stw	r22,4(r8)
 2008078:	d8c11c15 	stw	r3,1136(sp)
 200807c:	d8811b15 	stw	r2,1132(sp)
 2008080:	a8bff40e 	bge	r21,r2,2008054 <___vfiprintf_internal_r+0x618>
 2008084:	1801ac1e 	bne	r3,zero,2008738 <___vfiprintf_internal_r+0xcfc>
 2008088:	8c7ffc04 	addi	r17,r17,-16
 200808c:	0009883a 	mov	r4,zero
 2008090:	01400044 	movi	r5,1
 2008094:	d811883a 	mov	r8,sp
 2008098:	b47ff316 	blt	r22,r17,2008068 <___vfiprintf_internal_r+0x62c>
 200809c:	da812317 	ldw	r10,1164(sp)
 20080a0:	1c47883a 	add	r3,r3,r17
 20080a4:	44400115 	stw	r17,4(r8)
 20080a8:	42800015 	stw	r10,0(r8)
 20080ac:	d8c11c15 	stw	r3,1136(sp)
 20080b0:	d9411b15 	stw	r5,1132(sp)
 20080b4:	008001c4 	movi	r2,7
 20080b8:	1141b70e 	bge	r2,r5,2008798 <___vfiprintf_internal_r+0xd5c>
 20080bc:	1802cf1e 	bne	r3,zero,2008bfc <___vfiprintf_internal_r+0x11c0>
 20080c0:	94c2ca16 	blt	r18,r19,2008bec <___vfiprintf_internal_r+0x11b0>
 20080c4:	dac12217 	ldw	r11,1160(sp)
 20080c8:	5c97883a 	add	r11,r11,r18
 20080cc:	dac12215 	stw	r11,1160(sp)
 20080d0:	d8011b15 	stw	zero,1132(sp)
 20080d4:	d811883a 	mov	r8,sp
 20080d8:	003e8d06 	br	2007b10 <___vfiprintf_internal_r+0xd4>
 20080dc:	d9012017 	ldw	r4,1152(sp)
 20080e0:	a00b883a 	mov	r5,r20
 20080e4:	20027fc0 	call	20027fc <__swsetup_r>
 20080e8:	10002c1e 	bne	r2,zero,200819c <___vfiprintf_internal_r+0x760>
 20080ec:	a0c0030b 	ldhu	r3,12(r20)
 20080f0:	01000284 	movi	r4,10
 20080f4:	1805883a 	mov	r2,r3
 20080f8:	1080068c 	andi	r2,r2,26
 20080fc:	113e731e 	bne	r2,r4,2007acc <___vfiprintf_internal_r+0x90>
 2008100:	a080038b 	ldhu	r2,14(r20)
 2008104:	113fffcc 	andi	r4,r2,65535
 2008108:	2120001c 	xori	r4,r4,32768
 200810c:	21200004 	addi	r4,r4,-32768
 2008110:	203e6e16 	blt	r4,zero,2007acc <___vfiprintf_internal_r+0x90>
 2008114:	a3001917 	ldw	r12,100(r20)
 2008118:	a2c00717 	ldw	r11,28(r20)
 200811c:	a2800917 	ldw	r10,36(r20)
 2008120:	d9012017 	ldw	r4,1152(sp)
 2008124:	d9c12117 	ldw	r7,1156(sp)
 2008128:	02410004 	movi	r9,1024
 200812c:	18ffff4c 	andi	r3,r3,65533
 2008130:	da4b883a 	add	r5,sp,r9
 2008134:	b00d883a 	mov	r6,r22
 2008138:	d8c1030d 	sth	r3,1036(sp)
 200813c:	db011915 	stw	r12,1124(sp)
 2008140:	d881038d 	sth	r2,1038(sp)
 2008144:	dac10715 	stw	r11,1052(sp)
 2008148:	da810915 	stw	r10,1060(sp)
 200814c:	dec10015 	stw	sp,1024(sp)
 2008150:	dec10415 	stw	sp,1040(sp)
 2008154:	da410215 	stw	r9,1032(sp)
 2008158:	da410515 	stw	r9,1044(sp)
 200815c:	d8010615 	stw	zero,1048(sp)
 2008160:	2007a3c0 	call	2007a3c <___vfiprintf_internal_r>
 2008164:	1021883a 	mov	r16,r2
 2008168:	10000416 	blt	r2,zero,200817c <___vfiprintf_internal_r+0x740>
 200816c:	d9012017 	ldw	r4,1152(sp)
 2008170:	d9410004 	addi	r5,sp,1024
 2008174:	20042540 	call	2004254 <_fflush_r>
 2008178:	1002fc1e 	bne	r2,zero,2008d6c <___vfiprintf_internal_r+0x1330>
 200817c:	d881030b 	ldhu	r2,1036(sp)
 2008180:	1080100c 	andi	r2,r2,64
 2008184:	10000326 	beq	r2,zero,2008194 <___vfiprintf_internal_r+0x758>
 2008188:	a080030b 	ldhu	r2,12(r20)
 200818c:	10801014 	ori	r2,r2,64
 2008190:	a080030d 	sth	r2,12(r20)
 2008194:	8005883a 	mov	r2,r16
 2008198:	00000106 	br	20081a0 <___vfiprintf_internal_r+0x764>
 200819c:	00bfffc4 	movi	r2,-1
 20081a0:	dfc13517 	ldw	ra,1236(sp)
 20081a4:	df013417 	ldw	fp,1232(sp)
 20081a8:	ddc13317 	ldw	r23,1228(sp)
 20081ac:	dd813217 	ldw	r22,1224(sp)
 20081b0:	dd413117 	ldw	r21,1220(sp)
 20081b4:	dd013017 	ldw	r20,1216(sp)
 20081b8:	dcc12f17 	ldw	r19,1212(sp)
 20081bc:	dc812e17 	ldw	r18,1208(sp)
 20081c0:	dc412d17 	ldw	r17,1204(sp)
 20081c4:	dc012c17 	ldw	r16,1200(sp)
 20081c8:	dec13604 	addi	sp,sp,1240
 20081cc:	f800283a 	ret
 20081d0:	20047fc0 	call	20047fc <__sinit>
 20081d4:	003e2b06 	br	2007a84 <___vfiprintf_internal_r+0x48>
 20081d8:	04e7c83a 	sub	r19,zero,r19
 20081dc:	d8812115 	stw	r2,1156(sp)
 20081e0:	ad400114 	ori	r21,r21,4
 20081e4:	80c00007 	ldb	r3,0(r16)
 20081e8:	003e7306 	br	2007bb8 <___vfiprintf_internal_r+0x17c>
 20081ec:	a880040c 	andi	r2,r21,16
 20081f0:	1000e41e 	bne	r2,zero,2008584 <___vfiprintf_internal_r+0xb48>
 20081f4:	a880100c 	andi	r2,r21,64
 20081f8:	1000e226 	beq	r2,zero,2008584 <___vfiprintf_internal_r+0xb48>
 20081fc:	da812117 	ldw	r10,1156(sp)
 2008200:	002d883a 	mov	r22,zero
 2008204:	0005883a 	mov	r2,zero
 2008208:	5480000b 	ldhu	r18,0(r10)
 200820c:	52800104 	addi	r10,r10,4
 2008210:	da812115 	stw	r10,1156(sp)
 2008214:	9009883a 	mov	r4,r18
 2008218:	003ee706 	br	2007db8 <___vfiprintf_internal_r+0x37c>
 200821c:	da812117 	ldw	r10,1156(sp)
 2008220:	00800044 	movi	r2,1
 2008224:	54800017 	ldw	r18,0(r10)
 2008228:	55800117 	ldw	r22,4(r10)
 200822c:	52800204 	addi	r10,r10,8
 2008230:	da812115 	stw	r10,1156(sp)
 2008234:	9588b03a 	or	r4,r18,r22
 2008238:	003edf06 	br	2007db8 <___vfiprintf_internal_r+0x37c>
 200823c:	02c08074 	movhi	r11,513
 2008240:	5afc7004 	addi	r11,r11,-3648
 2008244:	d9811d85 	stb	r6,1142(sp)
 2008248:	dac12615 	stw	r11,1176(sp)
 200824c:	a900080c 	andi	r4,r21,32
 2008250:	d8812117 	ldw	r2,1156(sp)
 2008254:	2000a526 	beq	r4,zero,20084ec <___vfiprintf_internal_r+0xab0>
 2008258:	da812117 	ldw	r10,1156(sp)
 200825c:	14800017 	ldw	r18,0(r2)
 2008260:	15800117 	ldw	r22,4(r2)
 2008264:	52800204 	addi	r10,r10,8
 2008268:	da812115 	stw	r10,1156(sp)
 200826c:	a880004c 	andi	r2,r21,1
 2008270:	1001d926 	beq	r2,zero,20089d8 <___vfiprintf_internal_r+0xf9c>
 2008274:	9588b03a 	or	r4,r18,r22
 2008278:	20024426 	beq	r4,zero,2008b8c <___vfiprintf_internal_r+0x1150>
 200827c:	00800c04 	movi	r2,48
 2008280:	d8811d05 	stb	r2,1140(sp)
 2008284:	d8c11d45 	stb	r3,1141(sp)
 2008288:	ad400094 	ori	r21,r21,2
 200828c:	00800084 	movi	r2,2
 2008290:	003ec906 	br	2007db8 <___vfiprintf_internal_r+0x37c>
 2008294:	da812117 	ldw	r10,1156(sp)
 2008298:	04800044 	movi	r18,1
 200829c:	dac10004 	addi	r11,sp,1024
 20082a0:	50800017 	ldw	r2,0(r10)
 20082a4:	52800104 	addi	r10,r10,4
 20082a8:	d8011d85 	stb	zero,1142(sp)
 20082ac:	d8810005 	stb	r2,1024(sp)
 20082b0:	da812115 	stw	r10,1156(sp)
 20082b4:	9023883a 	mov	r17,r18
 20082b8:	dac12415 	stw	r11,1168(sp)
 20082bc:	0013883a 	mov	r9,zero
 20082c0:	003ee206 	br	2007e4c <___vfiprintf_internal_r+0x410>
 20082c4:	ad402014 	ori	r21,r21,128
 20082c8:	80c00007 	ldb	r3,0(r16)
 20082cc:	003e3a06 	br	2007bb8 <___vfiprintf_internal_r+0x17c>
 20082d0:	8015883a 	mov	r10,r16
 20082d4:	0027883a 	mov	r19,zero
 20082d8:	18bff404 	addi	r2,r3,-48
 20082dc:	50c00007 	ldb	r3,0(r10)
 20082e0:	9cc002a4 	muli	r19,r19,10
 20082e4:	84000044 	addi	r16,r16,1
 20082e8:	8015883a 	mov	r10,r16
 20082ec:	98a7883a 	add	r19,r19,r2
 20082f0:	18bff404 	addi	r2,r3,-48
 20082f4:	28bff92e 	bgeu	r5,r2,20082dc <___vfiprintf_internal_r+0x8a0>
 20082f8:	003e3006 	br	2007bbc <___vfiprintf_internal_r+0x180>
 20082fc:	ad400414 	ori	r21,r21,16
 2008300:	d9811d85 	stb	r6,1142(sp)
 2008304:	a880080c 	andi	r2,r21,32
 2008308:	d8c12117 	ldw	r3,1156(sp)
 200830c:	10004b26 	beq	r2,zero,200843c <___vfiprintf_internal_r+0xa00>
 2008310:	da812117 	ldw	r10,1156(sp)
 2008314:	18800117 	ldw	r2,4(r3)
 2008318:	1c800017 	ldw	r18,0(r3)
 200831c:	52800204 	addi	r10,r10,8
 2008320:	da812115 	stw	r10,1156(sp)
 2008324:	102d883a 	mov	r22,r2
 2008328:	1001f116 	blt	r2,zero,2008af0 <___vfiprintf_internal_r+0x10b4>
 200832c:	db011d83 	ldbu	r12,1142(sp)
 2008330:	4823883a 	mov	r17,r9
 2008334:	00800044 	movi	r2,1
 2008338:	9588b03a 	or	r4,r18,r22
 200833c:	003ea106 	br	2007dc4 <___vfiprintf_internal_r+0x388>
 2008340:	80c00007 	ldb	r3,0(r16)
 2008344:	82800044 	addi	r10,r16,1
 2008348:	1b027f26 	beq	r3,r12,2008d48 <___vfiprintf_internal_r+0x130c>
 200834c:	18bff404 	addi	r2,r3,-48
 2008350:	5021883a 	mov	r16,r10
 2008354:	0013883a 	mov	r9,zero
 2008358:	28be1836 	bltu	r5,r2,2007bbc <___vfiprintf_internal_r+0x180>
 200835c:	80c00007 	ldb	r3,0(r16)
 2008360:	4a4002a4 	muli	r9,r9,10
 2008364:	84000044 	addi	r16,r16,1
 2008368:	1253883a 	add	r9,r2,r9
 200836c:	18bff404 	addi	r2,r3,-48
 2008370:	28bffa2e 	bgeu	r5,r2,200835c <___vfiprintf_internal_r+0x920>
 2008374:	483e110e 	bge	r9,zero,2007bbc <___vfiprintf_internal_r+0x180>
 2008378:	027fffc4 	movi	r9,-1
 200837c:	003e0f06 	br	2007bbc <___vfiprintf_internal_r+0x180>
 2008380:	d9811d85 	stb	r6,1142(sp)
 2008384:	a880080c 	andi	r2,r21,32
 2008388:	1001ee26 	beq	r2,zero,2008b44 <___vfiprintf_internal_r+0x1108>
 200838c:	da812117 	ldw	r10,1156(sp)
 2008390:	dac12217 	ldw	r11,1160(sp)
 2008394:	50800017 	ldw	r2,0(r10)
 2008398:	5807d7fa 	srai	r3,r11,31
 200839c:	52800104 	addi	r10,r10,4
 20083a0:	da812115 	stw	r10,1156(sp)
 20083a4:	12c00015 	stw	r11,0(r2)
 20083a8:	10c00115 	stw	r3,4(r2)
 20083ac:	003dd806 	br	2007b10 <___vfiprintf_internal_r+0xd4>
 20083b0:	30803fcc 	andi	r2,r6,255
 20083b4:	1080201c 	xori	r2,r2,128
 20083b8:	10bfe004 	addi	r2,r2,-128
 20083bc:	1001df1e 	bne	r2,zero,2008b3c <___vfiprintf_internal_r+0x1100>
 20083c0:	01800804 	movi	r6,32
 20083c4:	80c00007 	ldb	r3,0(r16)
 20083c8:	003dfb06 	br	2007bb8 <___vfiprintf_internal_r+0x17c>
 20083cc:	da812117 	ldw	r10,1156(sp)
 20083d0:	dac12117 	ldw	r11,1156(sp)
 20083d4:	d8011d85 	stb	zero,1142(sp)
 20083d8:	52800017 	ldw	r10,0(r10)
 20083dc:	5d800104 	addi	r22,r11,4
 20083e0:	da812415 	stw	r10,1168(sp)
 20083e4:	50023b26 	beq	r10,zero,2008cd4 <___vfiprintf_internal_r+0x1298>
 20083e8:	d9012417 	ldw	r4,1168(sp)
 20083ec:	48021f16 	blt	r9,zero,2008c6c <___vfiprintf_internal_r+0x1230>
 20083f0:	480d883a 	mov	r6,r9
 20083f4:	000b883a 	mov	r5,zero
 20083f8:	da012a15 	stw	r8,1192(sp)
 20083fc:	da412b15 	stw	r9,1196(sp)
 2008400:	2005cb40 	call	2005cb4 <memchr>
 2008404:	da012a17 	ldw	r8,1192(sp)
 2008408:	da412b17 	ldw	r9,1196(sp)
 200840c:	10024726 	beq	r2,zero,2008d2c <___vfiprintf_internal_r+0x12f0>
 2008410:	d8c12417 	ldw	r3,1168(sp)
 2008414:	10e3c83a 	sub	r17,r2,r3
 2008418:	4c41f616 	blt	r9,r17,2008bf4 <___vfiprintf_internal_r+0x11b8>
 200841c:	db011d83 	ldbu	r12,1142(sp)
 2008420:	dd812115 	stw	r22,1156(sp)
 2008424:	0013883a 	mov	r9,zero
 2008428:	003e8006 	br	2007e2c <___vfiprintf_internal_r+0x3f0>
 200842c:	d9811d85 	stb	r6,1142(sp)
 2008430:	a880080c 	andi	r2,r21,32
 2008434:	d8c12117 	ldw	r3,1156(sp)
 2008438:	103fb51e 	bne	r2,zero,2008310 <___vfiprintf_internal_r+0x8d4>
 200843c:	a880040c 	andi	r2,r21,16
 2008440:	10015e1e 	bne	r2,zero,20089bc <___vfiprintf_internal_r+0xf80>
 2008444:	a880100c 	andi	r2,r21,64
 2008448:	10015c26 	beq	r2,zero,20089bc <___vfiprintf_internal_r+0xf80>
 200844c:	1c80000f 	ldh	r18,0(r3)
 2008450:	da812117 	ldw	r10,1156(sp)
 2008454:	902dd7fa 	srai	r22,r18,31
 2008458:	52800104 	addi	r10,r10,4
 200845c:	da812115 	stw	r10,1156(sp)
 2008460:	b005883a 	mov	r2,r22
 2008464:	003fb006 	br	2008328 <___vfiprintf_internal_r+0x8ec>
 2008468:	da812117 	ldw	r10,1156(sp)
 200846c:	00800c04 	movi	r2,48
 2008470:	02c08074 	movhi	r11,513
 2008474:	54800017 	ldw	r18,0(r10)
 2008478:	d8811d05 	stb	r2,1140(sp)
 200847c:	52800104 	addi	r10,r10,4
 2008480:	00801e04 	movi	r2,120
 2008484:	5afc7504 	addi	r11,r11,-3628
 2008488:	d8811d45 	stb	r2,1141(sp)
 200848c:	002d883a 	mov	r22,zero
 2008490:	ad400094 	ori	r21,r21,2
 2008494:	da812115 	stw	r10,1156(sp)
 2008498:	dac12615 	stw	r11,1176(sp)
 200849c:	00800084 	movi	r2,2
 20084a0:	9009883a 	mov	r4,r18
 20084a4:	003e4406 	br	2007db8 <___vfiprintf_internal_r+0x37c>
 20084a8:	ad400814 	ori	r21,r21,32
 20084ac:	80c00007 	ldb	r3,0(r16)
 20084b0:	003dc106 	br	2007bb8 <___vfiprintf_internal_r+0x17c>
 20084b4:	ad401014 	ori	r21,r21,64
 20084b8:	80c00007 	ldb	r3,0(r16)
 20084bc:	003dbe06 	br	2007bb8 <___vfiprintf_internal_r+0x17c>
 20084c0:	80c00007 	ldb	r3,0(r16)
 20084c4:	19c1de26 	beq	r3,r7,2008c40 <___vfiprintf_internal_r+0x1204>
 20084c8:	ad400414 	ori	r21,r21,16
 20084cc:	003dba06 	br	2007bb8 <___vfiprintf_internal_r+0x17c>
 20084d0:	00808074 	movhi	r2,513
 20084d4:	10bc7504 	addi	r2,r2,-3628
 20084d8:	d8812615 	stw	r2,1176(sp)
 20084dc:	d9811d85 	stb	r6,1142(sp)
 20084e0:	a900080c 	andi	r4,r21,32
 20084e4:	d8812117 	ldw	r2,1156(sp)
 20084e8:	203f5b1e 	bne	r4,zero,2008258 <___vfiprintf_internal_r+0x81c>
 20084ec:	a900040c 	andi	r4,r21,16
 20084f0:	2001a826 	beq	r4,zero,2008b94 <___vfiprintf_internal_r+0x1158>
 20084f4:	dac12117 	ldw	r11,1156(sp)
 20084f8:	14800017 	ldw	r18,0(r2)
 20084fc:	002d883a 	mov	r22,zero
 2008500:	5ac00104 	addi	r11,r11,4
 2008504:	dac12115 	stw	r11,1156(sp)
 2008508:	003f5806 	br	200826c <___vfiprintf_internal_r+0x830>
 200850c:	da812117 	ldw	r10,1156(sp)
 2008510:	54c00017 	ldw	r19,0(r10)
 2008514:	50800104 	addi	r2,r10,4
 2008518:	983f2f16 	blt	r19,zero,20081d8 <___vfiprintf_internal_r+0x79c>
 200851c:	d8812115 	stw	r2,1156(sp)
 2008520:	80c00007 	ldb	r3,0(r16)
 2008524:	003da406 	br	2007bb8 <___vfiprintf_internal_r+0x17c>
 2008528:	01800ac4 	movi	r6,43
 200852c:	80c00007 	ldb	r3,0(r16)
 2008530:	003da106 	br	2007bb8 <___vfiprintf_internal_r+0x17c>
 2008534:	ad400054 	ori	r21,r21,1
 2008538:	80c00007 	ldb	r3,0(r16)
 200853c:	003d9e06 	br	2007bb8 <___vfiprintf_internal_r+0x17c>
 2008540:	d9811d85 	stb	r6,1142(sp)
 2008544:	18007126 	beq	r3,zero,200870c <___vfiprintf_internal_r+0xcd0>
 2008548:	04800044 	movi	r18,1
 200854c:	d8c10005 	stb	r3,1024(sp)
 2008550:	d8c10004 	addi	r3,sp,1024
 2008554:	d8011d85 	stb	zero,1142(sp)
 2008558:	9023883a 	mov	r17,r18
 200855c:	d8c12415 	stw	r3,1168(sp)
 2008560:	003f5606 	br	20082bc <___vfiprintf_internal_r+0x880>
 2008564:	dac12117 	ldw	r11,1156(sp)
 2008568:	002d883a 	mov	r22,zero
 200856c:	00800044 	movi	r2,1
 2008570:	5c800017 	ldw	r18,0(r11)
 2008574:	5ac00104 	addi	r11,r11,4
 2008578:	dac12115 	stw	r11,1156(sp)
 200857c:	9009883a 	mov	r4,r18
 2008580:	003e0d06 	br	2007db8 <___vfiprintf_internal_r+0x37c>
 2008584:	dac12117 	ldw	r11,1156(sp)
 2008588:	002d883a 	mov	r22,zero
 200858c:	0005883a 	mov	r2,zero
 2008590:	5c800017 	ldw	r18,0(r11)
 2008594:	5ac00104 	addi	r11,r11,4
 2008598:	dac12115 	stw	r11,1156(sp)
 200859c:	9009883a 	mov	r4,r18
 20085a0:	003e0506 	br	2007db8 <___vfiprintf_internal_r+0x37c>
 20085a4:	d9012017 	ldw	r4,1152(sp)
 20085a8:	a00b883a 	mov	r5,r20
 20085ac:	d9811a04 	addi	r6,sp,1128
 20085b0:	d8c12a15 	stw	r3,1192(sp)
 20085b4:	db012b15 	stw	r12,1196(sp)
 20085b8:	20079280 	call	2007928 <__sprint_r.part.0>
 20085bc:	d8c12a17 	ldw	r3,1192(sp)
 20085c0:	db012b17 	ldw	r12,1196(sp)
 20085c4:	1000571e 	bne	r2,zero,2008724 <___vfiprintf_internal_r+0xce8>
 20085c8:	d9811b17 	ldw	r6,1132(sp)
 20085cc:	d8811c17 	ldw	r2,1136(sp)
 20085d0:	d811883a 	mov	r8,sp
 20085d4:	31400044 	addi	r5,r6,1
 20085d8:	003e3306 	br	2007ea8 <___vfiprintf_internal_r+0x46c>
 20085dc:	d9411b17 	ldw	r5,1132(sp)
 20085e0:	d8c11c17 	ldw	r3,1136(sp)
 20085e4:	28800044 	addi	r2,r5,1
 20085e8:	d9011d87 	ldb	r4,1142(sp)
 20085ec:	203e4d26 	beq	r4,zero,2007f24 <___vfiprintf_internal_r+0x4e8>
 20085f0:	01000044 	movi	r4,1
 20085f4:	d9411d84 	addi	r5,sp,1142
 20085f8:	1907883a 	add	r3,r3,r4
 20085fc:	41400015 	stw	r5,0(r8)
 2008600:	41000115 	stw	r4,4(r8)
 2008604:	d8c11c15 	stw	r3,1136(sp)
 2008608:	d8811b15 	stw	r2,1132(sp)
 200860c:	014001c4 	movi	r5,7
 2008610:	2880aa16 	blt	r5,r2,20088bc <___vfiprintf_internal_r+0xe80>
 2008614:	100b883a 	mov	r5,r2
 2008618:	42000204 	addi	r8,r8,8
 200861c:	10800044 	addi	r2,r2,1
 2008620:	003e4006 	br	2007f24 <___vfiprintf_internal_r+0x4e8>
 2008624:	d9012017 	ldw	r4,1152(sp)
 2008628:	a00b883a 	mov	r5,r20
 200862c:	d9811a04 	addi	r6,sp,1128
 2008630:	d9c12a15 	stw	r7,1192(sp)
 2008634:	db012b15 	stw	r12,1196(sp)
 2008638:	20079280 	call	2007928 <__sprint_r.part.0>
 200863c:	d9c12a17 	ldw	r7,1192(sp)
 2008640:	db012b17 	ldw	r12,1196(sp)
 2008644:	1000371e 	bne	r2,zero,2008724 <___vfiprintf_internal_r+0xce8>
 2008648:	d9411b17 	ldw	r5,1132(sp)
 200864c:	d8c11c17 	ldw	r3,1136(sp)
 2008650:	d811883a 	mov	r8,sp
 2008654:	28800044 	addi	r2,r5,1
 2008658:	003e4d06 	br	2007f90 <___vfiprintf_internal_r+0x554>
 200865c:	10803fcc 	andi	r2,r2,255
 2008660:	00c00044 	movi	r3,1
 2008664:	10fddf1e 	bne	r2,r3,2007de4 <___vfiprintf_internal_r+0x3a8>
 2008668:	b000021e 	bne	r22,zero,2008674 <___vfiprintf_internal_r+0xc38>
 200866c:	00800244 	movi	r2,9
 2008670:	1480202e 	bgeu	r2,r18,20086f4 <___vfiprintf_internal_r+0xcb8>
 2008674:	dc012515 	stw	r16,1172(sp)
 2008678:	dc410a04 	addi	r17,sp,1064
 200867c:	9021883a 	mov	r16,r18
 2008680:	da012415 	stw	r8,1168(sp)
 2008684:	b025883a 	mov	r18,r22
 2008688:	da412315 	stw	r9,1164(sp)
 200868c:	602d883a 	mov	r22,r12
 2008690:	8009883a 	mov	r4,r16
 2008694:	900b883a 	mov	r5,r18
 2008698:	01800284 	movi	r6,10
 200869c:	000f883a 	mov	r7,zero
 20086a0:	2009cb40 	call	2009cb4 <__umoddi3>
 20086a4:	10800c04 	addi	r2,r2,48
 20086a8:	8c7fffc4 	addi	r17,r17,-1
 20086ac:	8009883a 	mov	r4,r16
 20086b0:	900b883a 	mov	r5,r18
 20086b4:	01800284 	movi	r6,10
 20086b8:	000f883a 	mov	r7,zero
 20086bc:	88800005 	stb	r2,0(r17)
 20086c0:	20096f40 	call	20096f4 <__udivdi3>
 20086c4:	1021883a 	mov	r16,r2
 20086c8:	10c4b03a 	or	r2,r2,r3
 20086cc:	1825883a 	mov	r18,r3
 20086d0:	103fef1e 	bne	r2,zero,2008690 <___vfiprintf_internal_r+0xc54>
 20086d4:	da811e17 	ldw	r10,1144(sp)
 20086d8:	da012417 	ldw	r8,1168(sp)
 20086dc:	da412317 	ldw	r9,1164(sp)
 20086e0:	dc412415 	stw	r17,1168(sp)
 20086e4:	b019883a 	mov	r12,r22
 20086e8:	dc012517 	ldw	r16,1172(sp)
 20086ec:	5463c83a 	sub	r17,r10,r17
 20086f0:	003dce06 	br	2007e2c <___vfiprintf_internal_r+0x3f0>
 20086f4:	94800c04 	addi	r18,r18,48
 20086f8:	d8c109c4 	addi	r3,sp,1063
 20086fc:	dc8109c5 	stb	r18,1063(sp)
 2008700:	dc412717 	ldw	r17,1180(sp)
 2008704:	d8c12415 	stw	r3,1168(sp)
 2008708:	003dc806 	br	2007e2c <___vfiprintf_internal_r+0x3f0>
 200870c:	d8811c17 	ldw	r2,1136(sp)
 2008710:	10000426 	beq	r2,zero,2008724 <___vfiprintf_internal_r+0xce8>
 2008714:	d9012017 	ldw	r4,1152(sp)
 2008718:	a00b883a 	mov	r5,r20
 200871c:	d9811a04 	addi	r6,sp,1128
 2008720:	20079280 	call	2007928 <__sprint_r.part.0>
 2008724:	a080030b 	ldhu	r2,12(r20)
 2008728:	1080100c 	andi	r2,r2,64
 200872c:	103e9b1e 	bne	r2,zero,200819c <___vfiprintf_internal_r+0x760>
 2008730:	d8812217 	ldw	r2,1160(sp)
 2008734:	003e9a06 	br	20081a0 <___vfiprintf_internal_r+0x764>
 2008738:	d9012017 	ldw	r4,1152(sp)
 200873c:	a00b883a 	mov	r5,r20
 2008740:	d9811a04 	addi	r6,sp,1128
 2008744:	20079280 	call	2007928 <__sprint_r.part.0>
 2008748:	103ff61e 	bne	r2,zero,2008724 <___vfiprintf_internal_r+0xce8>
 200874c:	d9011b17 	ldw	r4,1132(sp)
 2008750:	d8c11c17 	ldw	r3,1136(sp)
 2008754:	d811883a 	mov	r8,sp
 2008758:	21400044 	addi	r5,r4,1
 200875c:	003e4006 	br	2008060 <___vfiprintf_internal_r+0x624>
 2008760:	1800d61e 	bne	r3,zero,2008abc <___vfiprintf_internal_r+0x1080>
 2008764:	dac12417 	ldw	r11,1168(sp)
 2008768:	00800044 	movi	r2,1
 200876c:	dc400115 	stw	r17,4(sp)
 2008770:	dac00015 	stw	r11,0(sp)
 2008774:	dc411c15 	stw	r17,1136(sp)
 2008778:	d8811b15 	stw	r2,1132(sp)
 200877c:	8807883a 	mov	r3,r17
 2008780:	d811883a 	mov	r8,sp
 2008784:	42000204 	addi	r8,r8,8
 2008788:	aac0010c 	andi	r11,r21,4
 200878c:	58000226 	beq	r11,zero,2008798 <___vfiprintf_internal_r+0xd5c>
 2008790:	9ca3c83a 	sub	r17,r19,r18
 2008794:	047e2616 	blt	zero,r17,2008030 <___vfiprintf_internal_r+0x5f4>
 2008798:	94c0010e 	bge	r18,r19,20087a0 <___vfiprintf_internal_r+0xd64>
 200879c:	9825883a 	mov	r18,r19
 20087a0:	da812217 	ldw	r10,1160(sp)
 20087a4:	5495883a 	add	r10,r10,r18
 20087a8:	da812215 	stw	r10,1160(sp)
 20087ac:	183e4826 	beq	r3,zero,20080d0 <___vfiprintf_internal_r+0x694>
 20087b0:	d9012017 	ldw	r4,1152(sp)
 20087b4:	a00b883a 	mov	r5,r20
 20087b8:	d9811a04 	addi	r6,sp,1128
 20087bc:	20079280 	call	2007928 <__sprint_r.part.0>
 20087c0:	103e4326 	beq	r2,zero,20080d0 <___vfiprintf_internal_r+0x694>
 20087c4:	003fd706 	br	2008724 <___vfiprintf_internal_r+0xce8>
 20087c8:	9cadc83a 	sub	r22,r19,r18
 20087cc:	05bde40e 	bge	zero,r22,2007f60 <___vfiprintf_internal_r+0x524>
 20087d0:	03000404 	movi	r12,16
 20087d4:	6581500e 	bge	r12,r22,2008d18 <___vfiprintf_internal_r+0x12dc>
 20087d8:	00808074 	movhi	r2,513
 20087dc:	10bcd604 	addi	r2,r2,-3240
 20087e0:	d8812315 	stw	r2,1164(sp)
 20087e4:	8005883a 	mov	r2,r16
 20087e8:	038001c4 	movi	r14,7
 20087ec:	b021883a 	mov	r16,r22
 20087f0:	da412515 	stw	r9,1172(sp)
 20087f4:	102d883a 	mov	r22,r2
 20087f8:	00000506 	br	2008810 <___vfiprintf_internal_r+0xdd4>
 20087fc:	29000084 	addi	r4,r5,2
 2008800:	42000204 	addi	r8,r8,8
 2008804:	100b883a 	mov	r5,r2
 2008808:	843ffc04 	addi	r16,r16,-16
 200880c:	64000d0e 	bge	r12,r16,2008844 <___vfiprintf_internal_r+0xe08>
 2008810:	18c00404 	addi	r3,r3,16
 2008814:	28800044 	addi	r2,r5,1
 2008818:	45c00015 	stw	r23,0(r8)
 200881c:	43000115 	stw	r12,4(r8)
 2008820:	d8c11c15 	stw	r3,1136(sp)
 2008824:	d8811b15 	stw	r2,1132(sp)
 2008828:	70bff40e 	bge	r14,r2,20087fc <___vfiprintf_internal_r+0xdc0>
 200882c:	1800151e 	bne	r3,zero,2008884 <___vfiprintf_internal_r+0xe48>
 2008830:	843ffc04 	addi	r16,r16,-16
 2008834:	000b883a 	mov	r5,zero
 2008838:	01000044 	movi	r4,1
 200883c:	d811883a 	mov	r8,sp
 2008840:	643ff316 	blt	r12,r16,2008810 <___vfiprintf_internal_r+0xdd4>
 2008844:	da412517 	ldw	r9,1172(sp)
 2008848:	b005883a 	mov	r2,r22
 200884c:	802d883a 	mov	r22,r16
 2008850:	1021883a 	mov	r16,r2
 2008854:	da812317 	ldw	r10,1164(sp)
 2008858:	1d87883a 	add	r3,r3,r22
 200885c:	45800115 	stw	r22,4(r8)
 2008860:	42800015 	stw	r10,0(r8)
 2008864:	d8c11c15 	stw	r3,1136(sp)
 2008868:	d9011b15 	stw	r4,1132(sp)
 200886c:	008001c4 	movi	r2,7
 2008870:	11008d16 	blt	r2,r4,2008aa8 <___vfiprintf_internal_r+0x106c>
 2008874:	42000204 	addi	r8,r8,8
 2008878:	20800044 	addi	r2,r4,1
 200887c:	200b883a 	mov	r5,r4
 2008880:	003db706 	br	2007f60 <___vfiprintf_internal_r+0x524>
 2008884:	d9012017 	ldw	r4,1152(sp)
 2008888:	a00b883a 	mov	r5,r20
 200888c:	d9811a04 	addi	r6,sp,1128
 2008890:	db012b15 	stw	r12,1196(sp)
 2008894:	db812a15 	stw	r14,1192(sp)
 2008898:	20079280 	call	2007928 <__sprint_r.part.0>
 200889c:	db012b17 	ldw	r12,1196(sp)
 20088a0:	db812a17 	ldw	r14,1192(sp)
 20088a4:	103f9f1e 	bne	r2,zero,2008724 <___vfiprintf_internal_r+0xce8>
 20088a8:	d9411b17 	ldw	r5,1132(sp)
 20088ac:	d8c11c17 	ldw	r3,1136(sp)
 20088b0:	d811883a 	mov	r8,sp
 20088b4:	29000044 	addi	r4,r5,1
 20088b8:	003fd306 	br	2008808 <___vfiprintf_internal_r+0xdcc>
 20088bc:	18006c1e 	bne	r3,zero,2008a70 <___vfiprintf_internal_r+0x1034>
 20088c0:	70004f26 	beq	r14,zero,2008a00 <___vfiprintf_internal_r+0xfc4>
 20088c4:	d8811d04 	addi	r2,sp,1140
 20088c8:	00c00084 	movi	r3,2
 20088cc:	d8800015 	stw	r2,0(sp)
 20088d0:	d8c00115 	stw	r3,4(sp)
 20088d4:	2005883a 	mov	r2,r4
 20088d8:	d811883a 	mov	r8,sp
 20088dc:	003d9b06 	br	2007f4c <___vfiprintf_internal_r+0x510>
 20088e0:	1800571e 	bne	r3,zero,2008a40 <___vfiprintf_internal_r+0x1004>
 20088e4:	000b883a 	mov	r5,zero
 20088e8:	00800044 	movi	r2,1
 20088ec:	d811883a 	mov	r8,sp
 20088f0:	003d9906 	br	2007f58 <___vfiprintf_internal_r+0x51c>
 20088f4:	10803fcc 	andi	r2,r2,255
 20088f8:	1000251e 	bne	r2,zero,2008990 <___vfiprintf_internal_r+0xf54>
 20088fc:	a880004c 	andi	r2,r21,1
 2008900:	10007826 	beq	r2,zero,2008ae4 <___vfiprintf_internal_r+0x10a8>
 2008904:	00800c04 	movi	r2,48
 2008908:	d8c109c4 	addi	r3,sp,1063
 200890c:	d88109c5 	stb	r2,1063(sp)
 2008910:	dc412717 	ldw	r17,1180(sp)
 2008914:	d8c12415 	stw	r3,1168(sp)
 2008918:	003d4406 	br	2007e2c <___vfiprintf_internal_r+0x3f0>
 200891c:	d9012617 	ldw	r4,1176(sp)
 2008920:	dc410a04 	addi	r17,sp,1064
 2008924:	908003cc 	andi	r2,r18,15
 2008928:	b006973a 	slli	r3,r22,28
 200892c:	2085883a 	add	r2,r4,r2
 2008930:	9024d13a 	srli	r18,r18,4
 2008934:	10800003 	ldbu	r2,0(r2)
 2008938:	b02cd13a 	srli	r22,r22,4
 200893c:	8c7fffc4 	addi	r17,r17,-1
 2008940:	1ca4b03a 	or	r18,r3,r18
 2008944:	88800005 	stb	r2,0(r17)
 2008948:	9584b03a 	or	r2,r18,r22
 200894c:	103ff51e 	bne	r2,zero,2008924 <___vfiprintf_internal_r+0xee8>
 2008950:	dac11e17 	ldw	r11,1144(sp)
 2008954:	dc412415 	stw	r17,1168(sp)
 2008958:	5c63c83a 	sub	r17,r11,r17
 200895c:	003d3306 	br	2007e2c <___vfiprintf_internal_r+0x3f0>
 2008960:	1800941e 	bne	r3,zero,2008bb4 <___vfiprintf_internal_r+0x1178>
 2008964:	d8811d87 	ldb	r2,1142(sp)
 2008968:	10006b26 	beq	r2,zero,2008b18 <___vfiprintf_internal_r+0x10dc>
 200896c:	00c00044 	movi	r3,1
 2008970:	d9011d84 	addi	r4,sp,1142
 2008974:	1805883a 	mov	r2,r3
 2008978:	d9000015 	stw	r4,0(sp)
 200897c:	d8c00115 	stw	r3,4(sp)
 2008980:	d811883a 	mov	r8,sp
 2008984:	003f2306 	br	2008614 <___vfiprintf_internal_r+0xbd8>
 2008988:	8023883a 	mov	r17,r16
 200898c:	003c7d06 	br	2007b84 <___vfiprintf_internal_r+0x148>
 2008990:	da810a04 	addi	r10,sp,1064
 2008994:	da812415 	stw	r10,1168(sp)
 2008998:	003d2406 	br	2007e2c <___vfiprintf_internal_r+0x3f0>
 200899c:	d9012017 	ldw	r4,1152(sp)
 20089a0:	a00b883a 	mov	r5,r20
 20089a4:	d9811a04 	addi	r6,sp,1128
 20089a8:	20079280 	call	2007928 <__sprint_r.part.0>
 20089ac:	103f5d1e 	bne	r2,zero,2008724 <___vfiprintf_internal_r+0xce8>
 20089b0:	d8c11c17 	ldw	r3,1136(sp)
 20089b4:	d811883a 	mov	r8,sp
 20089b8:	003f7306 	br	2008788 <___vfiprintf_internal_r+0xd4c>
 20089bc:	1c800017 	ldw	r18,0(r3)
 20089c0:	dac12117 	ldw	r11,1156(sp)
 20089c4:	902dd7fa 	srai	r22,r18,31
 20089c8:	5ac00104 	addi	r11,r11,4
 20089cc:	dac12115 	stw	r11,1156(sp)
 20089d0:	b005883a 	mov	r2,r22
 20089d4:	003e5406 	br	2008328 <___vfiprintf_internal_r+0x8ec>
 20089d8:	00800084 	movi	r2,2
 20089dc:	9588b03a 	or	r4,r18,r22
 20089e0:	003cf506 	br	2007db8 <___vfiprintf_internal_r+0x37c>
 20089e4:	d9012017 	ldw	r4,1152(sp)
 20089e8:	a00b883a 	mov	r5,r20
 20089ec:	d9811a04 	addi	r6,sp,1128
 20089f0:	20079280 	call	2007928 <__sprint_r.part.0>
 20089f4:	103f4b1e 	bne	r2,zero,2008724 <___vfiprintf_internal_r+0xce8>
 20089f8:	d811883a 	mov	r8,sp
 20089fc:	003cd106 	br	2007d44 <___vfiprintf_internal_r+0x308>
 2008a00:	000b883a 	mov	r5,zero
 2008a04:	2005883a 	mov	r2,r4
 2008a08:	d811883a 	mov	r8,sp
 2008a0c:	003d5206 	br	2007f58 <___vfiprintf_internal_r+0x51c>
 2008a10:	10803fcc 	andi	r2,r2,255
 2008a14:	1080201c 	xori	r2,r2,128
 2008a18:	10bfe004 	addi	r2,r2,-128
 2008a1c:	01000c04 	movi	r4,48
 2008a20:	11008e26 	beq	r2,r4,2008c5c <___vfiprintf_internal_r+0x1220>
 2008a24:	da812417 	ldw	r10,1168(sp)
 2008a28:	dac11e17 	ldw	r11,1144(sp)
 2008a2c:	193fffc5 	stb	r4,-1(r3)
 2008a30:	52bfffc4 	addi	r10,r10,-1
 2008a34:	da812415 	stw	r10,1168(sp)
 2008a38:	5aa3c83a 	sub	r17,r11,r10
 2008a3c:	003cfb06 	br	2007e2c <___vfiprintf_internal_r+0x3f0>
 2008a40:	d9012017 	ldw	r4,1152(sp)
 2008a44:	a00b883a 	mov	r5,r20
 2008a48:	d9811a04 	addi	r6,sp,1128
 2008a4c:	da412b15 	stw	r9,1196(sp)
 2008a50:	20079280 	call	2007928 <__sprint_r.part.0>
 2008a54:	da412b17 	ldw	r9,1196(sp)
 2008a58:	103f321e 	bne	r2,zero,2008724 <___vfiprintf_internal_r+0xce8>
 2008a5c:	d9411b17 	ldw	r5,1132(sp)
 2008a60:	d8c11c17 	ldw	r3,1136(sp)
 2008a64:	d811883a 	mov	r8,sp
 2008a68:	28800044 	addi	r2,r5,1
 2008a6c:	003d3a06 	br	2007f58 <___vfiprintf_internal_r+0x51c>
 2008a70:	d9012017 	ldw	r4,1152(sp)
 2008a74:	a00b883a 	mov	r5,r20
 2008a78:	d9811a04 	addi	r6,sp,1128
 2008a7c:	da412b15 	stw	r9,1196(sp)
 2008a80:	db812a15 	stw	r14,1192(sp)
 2008a84:	20079280 	call	2007928 <__sprint_r.part.0>
 2008a88:	da412b17 	ldw	r9,1196(sp)
 2008a8c:	db812a17 	ldw	r14,1192(sp)
 2008a90:	103f241e 	bne	r2,zero,2008724 <___vfiprintf_internal_r+0xce8>
 2008a94:	d9411b17 	ldw	r5,1132(sp)
 2008a98:	d8c11c17 	ldw	r3,1136(sp)
 2008a9c:	d811883a 	mov	r8,sp
 2008aa0:	28800044 	addi	r2,r5,1
 2008aa4:	003d1f06 	br	2007f24 <___vfiprintf_internal_r+0x4e8>
 2008aa8:	1800781e 	bne	r3,zero,2008c8c <___vfiprintf_internal_r+0x1250>
 2008aac:	000b883a 	mov	r5,zero
 2008ab0:	00800044 	movi	r2,1
 2008ab4:	d811883a 	mov	r8,sp
 2008ab8:	003d2906 	br	2007f60 <___vfiprintf_internal_r+0x524>
 2008abc:	d9012017 	ldw	r4,1152(sp)
 2008ac0:	a00b883a 	mov	r5,r20
 2008ac4:	d9811a04 	addi	r6,sp,1128
 2008ac8:	20079280 	call	2007928 <__sprint_r.part.0>
 2008acc:	103f151e 	bne	r2,zero,2008724 <___vfiprintf_internal_r+0xce8>
 2008ad0:	d8811b17 	ldw	r2,1132(sp)
 2008ad4:	d8c11c17 	ldw	r3,1136(sp)
 2008ad8:	d811883a 	mov	r8,sp
 2008adc:	10800044 	addi	r2,r2,1
 2008ae0:	003d4406 	br	2007ff4 <___vfiprintf_internal_r+0x5b8>
 2008ae4:	dac10a04 	addi	r11,sp,1064
 2008ae8:	dac12415 	stw	r11,1168(sp)
 2008aec:	003ccf06 	br	2007e2c <___vfiprintf_internal_r+0x3f0>
 2008af0:	04a5c83a 	sub	r18,zero,r18
 2008af4:	9004c03a 	cmpne	r2,r18,zero
 2008af8:	05adc83a 	sub	r22,zero,r22
 2008afc:	b0adc83a 	sub	r22,r22,r2
 2008b00:	03000b44 	movi	r12,45
 2008b04:	db011d85 	stb	r12,1142(sp)
 2008b08:	4823883a 	mov	r17,r9
 2008b0c:	00800044 	movi	r2,1
 2008b10:	9588b03a 	or	r4,r18,r22
 2008b14:	003cab06 	br	2007dc4 <___vfiprintf_internal_r+0x388>
 2008b18:	000b883a 	mov	r5,zero
 2008b1c:	00800044 	movi	r2,1
 2008b20:	d811883a 	mov	r8,sp
 2008b24:	703d0c26 	beq	r14,zero,2007f58 <___vfiprintf_internal_r+0x51c>
 2008b28:	00c00084 	movi	r3,2
 2008b2c:	d9011d04 	addi	r4,sp,1140
 2008b30:	d9000015 	stw	r4,0(sp)
 2008b34:	d8c00115 	stw	r3,4(sp)
 2008b38:	003d0406 	br	2007f4c <___vfiprintf_internal_r+0x510>
 2008b3c:	80c00007 	ldb	r3,0(r16)
 2008b40:	003c1d06 	br	2007bb8 <___vfiprintf_internal_r+0x17c>
 2008b44:	a880040c 	andi	r2,r21,16
 2008b48:	1000091e 	bne	r2,zero,2008b70 <___vfiprintf_internal_r+0x1134>
 2008b4c:	aac0100c 	andi	r11,r21,64
 2008b50:	58000726 	beq	r11,zero,2008b70 <___vfiprintf_internal_r+0x1134>
 2008b54:	da812117 	ldw	r10,1156(sp)
 2008b58:	dac12217 	ldw	r11,1160(sp)
 2008b5c:	50800017 	ldw	r2,0(r10)
 2008b60:	52800104 	addi	r10,r10,4
 2008b64:	da812115 	stw	r10,1156(sp)
 2008b68:	12c0000d 	sth	r11,0(r2)
 2008b6c:	003be806 	br	2007b10 <___vfiprintf_internal_r+0xd4>
 2008b70:	da812117 	ldw	r10,1156(sp)
 2008b74:	dac12217 	ldw	r11,1160(sp)
 2008b78:	50800017 	ldw	r2,0(r10)
 2008b7c:	52800104 	addi	r10,r10,4
 2008b80:	da812115 	stw	r10,1156(sp)
 2008b84:	12c00015 	stw	r11,0(r2)
 2008b88:	003be106 	br	2007b10 <___vfiprintf_internal_r+0xd4>
 2008b8c:	00800084 	movi	r2,2
 2008b90:	003c8906 	br	2007db8 <___vfiprintf_internal_r+0x37c>
 2008b94:	a900100c 	andi	r4,r21,64
 2008b98:	20001f26 	beq	r4,zero,2008c18 <___vfiprintf_internal_r+0x11dc>
 2008b9c:	da812117 	ldw	r10,1156(sp)
 2008ba0:	1480000b 	ldhu	r18,0(r2)
 2008ba4:	002d883a 	mov	r22,zero
 2008ba8:	52800104 	addi	r10,r10,4
 2008bac:	da812115 	stw	r10,1156(sp)
 2008bb0:	003dae06 	br	200826c <___vfiprintf_internal_r+0x830>
 2008bb4:	d9012017 	ldw	r4,1152(sp)
 2008bb8:	a00b883a 	mov	r5,r20
 2008bbc:	d9811a04 	addi	r6,sp,1128
 2008bc0:	da412b15 	stw	r9,1196(sp)
 2008bc4:	db812a15 	stw	r14,1192(sp)
 2008bc8:	20079280 	call	2007928 <__sprint_r.part.0>
 2008bcc:	da412b17 	ldw	r9,1196(sp)
 2008bd0:	db812a17 	ldw	r14,1192(sp)
 2008bd4:	103ed31e 	bne	r2,zero,2008724 <___vfiprintf_internal_r+0xce8>
 2008bd8:	d9411b17 	ldw	r5,1132(sp)
 2008bdc:	d8c11c17 	ldw	r3,1136(sp)
 2008be0:	d811883a 	mov	r8,sp
 2008be4:	28800044 	addi	r2,r5,1
 2008be8:	003e7f06 	br	20085e8 <___vfiprintf_internal_r+0xbac>
 2008bec:	9825883a 	mov	r18,r19
 2008bf0:	003d3406 	br	20080c4 <___vfiprintf_internal_r+0x688>
 2008bf4:	4823883a 	mov	r17,r9
 2008bf8:	003e0806 	br	200841c <___vfiprintf_internal_r+0x9e0>
 2008bfc:	d9012017 	ldw	r4,1152(sp)
 2008c00:	a00b883a 	mov	r5,r20
 2008c04:	d9811a04 	addi	r6,sp,1128
 2008c08:	20079280 	call	2007928 <__sprint_r.part.0>
 2008c0c:	103ec51e 	bne	r2,zero,2008724 <___vfiprintf_internal_r+0xce8>
 2008c10:	d8c11c17 	ldw	r3,1136(sp)
 2008c14:	003ee006 	br	2008798 <___vfiprintf_internal_r+0xd5c>
 2008c18:	dac12117 	ldw	r11,1156(sp)
 2008c1c:	14800017 	ldw	r18,0(r2)
 2008c20:	002d883a 	mov	r22,zero
 2008c24:	5ac00104 	addi	r11,r11,4
 2008c28:	dac12115 	stw	r11,1156(sp)
 2008c2c:	003d8f06 	br	200826c <___vfiprintf_internal_r+0x830>
 2008c30:	02c08074 	movhi	r11,513
 2008c34:	5afcd604 	addi	r11,r11,-3240
 2008c38:	dac12315 	stw	r11,1164(sp)
 2008c3c:	003ce306 	br	2007fcc <___vfiprintf_internal_r+0x590>
 2008c40:	80c00043 	ldbu	r3,1(r16)
 2008c44:	ad400814 	ori	r21,r21,32
 2008c48:	84000044 	addi	r16,r16,1
 2008c4c:	18c03fcc 	andi	r3,r3,255
 2008c50:	18c0201c 	xori	r3,r3,128
 2008c54:	18ffe004 	addi	r3,r3,-128
 2008c58:	003bd706 	br	2007bb8 <___vfiprintf_internal_r+0x17c>
 2008c5c:	dac11e17 	ldw	r11,1144(sp)
 2008c60:	d8c12417 	ldw	r3,1168(sp)
 2008c64:	58e3c83a 	sub	r17,r11,r3
 2008c68:	003c7006 	br	2007e2c <___vfiprintf_internal_r+0x3f0>
 2008c6c:	da012a15 	stw	r8,1192(sp)
 2008c70:	20007440 	call	2000744 <strlen>
 2008c74:	1023883a 	mov	r17,r2
 2008c78:	db011d83 	ldbu	r12,1142(sp)
 2008c7c:	dd812115 	stw	r22,1156(sp)
 2008c80:	0013883a 	mov	r9,zero
 2008c84:	da012a17 	ldw	r8,1192(sp)
 2008c88:	003c6806 	br	2007e2c <___vfiprintf_internal_r+0x3f0>
 2008c8c:	d9012017 	ldw	r4,1152(sp)
 2008c90:	a00b883a 	mov	r5,r20
 2008c94:	d9811a04 	addi	r6,sp,1128
 2008c98:	da412b15 	stw	r9,1196(sp)
 2008c9c:	20079280 	call	2007928 <__sprint_r.part.0>
 2008ca0:	da412b17 	ldw	r9,1196(sp)
 2008ca4:	103e9f1e 	bne	r2,zero,2008724 <___vfiprintf_internal_r+0xce8>
 2008ca8:	d9411b17 	ldw	r5,1132(sp)
 2008cac:	d8c11c17 	ldw	r3,1136(sp)
 2008cb0:	d811883a 	mov	r8,sp
 2008cb4:	28800044 	addi	r2,r5,1
 2008cb8:	003ca906 	br	2007f60 <___vfiprintf_internal_r+0x524>
 2008cbc:	d9411b17 	ldw	r5,1132(sp)
 2008cc0:	01008074 	movhi	r4,513
 2008cc4:	213cda04 	addi	r4,r4,-3224
 2008cc8:	d9012315 	stw	r4,1164(sp)
 2008ccc:	29400044 	addi	r5,r5,1
 2008cd0:	003c8806 	br	2007ef4 <___vfiprintf_internal_r+0x4b8>
 2008cd4:	00800184 	movi	r2,6
 2008cd8:	1240012e 	bgeu	r2,r9,2008ce0 <___vfiprintf_internal_r+0x12a4>
 2008cdc:	1013883a 	mov	r9,r2
 2008ce0:	4823883a 	mov	r17,r9
 2008ce4:	4825883a 	mov	r18,r9
 2008ce8:	48001516 	blt	r9,zero,2008d40 <___vfiprintf_internal_r+0x1304>
 2008cec:	00808074 	movhi	r2,513
 2008cf0:	10bc7a04 	addi	r2,r2,-3608
 2008cf4:	dd812115 	stw	r22,1156(sp)
 2008cf8:	d8812415 	stw	r2,1168(sp)
 2008cfc:	003d6f06 	br	20082bc <___vfiprintf_internal_r+0x880>
 2008d00:	d9411b17 	ldw	r5,1132(sp)
 2008d04:	02c08074 	movhi	r11,513
 2008d08:	5afcda04 	addi	r11,r11,-3224
 2008d0c:	dac12315 	stw	r11,1164(sp)
 2008d10:	29400044 	addi	r5,r5,1
 2008d14:	003ce106 	br	200809c <___vfiprintf_internal_r+0x660>
 2008d18:	01008074 	movhi	r4,513
 2008d1c:	213cd604 	addi	r4,r4,-3240
 2008d20:	d9012315 	stw	r4,1164(sp)
 2008d24:	1009883a 	mov	r4,r2
 2008d28:	003eca06 	br	2008854 <___vfiprintf_internal_r+0xe18>
 2008d2c:	4823883a 	mov	r17,r9
 2008d30:	db011d83 	ldbu	r12,1142(sp)
 2008d34:	dd812115 	stw	r22,1156(sp)
 2008d38:	0013883a 	mov	r9,zero
 2008d3c:	003c3b06 	br	2007e2c <___vfiprintf_internal_r+0x3f0>
 2008d40:	0025883a 	mov	r18,zero
 2008d44:	003fe906 	br	2008cec <___vfiprintf_internal_r+0x12b0>
 2008d48:	dac12117 	ldw	r11,1156(sp)
 2008d4c:	8005883a 	mov	r2,r16
 2008d50:	5021883a 	mov	r16,r10
 2008d54:	5a400017 	ldw	r9,0(r11)
 2008d58:	58c00104 	addi	r3,r11,4
 2008d5c:	d8c12115 	stw	r3,1156(sp)
 2008d60:	48000a16 	blt	r9,zero,2008d8c <___vfiprintf_internal_r+0x1350>
 2008d64:	10c00047 	ldb	r3,1(r2)
 2008d68:	003b9306 	br	2007bb8 <___vfiprintf_internal_r+0x17c>
 2008d6c:	043fffc4 	movi	r16,-1
 2008d70:	003d0206 	br	200817c <___vfiprintf_internal_r+0x740>
 2008d74:	94c0010e 	bge	r18,r19,2008d7c <___vfiprintf_internal_r+0x1340>
 2008d78:	9825883a 	mov	r18,r19
 2008d7c:	da812217 	ldw	r10,1160(sp)
 2008d80:	5495883a 	add	r10,r10,r18
 2008d84:	da812215 	stw	r10,1160(sp)
 2008d88:	003cd106 	br	20080d0 <___vfiprintf_internal_r+0x694>
 2008d8c:	027fffc4 	movi	r9,-1
 2008d90:	10c00047 	ldb	r3,1(r2)
 2008d94:	003b8806 	br	2007bb8 <___vfiprintf_internal_r+0x17c>

02008d98 <__vfiprintf_internal>:
 2008d98:	2007883a 	mov	r3,r4
 2008d9c:	01008074 	movhi	r4,513
 2008da0:	21039504 	addi	r4,r4,3668
 2008da4:	21000017 	ldw	r4,0(r4)
 2008da8:	2805883a 	mov	r2,r5
 2008dac:	300f883a 	mov	r7,r6
 2008db0:	180b883a 	mov	r5,r3
 2008db4:	100d883a 	mov	r6,r2
 2008db8:	2007a3c1 	jmpi	2007a3c <___vfiprintf_internal_r>

02008dbc <_write_r>:
 2008dbc:	defffd04 	addi	sp,sp,-12
 2008dc0:	dc000015 	stw	r16,0(sp)
 2008dc4:	04008074 	movhi	r16,513
 2008dc8:	dc400115 	stw	r17,4(sp)
 2008dcc:	840a6504 	addi	r16,r16,10644
 2008dd0:	2023883a 	mov	r17,r4
 2008dd4:	2809883a 	mov	r4,r5
 2008dd8:	300b883a 	mov	r5,r6
 2008ddc:	380d883a 	mov	r6,r7
 2008de0:	dfc00215 	stw	ra,8(sp)
 2008de4:	80000015 	stw	zero,0(r16)
 2008de8:	200d1fc0 	call	200d1fc <write>
 2008dec:	00ffffc4 	movi	r3,-1
 2008df0:	10c00526 	beq	r2,r3,2008e08 <_write_r+0x4c>
 2008df4:	dfc00217 	ldw	ra,8(sp)
 2008df8:	dc400117 	ldw	r17,4(sp)
 2008dfc:	dc000017 	ldw	r16,0(sp)
 2008e00:	dec00304 	addi	sp,sp,12
 2008e04:	f800283a 	ret
 2008e08:	80c00017 	ldw	r3,0(r16)
 2008e0c:	183ff926 	beq	r3,zero,2008df4 <_write_r+0x38>
 2008e10:	88c00015 	stw	r3,0(r17)
 2008e14:	003ff706 	br	2008df4 <_write_r+0x38>

02008e18 <_close_r>:
 2008e18:	defffd04 	addi	sp,sp,-12
 2008e1c:	dc000015 	stw	r16,0(sp)
 2008e20:	04008074 	movhi	r16,513
 2008e24:	dc400115 	stw	r17,4(sp)
 2008e28:	840a6504 	addi	r16,r16,10644
 2008e2c:	2023883a 	mov	r17,r4
 2008e30:	2809883a 	mov	r4,r5
 2008e34:	dfc00215 	stw	ra,8(sp)
 2008e38:	80000015 	stw	zero,0(r16)
 2008e3c:	200c95c0 	call	200c95c <close>
 2008e40:	00ffffc4 	movi	r3,-1
 2008e44:	10c00526 	beq	r2,r3,2008e5c <_close_r+0x44>
 2008e48:	dfc00217 	ldw	ra,8(sp)
 2008e4c:	dc400117 	ldw	r17,4(sp)
 2008e50:	dc000017 	ldw	r16,0(sp)
 2008e54:	dec00304 	addi	sp,sp,12
 2008e58:	f800283a 	ret
 2008e5c:	80c00017 	ldw	r3,0(r16)
 2008e60:	183ff926 	beq	r3,zero,2008e48 <_close_r+0x30>
 2008e64:	88c00015 	stw	r3,0(r17)
 2008e68:	003ff706 	br	2008e48 <_close_r+0x30>

02008e6c <_calloc_r>:
 2008e6c:	298b383a 	mul	r5,r5,r6
 2008e70:	defffe04 	addi	sp,sp,-8
 2008e74:	dc000015 	stw	r16,0(sp)
 2008e78:	dfc00115 	stw	ra,4(sp)
 2008e7c:	200550c0 	call	200550c <_malloc_r>
 2008e80:	1021883a 	mov	r16,r2
 2008e84:	10002826 	beq	r2,zero,2008f28 <_calloc_r+0xbc>
 2008e88:	11bfff17 	ldw	r6,-4(r2)
 2008e8c:	00bfff04 	movi	r2,-4
 2008e90:	00c00904 	movi	r3,36
 2008e94:	308c703a 	and	r6,r6,r2
 2008e98:	308d883a 	add	r6,r6,r2
 2008e9c:	19801436 	bltu	r3,r6,2008ef0 <_calloc_r+0x84>
 2008ea0:	008004c4 	movi	r2,19
 2008ea4:	11800936 	bltu	r2,r6,2008ecc <_calloc_r+0x60>
 2008ea8:	8005883a 	mov	r2,r16
 2008eac:	10000015 	stw	zero,0(r2)
 2008eb0:	10000115 	stw	zero,4(r2)
 2008eb4:	10000215 	stw	zero,8(r2)
 2008eb8:	8005883a 	mov	r2,r16
 2008ebc:	dfc00117 	ldw	ra,4(sp)
 2008ec0:	dc000017 	ldw	r16,0(sp)
 2008ec4:	dec00204 	addi	sp,sp,8
 2008ec8:	f800283a 	ret
 2008ecc:	80000015 	stw	zero,0(r16)
 2008ed0:	80000115 	stw	zero,4(r16)
 2008ed4:	008006c4 	movi	r2,27
 2008ed8:	11800d2e 	bgeu	r2,r6,2008f10 <_calloc_r+0xa4>
 2008edc:	80000215 	stw	zero,8(r16)
 2008ee0:	80000315 	stw	zero,12(r16)
 2008ee4:	30c00c26 	beq	r6,r3,2008f18 <_calloc_r+0xac>
 2008ee8:	80800404 	addi	r2,r16,16
 2008eec:	003fef06 	br	2008eac <_calloc_r+0x40>
 2008ef0:	8009883a 	mov	r4,r16
 2008ef4:	000b883a 	mov	r5,zero
 2008ef8:	20060300 	call	2006030 <memset>
 2008efc:	8005883a 	mov	r2,r16
 2008f00:	dfc00117 	ldw	ra,4(sp)
 2008f04:	dc000017 	ldw	r16,0(sp)
 2008f08:	dec00204 	addi	sp,sp,8
 2008f0c:	f800283a 	ret
 2008f10:	80800204 	addi	r2,r16,8
 2008f14:	003fe506 	br	2008eac <_calloc_r+0x40>
 2008f18:	80000415 	stw	zero,16(r16)
 2008f1c:	80800604 	addi	r2,r16,24
 2008f20:	80000515 	stw	zero,20(r16)
 2008f24:	003fe106 	br	2008eac <_calloc_r+0x40>
 2008f28:	0005883a 	mov	r2,zero
 2008f2c:	003fe306 	br	2008ebc <_calloc_r+0x50>

02008f30 <_fclose_r>:
 2008f30:	28003226 	beq	r5,zero,2008ffc <_fclose_r+0xcc>
 2008f34:	defffc04 	addi	sp,sp,-16
 2008f38:	dc400115 	stw	r17,4(sp)
 2008f3c:	2023883a 	mov	r17,r4
 2008f40:	dc000015 	stw	r16,0(sp)
 2008f44:	dfc00315 	stw	ra,12(sp)
 2008f48:	dc800215 	stw	r18,8(sp)
 2008f4c:	2821883a 	mov	r16,r5
 2008f50:	200480c0 	call	200480c <__sfp_lock_acquire>
 2008f54:	88000226 	beq	r17,zero,2008f60 <_fclose_r+0x30>
 2008f58:	88800e17 	ldw	r2,56(r17)
 2008f5c:	10002926 	beq	r2,zero,2009004 <_fclose_r+0xd4>
 2008f60:	8080030f 	ldh	r2,12(r16)
 2008f64:	10002226 	beq	r2,zero,2008ff0 <_fclose_r+0xc0>
 2008f68:	8809883a 	mov	r4,r17
 2008f6c:	800b883a 	mov	r5,r16
 2008f70:	20042540 	call	2004254 <_fflush_r>
 2008f74:	1025883a 	mov	r18,r2
 2008f78:	80800b17 	ldw	r2,44(r16)
 2008f7c:	10000426 	beq	r2,zero,2008f90 <_fclose_r+0x60>
 2008f80:	81400717 	ldw	r5,28(r16)
 2008f84:	8809883a 	mov	r4,r17
 2008f88:	103ee83a 	callr	r2
 2008f8c:	10002616 	blt	r2,zero,2009028 <_fclose_r+0xf8>
 2008f90:	8080030b 	ldhu	r2,12(r16)
 2008f94:	1080200c 	andi	r2,r2,128
 2008f98:	10001f1e 	bne	r2,zero,2009018 <_fclose_r+0xe8>
 2008f9c:	81400c17 	ldw	r5,48(r16)
 2008fa0:	28000526 	beq	r5,zero,2008fb8 <_fclose_r+0x88>
 2008fa4:	80801004 	addi	r2,r16,64
 2008fa8:	28800226 	beq	r5,r2,2008fb4 <_fclose_r+0x84>
 2008fac:	8809883a 	mov	r4,r17
 2008fb0:	20049700 	call	2004970 <_free_r>
 2008fb4:	80000c15 	stw	zero,48(r16)
 2008fb8:	81401117 	ldw	r5,68(r16)
 2008fbc:	28000326 	beq	r5,zero,2008fcc <_fclose_r+0x9c>
 2008fc0:	8809883a 	mov	r4,r17
 2008fc4:	20049700 	call	2004970 <_free_r>
 2008fc8:	80001115 	stw	zero,68(r16)
 2008fcc:	8000030d 	sth	zero,12(r16)
 2008fd0:	20048100 	call	2004810 <__sfp_lock_release>
 2008fd4:	9005883a 	mov	r2,r18
 2008fd8:	dfc00317 	ldw	ra,12(sp)
 2008fdc:	dc800217 	ldw	r18,8(sp)
 2008fe0:	dc400117 	ldw	r17,4(sp)
 2008fe4:	dc000017 	ldw	r16,0(sp)
 2008fe8:	dec00404 	addi	sp,sp,16
 2008fec:	f800283a 	ret
 2008ff0:	20048100 	call	2004810 <__sfp_lock_release>
 2008ff4:	0005883a 	mov	r2,zero
 2008ff8:	003ff706 	br	2008fd8 <_fclose_r+0xa8>
 2008ffc:	0005883a 	mov	r2,zero
 2009000:	f800283a 	ret
 2009004:	8809883a 	mov	r4,r17
 2009008:	20047fc0 	call	20047fc <__sinit>
 200900c:	8080030f 	ldh	r2,12(r16)
 2009010:	103fd51e 	bne	r2,zero,2008f68 <_fclose_r+0x38>
 2009014:	003ff606 	br	2008ff0 <_fclose_r+0xc0>
 2009018:	81400417 	ldw	r5,16(r16)
 200901c:	8809883a 	mov	r4,r17
 2009020:	20049700 	call	2004970 <_free_r>
 2009024:	003fdd06 	br	2008f9c <_fclose_r+0x6c>
 2009028:	04bfffc4 	movi	r18,-1
 200902c:	003fd806 	br	2008f90 <_fclose_r+0x60>

02009030 <fclose>:
 2009030:	00808074 	movhi	r2,513
 2009034:	10839504 	addi	r2,r2,3668
 2009038:	200b883a 	mov	r5,r4
 200903c:	11000017 	ldw	r4,0(r2)
 2009040:	2008f301 	jmpi	2008f30 <_fclose_r>

02009044 <_fputwc_r>:
 2009044:	3080030b 	ldhu	r2,12(r6)
 2009048:	defff804 	addi	sp,sp,-32
 200904c:	dcc00415 	stw	r19,16(sp)
 2009050:	dc800315 	stw	r18,12(sp)
 2009054:	dc000115 	stw	r16,4(sp)
 2009058:	dfc00715 	stw	ra,28(sp)
 200905c:	dd400615 	stw	r21,24(sp)
 2009060:	dd000515 	stw	r20,20(sp)
 2009064:	dc400215 	stw	r17,8(sp)
 2009068:	10c8000c 	andi	r3,r2,8192
 200906c:	3021883a 	mov	r16,r6
 2009070:	2027883a 	mov	r19,r4
 2009074:	2825883a 	mov	r18,r5
 2009078:	1800051e 	bne	r3,zero,2009090 <_fputwc_r+0x4c>
 200907c:	30c01917 	ldw	r3,100(r6)
 2009080:	10880014 	ori	r2,r2,8192
 2009084:	3080030d 	sth	r2,12(r6)
 2009088:	18880014 	ori	r2,r3,8192
 200908c:	30801915 	stw	r2,100(r6)
 2009090:	20052fc0 	call	20052fc <__locale_mb_cur_max>
 2009094:	00c00044 	movi	r3,1
 2009098:	10c03e26 	beq	r2,r3,2009194 <_fputwc_r+0x150>
 200909c:	9809883a 	mov	r4,r19
 20090a0:	d80b883a 	mov	r5,sp
 20090a4:	900d883a 	mov	r6,r18
 20090a8:	81c01704 	addi	r7,r16,92
 20090ac:	20094f40 	call	20094f4 <_wcrtomb_r>
 20090b0:	1029883a 	mov	r20,r2
 20090b4:	00bfffc4 	movi	r2,-1
 20090b8:	a0802026 	beq	r20,r2,200913c <_fputwc_r+0xf8>
 20090bc:	d9400003 	ldbu	r5,0(sp)
 20090c0:	a0001c26 	beq	r20,zero,2009134 <_fputwc_r+0xf0>
 20090c4:	0023883a 	mov	r17,zero
 20090c8:	05400284 	movi	r21,10
 20090cc:	00000906 	br	20090f4 <_fputwc_r+0xb0>
 20090d0:	80800017 	ldw	r2,0(r16)
 20090d4:	11400005 	stb	r5,0(r2)
 20090d8:	80c00017 	ldw	r3,0(r16)
 20090dc:	18c00044 	addi	r3,r3,1
 20090e0:	80c00015 	stw	r3,0(r16)
 20090e4:	8c400044 	addi	r17,r17,1
 20090e8:	dc45883a 	add	r2,sp,r17
 20090ec:	8d00112e 	bgeu	r17,r20,2009134 <_fputwc_r+0xf0>
 20090f0:	11400003 	ldbu	r5,0(r2)
 20090f4:	80c00217 	ldw	r3,8(r16)
 20090f8:	18ffffc4 	addi	r3,r3,-1
 20090fc:	80c00215 	stw	r3,8(r16)
 2009100:	183ff30e 	bge	r3,zero,20090d0 <_fputwc_r+0x8c>
 2009104:	80800617 	ldw	r2,24(r16)
 2009108:	18801916 	blt	r3,r2,2009170 <_fputwc_r+0x12c>
 200910c:	80800017 	ldw	r2,0(r16)
 2009110:	11400005 	stb	r5,0(r2)
 2009114:	80800017 	ldw	r2,0(r16)
 2009118:	10c00003 	ldbu	r3,0(r2)
 200911c:	10800044 	addi	r2,r2,1
 2009120:	1d402326 	beq	r3,r21,20091b0 <_fputwc_r+0x16c>
 2009124:	80800015 	stw	r2,0(r16)
 2009128:	8c400044 	addi	r17,r17,1
 200912c:	dc45883a 	add	r2,sp,r17
 2009130:	8d3fef36 	bltu	r17,r20,20090f0 <_fputwc_r+0xac>
 2009134:	9005883a 	mov	r2,r18
 2009138:	00000406 	br	200914c <_fputwc_r+0x108>
 200913c:	80c0030b 	ldhu	r3,12(r16)
 2009140:	a005883a 	mov	r2,r20
 2009144:	18c01014 	ori	r3,r3,64
 2009148:	80c0030d 	sth	r3,12(r16)
 200914c:	dfc00717 	ldw	ra,28(sp)
 2009150:	dd400617 	ldw	r21,24(sp)
 2009154:	dd000517 	ldw	r20,20(sp)
 2009158:	dcc00417 	ldw	r19,16(sp)
 200915c:	dc800317 	ldw	r18,12(sp)
 2009160:	dc400217 	ldw	r17,8(sp)
 2009164:	dc000117 	ldw	r16,4(sp)
 2009168:	dec00804 	addi	sp,sp,32
 200916c:	f800283a 	ret
 2009170:	9809883a 	mov	r4,r19
 2009174:	29403fcc 	andi	r5,r5,255
 2009178:	800d883a 	mov	r6,r16
 200917c:	20093840 	call	2009384 <__swbuf_r>
 2009180:	10bfffe0 	cmpeqi	r2,r2,-1
 2009184:	10803fcc 	andi	r2,r2,255
 2009188:	103fd626 	beq	r2,zero,20090e4 <_fputwc_r+0xa0>
 200918c:	00bfffc4 	movi	r2,-1
 2009190:	003fee06 	br	200914c <_fputwc_r+0x108>
 2009194:	90ffffc4 	addi	r3,r18,-1
 2009198:	01003f84 	movi	r4,254
 200919c:	20ffbf36 	bltu	r4,r3,200909c <_fputwc_r+0x58>
 20091a0:	900b883a 	mov	r5,r18
 20091a4:	dc800005 	stb	r18,0(sp)
 20091a8:	1029883a 	mov	r20,r2
 20091ac:	003fc506 	br	20090c4 <_fputwc_r+0x80>
 20091b0:	9809883a 	mov	r4,r19
 20091b4:	a80b883a 	mov	r5,r21
 20091b8:	800d883a 	mov	r6,r16
 20091bc:	20093840 	call	2009384 <__swbuf_r>
 20091c0:	10bfffe0 	cmpeqi	r2,r2,-1
 20091c4:	003fef06 	br	2009184 <_fputwc_r+0x140>

020091c8 <fputwc>:
 20091c8:	defffc04 	addi	sp,sp,-16
 20091cc:	dc000115 	stw	r16,4(sp)
 20091d0:	04008074 	movhi	r16,513
 20091d4:	84039504 	addi	r16,r16,3668
 20091d8:	dc400215 	stw	r17,8(sp)
 20091dc:	2023883a 	mov	r17,r4
 20091e0:	81000017 	ldw	r4,0(r16)
 20091e4:	dfc00315 	stw	ra,12(sp)
 20091e8:	280d883a 	mov	r6,r5
 20091ec:	20000626 	beq	r4,zero,2009208 <fputwc+0x40>
 20091f0:	20800e17 	ldw	r2,56(r4)
 20091f4:	1000041e 	bne	r2,zero,2009208 <fputwc+0x40>
 20091f8:	d9400015 	stw	r5,0(sp)
 20091fc:	20047fc0 	call	20047fc <__sinit>
 2009200:	81000017 	ldw	r4,0(r16)
 2009204:	d9800017 	ldw	r6,0(sp)
 2009208:	880b883a 	mov	r5,r17
 200920c:	dfc00317 	ldw	ra,12(sp)
 2009210:	dc400217 	ldw	r17,8(sp)
 2009214:	dc000117 	ldw	r16,4(sp)
 2009218:	dec00404 	addi	sp,sp,16
 200921c:	20090441 	jmpi	2009044 <_fputwc_r>

02009220 <_fstat_r>:
 2009220:	defffd04 	addi	sp,sp,-12
 2009224:	dc000015 	stw	r16,0(sp)
 2009228:	04008074 	movhi	r16,513
 200922c:	dc400115 	stw	r17,4(sp)
 2009230:	840a6504 	addi	r16,r16,10644
 2009234:	2023883a 	mov	r17,r4
 2009238:	2809883a 	mov	r4,r5
 200923c:	300b883a 	mov	r5,r6
 2009240:	dfc00215 	stw	ra,8(sp)
 2009244:	80000015 	stw	zero,0(r16)
 2009248:	200caec0 	call	200caec <fstat>
 200924c:	00ffffc4 	movi	r3,-1
 2009250:	10c00526 	beq	r2,r3,2009268 <_fstat_r+0x48>
 2009254:	dfc00217 	ldw	ra,8(sp)
 2009258:	dc400117 	ldw	r17,4(sp)
 200925c:	dc000017 	ldw	r16,0(sp)
 2009260:	dec00304 	addi	sp,sp,12
 2009264:	f800283a 	ret
 2009268:	80c00017 	ldw	r3,0(r16)
 200926c:	183ff926 	beq	r3,zero,2009254 <_fstat_r+0x34>
 2009270:	88c00015 	stw	r3,0(r17)
 2009274:	003ff706 	br	2009254 <_fstat_r+0x34>

02009278 <_isatty_r>:
 2009278:	defffd04 	addi	sp,sp,-12
 200927c:	dc000015 	stw	r16,0(sp)
 2009280:	04008074 	movhi	r16,513
 2009284:	dc400115 	stw	r17,4(sp)
 2009288:	840a6504 	addi	r16,r16,10644
 200928c:	2023883a 	mov	r17,r4
 2009290:	2809883a 	mov	r4,r5
 2009294:	dfc00215 	stw	ra,8(sp)
 2009298:	80000015 	stw	zero,0(r16)
 200929c:	200cbec0 	call	200cbec <isatty>
 20092a0:	00ffffc4 	movi	r3,-1
 20092a4:	10c00526 	beq	r2,r3,20092bc <_isatty_r+0x44>
 20092a8:	dfc00217 	ldw	ra,8(sp)
 20092ac:	dc400117 	ldw	r17,4(sp)
 20092b0:	dc000017 	ldw	r16,0(sp)
 20092b4:	dec00304 	addi	sp,sp,12
 20092b8:	f800283a 	ret
 20092bc:	80c00017 	ldw	r3,0(r16)
 20092c0:	183ff926 	beq	r3,zero,20092a8 <_isatty_r+0x30>
 20092c4:	88c00015 	stw	r3,0(r17)
 20092c8:	003ff706 	br	20092a8 <_isatty_r+0x30>

020092cc <_lseek_r>:
 20092cc:	defffd04 	addi	sp,sp,-12
 20092d0:	dc000015 	stw	r16,0(sp)
 20092d4:	04008074 	movhi	r16,513
 20092d8:	dc400115 	stw	r17,4(sp)
 20092dc:	840a6504 	addi	r16,r16,10644
 20092e0:	2023883a 	mov	r17,r4
 20092e4:	2809883a 	mov	r4,r5
 20092e8:	300b883a 	mov	r5,r6
 20092ec:	380d883a 	mov	r6,r7
 20092f0:	dfc00215 	stw	ra,8(sp)
 20092f4:	80000015 	stw	zero,0(r16)
 20092f8:	200cdc40 	call	200cdc4 <lseek>
 20092fc:	00ffffc4 	movi	r3,-1
 2009300:	10c00526 	beq	r2,r3,2009318 <_lseek_r+0x4c>
 2009304:	dfc00217 	ldw	ra,8(sp)
 2009308:	dc400117 	ldw	r17,4(sp)
 200930c:	dc000017 	ldw	r16,0(sp)
 2009310:	dec00304 	addi	sp,sp,12
 2009314:	f800283a 	ret
 2009318:	80c00017 	ldw	r3,0(r16)
 200931c:	183ff926 	beq	r3,zero,2009304 <_lseek_r+0x38>
 2009320:	88c00015 	stw	r3,0(r17)
 2009324:	003ff706 	br	2009304 <_lseek_r+0x38>

02009328 <_read_r>:
 2009328:	defffd04 	addi	sp,sp,-12
 200932c:	dc000015 	stw	r16,0(sp)
 2009330:	04008074 	movhi	r16,513
 2009334:	dc400115 	stw	r17,4(sp)
 2009338:	840a6504 	addi	r16,r16,10644
 200933c:	2023883a 	mov	r17,r4
 2009340:	2809883a 	mov	r4,r5
 2009344:	300b883a 	mov	r5,r6
 2009348:	380d883a 	mov	r6,r7
 200934c:	dfc00215 	stw	ra,8(sp)
 2009350:	80000015 	stw	zero,0(r16)
 2009354:	200cfa00 	call	200cfa0 <read>
 2009358:	00ffffc4 	movi	r3,-1
 200935c:	10c00526 	beq	r2,r3,2009374 <_read_r+0x4c>
 2009360:	dfc00217 	ldw	ra,8(sp)
 2009364:	dc400117 	ldw	r17,4(sp)
 2009368:	dc000017 	ldw	r16,0(sp)
 200936c:	dec00304 	addi	sp,sp,12
 2009370:	f800283a 	ret
 2009374:	80c00017 	ldw	r3,0(r16)
 2009378:	183ff926 	beq	r3,zero,2009360 <_read_r+0x38>
 200937c:	88c00015 	stw	r3,0(r17)
 2009380:	003ff706 	br	2009360 <_read_r+0x38>

02009384 <__swbuf_r>:
 2009384:	defffc04 	addi	sp,sp,-16
 2009388:	dc800215 	stw	r18,8(sp)
 200938c:	dc400115 	stw	r17,4(sp)
 2009390:	dc000015 	stw	r16,0(sp)
 2009394:	dfc00315 	stw	ra,12(sp)
 2009398:	2025883a 	mov	r18,r4
 200939c:	2823883a 	mov	r17,r5
 20093a0:	3021883a 	mov	r16,r6
 20093a4:	20000226 	beq	r4,zero,20093b0 <__swbuf_r+0x2c>
 20093a8:	20800e17 	ldw	r2,56(r4)
 20093ac:	10004126 	beq	r2,zero,20094b4 <__swbuf_r+0x130>
 20093b0:	80c00617 	ldw	r3,24(r16)
 20093b4:	8180030b 	ldhu	r6,12(r16)
 20093b8:	80c00215 	stw	r3,8(r16)
 20093bc:	30c0020c 	andi	r3,r6,8
 20093c0:	18003526 	beq	r3,zero,2009498 <__swbuf_r+0x114>
 20093c4:	80c00417 	ldw	r3,16(r16)
 20093c8:	18003326 	beq	r3,zero,2009498 <__swbuf_r+0x114>
 20093cc:	3088000c 	andi	r2,r6,8192
 20093d0:	8c403fcc 	andi	r17,r17,255
 20093d4:	10001726 	beq	r2,zero,2009434 <__swbuf_r+0xb0>
 20093d8:	80800017 	ldw	r2,0(r16)
 20093dc:	81000517 	ldw	r4,20(r16)
 20093e0:	10c7c83a 	sub	r3,r2,r3
 20093e4:	19001d0e 	bge	r3,r4,200945c <__swbuf_r+0xd8>
 20093e8:	18c00044 	addi	r3,r3,1
 20093ec:	81400217 	ldw	r5,8(r16)
 20093f0:	11000044 	addi	r4,r2,1
 20093f4:	81000015 	stw	r4,0(r16)
 20093f8:	297fffc4 	addi	r5,r5,-1
 20093fc:	81400215 	stw	r5,8(r16)
 2009400:	14400005 	stb	r17,0(r2)
 2009404:	80800517 	ldw	r2,20(r16)
 2009408:	10c01d26 	beq	r2,r3,2009480 <__swbuf_r+0xfc>
 200940c:	8080030b 	ldhu	r2,12(r16)
 2009410:	1080004c 	andi	r2,r2,1
 2009414:	1000181e 	bne	r2,zero,2009478 <__swbuf_r+0xf4>
 2009418:	8805883a 	mov	r2,r17
 200941c:	dfc00317 	ldw	ra,12(sp)
 2009420:	dc800217 	ldw	r18,8(sp)
 2009424:	dc400117 	ldw	r17,4(sp)
 2009428:	dc000017 	ldw	r16,0(sp)
 200942c:	dec00404 	addi	sp,sp,16
 2009430:	f800283a 	ret
 2009434:	81001917 	ldw	r4,100(r16)
 2009438:	00b7ffc4 	movi	r2,-8193
 200943c:	31880014 	ori	r6,r6,8192
 2009440:	2084703a 	and	r2,r4,r2
 2009444:	80801915 	stw	r2,100(r16)
 2009448:	80800017 	ldw	r2,0(r16)
 200944c:	81000517 	ldw	r4,20(r16)
 2009450:	8180030d 	sth	r6,12(r16)
 2009454:	10c7c83a 	sub	r3,r2,r3
 2009458:	193fe316 	blt	r3,r4,20093e8 <__swbuf_r+0x64>
 200945c:	9009883a 	mov	r4,r18
 2009460:	800b883a 	mov	r5,r16
 2009464:	20042540 	call	2004254 <_fflush_r>
 2009468:	1000091e 	bne	r2,zero,2009490 <__swbuf_r+0x10c>
 200946c:	80800017 	ldw	r2,0(r16)
 2009470:	00c00044 	movi	r3,1
 2009474:	003fdd06 	br	20093ec <__swbuf_r+0x68>
 2009478:	00800284 	movi	r2,10
 200947c:	88bfe61e 	bne	r17,r2,2009418 <__swbuf_r+0x94>
 2009480:	9009883a 	mov	r4,r18
 2009484:	800b883a 	mov	r5,r16
 2009488:	20042540 	call	2004254 <_fflush_r>
 200948c:	103fe226 	beq	r2,zero,2009418 <__swbuf_r+0x94>
 2009490:	00bfffc4 	movi	r2,-1
 2009494:	003fe106 	br	200941c <__swbuf_r+0x98>
 2009498:	9009883a 	mov	r4,r18
 200949c:	800b883a 	mov	r5,r16
 20094a0:	20027fc0 	call	20027fc <__swsetup_r>
 20094a4:	1000051e 	bne	r2,zero,20094bc <__swbuf_r+0x138>
 20094a8:	8180030b 	ldhu	r6,12(r16)
 20094ac:	80c00417 	ldw	r3,16(r16)
 20094b0:	003fc606 	br	20093cc <__swbuf_r+0x48>
 20094b4:	20047fc0 	call	20047fc <__sinit>
 20094b8:	003fbd06 	br	20093b0 <__swbuf_r+0x2c>
 20094bc:	80c0030b 	ldhu	r3,12(r16)
 20094c0:	00bfffc4 	movi	r2,-1
 20094c4:	18c01014 	ori	r3,r3,64
 20094c8:	80c0030d 	sth	r3,12(r16)
 20094cc:	00c00244 	movi	r3,9
 20094d0:	90c00015 	stw	r3,0(r18)
 20094d4:	003fd106 	br	200941c <__swbuf_r+0x98>

020094d8 <__swbuf>:
 20094d8:	00c08074 	movhi	r3,513
 20094dc:	18c39504 	addi	r3,r3,3668
 20094e0:	2005883a 	mov	r2,r4
 20094e4:	19000017 	ldw	r4,0(r3)
 20094e8:	280d883a 	mov	r6,r5
 20094ec:	100b883a 	mov	r5,r2
 20094f0:	20093841 	jmpi	2009384 <__swbuf_r>

020094f4 <_wcrtomb_r>:
 20094f4:	defff604 	addi	sp,sp,-40
 20094f8:	00808074 	movhi	r2,513
 20094fc:	dc800815 	stw	r18,32(sp)
 2009500:	dc400715 	stw	r17,28(sp)
 2009504:	dc000615 	stw	r16,24(sp)
 2009508:	10839904 	addi	r2,r2,3684
 200950c:	dfc00915 	stw	ra,36(sp)
 2009510:	2021883a 	mov	r16,r4
 2009514:	3823883a 	mov	r17,r7
 2009518:	14800017 	ldw	r18,0(r2)
 200951c:	28001426 	beq	r5,zero,2009570 <_wcrtomb_r+0x7c>
 2009520:	d9400415 	stw	r5,16(sp)
 2009524:	d9800515 	stw	r6,20(sp)
 2009528:	20052f00 	call	20052f0 <__locale_charset>
 200952c:	d9400417 	ldw	r5,16(sp)
 2009530:	d9800517 	ldw	r6,20(sp)
 2009534:	8009883a 	mov	r4,r16
 2009538:	dc400015 	stw	r17,0(sp)
 200953c:	100f883a 	mov	r7,r2
 2009540:	903ee83a 	callr	r18
 2009544:	00ffffc4 	movi	r3,-1
 2009548:	10c0031e 	bne	r2,r3,2009558 <_wcrtomb_r+0x64>
 200954c:	88000015 	stw	zero,0(r17)
 2009550:	00c02284 	movi	r3,138
 2009554:	80c00015 	stw	r3,0(r16)
 2009558:	dfc00917 	ldw	ra,36(sp)
 200955c:	dc800817 	ldw	r18,32(sp)
 2009560:	dc400717 	ldw	r17,28(sp)
 2009564:	dc000617 	ldw	r16,24(sp)
 2009568:	dec00a04 	addi	sp,sp,40
 200956c:	f800283a 	ret
 2009570:	20052f00 	call	20052f0 <__locale_charset>
 2009574:	8009883a 	mov	r4,r16
 2009578:	dc400015 	stw	r17,0(sp)
 200957c:	d9400104 	addi	r5,sp,4
 2009580:	000d883a 	mov	r6,zero
 2009584:	100f883a 	mov	r7,r2
 2009588:	903ee83a 	callr	r18
 200958c:	003fed06 	br	2009544 <_wcrtomb_r+0x50>

02009590 <wcrtomb>:
 2009590:	defff504 	addi	sp,sp,-44
 2009594:	dc400515 	stw	r17,20(sp)
 2009598:	dc000415 	stw	r16,16(sp)
 200959c:	dfc00a15 	stw	ra,40(sp)
 20095a0:	dd400915 	stw	r21,36(sp)
 20095a4:	dd000815 	stw	r20,32(sp)
 20095a8:	dcc00715 	stw	r19,28(sp)
 20095ac:	dc800615 	stw	r18,24(sp)
 20095b0:	2021883a 	mov	r16,r4
 20095b4:	3023883a 	mov	r17,r6
 20095b8:	20001d26 	beq	r4,zero,2009630 <wcrtomb+0xa0>
 20095bc:	04808074 	movhi	r18,513
 20095c0:	94839504 	addi	r18,r18,3668
 20095c4:	00808074 	movhi	r2,513
 20095c8:	95400017 	ldw	r21,0(r18)
 20095cc:	10839904 	addi	r2,r2,3684
 20095d0:	15000017 	ldw	r20,0(r2)
 20095d4:	2827883a 	mov	r19,r5
 20095d8:	20052f00 	call	20052f0 <__locale_charset>
 20095dc:	a809883a 	mov	r4,r21
 20095e0:	dc400015 	stw	r17,0(sp)
 20095e4:	800b883a 	mov	r5,r16
 20095e8:	980d883a 	mov	r6,r19
 20095ec:	100f883a 	mov	r7,r2
 20095f0:	a03ee83a 	callr	r20
 20095f4:	00ffffc4 	movi	r3,-1
 20095f8:	10c0041e 	bne	r2,r3,200960c <wcrtomb+0x7c>
 20095fc:	90c00017 	ldw	r3,0(r18)
 2009600:	01002284 	movi	r4,138
 2009604:	88000015 	stw	zero,0(r17)
 2009608:	19000015 	stw	r4,0(r3)
 200960c:	dfc00a17 	ldw	ra,40(sp)
 2009610:	dd400917 	ldw	r21,36(sp)
 2009614:	dd000817 	ldw	r20,32(sp)
 2009618:	dcc00717 	ldw	r19,28(sp)
 200961c:	dc800617 	ldw	r18,24(sp)
 2009620:	dc400517 	ldw	r17,20(sp)
 2009624:	dc000417 	ldw	r16,16(sp)
 2009628:	dec00b04 	addi	sp,sp,44
 200962c:	f800283a 	ret
 2009630:	04808074 	movhi	r18,513
 2009634:	94839504 	addi	r18,r18,3668
 2009638:	00808074 	movhi	r2,513
 200963c:	94c00017 	ldw	r19,0(r18)
 2009640:	10839904 	addi	r2,r2,3684
 2009644:	14000017 	ldw	r16,0(r2)
 2009648:	20052f00 	call	20052f0 <__locale_charset>
 200964c:	9809883a 	mov	r4,r19
 2009650:	dc400015 	stw	r17,0(sp)
 2009654:	d9400104 	addi	r5,sp,4
 2009658:	000d883a 	mov	r6,zero
 200965c:	100f883a 	mov	r7,r2
 2009660:	803ee83a 	callr	r16
 2009664:	003fe306 	br	20095f4 <wcrtomb+0x64>

02009668 <__ascii_wctomb>:
 2009668:	28000526 	beq	r5,zero,2009680 <__ascii_wctomb+0x18>
 200966c:	00803fc4 	movi	r2,255
 2009670:	11800536 	bltu	r2,r6,2009688 <__ascii_wctomb+0x20>
 2009674:	29800005 	stb	r6,0(r5)
 2009678:	00800044 	movi	r2,1
 200967c:	f800283a 	ret
 2009680:	0005883a 	mov	r2,zero
 2009684:	f800283a 	ret
 2009688:	00802284 	movi	r2,138
 200968c:	20800015 	stw	r2,0(r4)
 2009690:	00bfffc4 	movi	r2,-1
 2009694:	f800283a 	ret

02009698 <_wctomb_r>:
 2009698:	00808074 	movhi	r2,513
 200969c:	defff904 	addi	sp,sp,-28
 20096a0:	10839904 	addi	r2,r2,3684
 20096a4:	dfc00615 	stw	ra,24(sp)
 20096a8:	dc400515 	stw	r17,20(sp)
 20096ac:	dc000415 	stw	r16,16(sp)
 20096b0:	3823883a 	mov	r17,r7
 20096b4:	14000017 	ldw	r16,0(r2)
 20096b8:	d9000115 	stw	r4,4(sp)
 20096bc:	d9400215 	stw	r5,8(sp)
 20096c0:	d9800315 	stw	r6,12(sp)
 20096c4:	20052f00 	call	20052f0 <__locale_charset>
 20096c8:	d9000117 	ldw	r4,4(sp)
 20096cc:	d9400217 	ldw	r5,8(sp)
 20096d0:	d9800317 	ldw	r6,12(sp)
 20096d4:	dc400015 	stw	r17,0(sp)
 20096d8:	100f883a 	mov	r7,r2
 20096dc:	803ee83a 	callr	r16
 20096e0:	dfc00617 	ldw	ra,24(sp)
 20096e4:	dc400517 	ldw	r17,20(sp)
 20096e8:	dc000417 	ldw	r16,16(sp)
 20096ec:	dec00704 	addi	sp,sp,28
 20096f0:	f800283a 	ret

020096f4 <__udivdi3>:
 20096f4:	defff504 	addi	sp,sp,-44
 20096f8:	dcc00415 	stw	r19,16(sp)
 20096fc:	dc000115 	stw	r16,4(sp)
 2009700:	dfc00a15 	stw	ra,40(sp)
 2009704:	df000915 	stw	fp,36(sp)
 2009708:	ddc00815 	stw	r23,32(sp)
 200970c:	dd800715 	stw	r22,28(sp)
 2009710:	dd400615 	stw	r21,24(sp)
 2009714:	dd000515 	stw	r20,20(sp)
 2009718:	dc800315 	stw	r18,12(sp)
 200971c:	dc400215 	stw	r17,8(sp)
 2009720:	2027883a 	mov	r19,r4
 2009724:	2821883a 	mov	r16,r5
 2009728:	3800421e 	bne	r7,zero,2009834 <__udivdi3+0x140>
 200972c:	3025883a 	mov	r18,r6
 2009730:	2023883a 	mov	r17,r4
 2009734:	2980542e 	bgeu	r5,r6,2009888 <__udivdi3+0x194>
 2009738:	00bfffd4 	movui	r2,65535
 200973c:	282d883a 	mov	r22,r5
 2009740:	1180a836 	bltu	r2,r6,20099e4 <__udivdi3+0x2f0>
 2009744:	00803fc4 	movi	r2,255
 2009748:	1181422e 	bgeu	r2,r6,2009c54 <__udivdi3+0x560>
 200974c:	00800204 	movi	r2,8
 2009750:	1007883a 	mov	r3,r2
 2009754:	3084d83a 	srl	r2,r6,r2
 2009758:	01008074 	movhi	r4,513
 200975c:	213c2b04 	addi	r4,r4,-3924
 2009760:	2085883a 	add	r2,r4,r2
 2009764:	10800003 	ldbu	r2,0(r2)
 2009768:	10c7883a 	add	r3,r2,r3
 200976c:	00800804 	movi	r2,32
 2009770:	10c5c83a 	sub	r2,r2,r3
 2009774:	10000526 	beq	r2,zero,200978c <__udivdi3+0x98>
 2009778:	80a0983a 	sll	r16,r16,r2
 200977c:	98c6d83a 	srl	r3,r19,r3
 2009780:	30a4983a 	sll	r18,r6,r2
 2009784:	98a2983a 	sll	r17,r19,r2
 2009788:	80ecb03a 	or	r22,r16,r3
 200978c:	902ad43a 	srli	r21,r18,16
 2009790:	b009883a 	mov	r4,r22
 2009794:	953fffcc 	andi	r20,r18,65535
 2009798:	a80b883a 	mov	r5,r21
 200979c:	200a3680 	call	200a368 <__umodsi3>
 20097a0:	b009883a 	mov	r4,r22
 20097a4:	a80b883a 	mov	r5,r21
 20097a8:	1027883a 	mov	r19,r2
 20097ac:	200a3600 	call	200a360 <__udivsi3>
 20097b0:	1021883a 	mov	r16,r2
 20097b4:	8806d43a 	srli	r3,r17,16
 20097b8:	9804943a 	slli	r2,r19,16
 20097bc:	8527383a 	mul	r19,r16,r20
 20097c0:	10c4b03a 	or	r2,r2,r3
 20097c4:	14c0052e 	bgeu	r2,r19,20097dc <__udivdi3+0xe8>
 20097c8:	1485883a 	add	r2,r2,r18
 20097cc:	80ffffc4 	addi	r3,r16,-1
 20097d0:	14800136 	bltu	r2,r18,20097d8 <__udivdi3+0xe4>
 20097d4:	14c13436 	bltu	r2,r19,2009ca8 <__udivdi3+0x5b4>
 20097d8:	1821883a 	mov	r16,r3
 20097dc:	14e7c83a 	sub	r19,r2,r19
 20097e0:	9809883a 	mov	r4,r19
 20097e4:	a80b883a 	mov	r5,r21
 20097e8:	200a3680 	call	200a368 <__umodsi3>
 20097ec:	102d883a 	mov	r22,r2
 20097f0:	9809883a 	mov	r4,r19
 20097f4:	a80b883a 	mov	r5,r21
 20097f8:	200a3600 	call	200a360 <__udivsi3>
 20097fc:	b02c943a 	slli	r22,r22,16
 2009800:	1529383a 	mul	r20,r2,r20
 2009804:	8c7fffcc 	andi	r17,r17,65535
 2009808:	b462b03a 	or	r17,r22,r17
 200980c:	8d00052e 	bgeu	r17,r20,2009824 <__udivdi3+0x130>
 2009810:	8ca3883a 	add	r17,r17,r18
 2009814:	10ffffc4 	addi	r3,r2,-1
 2009818:	8c80f636 	bltu	r17,r18,2009bf4 <__udivdi3+0x500>
 200981c:	8d00f52e 	bgeu	r17,r20,2009bf4 <__udivdi3+0x500>
 2009820:	10bfff84 	addi	r2,r2,-2
 2009824:	8020943a 	slli	r16,r16,16
 2009828:	0007883a 	mov	r3,zero
 200982c:	1404b03a 	or	r2,r2,r16
 2009830:	00005b06 	br	20099a0 <__udivdi3+0x2ac>
 2009834:	29c05836 	bltu	r5,r7,2009998 <__udivdi3+0x2a4>
 2009838:	00bfffd4 	movui	r2,65535
 200983c:	11c0642e 	bgeu	r2,r7,20099d0 <__udivdi3+0x2dc>
 2009840:	00804034 	movhi	r2,256
 2009844:	10bfffc4 	addi	r2,r2,-1
 2009848:	11c0f32e 	bgeu	r2,r7,2009c18 <__udivdi3+0x524>
 200984c:	00c00604 	movi	r3,24
 2009850:	180b883a 	mov	r5,r3
 2009854:	38c6d83a 	srl	r3,r7,r3
 2009858:	00808074 	movhi	r2,513
 200985c:	10bc2b04 	addi	r2,r2,-3924
 2009860:	10c7883a 	add	r3,r2,r3
 2009864:	18c00003 	ldbu	r3,0(r3)
 2009868:	01000804 	movi	r4,32
 200986c:	1947883a 	add	r3,r3,r5
 2009870:	20e5c83a 	sub	r18,r4,r3
 2009874:	9000661e 	bne	r18,zero,2009a10 <__udivdi3+0x31c>
 2009878:	3c00f936 	bltu	r7,r16,2009c60 <__udivdi3+0x56c>
 200987c:	9985403a 	cmpgeu	r2,r19,r6
 2009880:	0007883a 	mov	r3,zero
 2009884:	00004606 	br	20099a0 <__udivdi3+0x2ac>
 2009888:	3000041e 	bne	r6,zero,200989c <__udivdi3+0x1a8>
 200988c:	01000044 	movi	r4,1
 2009890:	000b883a 	mov	r5,zero
 2009894:	200a3600 	call	200a360 <__udivsi3>
 2009898:	1025883a 	mov	r18,r2
 200989c:	00bfffd4 	movui	r2,65535
 20098a0:	1480562e 	bgeu	r2,r18,20099fc <__udivdi3+0x308>
 20098a4:	00804034 	movhi	r2,256
 20098a8:	10bfffc4 	addi	r2,r2,-1
 20098ac:	1480e32e 	bgeu	r2,r18,2009c3c <__udivdi3+0x548>
 20098b0:	00800604 	movi	r2,24
 20098b4:	1007883a 	mov	r3,r2
 20098b8:	9084d83a 	srl	r2,r18,r2
 20098bc:	01008074 	movhi	r4,513
 20098c0:	213c2b04 	addi	r4,r4,-3924
 20098c4:	2085883a 	add	r2,r4,r2
 20098c8:	10800003 	ldbu	r2,0(r2)
 20098cc:	10c5883a 	add	r2,r2,r3
 20098d0:	00c00804 	movi	r3,32
 20098d4:	1887c83a 	sub	r3,r3,r2
 20098d8:	1800911e 	bne	r3,zero,2009b20 <__udivdi3+0x42c>
 20098dc:	9028d43a 	srli	r20,r18,16
 20098e0:	84a1c83a 	sub	r16,r16,r18
 20098e4:	957fffcc 	andi	r21,r18,65535
 20098e8:	00c00044 	movi	r3,1
 20098ec:	8009883a 	mov	r4,r16
 20098f0:	a00b883a 	mov	r5,r20
 20098f4:	d8c00015 	stw	r3,0(sp)
 20098f8:	200a3680 	call	200a368 <__umodsi3>
 20098fc:	8009883a 	mov	r4,r16
 2009900:	a00b883a 	mov	r5,r20
 2009904:	1027883a 	mov	r19,r2
 2009908:	200a3600 	call	200a360 <__udivsi3>
 200990c:	1021883a 	mov	r16,r2
 2009910:	880cd43a 	srli	r6,r17,16
 2009914:	9804943a 	slli	r2,r19,16
 2009918:	8567383a 	mul	r19,r16,r21
 200991c:	d8c00017 	ldw	r3,0(sp)
 2009920:	1188b03a 	or	r4,r2,r6
 2009924:	24c0052e 	bgeu	r4,r19,200993c <__udivdi3+0x248>
 2009928:	2489883a 	add	r4,r4,r18
 200992c:	80bfffc4 	addi	r2,r16,-1
 2009930:	24800136 	bltu	r4,r18,2009938 <__udivdi3+0x244>
 2009934:	24c0d936 	bltu	r4,r19,2009c9c <__udivdi3+0x5a8>
 2009938:	1021883a 	mov	r16,r2
 200993c:	24e7c83a 	sub	r19,r4,r19
 2009940:	9809883a 	mov	r4,r19
 2009944:	a00b883a 	mov	r5,r20
 2009948:	d8c00015 	stw	r3,0(sp)
 200994c:	200a3680 	call	200a368 <__umodsi3>
 2009950:	102d883a 	mov	r22,r2
 2009954:	9809883a 	mov	r4,r19
 2009958:	a00b883a 	mov	r5,r20
 200995c:	200a3600 	call	200a360 <__udivsi3>
 2009960:	b02c943a 	slli	r22,r22,16
 2009964:	156b383a 	mul	r21,r2,r21
 2009968:	8c7fffcc 	andi	r17,r17,65535
 200996c:	b462b03a 	or	r17,r22,r17
 2009970:	d8c00017 	ldw	r3,0(sp)
 2009974:	8d40052e 	bgeu	r17,r21,200998c <__udivdi3+0x298>
 2009978:	8ca3883a 	add	r17,r17,r18
 200997c:	113fffc4 	addi	r4,r2,-1
 2009980:	8c809a36 	bltu	r17,r18,2009bec <__udivdi3+0x4f8>
 2009984:	8d40992e 	bgeu	r17,r21,2009bec <__udivdi3+0x4f8>
 2009988:	10bfff84 	addi	r2,r2,-2
 200998c:	8020943a 	slli	r16,r16,16
 2009990:	1404b03a 	or	r2,r2,r16
 2009994:	00000206 	br	20099a0 <__udivdi3+0x2ac>
 2009998:	0007883a 	mov	r3,zero
 200999c:	0005883a 	mov	r2,zero
 20099a0:	dfc00a17 	ldw	ra,40(sp)
 20099a4:	df000917 	ldw	fp,36(sp)
 20099a8:	ddc00817 	ldw	r23,32(sp)
 20099ac:	dd800717 	ldw	r22,28(sp)
 20099b0:	dd400617 	ldw	r21,24(sp)
 20099b4:	dd000517 	ldw	r20,20(sp)
 20099b8:	dcc00417 	ldw	r19,16(sp)
 20099bc:	dc800317 	ldw	r18,12(sp)
 20099c0:	dc400217 	ldw	r17,8(sp)
 20099c4:	dc000117 	ldw	r16,4(sp)
 20099c8:	dec00b04 	addi	sp,sp,44
 20099cc:	f800283a 	ret
 20099d0:	00803fc4 	movi	r2,255
 20099d4:	11c0932e 	bgeu	r2,r7,2009c24 <__udivdi3+0x530>
 20099d8:	00c00204 	movi	r3,8
 20099dc:	180b883a 	mov	r5,r3
 20099e0:	003f9c06 	br	2009854 <__udivdi3+0x160>
 20099e4:	00804034 	movhi	r2,256
 20099e8:	10bfffc4 	addi	r2,r2,-1
 20099ec:	1180902e 	bgeu	r2,r6,2009c30 <__udivdi3+0x53c>
 20099f0:	00800604 	movi	r2,24
 20099f4:	1007883a 	mov	r3,r2
 20099f8:	003f5606 	br	2009754 <__udivdi3+0x60>
 20099fc:	00803fc4 	movi	r2,255
 2009a00:	1480912e 	bgeu	r2,r18,2009c48 <__udivdi3+0x554>
 2009a04:	00800204 	movi	r2,8
 2009a08:	1007883a 	mov	r3,r2
 2009a0c:	003faa06 	br	20098b8 <__udivdi3+0x1c4>
 2009a10:	30eed83a 	srl	r23,r6,r3
 2009a14:	3c8e983a 	sll	r7,r7,r18
 2009a18:	80f8d83a 	srl	fp,r16,r3
 2009a1c:	98c6d83a 	srl	r3,r19,r3
 2009a20:	3deeb03a 	or	r23,r7,r23
 2009a24:	b828d43a 	srli	r20,r23,16
 2009a28:	84a0983a 	sll	r16,r16,r18
 2009a2c:	e009883a 	mov	r4,fp
 2009a30:	a00b883a 	mov	r5,r20
 2009a34:	80e2b03a 	or	r17,r16,r3
 2009a38:	34aa983a 	sll	r21,r6,r18
 2009a3c:	200a3680 	call	200a368 <__umodsi3>
 2009a40:	e009883a 	mov	r4,fp
 2009a44:	a00b883a 	mov	r5,r20
 2009a48:	102d883a 	mov	r22,r2
 2009a4c:	200a3600 	call	200a360 <__udivsi3>
 2009a50:	1021883a 	mov	r16,r2
 2009a54:	bf3fffcc 	andi	fp,r23,65535
 2009a58:	b004943a 	slli	r2,r22,16
 2009a5c:	8808d43a 	srli	r4,r17,16
 2009a60:	872d383a 	mul	r22,r16,fp
 2009a64:	1104b03a 	or	r2,r2,r4
 2009a68:	1580042e 	bgeu	r2,r22,2009a7c <__udivdi3+0x388>
 2009a6c:	15c5883a 	add	r2,r2,r23
 2009a70:	80ffffc4 	addi	r3,r16,-1
 2009a74:	15c0812e 	bgeu	r2,r23,2009c7c <__udivdi3+0x588>
 2009a78:	1821883a 	mov	r16,r3
 2009a7c:	15adc83a 	sub	r22,r2,r22
 2009a80:	b009883a 	mov	r4,r22
 2009a84:	a00b883a 	mov	r5,r20
 2009a88:	200a3680 	call	200a368 <__umodsi3>
 2009a8c:	a00b883a 	mov	r5,r20
 2009a90:	b009883a 	mov	r4,r22
 2009a94:	d8800015 	stw	r2,0(sp)
 2009a98:	200a3600 	call	200a360 <__udivsi3>
 2009a9c:	d8c00017 	ldw	r3,0(sp)
 2009aa0:	170b383a 	mul	r5,r2,fp
 2009aa4:	8c7fffcc 	andi	r17,r17,65535
 2009aa8:	1806943a 	slli	r3,r3,16
 2009aac:	1c46b03a 	or	r3,r3,r17
 2009ab0:	1940042e 	bgeu	r3,r5,2009ac4 <__udivdi3+0x3d0>
 2009ab4:	1dc7883a 	add	r3,r3,r23
 2009ab8:	113fffc4 	addi	r4,r2,-1
 2009abc:	1dc06b2e 	bgeu	r3,r23,2009c6c <__udivdi3+0x578>
 2009ac0:	2005883a 	mov	r2,r4
 2009ac4:	8020943a 	slli	r16,r16,16
 2009ac8:	a9ffffcc 	andi	r7,r21,65535
 2009acc:	a82ad43a 	srli	r21,r21,16
 2009ad0:	1404b03a 	or	r2,r2,r16
 2009ad4:	113fffcc 	andi	r4,r2,65535
 2009ad8:	100cd43a 	srli	r6,r2,16
 2009adc:	21d3383a 	mul	r9,r4,r7
 2009ae0:	2549383a 	mul	r4,r4,r21
 2009ae4:	31cf383a 	mul	r7,r6,r7
 2009ae8:	4810d43a 	srli	r8,r9,16
 2009aec:	1947c83a 	sub	r3,r3,r5
 2009af0:	3909883a 	add	r4,r7,r4
 2009af4:	2209883a 	add	r4,r4,r8
 2009af8:	354d383a 	mul	r6,r6,r21
 2009afc:	21c0022e 	bgeu	r4,r7,2009b08 <__udivdi3+0x414>
 2009b00:	01400074 	movhi	r5,1
 2009b04:	314d883a 	add	r6,r6,r5
 2009b08:	202ad43a 	srli	r21,r4,16
 2009b0c:	354d883a 	add	r6,r6,r21
 2009b10:	19803f36 	bltu	r3,r6,2009c10 <__udivdi3+0x51c>
 2009b14:	19803926 	beq	r3,r6,2009bfc <__udivdi3+0x508>
 2009b18:	0007883a 	mov	r3,zero
 2009b1c:	003fa006 	br	20099a0 <__udivdi3+0x2ac>
 2009b20:	90e4983a 	sll	r18,r18,r3
 2009b24:	80aad83a 	srl	r21,r16,r2
 2009b28:	80e0983a 	sll	r16,r16,r3
 2009b2c:	9028d43a 	srli	r20,r18,16
 2009b30:	9884d83a 	srl	r2,r19,r2
 2009b34:	a809883a 	mov	r4,r21
 2009b38:	a00b883a 	mov	r5,r20
 2009b3c:	80acb03a 	or	r22,r16,r2
 2009b40:	98e2983a 	sll	r17,r19,r3
 2009b44:	200a3680 	call	200a368 <__umodsi3>
 2009b48:	a809883a 	mov	r4,r21
 2009b4c:	a00b883a 	mov	r5,r20
 2009b50:	1021883a 	mov	r16,r2
 2009b54:	200a3600 	call	200a360 <__udivsi3>
 2009b58:	957fffcc 	andi	r21,r18,65535
 2009b5c:	8020943a 	slli	r16,r16,16
 2009b60:	b00ad43a 	srli	r5,r22,16
 2009b64:	1567383a 	mul	r19,r2,r21
 2009b68:	102f883a 	mov	r23,r2
 2009b6c:	8148b03a 	or	r4,r16,r5
 2009b70:	24c0062e 	bgeu	r4,r19,2009b8c <__udivdi3+0x498>
 2009b74:	2489883a 	add	r4,r4,r18
 2009b78:	10bfffc4 	addi	r2,r2,-1
 2009b7c:	24804536 	bltu	r4,r18,2009c94 <__udivdi3+0x5a0>
 2009b80:	24c0442e 	bgeu	r4,r19,2009c94 <__udivdi3+0x5a0>
 2009b84:	bdffff84 	addi	r23,r23,-2
 2009b88:	2489883a 	add	r4,r4,r18
 2009b8c:	24e7c83a 	sub	r19,r4,r19
 2009b90:	9809883a 	mov	r4,r19
 2009b94:	a00b883a 	mov	r5,r20
 2009b98:	200a3680 	call	200a368 <__umodsi3>
 2009b9c:	1021883a 	mov	r16,r2
 2009ba0:	9809883a 	mov	r4,r19
 2009ba4:	a00b883a 	mov	r5,r20
 2009ba8:	200a3600 	call	200a360 <__udivsi3>
 2009bac:	8020943a 	slli	r16,r16,16
 2009bb0:	1007883a 	mov	r3,r2
 2009bb4:	1545383a 	mul	r2,r2,r21
 2009bb8:	b13fffcc 	andi	r4,r22,65535
 2009bbc:	8108b03a 	or	r4,r16,r4
 2009bc0:	2080062e 	bgeu	r4,r2,2009bdc <__udivdi3+0x4e8>
 2009bc4:	2489883a 	add	r4,r4,r18
 2009bc8:	197fffc4 	addi	r5,r3,-1
 2009bcc:	24802f36 	bltu	r4,r18,2009c8c <__udivdi3+0x598>
 2009bd0:	20802e2e 	bgeu	r4,r2,2009c8c <__udivdi3+0x598>
 2009bd4:	18ffff84 	addi	r3,r3,-2
 2009bd8:	2489883a 	add	r4,r4,r18
 2009bdc:	b82e943a 	slli	r23,r23,16
 2009be0:	20a1c83a 	sub	r16,r4,r2
 2009be4:	1dc6b03a 	or	r3,r3,r23
 2009be8:	003f4006 	br	20098ec <__udivdi3+0x1f8>
 2009bec:	2005883a 	mov	r2,r4
 2009bf0:	003f6606 	br	200998c <__udivdi3+0x298>
 2009bf4:	1805883a 	mov	r2,r3
 2009bf8:	003f0a06 	br	2009824 <__udivdi3+0x130>
 2009bfc:	2006943a 	slli	r3,r4,16
 2009c00:	9c88983a 	sll	r4,r19,r18
 2009c04:	4a7fffcc 	andi	r9,r9,65535
 2009c08:	1a47883a 	add	r3,r3,r9
 2009c0c:	20ffc22e 	bgeu	r4,r3,2009b18 <__udivdi3+0x424>
 2009c10:	10bfffc4 	addi	r2,r2,-1
 2009c14:	003fc006 	br	2009b18 <__udivdi3+0x424>
 2009c18:	00c00404 	movi	r3,16
 2009c1c:	180b883a 	mov	r5,r3
 2009c20:	003f0c06 	br	2009854 <__udivdi3+0x160>
 2009c24:	0007883a 	mov	r3,zero
 2009c28:	000b883a 	mov	r5,zero
 2009c2c:	003f0906 	br	2009854 <__udivdi3+0x160>
 2009c30:	00800404 	movi	r2,16
 2009c34:	1007883a 	mov	r3,r2
 2009c38:	003ec606 	br	2009754 <__udivdi3+0x60>
 2009c3c:	00800404 	movi	r2,16
 2009c40:	1007883a 	mov	r3,r2
 2009c44:	003f1c06 	br	20098b8 <__udivdi3+0x1c4>
 2009c48:	0005883a 	mov	r2,zero
 2009c4c:	0007883a 	mov	r3,zero
 2009c50:	003f1906 	br	20098b8 <__udivdi3+0x1c4>
 2009c54:	0005883a 	mov	r2,zero
 2009c58:	0007883a 	mov	r3,zero
 2009c5c:	003ebd06 	br	2009754 <__udivdi3+0x60>
 2009c60:	0007883a 	mov	r3,zero
 2009c64:	00800044 	movi	r2,1
 2009c68:	003f4d06 	br	20099a0 <__udivdi3+0x2ac>
 2009c6c:	197f942e 	bgeu	r3,r5,2009ac0 <__udivdi3+0x3cc>
 2009c70:	10bfff84 	addi	r2,r2,-2
 2009c74:	1dc7883a 	add	r3,r3,r23
 2009c78:	003f9206 	br	2009ac4 <__udivdi3+0x3d0>
 2009c7c:	15bf7e2e 	bgeu	r2,r22,2009a78 <__udivdi3+0x384>
 2009c80:	843fff84 	addi	r16,r16,-2
 2009c84:	15c5883a 	add	r2,r2,r23
 2009c88:	003f7c06 	br	2009a7c <__udivdi3+0x388>
 2009c8c:	2807883a 	mov	r3,r5
 2009c90:	003fd206 	br	2009bdc <__udivdi3+0x4e8>
 2009c94:	102f883a 	mov	r23,r2
 2009c98:	003fbc06 	br	2009b8c <__udivdi3+0x498>
 2009c9c:	843fff84 	addi	r16,r16,-2
 2009ca0:	2489883a 	add	r4,r4,r18
 2009ca4:	003f2506 	br	200993c <__udivdi3+0x248>
 2009ca8:	843fff84 	addi	r16,r16,-2
 2009cac:	1485883a 	add	r2,r2,r18
 2009cb0:	003eca06 	br	20097dc <__udivdi3+0xe8>

02009cb4 <__umoddi3>:
 2009cb4:	defff404 	addi	sp,sp,-48
 2009cb8:	ddc00915 	stw	r23,36(sp)
 2009cbc:	dc400315 	stw	r17,12(sp)
 2009cc0:	dc000215 	stw	r16,8(sp)
 2009cc4:	dfc00b15 	stw	ra,44(sp)
 2009cc8:	df000a15 	stw	fp,40(sp)
 2009ccc:	dd800815 	stw	r22,32(sp)
 2009cd0:	dd400715 	stw	r21,28(sp)
 2009cd4:	dd000615 	stw	r20,24(sp)
 2009cd8:	dcc00515 	stw	r19,20(sp)
 2009cdc:	dc800415 	stw	r18,16(sp)
 2009ce0:	2021883a 	mov	r16,r4
 2009ce4:	2823883a 	mov	r17,r5
 2009ce8:	282f883a 	mov	r23,r5
 2009cec:	3800381e 	bne	r7,zero,2009dd0 <__umoddi3+0x11c>
 2009cf0:	3027883a 	mov	r19,r6
 2009cf4:	2029883a 	mov	r20,r4
 2009cf8:	29804e2e 	bgeu	r5,r6,2009e34 <__umoddi3+0x180>
 2009cfc:	00bfffd4 	movui	r2,65535
 2009d00:	11809c36 	bltu	r2,r6,2009f74 <__umoddi3+0x2c0>
 2009d04:	00803fc4 	movi	r2,255
 2009d08:	11813b2e 	bgeu	r2,r6,200a1f8 <__umoddi3+0x544>
 2009d0c:	01400204 	movi	r5,8
 2009d10:	2805883a 	mov	r2,r5
 2009d14:	314ad83a 	srl	r5,r6,r5
 2009d18:	00c08074 	movhi	r3,513
 2009d1c:	18fc2b04 	addi	r3,r3,-3924
 2009d20:	194b883a 	add	r5,r3,r5
 2009d24:	29000003 	ldbu	r4,0(r5)
 2009d28:	2089883a 	add	r4,r4,r2
 2009d2c:	00800804 	movi	r2,32
 2009d30:	1105c83a 	sub	r2,r2,r4
 2009d34:	1000ec26 	beq	r2,zero,200a0e8 <__umoddi3+0x434>
 2009d38:	88a2983a 	sll	r17,r17,r2
 2009d3c:	8108d83a 	srl	r4,r16,r4
 2009d40:	30a6983a 	sll	r19,r6,r2
 2009d44:	80a8983a 	sll	r20,r16,r2
 2009d48:	1025883a 	mov	r18,r2
 2009d4c:	892eb03a 	or	r23,r17,r4
 2009d50:	982cd43a 	srli	r22,r19,16
 2009d54:	b809883a 	mov	r4,r23
 2009d58:	9d7fffcc 	andi	r21,r19,65535
 2009d5c:	b00b883a 	mov	r5,r22
 2009d60:	200a3680 	call	200a368 <__umodsi3>
 2009d64:	b809883a 	mov	r4,r23
 2009d68:	b00b883a 	mov	r5,r22
 2009d6c:	1021883a 	mov	r16,r2
 2009d70:	200a3600 	call	200a360 <__udivsi3>
 2009d74:	8020943a 	slli	r16,r16,16
 2009d78:	a00cd43a 	srli	r6,r20,16
 2009d7c:	1545383a 	mul	r2,r2,r21
 2009d80:	8188b03a 	or	r4,r16,r6
 2009d84:	2080042e 	bgeu	r4,r2,2009d98 <__umoddi3+0xe4>
 2009d88:	24c9883a 	add	r4,r4,r19
 2009d8c:	24c00236 	bltu	r4,r19,2009d98 <__umoddi3+0xe4>
 2009d90:	2080012e 	bgeu	r4,r2,2009d98 <__umoddi3+0xe4>
 2009d94:	24c9883a 	add	r4,r4,r19
 2009d98:	20a3c83a 	sub	r17,r4,r2
 2009d9c:	8809883a 	mov	r4,r17
 2009da0:	b00b883a 	mov	r5,r22
 2009da4:	200a3680 	call	200a368 <__umodsi3>
 2009da8:	8809883a 	mov	r4,r17
 2009dac:	b00b883a 	mov	r5,r22
 2009db0:	1021883a 	mov	r16,r2
 2009db4:	200a3600 	call	200a360 <__udivsi3>
 2009db8:	8006943a 	slli	r3,r16,16
 2009dbc:	1545383a 	mul	r2,r2,r21
 2009dc0:	a13fffcc 	andi	r4,r20,65535
 2009dc4:	1906b03a 	or	r3,r3,r4
 2009dc8:	1880532e 	bgeu	r3,r2,2009f18 <__umoddi3+0x264>
 2009dcc:	00004e06 	br	2009f08 <__umoddi3+0x254>
 2009dd0:	29c05536 	bltu	r5,r7,2009f28 <__umoddi3+0x274>
 2009dd4:	00bfffd4 	movui	r2,65535
 2009dd8:	11c0612e 	bgeu	r2,r7,2009f60 <__umoddi3+0x2ac>
 2009ddc:	00804034 	movhi	r2,256
 2009de0:	10bfffc4 	addi	r2,r2,-1
 2009de4:	11c0f82e 	bgeu	r2,r7,200a1c8 <__umoddi3+0x514>
 2009de8:	01400604 	movi	r5,24
 2009dec:	282b883a 	mov	r21,r5
 2009df0:	394ad83a 	srl	r5,r7,r5
 2009df4:	00c08074 	movhi	r3,513
 2009df8:	18fc2b04 	addi	r3,r3,-3924
 2009dfc:	194b883a 	add	r5,r3,r5
 2009e00:	28800003 	ldbu	r2,0(r5)
 2009e04:	00c00804 	movi	r3,32
 2009e08:	156b883a 	add	r21,r2,r21
 2009e0c:	1d69c83a 	sub	r20,r3,r21
 2009e10:	a000631e 	bne	r20,zero,2009fa0 <__umoddi3+0x2ec>
 2009e14:	3c400136 	bltu	r7,r17,2009e1c <__umoddi3+0x168>
 2009e18:	81810436 	bltu	r16,r6,200a22c <__umoddi3+0x578>
 2009e1c:	8185c83a 	sub	r2,r16,r6
 2009e20:	89e3c83a 	sub	r17,r17,r7
 2009e24:	8087803a 	cmpltu	r3,r16,r2
 2009e28:	88efc83a 	sub	r23,r17,r3
 2009e2c:	b807883a 	mov	r3,r23
 2009e30:	00003f06 	br	2009f30 <__umoddi3+0x27c>
 2009e34:	3000041e 	bne	r6,zero,2009e48 <__umoddi3+0x194>
 2009e38:	01000044 	movi	r4,1
 2009e3c:	000b883a 	mov	r5,zero
 2009e40:	200a3600 	call	200a360 <__udivsi3>
 2009e44:	1027883a 	mov	r19,r2
 2009e48:	00bfffd4 	movui	r2,65535
 2009e4c:	14c04f2e 	bgeu	r2,r19,2009f8c <__umoddi3+0x2d8>
 2009e50:	00804034 	movhi	r2,256
 2009e54:	10bfffc4 	addi	r2,r2,-1
 2009e58:	14c0e42e 	bgeu	r2,r19,200a1ec <__umoddi3+0x538>
 2009e5c:	00800604 	movi	r2,24
 2009e60:	1007883a 	mov	r3,r2
 2009e64:	9884d83a 	srl	r2,r19,r2
 2009e68:	01008074 	movhi	r4,513
 2009e6c:	213c2b04 	addi	r4,r4,-3924
 2009e70:	2085883a 	add	r2,r4,r2
 2009e74:	11000003 	ldbu	r4,0(r2)
 2009e78:	00800804 	movi	r2,32
 2009e7c:	20c7883a 	add	r3,r4,r3
 2009e80:	10c5c83a 	sub	r2,r2,r3
 2009e84:	10009a1e 	bne	r2,zero,200a0f0 <__umoddi3+0x43c>
 2009e88:	982cd43a 	srli	r22,r19,16
 2009e8c:	8ce3c83a 	sub	r17,r17,r19
 2009e90:	9c3fffcc 	andi	r16,r19,65535
 2009e94:	0025883a 	mov	r18,zero
 2009e98:	8809883a 	mov	r4,r17
 2009e9c:	b00b883a 	mov	r5,r22
 2009ea0:	200a3680 	call	200a368 <__umodsi3>
 2009ea4:	8809883a 	mov	r4,r17
 2009ea8:	b00b883a 	mov	r5,r22
 2009eac:	102b883a 	mov	r21,r2
 2009eb0:	200a3600 	call	200a360 <__udivsi3>
 2009eb4:	a806943a 	slli	r3,r21,16
 2009eb8:	a008d43a 	srli	r4,r20,16
 2009ebc:	1405383a 	mul	r2,r2,r16
 2009ec0:	190cb03a 	or	r6,r3,r4
 2009ec4:	3080032e 	bgeu	r6,r2,2009ed4 <__umoddi3+0x220>
 2009ec8:	34cd883a 	add	r6,r6,r19
 2009ecc:	34c00136 	bltu	r6,r19,2009ed4 <__umoddi3+0x220>
 2009ed0:	3080d436 	bltu	r6,r2,200a224 <__umoddi3+0x570>
 2009ed4:	30abc83a 	sub	r21,r6,r2
 2009ed8:	a809883a 	mov	r4,r21
 2009edc:	b00b883a 	mov	r5,r22
 2009ee0:	200a3680 	call	200a368 <__umodsi3>
 2009ee4:	1023883a 	mov	r17,r2
 2009ee8:	a809883a 	mov	r4,r21
 2009eec:	b00b883a 	mov	r5,r22
 2009ef0:	200a3600 	call	200a360 <__udivsi3>
 2009ef4:	8822943a 	slli	r17,r17,16
 2009ef8:	1405383a 	mul	r2,r2,r16
 2009efc:	a13fffcc 	andi	r4,r20,65535
 2009f00:	8906b03a 	or	r3,r17,r4
 2009f04:	1880042e 	bgeu	r3,r2,2009f18 <__umoddi3+0x264>
 2009f08:	1cc7883a 	add	r3,r3,r19
 2009f0c:	1cc00236 	bltu	r3,r19,2009f18 <__umoddi3+0x264>
 2009f10:	1880012e 	bgeu	r3,r2,2009f18 <__umoddi3+0x264>
 2009f14:	1cc7883a 	add	r3,r3,r19
 2009f18:	1887c83a 	sub	r3,r3,r2
 2009f1c:	1c84d83a 	srl	r2,r3,r18
 2009f20:	0007883a 	mov	r3,zero
 2009f24:	00000206 	br	2009f30 <__umoddi3+0x27c>
 2009f28:	2005883a 	mov	r2,r4
 2009f2c:	2807883a 	mov	r3,r5
 2009f30:	dfc00b17 	ldw	ra,44(sp)
 2009f34:	df000a17 	ldw	fp,40(sp)
 2009f38:	ddc00917 	ldw	r23,36(sp)
 2009f3c:	dd800817 	ldw	r22,32(sp)
 2009f40:	dd400717 	ldw	r21,28(sp)
 2009f44:	dd000617 	ldw	r20,24(sp)
 2009f48:	dcc00517 	ldw	r19,20(sp)
 2009f4c:	dc800417 	ldw	r18,16(sp)
 2009f50:	dc400317 	ldw	r17,12(sp)
 2009f54:	dc000217 	ldw	r16,8(sp)
 2009f58:	dec00c04 	addi	sp,sp,48
 2009f5c:	f800283a 	ret
 2009f60:	00803fc4 	movi	r2,255
 2009f64:	11c0952e 	bgeu	r2,r7,200a1bc <__umoddi3+0x508>
 2009f68:	01400204 	movi	r5,8
 2009f6c:	282b883a 	mov	r21,r5
 2009f70:	003f9f06 	br	2009df0 <__umoddi3+0x13c>
 2009f74:	00804034 	movhi	r2,256
 2009f78:	10bfffc4 	addi	r2,r2,-1
 2009f7c:	1180952e 	bgeu	r2,r6,200a1d4 <__umoddi3+0x520>
 2009f80:	01400604 	movi	r5,24
 2009f84:	2805883a 	mov	r2,r5
 2009f88:	003f6206 	br	2009d14 <__umoddi3+0x60>
 2009f8c:	00803fc4 	movi	r2,255
 2009f90:	14c0932e 	bgeu	r2,r19,200a1e0 <__umoddi3+0x52c>
 2009f94:	00800204 	movi	r2,8
 2009f98:	1007883a 	mov	r3,r2
 2009f9c:	003fb106 	br	2009e64 <__umoddi3+0x1b0>
 2009fa0:	3548d83a 	srl	r4,r6,r21
 2009fa4:	3d0e983a 	sll	r7,r7,r20
 2009fa8:	8d10983a 	sll	r8,r17,r20
 2009fac:	8d6cd83a 	srl	r22,r17,r21
 2009fb0:	3922b03a 	or	r17,r7,r4
 2009fb4:	882ed43a 	srli	r23,r17,16
 2009fb8:	8564d83a 	srl	r18,r16,r21
 2009fbc:	b009883a 	mov	r4,r22
 2009fc0:	b80b883a 	mov	r5,r23
 2009fc4:	44a4b03a 	or	r18,r8,r18
 2009fc8:	3526983a 	sll	r19,r6,r20
 2009fcc:	200a3680 	call	200a368 <__umodsi3>
 2009fd0:	b009883a 	mov	r4,r22
 2009fd4:	b80b883a 	mov	r5,r23
 2009fd8:	1039883a 	mov	fp,r2
 2009fdc:	200a3600 	call	200a360 <__udivsi3>
 2009fe0:	102d883a 	mov	r22,r2
 2009fe4:	8a3fffcc 	andi	r8,r17,65535
 2009fe8:	e004943a 	slli	r2,fp,16
 2009fec:	900cd43a 	srli	r6,r18,16
 2009ff0:	b239383a 	mul	fp,r22,r8
 2009ff4:	8520983a 	sll	r16,r16,r20
 2009ff8:	118ab03a 	or	r5,r2,r6
 2009ffc:	2f00042e 	bgeu	r5,fp,200a010 <__umoddi3+0x35c>
 200a000:	2c4b883a 	add	r5,r5,r17
 200a004:	b0bfffc4 	addi	r2,r22,-1
 200a008:	2c40822e 	bgeu	r5,r17,200a214 <__umoddi3+0x560>
 200a00c:	102d883a 	mov	r22,r2
 200a010:	2f39c83a 	sub	fp,r5,fp
 200a014:	e009883a 	mov	r4,fp
 200a018:	b80b883a 	mov	r5,r23
 200a01c:	da000115 	stw	r8,4(sp)
 200a020:	200a3680 	call	200a368 <__umodsi3>
 200a024:	e009883a 	mov	r4,fp
 200a028:	b80b883a 	mov	r5,r23
 200a02c:	d8800015 	stw	r2,0(sp)
 200a030:	200a3600 	call	200a360 <__udivsi3>
 200a034:	d9800017 	ldw	r6,0(sp)
 200a038:	da000117 	ldw	r8,4(sp)
 200a03c:	94bfffcc 	andi	r18,r18,65535
 200a040:	300c943a 	slli	r6,r6,16
 200a044:	1209383a 	mul	r4,r2,r8
 200a048:	3490b03a 	or	r8,r6,r18
 200a04c:	4100042e 	bgeu	r8,r4,200a060 <__umoddi3+0x3ac>
 200a050:	4451883a 	add	r8,r8,r17
 200a054:	10ffffc4 	addi	r3,r2,-1
 200a058:	44406a2e 	bgeu	r8,r17,200a204 <__umoddi3+0x550>
 200a05c:	1805883a 	mov	r2,r3
 200a060:	b012943a 	slli	r9,r22,16
 200a064:	9abfffcc 	andi	r10,r19,65535
 200a068:	980ed43a 	srli	r7,r19,16
 200a06c:	124ab03a 	or	r5,r2,r9
 200a070:	2a7fffcc 	andi	r9,r5,65535
 200a074:	280ad43a 	srli	r5,r5,16
 200a078:	4a8d383a 	mul	r6,r9,r10
 200a07c:	49d3383a 	mul	r9,r9,r7
 200a080:	2a95383a 	mul	r10,r5,r10
 200a084:	3004d43a 	srli	r2,r6,16
 200a088:	4111c83a 	sub	r8,r8,r4
 200a08c:	5253883a 	add	r9,r10,r9
 200a090:	4893883a 	add	r9,r9,r2
 200a094:	29cb383a 	mul	r5,r5,r7
 200a098:	4a80022e 	bgeu	r9,r10,200a0a4 <__umoddi3+0x3f0>
 200a09c:	00800074 	movhi	r2,1
 200a0a0:	288b883a 	add	r5,r5,r2
 200a0a4:	4808d43a 	srli	r4,r9,16
 200a0a8:	4812943a 	slli	r9,r9,16
 200a0ac:	31bfffcc 	andi	r6,r6,65535
 200a0b0:	290b883a 	add	r5,r5,r4
 200a0b4:	498d883a 	add	r6,r9,r6
 200a0b8:	41403a36 	bltu	r8,r5,200a1a4 <__umoddi3+0x4f0>
 200a0bc:	41405d26 	beq	r8,r5,200a234 <__umoddi3+0x580>
 200a0c0:	4149c83a 	sub	r4,r8,r5
 200a0c4:	300f883a 	mov	r7,r6
 200a0c8:	81cfc83a 	sub	r7,r16,r7
 200a0cc:	81c7803a 	cmpltu	r3,r16,r7
 200a0d0:	20c7c83a 	sub	r3,r4,r3
 200a0d4:	1d44983a 	sll	r2,r3,r21
 200a0d8:	3d0ed83a 	srl	r7,r7,r20
 200a0dc:	1d06d83a 	srl	r3,r3,r20
 200a0e0:	11c4b03a 	or	r2,r2,r7
 200a0e4:	003f9206 	br	2009f30 <__umoddi3+0x27c>
 200a0e8:	0025883a 	mov	r18,zero
 200a0ec:	003f1806 	br	2009d50 <__umoddi3+0x9c>
 200a0f0:	98a6983a 	sll	r19,r19,r2
 200a0f4:	88e8d83a 	srl	r20,r17,r3
 200a0f8:	80c6d83a 	srl	r3,r16,r3
 200a0fc:	982cd43a 	srli	r22,r19,16
 200a100:	88a2983a 	sll	r17,r17,r2
 200a104:	a009883a 	mov	r4,r20
 200a108:	b00b883a 	mov	r5,r22
 200a10c:	88eab03a 	or	r21,r17,r3
 200a110:	1025883a 	mov	r18,r2
 200a114:	200a3680 	call	200a368 <__umodsi3>
 200a118:	a009883a 	mov	r4,r20
 200a11c:	b00b883a 	mov	r5,r22
 200a120:	1023883a 	mov	r17,r2
 200a124:	200a3600 	call	200a360 <__udivsi3>
 200a128:	9f3fffcc 	andi	fp,r19,65535
 200a12c:	8822943a 	slli	r17,r17,16
 200a130:	a80ad43a 	srli	r5,r21,16
 200a134:	1705383a 	mul	r2,r2,fp
 200a138:	84a8983a 	sll	r20,r16,r18
 200a13c:	8948b03a 	or	r4,r17,r5
 200a140:	2080042e 	bgeu	r4,r2,200a154 <__umoddi3+0x4a0>
 200a144:	24c9883a 	add	r4,r4,r19
 200a148:	24c00236 	bltu	r4,r19,200a154 <__umoddi3+0x4a0>
 200a14c:	2080012e 	bgeu	r4,r2,200a154 <__umoddi3+0x4a0>
 200a150:	24c9883a 	add	r4,r4,r19
 200a154:	20afc83a 	sub	r23,r4,r2
 200a158:	b809883a 	mov	r4,r23
 200a15c:	b00b883a 	mov	r5,r22
 200a160:	200a3680 	call	200a368 <__umodsi3>
 200a164:	1023883a 	mov	r17,r2
 200a168:	b809883a 	mov	r4,r23
 200a16c:	b00b883a 	mov	r5,r22
 200a170:	200a3600 	call	200a360 <__udivsi3>
 200a174:	8822943a 	slli	r17,r17,16
 200a178:	1705383a 	mul	r2,r2,fp
 200a17c:	a93fffcc 	andi	r4,r21,65535
 200a180:	8908b03a 	or	r4,r17,r4
 200a184:	2080042e 	bgeu	r4,r2,200a198 <__umoddi3+0x4e4>
 200a188:	24c9883a 	add	r4,r4,r19
 200a18c:	24c00236 	bltu	r4,r19,200a198 <__umoddi3+0x4e4>
 200a190:	2080012e 	bgeu	r4,r2,200a198 <__umoddi3+0x4e4>
 200a194:	24c9883a 	add	r4,r4,r19
 200a198:	20a3c83a 	sub	r17,r4,r2
 200a19c:	e021883a 	mov	r16,fp
 200a1a0:	003f3d06 	br	2009e98 <__umoddi3+0x1e4>
 200a1a4:	34cfc83a 	sub	r7,r6,r19
 200a1a8:	2c4bc83a 	sub	r5,r5,r17
 200a1ac:	31cd803a 	cmpltu	r6,r6,r7
 200a1b0:	298dc83a 	sub	r6,r5,r6
 200a1b4:	4189c83a 	sub	r4,r8,r6
 200a1b8:	003fc306 	br	200a0c8 <__umoddi3+0x414>
 200a1bc:	000b883a 	mov	r5,zero
 200a1c0:	002b883a 	mov	r21,zero
 200a1c4:	003f0a06 	br	2009df0 <__umoddi3+0x13c>
 200a1c8:	01400404 	movi	r5,16
 200a1cc:	282b883a 	mov	r21,r5
 200a1d0:	003f0706 	br	2009df0 <__umoddi3+0x13c>
 200a1d4:	01400404 	movi	r5,16
 200a1d8:	2805883a 	mov	r2,r5
 200a1dc:	003ecd06 	br	2009d14 <__umoddi3+0x60>
 200a1e0:	0005883a 	mov	r2,zero
 200a1e4:	0007883a 	mov	r3,zero
 200a1e8:	003f1e06 	br	2009e64 <__umoddi3+0x1b0>
 200a1ec:	00800404 	movi	r2,16
 200a1f0:	1007883a 	mov	r3,r2
 200a1f4:	003f1b06 	br	2009e64 <__umoddi3+0x1b0>
 200a1f8:	000b883a 	mov	r5,zero
 200a1fc:	0005883a 	mov	r2,zero
 200a200:	003ec406 	br	2009d14 <__umoddi3+0x60>
 200a204:	413f952e 	bgeu	r8,r4,200a05c <__umoddi3+0x3a8>
 200a208:	10bfff84 	addi	r2,r2,-2
 200a20c:	4451883a 	add	r8,r8,r17
 200a210:	003f9306 	br	200a060 <__umoddi3+0x3ac>
 200a214:	2f3f7d2e 	bgeu	r5,fp,200a00c <__umoddi3+0x358>
 200a218:	b5bfff84 	addi	r22,r22,-2
 200a21c:	2c4b883a 	add	r5,r5,r17
 200a220:	003f7b06 	br	200a010 <__umoddi3+0x35c>
 200a224:	34cd883a 	add	r6,r6,r19
 200a228:	003f2a06 	br	2009ed4 <__umoddi3+0x220>
 200a22c:	8005883a 	mov	r2,r16
 200a230:	003efe06 	br	2009e2c <__umoddi3+0x178>
 200a234:	81bfdb36 	bltu	r16,r6,200a1a4 <__umoddi3+0x4f0>
 200a238:	300f883a 	mov	r7,r6
 200a23c:	0009883a 	mov	r4,zero
 200a240:	003fa106 	br	200a0c8 <__umoddi3+0x414>

0200a244 <udivmodsi4>:
 200a244:	2900182e 	bgeu	r5,r4,200a2a8 <udivmodsi4+0x64>
 200a248:	28001716 	blt	r5,zero,200a2a8 <udivmodsi4+0x64>
 200a24c:	00800804 	movi	r2,32
 200a250:	00c00044 	movi	r3,1
 200a254:	00000206 	br	200a260 <udivmodsi4+0x1c>
 200a258:	10001126 	beq	r2,zero,200a2a0 <udivmodsi4+0x5c>
 200a25c:	28000516 	blt	r5,zero,200a274 <udivmodsi4+0x30>
 200a260:	294b883a 	add	r5,r5,r5
 200a264:	10bfffc4 	addi	r2,r2,-1
 200a268:	18c7883a 	add	r3,r3,r3
 200a26c:	293ffa36 	bltu	r5,r4,200a258 <udivmodsi4+0x14>
 200a270:	18000b26 	beq	r3,zero,200a2a0 <udivmodsi4+0x5c>
 200a274:	0005883a 	mov	r2,zero
 200a278:	21400236 	bltu	r4,r5,200a284 <udivmodsi4+0x40>
 200a27c:	2149c83a 	sub	r4,r4,r5
 200a280:	10c4b03a 	or	r2,r2,r3
 200a284:	1806d07a 	srli	r3,r3,1
 200a288:	280ad07a 	srli	r5,r5,1
 200a28c:	183ffa1e 	bne	r3,zero,200a278 <udivmodsi4+0x34>
 200a290:	3000011e 	bne	r6,zero,200a298 <udivmodsi4+0x54>
 200a294:	f800283a 	ret
 200a298:	2005883a 	mov	r2,r4
 200a29c:	f800283a 	ret
 200a2a0:	0005883a 	mov	r2,zero
 200a2a4:	003ffa06 	br	200a290 <udivmodsi4+0x4c>
 200a2a8:	00c00044 	movi	r3,1
 200a2ac:	003ff106 	br	200a274 <udivmodsi4+0x30>

0200a2b0 <__divsi3>:
 200a2b0:	defffe04 	addi	sp,sp,-8
 200a2b4:	dfc00115 	stw	ra,4(sp)
 200a2b8:	dc000015 	stw	r16,0(sp)
 200a2bc:	20000b16 	blt	r4,zero,200a2ec <__divsi3+0x3c>
 200a2c0:	0021883a 	mov	r16,zero
 200a2c4:	28000c16 	blt	r5,zero,200a2f8 <__divsi3+0x48>
 200a2c8:	000d883a 	mov	r6,zero
 200a2cc:	200a2440 	call	200a244 <udivmodsi4>
 200a2d0:	0407c83a 	sub	r3,zero,r16
 200a2d4:	1884f03a 	xor	r2,r3,r2
 200a2d8:	1405883a 	add	r2,r2,r16
 200a2dc:	dfc00117 	ldw	ra,4(sp)
 200a2e0:	dc000017 	ldw	r16,0(sp)
 200a2e4:	dec00204 	addi	sp,sp,8
 200a2e8:	f800283a 	ret
 200a2ec:	0109c83a 	sub	r4,zero,r4
 200a2f0:	04000044 	movi	r16,1
 200a2f4:	283ff40e 	bge	r5,zero,200a2c8 <__divsi3+0x18>
 200a2f8:	014bc83a 	sub	r5,zero,r5
 200a2fc:	8400005c 	xori	r16,r16,1
 200a300:	003ff106 	br	200a2c8 <__divsi3+0x18>

0200a304 <__modsi3>:
 200a304:	defffd04 	addi	sp,sp,-12
 200a308:	dfc00215 	stw	ra,8(sp)
 200a30c:	dc400115 	stw	r17,4(sp)
 200a310:	dc000015 	stw	r16,0(sp)
 200a314:	20000c16 	blt	r4,zero,200a348 <__modsi3+0x44>
 200a318:	0023883a 	mov	r17,zero
 200a31c:	0021883a 	mov	r16,zero
 200a320:	28000d16 	blt	r5,zero,200a358 <__modsi3+0x54>
 200a324:	01800044 	movi	r6,1
 200a328:	200a2440 	call	200a244 <udivmodsi4>
 200a32c:	1404f03a 	xor	r2,r2,r16
 200a330:	8885883a 	add	r2,r17,r2
 200a334:	dfc00217 	ldw	ra,8(sp)
 200a338:	dc400117 	ldw	r17,4(sp)
 200a33c:	dc000017 	ldw	r16,0(sp)
 200a340:	dec00304 	addi	sp,sp,12
 200a344:	f800283a 	ret
 200a348:	0109c83a 	sub	r4,zero,r4
 200a34c:	04400044 	movi	r17,1
 200a350:	043fffc4 	movi	r16,-1
 200a354:	283ff30e 	bge	r5,zero,200a324 <__modsi3+0x20>
 200a358:	014bc83a 	sub	r5,zero,r5
 200a35c:	003ff106 	br	200a324 <__modsi3+0x20>

0200a360 <__udivsi3>:
 200a360:	000d883a 	mov	r6,zero
 200a364:	200a2441 	jmpi	200a244 <udivmodsi4>

0200a368 <__umodsi3>:
 200a368:	01800044 	movi	r6,1
 200a36c:	200a2441 	jmpi	200a244 <udivmodsi4>

0200a370 <__adddf3>:
 200a370:	02000434 	movhi	r8,16
 200a374:	423fffc4 	addi	r8,r8,-1
 200a378:	defffb04 	addi	sp,sp,-20
 200a37c:	2a12703a 	and	r9,r5,r8
 200a380:	2806d7fa 	srli	r3,r5,31
 200a384:	3a10703a 	and	r8,r7,r8
 200a388:	3804d53a 	srli	r2,r7,20
 200a38c:	3014d77a 	srli	r10,r6,29
 200a390:	dc000015 	stw	r16,0(sp)
 200a394:	481290fa 	slli	r9,r9,3
 200a398:	2820d53a 	srli	r16,r5,20
 200a39c:	401090fa 	slli	r8,r8,3
 200a3a0:	200ad77a 	srli	r5,r4,29
 200a3a4:	380ed7fa 	srli	r7,r7,31
 200a3a8:	dc800215 	stw	r18,8(sp)
 200a3ac:	dc400115 	stw	r17,4(sp)
 200a3b0:	dfc00415 	stw	ra,16(sp)
 200a3b4:	dcc00315 	stw	r19,12(sp)
 200a3b8:	1c803fcc 	andi	r18,r3,255
 200a3bc:	8401ffcc 	andi	r16,r16,2047
 200a3c0:	494ab03a 	or	r5,r9,r5
 200a3c4:	202290fa 	slli	r17,r4,3
 200a3c8:	1081ffcc 	andi	r2,r2,2047
 200a3cc:	4290b03a 	or	r8,r8,r10
 200a3d0:	300c90fa 	slli	r6,r6,3
 200a3d4:	91c07026 	beq	r18,r7,200a598 <__adddf3+0x228>
 200a3d8:	8087c83a 	sub	r3,r16,r2
 200a3dc:	00c0b30e 	bge	zero,r3,200a6ac <__adddf3+0x33c>
 200a3e0:	10002a1e 	bne	r2,zero,200a48c <__adddf3+0x11c>
 200a3e4:	4184b03a 	or	r2,r8,r6
 200a3e8:	1000991e 	bne	r2,zero,200a650 <__adddf3+0x2e0>
 200a3ec:	888001cc 	andi	r2,r17,7
 200a3f0:	10005b26 	beq	r2,zero,200a560 <__adddf3+0x1f0>
 200a3f4:	88c003cc 	andi	r3,r17,15
 200a3f8:	00800104 	movi	r2,4
 200a3fc:	18805826 	beq	r3,r2,200a560 <__adddf3+0x1f0>
 200a400:	89800104 	addi	r6,r17,4
 200a404:	3463803a 	cmpltu	r17,r6,r17
 200a408:	2c4b883a 	add	r5,r5,r17
 200a40c:	2880202c 	andhi	r2,r5,128
 200a410:	9007883a 	mov	r3,r18
 200a414:	3023883a 	mov	r17,r6
 200a418:	10005426 	beq	r2,zero,200a56c <__adddf3+0x1fc>
 200a41c:	84000044 	addi	r16,r16,1
 200a420:	0081ffc4 	movi	r2,2047
 200a424:	8080c126 	beq	r16,r2,200a72c <__adddf3+0x3bc>
 200a428:	013fe034 	movhi	r4,65408
 200a42c:	213fffc4 	addi	r4,r4,-1
 200a430:	290a703a 	and	r5,r5,r4
 200a434:	2804977a 	slli	r2,r5,29
 200a438:	280a927a 	slli	r5,r5,9
 200a43c:	8822d0fa 	srli	r17,r17,3
 200a440:	8401ffcc 	andi	r16,r16,2047
 200a444:	2808d33a 	srli	r4,r5,12
 200a448:	1444b03a 	or	r2,r2,r17
 200a44c:	8401ffcc 	andi	r16,r16,2047
 200a450:	800a953a 	slli	r5,r16,20
 200a454:	18c03fcc 	andi	r3,r3,255
 200a458:	04000434 	movhi	r16,16
 200a45c:	180697fa 	slli	r3,r3,31
 200a460:	843fffc4 	addi	r16,r16,-1
 200a464:	2420703a 	and	r16,r4,r16
 200a468:	8160b03a 	or	r16,r16,r5
 200a46c:	80c6b03a 	or	r3,r16,r3
 200a470:	dfc00417 	ldw	ra,16(sp)
 200a474:	dcc00317 	ldw	r19,12(sp)
 200a478:	dc800217 	ldw	r18,8(sp)
 200a47c:	dc400117 	ldw	r17,4(sp)
 200a480:	dc000017 	ldw	r16,0(sp)
 200a484:	dec00504 	addi	sp,sp,20
 200a488:	f800283a 	ret
 200a48c:	0081ffc4 	movi	r2,2047
 200a490:	80bfd626 	beq	r16,r2,200a3ec <__adddf3+0x7c>
 200a494:	42002034 	orhi	r8,r8,128
 200a498:	00800e04 	movi	r2,56
 200a49c:	10c0a616 	blt	r2,r3,200a738 <__adddf3+0x3c8>
 200a4a0:	008007c4 	movi	r2,31
 200a4a4:	10c0c916 	blt	r2,r3,200a7cc <__adddf3+0x45c>
 200a4a8:	00800804 	movi	r2,32
 200a4ac:	10c5c83a 	sub	r2,r2,r3
 200a4b0:	408e983a 	sll	r7,r8,r2
 200a4b4:	30c8d83a 	srl	r4,r6,r3
 200a4b8:	3084983a 	sll	r2,r6,r2
 200a4bc:	40c6d83a 	srl	r3,r8,r3
 200a4c0:	390cb03a 	or	r6,r7,r4
 200a4c4:	1004c03a 	cmpne	r2,r2,zero
 200a4c8:	308cb03a 	or	r6,r6,r2
 200a4cc:	898dc83a 	sub	r6,r17,r6
 200a4d0:	89a3803a 	cmpltu	r17,r17,r6
 200a4d4:	28cbc83a 	sub	r5,r5,r3
 200a4d8:	2c4bc83a 	sub	r5,r5,r17
 200a4dc:	3023883a 	mov	r17,r6
 200a4e0:	2880202c 	andhi	r2,r5,128
 200a4e4:	10006d26 	beq	r2,zero,200a69c <__adddf3+0x32c>
 200a4e8:	04c02034 	movhi	r19,128
 200a4ec:	9cffffc4 	addi	r19,r19,-1
 200a4f0:	2ce6703a 	and	r19,r5,r19
 200a4f4:	98007e26 	beq	r19,zero,200a6f0 <__adddf3+0x380>
 200a4f8:	9809883a 	mov	r4,r19
 200a4fc:	20005ac0 	call	20005ac <__clzsi2>
 200a500:	10fffe04 	addi	r3,r2,-8
 200a504:	010007c4 	movi	r4,31
 200a508:	20c07f16 	blt	r4,r3,200a708 <__adddf3+0x398>
 200a50c:	01400a04 	movi	r5,40
 200a510:	2885c83a 	sub	r2,r5,r2
 200a514:	888ad83a 	srl	r5,r17,r2
 200a518:	98e6983a 	sll	r19,r19,r3
 200a51c:	88e2983a 	sll	r17,r17,r3
 200a520:	2ce6b03a 	or	r19,r5,r19
 200a524:	1c007c16 	blt	r3,r16,200a718 <__adddf3+0x3a8>
 200a528:	1c21c83a 	sub	r16,r3,r16
 200a52c:	81400044 	addi	r5,r16,1
 200a530:	00c007c4 	movi	r3,31
 200a534:	19409816 	blt	r3,r5,200a798 <__adddf3+0x428>
 200a538:	1c21c83a 	sub	r16,r3,r16
 200a53c:	8c08983a 	sll	r4,r17,r16
 200a540:	8946d83a 	srl	r3,r17,r5
 200a544:	9c20983a 	sll	r16,r19,r16
 200a548:	2008c03a 	cmpne	r4,r4,zero
 200a54c:	994ad83a 	srl	r5,r19,r5
 200a550:	1c06b03a 	or	r3,r3,r16
 200a554:	1922b03a 	or	r17,r3,r4
 200a558:	0021883a 	mov	r16,zero
 200a55c:	003fa306 	br	200a3ec <__adddf3+0x7c>
 200a560:	2880202c 	andhi	r2,r5,128
 200a564:	9007883a 	mov	r3,r18
 200a568:	103fac1e 	bne	r2,zero,200a41c <__adddf3+0xac>
 200a56c:	2804977a 	slli	r2,r5,29
 200a570:	8822d0fa 	srli	r17,r17,3
 200a574:	0101ffc4 	movi	r4,2047
 200a578:	280ad0fa 	srli	r5,r5,3
 200a57c:	1444b03a 	or	r2,r2,r17
 200a580:	81002c26 	beq	r16,r4,200a634 <__adddf3+0x2c4>
 200a584:	8120703a 	and	r16,r16,r4
 200a588:	01000434 	movhi	r4,16
 200a58c:	213fffc4 	addi	r4,r4,-1
 200a590:	2908703a 	and	r4,r5,r4
 200a594:	003fad06 	br	200a44c <__adddf3+0xdc>
 200a598:	8089c83a 	sub	r4,r16,r2
 200a59c:	01006a0e 	bge	zero,r4,200a748 <__adddf3+0x3d8>
 200a5a0:	10003326 	beq	r2,zero,200a670 <__adddf3+0x300>
 200a5a4:	0081ffc4 	movi	r2,2047
 200a5a8:	80bf9026 	beq	r16,r2,200a3ec <__adddf3+0x7c>
 200a5ac:	42002034 	orhi	r8,r8,128
 200a5b0:	00800e04 	movi	r2,56
 200a5b4:	1100b116 	blt	r2,r4,200a87c <__adddf3+0x50c>
 200a5b8:	008007c4 	movi	r2,31
 200a5bc:	1100e216 	blt	r2,r4,200a948 <__adddf3+0x5d8>
 200a5c0:	00800804 	movi	r2,32
 200a5c4:	1105c83a 	sub	r2,r2,r4
 200a5c8:	4092983a 	sll	r9,r8,r2
 200a5cc:	310ed83a 	srl	r7,r6,r4
 200a5d0:	3084983a 	sll	r2,r6,r2
 200a5d4:	4110d83a 	srl	r8,r8,r4
 200a5d8:	49ccb03a 	or	r6,r9,r7
 200a5dc:	1004c03a 	cmpne	r2,r2,zero
 200a5e0:	308cb03a 	or	r6,r6,r2
 200a5e4:	344d883a 	add	r6,r6,r17
 200a5e8:	3463803a 	cmpltu	r17,r6,r17
 200a5ec:	414b883a 	add	r5,r8,r5
 200a5f0:	2c4b883a 	add	r5,r5,r17
 200a5f4:	3023883a 	mov	r17,r6
 200a5f8:	2880202c 	andhi	r2,r5,128
 200a5fc:	10002726 	beq	r2,zero,200a69c <__adddf3+0x32c>
 200a600:	84000044 	addi	r16,r16,1
 200a604:	0081ffc4 	movi	r2,2047
 200a608:	8080ae26 	beq	r16,r2,200a8c4 <__adddf3+0x554>
 200a60c:	00bfe034 	movhi	r2,65408
 200a610:	10bfffc4 	addi	r2,r2,-1
 200a614:	288a703a 	and	r5,r5,r2
 200a618:	880cd07a 	srli	r6,r17,1
 200a61c:	280897fa 	slli	r4,r5,31
 200a620:	88c0004c 	andi	r3,r17,1
 200a624:	30e2b03a 	or	r17,r6,r3
 200a628:	280ad07a 	srli	r5,r5,1
 200a62c:	8922b03a 	or	r17,r17,r4
 200a630:	003f6e06 	br	200a3ec <__adddf3+0x7c>
 200a634:	1148b03a 	or	r4,r2,r5
 200a638:	20003c26 	beq	r4,zero,200a72c <__adddf3+0x3bc>
 200a63c:	29000234 	orhi	r4,r5,8
 200a640:	01400434 	movhi	r5,16
 200a644:	297fffc4 	addi	r5,r5,-1
 200a648:	2148703a 	and	r4,r4,r5
 200a64c:	003f7f06 	br	200a44c <__adddf3+0xdc>
 200a650:	18ffffc4 	addi	r3,r3,-1
 200a654:	18004d1e 	bne	r3,zero,200a78c <__adddf3+0x41c>
 200a658:	898dc83a 	sub	r6,r17,r6
 200a65c:	89a3803a 	cmpltu	r17,r17,r6
 200a660:	2a0bc83a 	sub	r5,r5,r8
 200a664:	2c4bc83a 	sub	r5,r5,r17
 200a668:	3023883a 	mov	r17,r6
 200a66c:	003f9c06 	br	200a4e0 <__adddf3+0x170>
 200a670:	4184b03a 	or	r2,r8,r6
 200a674:	103f5d26 	beq	r2,zero,200a3ec <__adddf3+0x7c>
 200a678:	213fffc4 	addi	r4,r4,-1
 200a67c:	203fd926 	beq	r4,zero,200a5e4 <__adddf3+0x274>
 200a680:	0081ffc4 	movi	r2,2047
 200a684:	80bfca1e 	bne	r16,r2,200a5b0 <__adddf3+0x240>
 200a688:	003f5806 	br	200a3ec <__adddf3+0x7c>
 200a68c:	10c8b03a 	or	r4,r2,r3
 200a690:	20008b26 	beq	r4,zero,200a8c0 <__adddf3+0x550>
 200a694:	100b883a 	mov	r5,r2
 200a698:	1823883a 	mov	r17,r3
 200a69c:	888001cc 	andi	r2,r17,7
 200a6a0:	103f541e 	bne	r2,zero,200a3f4 <__adddf3+0x84>
 200a6a4:	9007883a 	mov	r3,r18
 200a6a8:	003fb006 	br	200a56c <__adddf3+0x1fc>
 200a6ac:	1800531e 	bne	r3,zero,200a7fc <__adddf3+0x48c>
 200a6b0:	80800044 	addi	r2,r16,1
 200a6b4:	1081ffcc 	andi	r2,r2,2047
 200a6b8:	00c00044 	movi	r3,1
 200a6bc:	1880990e 	bge	r3,r2,200a924 <__adddf3+0x5b4>
 200a6c0:	8985c83a 	sub	r2,r17,r6
 200a6c4:	8887803a 	cmpltu	r3,r17,r2
 200a6c8:	2a27c83a 	sub	r19,r5,r8
 200a6cc:	98e7c83a 	sub	r19,r19,r3
 200a6d0:	98c0202c 	andhi	r3,r19,128
 200a6d4:	18006226 	beq	r3,zero,200a860 <__adddf3+0x4f0>
 200a6d8:	3463c83a 	sub	r17,r6,r17
 200a6dc:	4151c83a 	sub	r8,r8,r5
 200a6e0:	344d803a 	cmpltu	r6,r6,r17
 200a6e4:	41a7c83a 	sub	r19,r8,r6
 200a6e8:	3825883a 	mov	r18,r7
 200a6ec:	983f821e 	bne	r19,zero,200a4f8 <__adddf3+0x188>
 200a6f0:	8809883a 	mov	r4,r17
 200a6f4:	20005ac0 	call	20005ac <__clzsi2>
 200a6f8:	10800804 	addi	r2,r2,32
 200a6fc:	10fffe04 	addi	r3,r2,-8
 200a700:	010007c4 	movi	r4,31
 200a704:	20ff810e 	bge	r4,r3,200a50c <__adddf3+0x19c>
 200a708:	14fff604 	addi	r19,r2,-40
 200a70c:	8ce6983a 	sll	r19,r17,r19
 200a710:	0023883a 	mov	r17,zero
 200a714:	1c3f840e 	bge	r3,r16,200a528 <__adddf3+0x1b8>
 200a718:	017fe034 	movhi	r5,65408
 200a71c:	297fffc4 	addi	r5,r5,-1
 200a720:	80e1c83a 	sub	r16,r16,r3
 200a724:	994a703a 	and	r5,r19,r5
 200a728:	003f3006 	br	200a3ec <__adddf3+0x7c>
 200a72c:	0009883a 	mov	r4,zero
 200a730:	0005883a 	mov	r2,zero
 200a734:	003f4506 	br	200a44c <__adddf3+0xdc>
 200a738:	418cb03a 	or	r6,r8,r6
 200a73c:	300cc03a 	cmpne	r6,r6,zero
 200a740:	0007883a 	mov	r3,zero
 200a744:	003f6106 	br	200a4cc <__adddf3+0x15c>
 200a748:	2000921e 	bne	r4,zero,200a994 <__adddf3+0x624>
 200a74c:	80800044 	addi	r2,r16,1
 200a750:	11c1ffcc 	andi	r7,r2,2047
 200a754:	01000044 	movi	r4,1
 200a758:	21c0610e 	bge	r4,r7,200a8e0 <__adddf3+0x570>
 200a75c:	0101ffc4 	movi	r4,2047
 200a760:	1100a326 	beq	r2,r4,200a9f0 <__adddf3+0x680>
 200a764:	344d883a 	add	r6,r6,r17
 200a768:	3463803a 	cmpltu	r17,r6,r17
 200a76c:	414b883a 	add	r5,r8,r5
 200a770:	2c4b883a 	add	r5,r5,r17
 200a774:	282297fa 	slli	r17,r5,31
 200a778:	300cd07a 	srli	r6,r6,1
 200a77c:	280ad07a 	srli	r5,r5,1
 200a780:	1021883a 	mov	r16,r2
 200a784:	89a2b03a 	or	r17,r17,r6
 200a788:	003f1806 	br	200a3ec <__adddf3+0x7c>
 200a78c:	0081ffc4 	movi	r2,2047
 200a790:	80bf411e 	bne	r16,r2,200a498 <__adddf3+0x128>
 200a794:	003f1506 	br	200a3ec <__adddf3+0x7c>
 200a798:	80bff844 	addi	r2,r16,-31
 200a79c:	00c00804 	movi	r3,32
 200a7a0:	9884d83a 	srl	r2,r19,r2
 200a7a4:	28c04a26 	beq	r5,r3,200a8d0 <__adddf3+0x560>
 200a7a8:	00c00fc4 	movi	r3,63
 200a7ac:	1c21c83a 	sub	r16,r3,r16
 200a7b0:	9c26983a 	sll	r19,r19,r16
 200a7b4:	9c62b03a 	or	r17,r19,r17
 200a7b8:	8822c03a 	cmpne	r17,r17,zero
 200a7bc:	88a2b03a 	or	r17,r17,r2
 200a7c0:	000b883a 	mov	r5,zero
 200a7c4:	0021883a 	mov	r16,zero
 200a7c8:	003fb406 	br	200a69c <__adddf3+0x32c>
 200a7cc:	18bff804 	addi	r2,r3,-32
 200a7d0:	01000804 	movi	r4,32
 200a7d4:	4084d83a 	srl	r2,r8,r2
 200a7d8:	19003f26 	beq	r3,r4,200a8d8 <__adddf3+0x568>
 200a7dc:	01001004 	movi	r4,64
 200a7e0:	20c7c83a 	sub	r3,r4,r3
 200a7e4:	40d0983a 	sll	r8,r8,r3
 200a7e8:	418cb03a 	or	r6,r8,r6
 200a7ec:	300cc03a 	cmpne	r6,r6,zero
 200a7f0:	308cb03a 	or	r6,r6,r2
 200a7f4:	0007883a 	mov	r3,zero
 200a7f8:	003f3406 	br	200a4cc <__adddf3+0x15c>
 200a7fc:	80002326 	beq	r16,zero,200a88c <__adddf3+0x51c>
 200a800:	0101ffc4 	movi	r4,2047
 200a804:	11005e26 	beq	r2,r4,200a980 <__adddf3+0x610>
 200a808:	00c7c83a 	sub	r3,zero,r3
 200a80c:	29402034 	orhi	r5,r5,128
 200a810:	01000e04 	movi	r4,56
 200a814:	20c07216 	blt	r4,r3,200a9e0 <__adddf3+0x670>
 200a818:	010007c4 	movi	r4,31
 200a81c:	20c0ce16 	blt	r4,r3,200ab58 <__adddf3+0x7e8>
 200a820:	01000804 	movi	r4,32
 200a824:	20c9c83a 	sub	r4,r4,r3
 200a828:	2914983a 	sll	r10,r5,r4
 200a82c:	88d2d83a 	srl	r9,r17,r3
 200a830:	8908983a 	sll	r4,r17,r4
 200a834:	28c6d83a 	srl	r3,r5,r3
 200a838:	5262b03a 	or	r17,r10,r9
 200a83c:	2008c03a 	cmpne	r4,r4,zero
 200a840:	8922b03a 	or	r17,r17,r4
 200a844:	3463c83a 	sub	r17,r6,r17
 200a848:	40c7c83a 	sub	r3,r8,r3
 200a84c:	344d803a 	cmpltu	r6,r6,r17
 200a850:	198bc83a 	sub	r5,r3,r6
 200a854:	1021883a 	mov	r16,r2
 200a858:	3825883a 	mov	r18,r7
 200a85c:	003f2006 	br	200a4e0 <__adddf3+0x170>
 200a860:	9886b03a 	or	r3,r19,r2
 200a864:	1800141e 	bne	r3,zero,200a8b8 <__adddf3+0x548>
 200a868:	0007883a 	mov	r3,zero
 200a86c:	000b883a 	mov	r5,zero
 200a870:	0023883a 	mov	r17,zero
 200a874:	0021883a 	mov	r16,zero
 200a878:	003f3c06 	br	200a56c <__adddf3+0x1fc>
 200a87c:	418cb03a 	or	r6,r8,r6
 200a880:	300cc03a 	cmpne	r6,r6,zero
 200a884:	0011883a 	mov	r8,zero
 200a888:	003f5606 	br	200a5e4 <__adddf3+0x274>
 200a88c:	2c48b03a 	or	r4,r5,r17
 200a890:	20003b26 	beq	r4,zero,200a980 <__adddf3+0x610>
 200a894:	00c6303a 	nor	r3,zero,r3
 200a898:	1800371e 	bne	r3,zero,200a978 <__adddf3+0x608>
 200a89c:	3463c83a 	sub	r17,r6,r17
 200a8a0:	414bc83a 	sub	r5,r8,r5
 200a8a4:	344d803a 	cmpltu	r6,r6,r17
 200a8a8:	298bc83a 	sub	r5,r5,r6
 200a8ac:	1021883a 	mov	r16,r2
 200a8b0:	3825883a 	mov	r18,r7
 200a8b4:	003f0a06 	br	200a4e0 <__adddf3+0x170>
 200a8b8:	1023883a 	mov	r17,r2
 200a8bc:	003f0d06 	br	200a4f4 <__adddf3+0x184>
 200a8c0:	0007883a 	mov	r3,zero
 200a8c4:	000b883a 	mov	r5,zero
 200a8c8:	0023883a 	mov	r17,zero
 200a8cc:	003f2706 	br	200a56c <__adddf3+0x1fc>
 200a8d0:	0027883a 	mov	r19,zero
 200a8d4:	003fb706 	br	200a7b4 <__adddf3+0x444>
 200a8d8:	0011883a 	mov	r8,zero
 200a8dc:	003fc206 	br	200a7e8 <__adddf3+0x478>
 200a8e0:	2c44b03a 	or	r2,r5,r17
 200a8e4:	8000871e 	bne	r16,zero,200ab04 <__adddf3+0x794>
 200a8e8:	1000b126 	beq	r2,zero,200abb0 <__adddf3+0x840>
 200a8ec:	4184b03a 	or	r2,r8,r6
 200a8f0:	103ebe26 	beq	r2,zero,200a3ec <__adddf3+0x7c>
 200a8f4:	3445883a 	add	r2,r6,r17
 200a8f8:	1463803a 	cmpltu	r17,r2,r17
 200a8fc:	414b883a 	add	r5,r8,r5
 200a900:	2c4b883a 	add	r5,r5,r17
 200a904:	28c0202c 	andhi	r3,r5,128
 200a908:	1023883a 	mov	r17,r2
 200a90c:	183f6326 	beq	r3,zero,200a69c <__adddf3+0x32c>
 200a910:	00bfe034 	movhi	r2,65408
 200a914:	10bfffc4 	addi	r2,r2,-1
 200a918:	2021883a 	mov	r16,r4
 200a91c:	288a703a 	and	r5,r5,r2
 200a920:	003eb206 	br	200a3ec <__adddf3+0x7c>
 200a924:	2c44b03a 	or	r2,r5,r17
 200a928:	8000251e 	bne	r16,zero,200a9c0 <__adddf3+0x650>
 200a92c:	10004b1e 	bne	r2,zero,200aa5c <__adddf3+0x6ec>
 200a930:	4184b03a 	or	r2,r8,r6
 200a934:	103fe226 	beq	r2,zero,200a8c0 <__adddf3+0x550>
 200a938:	400b883a 	mov	r5,r8
 200a93c:	3023883a 	mov	r17,r6
 200a940:	3825883a 	mov	r18,r7
 200a944:	003ea906 	br	200a3ec <__adddf3+0x7c>
 200a948:	20bff804 	addi	r2,r4,-32
 200a94c:	01c00804 	movi	r7,32
 200a950:	4084d83a 	srl	r2,r8,r2
 200a954:	21c07e26 	beq	r4,r7,200ab50 <__adddf3+0x7e0>
 200a958:	01c01004 	movi	r7,64
 200a95c:	3909c83a 	sub	r4,r7,r4
 200a960:	4110983a 	sll	r8,r8,r4
 200a964:	418cb03a 	or	r6,r8,r6
 200a968:	300cc03a 	cmpne	r6,r6,zero
 200a96c:	308cb03a 	or	r6,r6,r2
 200a970:	0011883a 	mov	r8,zero
 200a974:	003f1b06 	br	200a5e4 <__adddf3+0x274>
 200a978:	0101ffc4 	movi	r4,2047
 200a97c:	113fa41e 	bne	r2,r4,200a810 <__adddf3+0x4a0>
 200a980:	400b883a 	mov	r5,r8
 200a984:	3023883a 	mov	r17,r6
 200a988:	1021883a 	mov	r16,r2
 200a98c:	3825883a 	mov	r18,r7
 200a990:	003e9606 	br	200a3ec <__adddf3+0x7c>
 200a994:	80001a1e 	bne	r16,zero,200aa00 <__adddf3+0x690>
 200a998:	2c4eb03a 	or	r7,r5,r17
 200a99c:	38005526 	beq	r7,zero,200aaf4 <__adddf3+0x784>
 200a9a0:	0108303a 	nor	r4,zero,r4
 200a9a4:	2000511e 	bne	r4,zero,200aaec <__adddf3+0x77c>
 200a9a8:	89a3883a 	add	r17,r17,r6
 200a9ac:	414b883a 	add	r5,r8,r5
 200a9b0:	898d803a 	cmpltu	r6,r17,r6
 200a9b4:	298b883a 	add	r5,r5,r6
 200a9b8:	1021883a 	mov	r16,r2
 200a9bc:	003f0e06 	br	200a5f8 <__adddf3+0x288>
 200a9c0:	1000341e 	bne	r2,zero,200aa94 <__adddf3+0x724>
 200a9c4:	4184b03a 	or	r2,r8,r6
 200a9c8:	10006f26 	beq	r2,zero,200ab88 <__adddf3+0x818>
 200a9cc:	400b883a 	mov	r5,r8
 200a9d0:	3023883a 	mov	r17,r6
 200a9d4:	3825883a 	mov	r18,r7
 200a9d8:	0401ffc4 	movi	r16,2047
 200a9dc:	003e8306 	br	200a3ec <__adddf3+0x7c>
 200a9e0:	2c62b03a 	or	r17,r5,r17
 200a9e4:	8822c03a 	cmpne	r17,r17,zero
 200a9e8:	0007883a 	mov	r3,zero
 200a9ec:	003f9506 	br	200a844 <__adddf3+0x4d4>
 200a9f0:	1021883a 	mov	r16,r2
 200a9f4:	000b883a 	mov	r5,zero
 200a9f8:	0023883a 	mov	r17,zero
 200a9fc:	003edb06 	br	200a56c <__adddf3+0x1fc>
 200aa00:	01c1ffc4 	movi	r7,2047
 200aa04:	11c03b26 	beq	r2,r7,200aaf4 <__adddf3+0x784>
 200aa08:	0109c83a 	sub	r4,zero,r4
 200aa0c:	29402034 	orhi	r5,r5,128
 200aa10:	01c00e04 	movi	r7,56
 200aa14:	39006216 	blt	r7,r4,200aba0 <__adddf3+0x830>
 200aa18:	01c007c4 	movi	r7,31
 200aa1c:	39006b16 	blt	r7,r4,200abcc <__adddf3+0x85c>
 200aa20:	01c00804 	movi	r7,32
 200aa24:	390fc83a 	sub	r7,r7,r4
 200aa28:	29d4983a 	sll	r10,r5,r7
 200aa2c:	8912d83a 	srl	r9,r17,r4
 200aa30:	89ce983a 	sll	r7,r17,r7
 200aa34:	2908d83a 	srl	r4,r5,r4
 200aa38:	5262b03a 	or	r17,r10,r9
 200aa3c:	380ac03a 	cmpne	r5,r7,zero
 200aa40:	8962b03a 	or	r17,r17,r5
 200aa44:	89a3883a 	add	r17,r17,r6
 200aa48:	2211883a 	add	r8,r4,r8
 200aa4c:	898d803a 	cmpltu	r6,r17,r6
 200aa50:	418b883a 	add	r5,r8,r6
 200aa54:	1021883a 	mov	r16,r2
 200aa58:	003ee706 	br	200a5f8 <__adddf3+0x288>
 200aa5c:	4184b03a 	or	r2,r8,r6
 200aa60:	103e6226 	beq	r2,zero,200a3ec <__adddf3+0x7c>
 200aa64:	8987c83a 	sub	r3,r17,r6
 200aa68:	88c9803a 	cmpltu	r4,r17,r3
 200aa6c:	2a05c83a 	sub	r2,r5,r8
 200aa70:	1105c83a 	sub	r2,r2,r4
 200aa74:	1100202c 	andhi	r4,r2,128
 200aa78:	203f0426 	beq	r4,zero,200a68c <__adddf3+0x31c>
 200aa7c:	3463c83a 	sub	r17,r6,r17
 200aa80:	414bc83a 	sub	r5,r8,r5
 200aa84:	344d803a 	cmpltu	r6,r6,r17
 200aa88:	298bc83a 	sub	r5,r5,r6
 200aa8c:	3825883a 	mov	r18,r7
 200aa90:	003e5606 	br	200a3ec <__adddf3+0x7c>
 200aa94:	4184b03a 	or	r2,r8,r6
 200aa98:	10002b26 	beq	r2,zero,200ab48 <__adddf3+0x7d8>
 200aa9c:	2804d0fa 	srli	r2,r5,3
 200aaa0:	8822d0fa 	srli	r17,r17,3
 200aaa4:	280a977a 	slli	r5,r5,29
 200aaa8:	10c0022c 	andhi	r3,r2,8
 200aaac:	2c62b03a 	or	r17,r5,r17
 200aab0:	18000826 	beq	r3,zero,200aad4 <__adddf3+0x764>
 200aab4:	4008d0fa 	srli	r4,r8,3
 200aab8:	20c0022c 	andhi	r3,r4,8
 200aabc:	1800051e 	bne	r3,zero,200aad4 <__adddf3+0x764>
 200aac0:	300cd0fa 	srli	r6,r6,3
 200aac4:	4010977a 	slli	r8,r8,29
 200aac8:	2005883a 	mov	r2,r4
 200aacc:	3825883a 	mov	r18,r7
 200aad0:	41a2b03a 	or	r17,r8,r6
 200aad4:	880ad77a 	srli	r5,r17,29
 200aad8:	100490fa 	slli	r2,r2,3
 200aadc:	882290fa 	slli	r17,r17,3
 200aae0:	0401ffc4 	movi	r16,2047
 200aae4:	288ab03a 	or	r5,r5,r2
 200aae8:	003e4006 	br	200a3ec <__adddf3+0x7c>
 200aaec:	01c1ffc4 	movi	r7,2047
 200aaf0:	11ffc71e 	bne	r2,r7,200aa10 <__adddf3+0x6a0>
 200aaf4:	400b883a 	mov	r5,r8
 200aaf8:	3023883a 	mov	r17,r6
 200aafc:	1021883a 	mov	r16,r2
 200ab00:	003e3a06 	br	200a3ec <__adddf3+0x7c>
 200ab04:	10002d26 	beq	r2,zero,200abbc <__adddf3+0x84c>
 200ab08:	4184b03a 	or	r2,r8,r6
 200ab0c:	10000e26 	beq	r2,zero,200ab48 <__adddf3+0x7d8>
 200ab10:	2804d0fa 	srli	r2,r5,3
 200ab14:	8822d0fa 	srli	r17,r17,3
 200ab18:	280a977a 	slli	r5,r5,29
 200ab1c:	10c0022c 	andhi	r3,r2,8
 200ab20:	2c62b03a 	or	r17,r5,r17
 200ab24:	183feb26 	beq	r3,zero,200aad4 <__adddf3+0x764>
 200ab28:	4008d0fa 	srli	r4,r8,3
 200ab2c:	20c0022c 	andhi	r3,r4,8
 200ab30:	183fe81e 	bne	r3,zero,200aad4 <__adddf3+0x764>
 200ab34:	300cd0fa 	srli	r6,r6,3
 200ab38:	4010977a 	slli	r8,r8,29
 200ab3c:	2005883a 	mov	r2,r4
 200ab40:	41a2b03a 	or	r17,r8,r6
 200ab44:	003fe306 	br	200aad4 <__adddf3+0x764>
 200ab48:	0401ffc4 	movi	r16,2047
 200ab4c:	003e2706 	br	200a3ec <__adddf3+0x7c>
 200ab50:	0011883a 	mov	r8,zero
 200ab54:	003f8306 	br	200a964 <__adddf3+0x5f4>
 200ab58:	193ff804 	addi	r4,r3,-32
 200ab5c:	02400804 	movi	r9,32
 200ab60:	2908d83a 	srl	r4,r5,r4
 200ab64:	1a402526 	beq	r3,r9,200abfc <__adddf3+0x88c>
 200ab68:	02401004 	movi	r9,64
 200ab6c:	48c7c83a 	sub	r3,r9,r3
 200ab70:	28ca983a 	sll	r5,r5,r3
 200ab74:	2c62b03a 	or	r17,r5,r17
 200ab78:	8822c03a 	cmpne	r17,r17,zero
 200ab7c:	8922b03a 	or	r17,r17,r4
 200ab80:	0007883a 	mov	r3,zero
 200ab84:	003f2f06 	br	200a844 <__adddf3+0x4d4>
 200ab88:	01402034 	movhi	r5,128
 200ab8c:	0007883a 	mov	r3,zero
 200ab90:	297fffc4 	addi	r5,r5,-1
 200ab94:	047ffe04 	movi	r17,-8
 200ab98:	0401ffc4 	movi	r16,2047
 200ab9c:	003e7306 	br	200a56c <__adddf3+0x1fc>
 200aba0:	2c62b03a 	or	r17,r5,r17
 200aba4:	8822c03a 	cmpne	r17,r17,zero
 200aba8:	0009883a 	mov	r4,zero
 200abac:	003fa506 	br	200aa44 <__adddf3+0x6d4>
 200abb0:	400b883a 	mov	r5,r8
 200abb4:	3023883a 	mov	r17,r6
 200abb8:	003e0c06 	br	200a3ec <__adddf3+0x7c>
 200abbc:	400b883a 	mov	r5,r8
 200abc0:	3023883a 	mov	r17,r6
 200abc4:	0401ffc4 	movi	r16,2047
 200abc8:	003e0806 	br	200a3ec <__adddf3+0x7c>
 200abcc:	21fff804 	addi	r7,r4,-32
 200abd0:	02400804 	movi	r9,32
 200abd4:	29ced83a 	srl	r7,r5,r7
 200abd8:	22400a26 	beq	r4,r9,200ac04 <__adddf3+0x894>
 200abdc:	02401004 	movi	r9,64
 200abe0:	4909c83a 	sub	r4,r9,r4
 200abe4:	290a983a 	sll	r5,r5,r4
 200abe8:	2c62b03a 	or	r17,r5,r17
 200abec:	8822c03a 	cmpne	r17,r17,zero
 200abf0:	89e2b03a 	or	r17,r17,r7
 200abf4:	0009883a 	mov	r4,zero
 200abf8:	003f9206 	br	200aa44 <__adddf3+0x6d4>
 200abfc:	000b883a 	mov	r5,zero
 200ac00:	003fdc06 	br	200ab74 <__adddf3+0x804>
 200ac04:	000b883a 	mov	r5,zero
 200ac08:	003ff706 	br	200abe8 <__adddf3+0x878>

0200ac0c <__divdf3>:
 200ac0c:	defff204 	addi	sp,sp,-56
 200ac10:	dd000815 	stw	r20,32(sp)
 200ac14:	2828d53a 	srli	r20,r5,20
 200ac18:	dd800a15 	stw	r22,40(sp)
 200ac1c:	282cd7fa 	srli	r22,r5,31
 200ac20:	dc000415 	stw	r16,16(sp)
 200ac24:	04000434 	movhi	r16,16
 200ac28:	df000c15 	stw	fp,48(sp)
 200ac2c:	dcc00715 	stw	r19,28(sp)
 200ac30:	dc800615 	stw	r18,24(sp)
 200ac34:	dc400515 	stw	r17,20(sp)
 200ac38:	843fffc4 	addi	r16,r16,-1
 200ac3c:	dfc00d15 	stw	ra,52(sp)
 200ac40:	ddc00b15 	stw	r23,44(sp)
 200ac44:	dd400915 	stw	r21,36(sp)
 200ac48:	a501ffcc 	andi	r20,r20,2047
 200ac4c:	2025883a 	mov	r18,r4
 200ac50:	2027883a 	mov	r19,r4
 200ac54:	2c22703a 	and	r17,r5,r16
 200ac58:	b7003fcc 	andi	fp,r22,255
 200ac5c:	a0005e26 	beq	r20,zero,200add8 <__divdf3+0x1cc>
 200ac60:	0081ffc4 	movi	r2,2047
 200ac64:	a0803526 	beq	r20,r2,200ad3c <__divdf3+0x130>
 200ac68:	8c000434 	orhi	r16,r17,16
 200ac6c:	2004d77a 	srli	r2,r4,29
 200ac70:	802090fa 	slli	r16,r16,3
 200ac74:	202690fa 	slli	r19,r4,3
 200ac78:	a53f0044 	addi	r20,r20,-1023
 200ac7c:	80a2b03a 	or	r17,r16,r2
 200ac80:	0025883a 	mov	r18,zero
 200ac84:	0011883a 	mov	r8,zero
 200ac88:	380ad53a 	srli	r5,r7,20
 200ac8c:	382ed7fa 	srli	r23,r7,31
 200ac90:	04000434 	movhi	r16,16
 200ac94:	843fffc4 	addi	r16,r16,-1
 200ac98:	2941ffcc 	andi	r5,r5,2047
 200ac9c:	302b883a 	mov	r21,r6
 200aca0:	3c20703a 	and	r16,r7,r16
 200aca4:	ba403fcc 	andi	r9,r23,255
 200aca8:	28006726 	beq	r5,zero,200ae48 <__divdf3+0x23c>
 200acac:	0081ffc4 	movi	r2,2047
 200acb0:	28805f26 	beq	r5,r2,200ae30 <__divdf3+0x224>
 200acb4:	84000434 	orhi	r16,r16,16
 200acb8:	3004d77a 	srli	r2,r6,29
 200acbc:	802090fa 	slli	r16,r16,3
 200acc0:	302a90fa 	slli	r21,r6,3
 200acc4:	297f0044 	addi	r5,r5,-1023
 200acc8:	80a0b03a 	or	r16,r16,r2
 200accc:	000f883a 	mov	r7,zero
 200acd0:	3c86b03a 	or	r3,r7,r18
 200acd4:	180690ba 	slli	r3,r3,2
 200acd8:	00808074 	movhi	r2,513
 200acdc:	10ab3f04 	addi	r2,r2,-21252
 200ace0:	1887883a 	add	r3,r3,r2
 200ace4:	18c00017 	ldw	r3,0(r3)
 200ace8:	b5c8f03a 	xor	r4,r22,r23
 200acec:	200d883a 	mov	r6,r4
 200acf0:	24803fcc 	andi	r18,r4,255
 200acf4:	a169c83a 	sub	r20,r20,r5
 200acf8:	1800683a 	jmp	r3
 200acfc:	0200af44 	movi	r8,701
 200ad00:	0200ad74 	movhi	r8,693
 200ad04:	0200af08 	cmpgei	r8,zero,700
 200ad08:	0200ad58 	cmpnei	r8,zero,693
 200ad0c:	0200af08 	cmpgei	r8,zero,700
 200ad10:	0200aedc 	xori	r8,zero,699
 200ad14:	0200af08 	cmpgei	r8,zero,700
 200ad18:	0200ad58 	cmpnei	r8,zero,693
 200ad1c:	0200ad74 	movhi	r8,693
 200ad20:	0200ad74 	movhi	r8,693
 200ad24:	0200aedc 	xori	r8,zero,699
 200ad28:	0200ad58 	cmpnei	r8,zero,693
 200ad2c:	0200ad68 	cmpgeui	r8,zero,693
 200ad30:	0200ad68 	cmpgeui	r8,zero,693
 200ad34:	0200ad68 	cmpgeui	r8,zero,693
 200ad38:	0200af18 	cmpnei	r8,zero,700
 200ad3c:	8904b03a 	or	r2,r17,r4
 200ad40:	1000631e 	bne	r2,zero,200aed0 <__divdf3+0x2c4>
 200ad44:	04800204 	movi	r18,8
 200ad48:	0023883a 	mov	r17,zero
 200ad4c:	0027883a 	mov	r19,zero
 200ad50:	02000084 	movi	r8,2
 200ad54:	003fcc06 	br	200ac88 <__divdf3+0x7c>
 200ad58:	8023883a 	mov	r17,r16
 200ad5c:	a827883a 	mov	r19,r21
 200ad60:	4839883a 	mov	fp,r9
 200ad64:	3811883a 	mov	r8,r7
 200ad68:	00800084 	movi	r2,2
 200ad6c:	40812a1e 	bne	r8,r2,200b218 <__divdf3+0x60c>
 200ad70:	e025883a 	mov	r18,fp
 200ad74:	9180004c 	andi	r6,r18,1
 200ad78:	0101ffc4 	movi	r4,2047
 200ad7c:	000b883a 	mov	r5,zero
 200ad80:	0027883a 	mov	r19,zero
 200ad84:	2008953a 	slli	r4,r4,20
 200ad88:	30c03fcc 	andi	r3,r6,255
 200ad8c:	04000434 	movhi	r16,16
 200ad90:	180697fa 	slli	r3,r3,31
 200ad94:	843fffc4 	addi	r16,r16,-1
 200ad98:	2c20703a 	and	r16,r5,r16
 200ad9c:	8120b03a 	or	r16,r16,r4
 200ada0:	80c6b03a 	or	r3,r16,r3
 200ada4:	9805883a 	mov	r2,r19
 200ada8:	dfc00d17 	ldw	ra,52(sp)
 200adac:	df000c17 	ldw	fp,48(sp)
 200adb0:	ddc00b17 	ldw	r23,44(sp)
 200adb4:	dd800a17 	ldw	r22,40(sp)
 200adb8:	dd400917 	ldw	r21,36(sp)
 200adbc:	dd000817 	ldw	r20,32(sp)
 200adc0:	dcc00717 	ldw	r19,28(sp)
 200adc4:	dc800617 	ldw	r18,24(sp)
 200adc8:	dc400517 	ldw	r17,20(sp)
 200adcc:	dc000417 	ldw	r16,16(sp)
 200add0:	dec00e04 	addi	sp,sp,56
 200add4:	f800283a 	ret
 200add8:	8904b03a 	or	r2,r17,r4
 200addc:	10003726 	beq	r2,zero,200aebc <__divdf3+0x2b0>
 200ade0:	88011c26 	beq	r17,zero,200b254 <__divdf3+0x648>
 200ade4:	8809883a 	mov	r4,r17
 200ade8:	d9800315 	stw	r6,12(sp)
 200adec:	d9c00115 	stw	r7,4(sp)
 200adf0:	20005ac0 	call	20005ac <__clzsi2>
 200adf4:	d9800317 	ldw	r6,12(sp)
 200adf8:	d9c00117 	ldw	r7,4(sp)
 200adfc:	1007883a 	mov	r3,r2
 200ae00:	01000a04 	movi	r4,40
 200ae04:	1cfffe04 	addi	r19,r3,-8
 200ae08:	20c9c83a 	sub	r4,r4,r3
 200ae0c:	8cca983a 	sll	r5,r17,r19
 200ae10:	9108d83a 	srl	r4,r18,r4
 200ae14:	94e6983a 	sll	r19,r18,r19
 200ae18:	2162b03a 	or	r17,r4,r5
 200ae1c:	053f0344 	movi	r20,-1011
 200ae20:	a0e9c83a 	sub	r20,r20,r3
 200ae24:	0025883a 	mov	r18,zero
 200ae28:	0011883a 	mov	r8,zero
 200ae2c:	003f9606 	br	200ac88 <__divdf3+0x7c>
 200ae30:	8184b03a 	or	r2,r16,r6
 200ae34:	10001f1e 	bne	r2,zero,200aeb4 <__divdf3+0x2a8>
 200ae38:	0021883a 	mov	r16,zero
 200ae3c:	002b883a 	mov	r21,zero
 200ae40:	01c00084 	movi	r7,2
 200ae44:	003fa206 	br	200acd0 <__divdf3+0xc4>
 200ae48:	8184b03a 	or	r2,r16,r6
 200ae4c:	10001526 	beq	r2,zero,200aea4 <__divdf3+0x298>
 200ae50:	80010c26 	beq	r16,zero,200b284 <__divdf3+0x678>
 200ae54:	8009883a 	mov	r4,r16
 200ae58:	d9800315 	stw	r6,12(sp)
 200ae5c:	da000215 	stw	r8,8(sp)
 200ae60:	da400015 	stw	r9,0(sp)
 200ae64:	20005ac0 	call	20005ac <__clzsi2>
 200ae68:	d9800317 	ldw	r6,12(sp)
 200ae6c:	da000217 	ldw	r8,8(sp)
 200ae70:	da400017 	ldw	r9,0(sp)
 200ae74:	1007883a 	mov	r3,r2
 200ae78:	01000a04 	movi	r4,40
 200ae7c:	1d7ffe04 	addi	r21,r3,-8
 200ae80:	20c9c83a 	sub	r4,r4,r3
 200ae84:	8560983a 	sll	r16,r16,r21
 200ae88:	3108d83a 	srl	r4,r6,r4
 200ae8c:	356a983a 	sll	r21,r6,r21
 200ae90:	2420b03a 	or	r16,r4,r16
 200ae94:	017f0344 	movi	r5,-1011
 200ae98:	28cbc83a 	sub	r5,r5,r3
 200ae9c:	000f883a 	mov	r7,zero
 200aea0:	003f8b06 	br	200acd0 <__divdf3+0xc4>
 200aea4:	0021883a 	mov	r16,zero
 200aea8:	002b883a 	mov	r21,zero
 200aeac:	01c00044 	movi	r7,1
 200aeb0:	003f8706 	br	200acd0 <__divdf3+0xc4>
 200aeb4:	01c000c4 	movi	r7,3
 200aeb8:	003f8506 	br	200acd0 <__divdf3+0xc4>
 200aebc:	04800104 	movi	r18,4
 200aec0:	0023883a 	mov	r17,zero
 200aec4:	0027883a 	mov	r19,zero
 200aec8:	02000044 	movi	r8,1
 200aecc:	003f6e06 	br	200ac88 <__divdf3+0x7c>
 200aed0:	04800304 	movi	r18,12
 200aed4:	020000c4 	movi	r8,3
 200aed8:	003f6b06 	br	200ac88 <__divdf3+0x7c>
 200aedc:	01400434 	movhi	r5,16
 200aee0:	000d883a 	mov	r6,zero
 200aee4:	297fffc4 	addi	r5,r5,-1
 200aee8:	04ffffc4 	movi	r19,-1
 200aeec:	0101ffc4 	movi	r4,2047
 200aef0:	003fa406 	br	200ad84 <__divdf3+0x178>
 200aef4:	043f0084 	movi	r16,-1022
 200aef8:	8521c83a 	sub	r16,r16,r20
 200aefc:	00800e04 	movi	r2,56
 200af00:	1401200e 	bge	r2,r16,200b384 <__divdf3+0x778>
 200af04:	9180004c 	andi	r6,r18,1
 200af08:	0009883a 	mov	r4,zero
 200af0c:	000b883a 	mov	r5,zero
 200af10:	0027883a 	mov	r19,zero
 200af14:	003f9b06 	br	200ad84 <__divdf3+0x178>
 200af18:	8880022c 	andhi	r2,r17,8
 200af1c:	1000c726 	beq	r2,zero,200b23c <__divdf3+0x630>
 200af20:	8080022c 	andhi	r2,r16,8
 200af24:	1000c51e 	bne	r2,zero,200b23c <__divdf3+0x630>
 200af28:	00800434 	movhi	r2,16
 200af2c:	81400234 	orhi	r5,r16,8
 200af30:	10bfffc4 	addi	r2,r2,-1
 200af34:	b80d883a 	mov	r6,r23
 200af38:	288a703a 	and	r5,r5,r2
 200af3c:	a827883a 	mov	r19,r21
 200af40:	003fea06 	br	200aeec <__divdf3+0x2e0>
 200af44:	8440ea36 	bltu	r16,r17,200b2f0 <__divdf3+0x6e4>
 200af48:	8c00e826 	beq	r17,r16,200b2ec <__divdf3+0x6e0>
 200af4c:	a53fffc4 	addi	r20,r20,-1
 200af50:	882d883a 	mov	r22,r17
 200af54:	000d883a 	mov	r6,zero
 200af58:	a804d63a 	srli	r2,r21,24
 200af5c:	8020923a 	slli	r16,r16,8
 200af60:	b009883a 	mov	r4,r22
 200af64:	d9800315 	stw	r6,12(sp)
 200af68:	1420b03a 	or	r16,r2,r16
 200af6c:	802ed43a 	srli	r23,r16,16
 200af70:	873fffcc 	andi	fp,r16,65535
 200af74:	a82a923a 	slli	r21,r21,8
 200af78:	b80b883a 	mov	r5,r23
 200af7c:	200a3600 	call	200a360 <__udivsi3>
 200af80:	b009883a 	mov	r4,r22
 200af84:	b80b883a 	mov	r5,r23
 200af88:	1023883a 	mov	r17,r2
 200af8c:	200a3680 	call	200a368 <__umodsi3>
 200af90:	1004943a 	slli	r2,r2,16
 200af94:	9808d43a 	srli	r4,r19,16
 200af98:	8f2d383a 	mul	r22,r17,fp
 200af9c:	d9800317 	ldw	r6,12(sp)
 200afa0:	1106b03a 	or	r3,r2,r4
 200afa4:	1d80062e 	bgeu	r3,r22,200afc0 <__divdf3+0x3b4>
 200afa8:	1c07883a 	add	r3,r3,r16
 200afac:	88bfffc4 	addi	r2,r17,-1
 200afb0:	1c00dc36 	bltu	r3,r16,200b324 <__divdf3+0x718>
 200afb4:	1d80db2e 	bgeu	r3,r22,200b324 <__divdf3+0x718>
 200afb8:	8c7fff84 	addi	r17,r17,-2
 200afbc:	1c07883a 	add	r3,r3,r16
 200afc0:	1dadc83a 	sub	r22,r3,r22
 200afc4:	b009883a 	mov	r4,r22
 200afc8:	b80b883a 	mov	r5,r23
 200afcc:	d9800315 	stw	r6,12(sp)
 200afd0:	200a3600 	call	200a360 <__udivsi3>
 200afd4:	b009883a 	mov	r4,r22
 200afd8:	b80b883a 	mov	r5,r23
 200afdc:	d8800015 	stw	r2,0(sp)
 200afe0:	200a3680 	call	200a368 <__umodsi3>
 200afe4:	da400017 	ldw	r9,0(sp)
 200afe8:	1004943a 	slli	r2,r2,16
 200afec:	9cffffcc 	andi	r19,r19,65535
 200aff0:	4f07383a 	mul	r3,r9,fp
 200aff4:	14c8b03a 	or	r4,r2,r19
 200aff8:	d9800317 	ldw	r6,12(sp)
 200affc:	20c0062e 	bgeu	r4,r3,200b018 <__divdf3+0x40c>
 200b000:	2409883a 	add	r4,r4,r16
 200b004:	48bfffc4 	addi	r2,r9,-1
 200b008:	2400c436 	bltu	r4,r16,200b31c <__divdf3+0x710>
 200b00c:	20c0c32e 	bgeu	r4,r3,200b31c <__divdf3+0x710>
 200b010:	4a7fff84 	addi	r9,r9,-2
 200b014:	2409883a 	add	r4,r4,r16
 200b018:	8822943a 	slli	r17,r17,16
 200b01c:	a80ed43a 	srli	r7,r21,16
 200b020:	aa3fffcc 	andi	r8,r21,65535
 200b024:	4c62b03a 	or	r17,r9,r17
 200b028:	8816d43a 	srli	r11,r17,16
 200b02c:	897fffcc 	andi	r5,r17,65535
 200b030:	2a15383a 	mul	r10,r5,r8
 200b034:	5a19383a 	mul	r12,r11,r8
 200b038:	29cb383a 	mul	r5,r5,r7
 200b03c:	5012d43a 	srli	r9,r10,16
 200b040:	20c5c83a 	sub	r2,r4,r3
 200b044:	614b883a 	add	r5,r12,r5
 200b048:	2a4b883a 	add	r5,r5,r9
 200b04c:	59c7383a 	mul	r3,r11,r7
 200b050:	2b00022e 	bgeu	r5,r12,200b05c <__divdf3+0x450>
 200b054:	01000074 	movhi	r4,1
 200b058:	1907883a 	add	r3,r3,r4
 200b05c:	2808d43a 	srli	r4,r5,16
 200b060:	280a943a 	slli	r5,r5,16
 200b064:	54ffffcc 	andi	r19,r10,65535
 200b068:	1907883a 	add	r3,r3,r4
 200b06c:	2ccb883a 	add	r5,r5,r19
 200b070:	10c09336 	bltu	r2,r3,200b2c0 <__divdf3+0x6b4>
 200b074:	10c0ad26 	beq	r2,r3,200b32c <__divdf3+0x720>
 200b078:	10c7c83a 	sub	r3,r2,r3
 200b07c:	3167c83a 	sub	r19,r6,r5
 200b080:	34ed803a 	cmpltu	r22,r6,r19
 200b084:	1dadc83a 	sub	r22,r3,r22
 200b088:	b400b226 	beq	r22,r16,200b354 <__divdf3+0x748>
 200b08c:	b009883a 	mov	r4,r22
 200b090:	b80b883a 	mov	r5,r23
 200b094:	d9c00115 	stw	r7,4(sp)
 200b098:	da000215 	stw	r8,8(sp)
 200b09c:	200a3600 	call	200a360 <__udivsi3>
 200b0a0:	b009883a 	mov	r4,r22
 200b0a4:	b80b883a 	mov	r5,r23
 200b0a8:	d8800315 	stw	r2,12(sp)
 200b0ac:	200a3680 	call	200a368 <__umodsi3>
 200b0b0:	d9800317 	ldw	r6,12(sp)
 200b0b4:	1004943a 	slli	r2,r2,16
 200b0b8:	9808d43a 	srli	r4,r19,16
 200b0bc:	372d383a 	mul	r22,r6,fp
 200b0c0:	d9c00117 	ldw	r7,4(sp)
 200b0c4:	1106b03a 	or	r3,r2,r4
 200b0c8:	da000217 	ldw	r8,8(sp)
 200b0cc:	1d80062e 	bgeu	r3,r22,200b0e8 <__divdf3+0x4dc>
 200b0d0:	1c07883a 	add	r3,r3,r16
 200b0d4:	30bfffc4 	addi	r2,r6,-1
 200b0d8:	1c00a036 	bltu	r3,r16,200b35c <__divdf3+0x750>
 200b0dc:	1d809f2e 	bgeu	r3,r22,200b35c <__divdf3+0x750>
 200b0e0:	31bfff84 	addi	r6,r6,-2
 200b0e4:	1c07883a 	add	r3,r3,r16
 200b0e8:	1dadc83a 	sub	r22,r3,r22
 200b0ec:	b009883a 	mov	r4,r22
 200b0f0:	b80b883a 	mov	r5,r23
 200b0f4:	d9800315 	stw	r6,12(sp)
 200b0f8:	d9c00115 	stw	r7,4(sp)
 200b0fc:	da000215 	stw	r8,8(sp)
 200b100:	200a3600 	call	200a360 <__udivsi3>
 200b104:	b009883a 	mov	r4,r22
 200b108:	b80b883a 	mov	r5,r23
 200b10c:	d8800015 	stw	r2,0(sp)
 200b110:	200a3680 	call	200a368 <__umodsi3>
 200b114:	da400017 	ldw	r9,0(sp)
 200b118:	1004943a 	slli	r2,r2,16
 200b11c:	993fffcc 	andi	r4,r19,65535
 200b120:	4f39383a 	mul	fp,r9,fp
 200b124:	1106b03a 	or	r3,r2,r4
 200b128:	d9800317 	ldw	r6,12(sp)
 200b12c:	d9c00117 	ldw	r7,4(sp)
 200b130:	da000217 	ldw	r8,8(sp)
 200b134:	1f00062e 	bgeu	r3,fp,200b150 <__divdf3+0x544>
 200b138:	1c07883a 	add	r3,r3,r16
 200b13c:	48bfffc4 	addi	r2,r9,-1
 200b140:	1c008836 	bltu	r3,r16,200b364 <__divdf3+0x758>
 200b144:	1f00872e 	bgeu	r3,fp,200b364 <__divdf3+0x758>
 200b148:	4a7fff84 	addi	r9,r9,-2
 200b14c:	1c07883a 	add	r3,r3,r16
 200b150:	3008943a 	slli	r4,r6,16
 200b154:	1f07c83a 	sub	r3,r3,fp
 200b158:	4926b03a 	or	r19,r9,r4
 200b15c:	993fffcc 	andi	r4,r19,65535
 200b160:	980cd43a 	srli	r6,r19,16
 200b164:	220b383a 	mul	r5,r4,r8
 200b168:	21c5383a 	mul	r2,r4,r7
 200b16c:	3211383a 	mul	r8,r6,r8
 200b170:	2808d43a 	srli	r4,r5,16
 200b174:	31cf383a 	mul	r7,r6,r7
 200b178:	4085883a 	add	r2,r8,r2
 200b17c:	1105883a 	add	r2,r2,r4
 200b180:	1200022e 	bgeu	r2,r8,200b18c <__divdf3+0x580>
 200b184:	01000074 	movhi	r4,1
 200b188:	390f883a 	add	r7,r7,r4
 200b18c:	1008d43a 	srli	r4,r2,16
 200b190:	1004943a 	slli	r2,r2,16
 200b194:	297fffcc 	andi	r5,r5,65535
 200b198:	390f883a 	add	r7,r7,r4
 200b19c:	1145883a 	add	r2,r2,r5
 200b1a0:	19c06536 	bltu	r3,r7,200b338 <__divdf3+0x72c>
 200b1a4:	19c09f26 	beq	r3,r7,200b424 <__divdf3+0x818>
 200b1a8:	9cc00054 	ori	r19,r19,1
 200b1ac:	a100ffc4 	addi	r4,r20,1023
 200b1b0:	013f500e 	bge	zero,r4,200aef4 <__divdf3+0x2e8>
 200b1b4:	988001cc 	andi	r2,r19,7
 200b1b8:	10000726 	beq	r2,zero,200b1d8 <__divdf3+0x5cc>
 200b1bc:	98c003cc 	andi	r3,r19,15
 200b1c0:	00800104 	movi	r2,4
 200b1c4:	18800426 	beq	r3,r2,200b1d8 <__divdf3+0x5cc>
 200b1c8:	9885883a 	add	r2,r19,r2
 200b1cc:	14e1803a 	cmpltu	r16,r2,r19
 200b1d0:	8c23883a 	add	r17,r17,r16
 200b1d4:	1027883a 	mov	r19,r2
 200b1d8:	8880402c 	andhi	r2,r17,256
 200b1dc:	10000426 	beq	r2,zero,200b1f0 <__divdf3+0x5e4>
 200b1e0:	00bfc034 	movhi	r2,65280
 200b1e4:	10bfffc4 	addi	r2,r2,-1
 200b1e8:	a1010004 	addi	r4,r20,1024
 200b1ec:	88a2703a 	and	r17,r17,r2
 200b1f0:	0081ff84 	movi	r2,2046
 200b1f4:	113edf16 	blt	r2,r4,200ad74 <__divdf3+0x168>
 200b1f8:	9826d0fa 	srli	r19,r19,3
 200b1fc:	8804977a 	slli	r2,r17,29
 200b200:	8820927a 	slli	r16,r17,9
 200b204:	2101ffcc 	andi	r4,r4,2047
 200b208:	14e6b03a 	or	r19,r2,r19
 200b20c:	800ad33a 	srli	r5,r16,12
 200b210:	9180004c 	andi	r6,r18,1
 200b214:	003edb06 	br	200ad84 <__divdf3+0x178>
 200b218:	008000c4 	movi	r2,3
 200b21c:	4080a826 	beq	r8,r2,200b4c0 <__divdf3+0x8b4>
 200b220:	00800044 	movi	r2,1
 200b224:	4080551e 	bne	r8,r2,200b37c <__divdf3+0x770>
 200b228:	e00d883a 	mov	r6,fp
 200b22c:	0009883a 	mov	r4,zero
 200b230:	000b883a 	mov	r5,zero
 200b234:	0027883a 	mov	r19,zero
 200b238:	003ed206 	br	200ad84 <__divdf3+0x178>
 200b23c:	00800434 	movhi	r2,16
 200b240:	89400234 	orhi	r5,r17,8
 200b244:	10bfffc4 	addi	r2,r2,-1
 200b248:	b00d883a 	mov	r6,r22
 200b24c:	288a703a 	and	r5,r5,r2
 200b250:	003f2606 	br	200aeec <__divdf3+0x2e0>
 200b254:	d9800315 	stw	r6,12(sp)
 200b258:	d9c00115 	stw	r7,4(sp)
 200b25c:	20005ac0 	call	20005ac <__clzsi2>
 200b260:	10c00804 	addi	r3,r2,32
 200b264:	010009c4 	movi	r4,39
 200b268:	d9800317 	ldw	r6,12(sp)
 200b26c:	d9c00117 	ldw	r7,4(sp)
 200b270:	20fee30e 	bge	r4,r3,200ae00 <__divdf3+0x1f4>
 200b274:	117ffe04 	addi	r5,r2,-8
 200b278:	9162983a 	sll	r17,r18,r5
 200b27c:	0027883a 	mov	r19,zero
 200b280:	003ee606 	br	200ae1c <__divdf3+0x210>
 200b284:	3009883a 	mov	r4,r6
 200b288:	d9800315 	stw	r6,12(sp)
 200b28c:	da000215 	stw	r8,8(sp)
 200b290:	da400015 	stw	r9,0(sp)
 200b294:	20005ac0 	call	20005ac <__clzsi2>
 200b298:	10c00804 	addi	r3,r2,32
 200b29c:	010009c4 	movi	r4,39
 200b2a0:	d9800317 	ldw	r6,12(sp)
 200b2a4:	da000217 	ldw	r8,8(sp)
 200b2a8:	da400017 	ldw	r9,0(sp)
 200b2ac:	20fef20e 	bge	r4,r3,200ae78 <__divdf3+0x26c>
 200b2b0:	10bffe04 	addi	r2,r2,-8
 200b2b4:	a8a0983a 	sll	r16,r21,r2
 200b2b8:	002b883a 	mov	r21,zero
 200b2bc:	003ef506 	br	200ae94 <__divdf3+0x288>
 200b2c0:	354d883a 	add	r6,r6,r21
 200b2c4:	3549803a 	cmpltu	r4,r6,r21
 200b2c8:	2409883a 	add	r4,r4,r16
 200b2cc:	2089883a 	add	r4,r4,r2
 200b2d0:	88bfffc4 	addi	r2,r17,-1
 200b2d4:	81000c2e 	bgeu	r16,r4,200b308 <__divdf3+0x6fc>
 200b2d8:	20c04436 	bltu	r4,r3,200b3ec <__divdf3+0x7e0>
 200b2dc:	19006f26 	beq	r3,r4,200b49c <__divdf3+0x890>
 200b2e0:	20c7c83a 	sub	r3,r4,r3
 200b2e4:	1023883a 	mov	r17,r2
 200b2e8:	003f6406 	br	200b07c <__divdf3+0x470>
 200b2ec:	9d7f1736 	bltu	r19,r21,200af4c <__divdf3+0x340>
 200b2f0:	9806d07a 	srli	r3,r19,1
 200b2f4:	880497fa 	slli	r2,r17,31
 200b2f8:	980c97fa 	slli	r6,r19,31
 200b2fc:	882cd07a 	srli	r22,r17,1
 200b300:	18a6b03a 	or	r19,r3,r2
 200b304:	003f1406 	br	200af58 <__divdf3+0x34c>
 200b308:	243ff51e 	bne	r4,r16,200b2e0 <__divdf3+0x6d4>
 200b30c:	357ff22e 	bgeu	r6,r21,200b2d8 <__divdf3+0x6cc>
 200b310:	80c7c83a 	sub	r3,r16,r3
 200b314:	1023883a 	mov	r17,r2
 200b318:	003f5806 	br	200b07c <__divdf3+0x470>
 200b31c:	1013883a 	mov	r9,r2
 200b320:	003f3d06 	br	200b018 <__divdf3+0x40c>
 200b324:	1023883a 	mov	r17,r2
 200b328:	003f2506 	br	200afc0 <__divdf3+0x3b4>
 200b32c:	317fe436 	bltu	r6,r5,200b2c0 <__divdf3+0x6b4>
 200b330:	0007883a 	mov	r3,zero
 200b334:	003f5106 	br	200b07c <__divdf3+0x470>
 200b338:	1c07883a 	add	r3,r3,r16
 200b33c:	993fffc4 	addi	r4,r19,-1
 200b340:	1c000a2e 	bgeu	r3,r16,200b36c <__divdf3+0x760>
 200b344:	2027883a 	mov	r19,r4
 200b348:	19ff971e 	bne	r3,r7,200b1a8 <__divdf3+0x59c>
 200b34c:	a8bf961e 	bne	r21,r2,200b1a8 <__divdf3+0x59c>
 200b350:	003f9606 	br	200b1ac <__divdf3+0x5a0>
 200b354:	04ffffc4 	movi	r19,-1
 200b358:	003f9406 	br	200b1ac <__divdf3+0x5a0>
 200b35c:	100d883a 	mov	r6,r2
 200b360:	003f6106 	br	200b0e8 <__divdf3+0x4dc>
 200b364:	1013883a 	mov	r9,r2
 200b368:	003f7906 	br	200b150 <__divdf3+0x544>
 200b36c:	19c02636 	bltu	r3,r7,200b408 <__divdf3+0x7fc>
 200b370:	38c04d26 	beq	r7,r3,200b4a8 <__divdf3+0x89c>
 200b374:	2027883a 	mov	r19,r4
 200b378:	003f8b06 	br	200b1a8 <__divdf3+0x59c>
 200b37c:	e025883a 	mov	r18,fp
 200b380:	003f8a06 	br	200b1ac <__divdf3+0x5a0>
 200b384:	008007c4 	movi	r2,31
 200b388:	14002a16 	blt	r2,r16,200b434 <__divdf3+0x828>
 200b38c:	a5010784 	addi	r20,r20,1054
 200b390:	8d04983a 	sll	r2,r17,r20
 200b394:	9c06d83a 	srl	r3,r19,r16
 200b398:	9d28983a 	sll	r20,r19,r20
 200b39c:	8c20d83a 	srl	r16,r17,r16
 200b3a0:	1886b03a 	or	r3,r3,r2
 200b3a4:	a004c03a 	cmpne	r2,r20,zero
 200b3a8:	1884b03a 	or	r2,r3,r2
 200b3ac:	10c001cc 	andi	r3,r2,7
 200b3b0:	18000726 	beq	r3,zero,200b3d0 <__divdf3+0x7c4>
 200b3b4:	110003cc 	andi	r4,r2,15
 200b3b8:	00c00104 	movi	r3,4
 200b3bc:	20c00426 	beq	r4,r3,200b3d0 <__divdf3+0x7c4>
 200b3c0:	10c00104 	addi	r3,r2,4
 200b3c4:	1885803a 	cmpltu	r2,r3,r2
 200b3c8:	80a1883a 	add	r16,r16,r2
 200b3cc:	1805883a 	mov	r2,r3
 200b3d0:	80c0202c 	andhi	r3,r16,128
 200b3d4:	18002d26 	beq	r3,zero,200b48c <__divdf3+0x880>
 200b3d8:	9180004c 	andi	r6,r18,1
 200b3dc:	01000044 	movi	r4,1
 200b3e0:	000b883a 	mov	r5,zero
 200b3e4:	0027883a 	mov	r19,zero
 200b3e8:	003e6606 	br	200ad84 <__divdf3+0x178>
 200b3ec:	354d883a 	add	r6,r6,r21
 200b3f0:	356d803a 	cmpltu	r22,r6,r21
 200b3f4:	b42d883a 	add	r22,r22,r16
 200b3f8:	b12d883a 	add	r22,r22,r4
 200b3fc:	8c7fff84 	addi	r17,r17,-2
 200b400:	b0c7c83a 	sub	r3,r22,r3
 200b404:	003f1d06 	br	200b07c <__divdf3+0x470>
 200b408:	ad4b883a 	add	r5,r21,r21
 200b40c:	2d6b803a 	cmpltu	r21,r5,r21
 200b410:	ac2b883a 	add	r21,r21,r16
 200b414:	1d47883a 	add	r3,r3,r21
 200b418:	993fff84 	addi	r4,r19,-2
 200b41c:	282b883a 	mov	r21,r5
 200b420:	003fc806 	br	200b344 <__divdf3+0x738>
 200b424:	103fc41e 	bne	r2,zero,200b338 <__divdf3+0x72c>
 200b428:	002b883a 	mov	r21,zero
 200b42c:	a8bf5e1e 	bne	r21,r2,200b1a8 <__divdf3+0x59c>
 200b430:	003f5e06 	br	200b1ac <__divdf3+0x5a0>
 200b434:	00bef884 	movi	r2,-1054
 200b438:	1505c83a 	sub	r2,r2,r20
 200b43c:	00c00804 	movi	r3,32
 200b440:	8884d83a 	srl	r2,r17,r2
 200b444:	80c01c26 	beq	r16,r3,200b4b8 <__divdf3+0x8ac>
 200b448:	a0c10f84 	addi	r3,r20,1086
 200b44c:	88c6983a 	sll	r3,r17,r3
 200b450:	1cc6b03a 	or	r3,r3,r19
 200b454:	1806c03a 	cmpne	r3,r3,zero
 200b458:	1884b03a 	or	r2,r3,r2
 200b45c:	140001cc 	andi	r16,r2,7
 200b460:	8000061e 	bne	r16,zero,200b47c <__divdf3+0x870>
 200b464:	000b883a 	mov	r5,zero
 200b468:	1004d0fa 	srli	r2,r2,3
 200b46c:	9180004c 	andi	r6,r18,1
 200b470:	0009883a 	mov	r4,zero
 200b474:	1426b03a 	or	r19,r2,r16
 200b478:	003e4206 	br	200ad84 <__divdf3+0x178>
 200b47c:	110003cc 	andi	r4,r2,15
 200b480:	00c00104 	movi	r3,4
 200b484:	0021883a 	mov	r16,zero
 200b488:	20ffcd1e 	bne	r4,r3,200b3c0 <__divdf3+0x7b4>
 200b48c:	800a927a 	slli	r5,r16,9
 200b490:	8020977a 	slli	r16,r16,29
 200b494:	280ad33a 	srli	r5,r5,12
 200b498:	003ff306 	br	200b468 <__divdf3+0x85c>
 200b49c:	317fd336 	bltu	r6,r5,200b3ec <__divdf3+0x7e0>
 200b4a0:	1023883a 	mov	r17,r2
 200b4a4:	003fa206 	br	200b330 <__divdf3+0x724>
 200b4a8:	a8bfd736 	bltu	r21,r2,200b408 <__divdf3+0x7fc>
 200b4ac:	2027883a 	mov	r19,r4
 200b4b0:	a8bf3d1e 	bne	r21,r2,200b1a8 <__divdf3+0x59c>
 200b4b4:	003f3d06 	br	200b1ac <__divdf3+0x5a0>
 200b4b8:	0007883a 	mov	r3,zero
 200b4bc:	003fe406 	br	200b450 <__divdf3+0x844>
 200b4c0:	00800434 	movhi	r2,16
 200b4c4:	89400234 	orhi	r5,r17,8
 200b4c8:	10bfffc4 	addi	r2,r2,-1
 200b4cc:	e00d883a 	mov	r6,fp
 200b4d0:	288a703a 	and	r5,r5,r2
 200b4d4:	003e8506 	br	200aeec <__divdf3+0x2e0>

0200b4d8 <__eqdf2>:
 200b4d8:	2804d53a 	srli	r2,r5,20
 200b4dc:	3806d53a 	srli	r3,r7,20
 200b4e0:	02000434 	movhi	r8,16
 200b4e4:	423fffc4 	addi	r8,r8,-1
 200b4e8:	1081ffcc 	andi	r2,r2,2047
 200b4ec:	0241ffc4 	movi	r9,2047
 200b4f0:	2a14703a 	and	r10,r5,r8
 200b4f4:	18c1ffcc 	andi	r3,r3,2047
 200b4f8:	3a10703a 	and	r8,r7,r8
 200b4fc:	280ad7fa 	srli	r5,r5,31
 200b500:	380ed7fa 	srli	r7,r7,31
 200b504:	12400f26 	beq	r2,r9,200b544 <__eqdf2+0x6c>
 200b508:	0241ffc4 	movi	r9,2047
 200b50c:	1a400326 	beq	r3,r9,200b51c <__eqdf2+0x44>
 200b510:	10c00526 	beq	r2,r3,200b528 <__eqdf2+0x50>
 200b514:	00800044 	movi	r2,1
 200b518:	f800283a 	ret
 200b51c:	4192b03a 	or	r9,r8,r6
 200b520:	483ffc1e 	bne	r9,zero,200b514 <__eqdf2+0x3c>
 200b524:	10fffb1e 	bne	r2,r3,200b514 <__eqdf2+0x3c>
 200b528:	523ffa1e 	bne	r10,r8,200b514 <__eqdf2+0x3c>
 200b52c:	21bff91e 	bne	r4,r6,200b514 <__eqdf2+0x3c>
 200b530:	29c00826 	beq	r5,r7,200b554 <__eqdf2+0x7c>
 200b534:	103ff71e 	bne	r2,zero,200b514 <__eqdf2+0x3c>
 200b538:	5104b03a 	or	r2,r10,r4
 200b53c:	1004c03a 	cmpne	r2,r2,zero
 200b540:	f800283a 	ret
 200b544:	5112b03a 	or	r9,r10,r4
 200b548:	483fef26 	beq	r9,zero,200b508 <__eqdf2+0x30>
 200b54c:	00800044 	movi	r2,1
 200b550:	f800283a 	ret
 200b554:	0005883a 	mov	r2,zero
 200b558:	f800283a 	ret

0200b55c <__gedf2>:
 200b55c:	2804d53a 	srli	r2,r5,20
 200b560:	3806d53a 	srli	r3,r7,20
 200b564:	02000434 	movhi	r8,16
 200b568:	423fffc4 	addi	r8,r8,-1
 200b56c:	0241ffc4 	movi	r9,2047
 200b570:	1081ffcc 	andi	r2,r2,2047
 200b574:	2a14703a 	and	r10,r5,r8
 200b578:	1a46703a 	and	r3,r3,r9
 200b57c:	3a10703a 	and	r8,r7,r8
 200b580:	280ad7fa 	srli	r5,r5,31
 200b584:	380ed7fa 	srli	r7,r7,31
 200b588:	12400b26 	beq	r2,r9,200b5b8 <__gedf2+0x5c>
 200b58c:	1a401626 	beq	r3,r9,200b5e8 <__gedf2+0x8c>
 200b590:	10000c1e 	bne	r2,zero,200b5c4 <__gedf2+0x68>
 200b594:	5112b03a 	or	r9,r10,r4
 200b598:	4813003a 	cmpeq	r9,r9,zero
 200b59c:	4817883a 	mov	r11,r9
 200b5a0:	18000c1e 	bne	r3,zero,200b5d4 <__gedf2+0x78>
 200b5a4:	4198b03a 	or	r12,r8,r6
 200b5a8:	60000a1e 	bne	r12,zero,200b5d4 <__gedf2+0x78>
 200b5ac:	48001326 	beq	r9,zero,200b5fc <__gedf2+0xa0>
 200b5b0:	0005883a 	mov	r2,zero
 200b5b4:	f800283a 	ret
 200b5b8:	5112b03a 	or	r9,r10,r4
 200b5bc:	4800191e 	bne	r9,zero,200b624 <__gedf2+0xc8>
 200b5c0:	18800926 	beq	r3,r2,200b5e8 <__gedf2+0x8c>
 200b5c4:	18000b1e 	bne	r3,zero,200b5f4 <__gedf2+0x98>
 200b5c8:	4192b03a 	or	r9,r8,r6
 200b5cc:	0017883a 	mov	r11,zero
 200b5d0:	48000a26 	beq	r9,zero,200b5fc <__gedf2+0xa0>
 200b5d4:	39c03fcc 	andi	r7,r7,255
 200b5d8:	58000726 	beq	r11,zero,200b5f8 <__gedf2+0x9c>
 200b5dc:	3800081e 	bne	r7,zero,200b600 <__gedf2+0xa4>
 200b5e0:	00bfffc4 	movi	r2,-1
 200b5e4:	f800283a 	ret
 200b5e8:	4192b03a 	or	r9,r8,r6
 200b5ec:	48000d1e 	bne	r9,zero,200b624 <__gedf2+0xc8>
 200b5f0:	103fe826 	beq	r2,zero,200b594 <__gedf2+0x38>
 200b5f4:	39c03fcc 	andi	r7,r7,255
 200b5f8:	29c00326 	beq	r5,r7,200b608 <__gedf2+0xac>
 200b5fc:	283ff81e 	bne	r5,zero,200b5e0 <__gedf2+0x84>
 200b600:	00800044 	movi	r2,1
 200b604:	f800283a 	ret
 200b608:	18bffc16 	blt	r3,r2,200b5fc <__gedf2+0xa0>
 200b60c:	10c00316 	blt	r2,r3,200b61c <__gedf2+0xc0>
 200b610:	42bffa36 	bltu	r8,r10,200b5fc <__gedf2+0xa0>
 200b614:	52000526 	beq	r10,r8,200b62c <__gedf2+0xd0>
 200b618:	523fe52e 	bgeu	r10,r8,200b5b0 <__gedf2+0x54>
 200b61c:	283ff026 	beq	r5,zero,200b5e0 <__gedf2+0x84>
 200b620:	003ff706 	br	200b600 <__gedf2+0xa4>
 200b624:	00bfff84 	movi	r2,-2
 200b628:	f800283a 	ret
 200b62c:	313ff336 	bltu	r6,r4,200b5fc <__gedf2+0xa0>
 200b630:	21bfdf2e 	bgeu	r4,r6,200b5b0 <__gedf2+0x54>
 200b634:	283fea26 	beq	r5,zero,200b5e0 <__gedf2+0x84>
 200b638:	003ff106 	br	200b600 <__gedf2+0xa4>

0200b63c <__ledf2>:
 200b63c:	2804d53a 	srli	r2,r5,20
 200b640:	3810d53a 	srli	r8,r7,20
 200b644:	00c00434 	movhi	r3,16
 200b648:	18ffffc4 	addi	r3,r3,-1
 200b64c:	0241ffc4 	movi	r9,2047
 200b650:	1081ffcc 	andi	r2,r2,2047
 200b654:	28d4703a 	and	r10,r5,r3
 200b658:	4250703a 	and	r8,r8,r9
 200b65c:	38c6703a 	and	r3,r7,r3
 200b660:	280ad7fa 	srli	r5,r5,31
 200b664:	380ed7fa 	srli	r7,r7,31
 200b668:	12400b26 	beq	r2,r9,200b698 <__ledf2+0x5c>
 200b66c:	42401926 	beq	r8,r9,200b6d4 <__ledf2+0x98>
 200b670:	10000c1e 	bne	r2,zero,200b6a4 <__ledf2+0x68>
 200b674:	5112b03a 	or	r9,r10,r4
 200b678:	4813003a 	cmpeq	r9,r9,zero
 200b67c:	4817883a 	mov	r11,r9
 200b680:	40000f26 	beq	r8,zero,200b6c0 <__ledf2+0x84>
 200b684:	39c03fcc 	andi	r7,r7,255
 200b688:	58001826 	beq	r11,zero,200b6ec <__ledf2+0xb0>
 200b68c:	38000a1e 	bne	r7,zero,200b6b8 <__ledf2+0x7c>
 200b690:	00bfffc4 	movi	r2,-1
 200b694:	f800283a 	ret
 200b698:	5112b03a 	or	r9,r10,r4
 200b69c:	48000f1e 	bne	r9,zero,200b6dc <__ledf2+0xa0>
 200b6a0:	40800c26 	beq	r8,r2,200b6d4 <__ledf2+0x98>
 200b6a4:	4000101e 	bne	r8,zero,200b6e8 <__ledf2+0xac>
 200b6a8:	1992b03a 	or	r9,r3,r6
 200b6ac:	0017883a 	mov	r11,zero
 200b6b0:	483ff41e 	bne	r9,zero,200b684 <__ledf2+0x48>
 200b6b4:	283ff61e 	bne	r5,zero,200b690 <__ledf2+0x54>
 200b6b8:	00800044 	movi	r2,1
 200b6bc:	f800283a 	ret
 200b6c0:	1998b03a 	or	r12,r3,r6
 200b6c4:	603fef1e 	bne	r12,zero,200b684 <__ledf2+0x48>
 200b6c8:	483ffa26 	beq	r9,zero,200b6b4 <__ledf2+0x78>
 200b6cc:	0005883a 	mov	r2,zero
 200b6d0:	f800283a 	ret
 200b6d4:	1992b03a 	or	r9,r3,r6
 200b6d8:	48000226 	beq	r9,zero,200b6e4 <__ledf2+0xa8>
 200b6dc:	00800084 	movi	r2,2
 200b6e0:	f800283a 	ret
 200b6e4:	103fe326 	beq	r2,zero,200b674 <__ledf2+0x38>
 200b6e8:	39c03fcc 	andi	r7,r7,255
 200b6ec:	29fff11e 	bne	r5,r7,200b6b4 <__ledf2+0x78>
 200b6f0:	40bff016 	blt	r8,r2,200b6b4 <__ledf2+0x78>
 200b6f4:	12000316 	blt	r2,r8,200b704 <__ledf2+0xc8>
 200b6f8:	1abfee36 	bltu	r3,r10,200b6b4 <__ledf2+0x78>
 200b6fc:	50c00326 	beq	r10,r3,200b70c <__ledf2+0xd0>
 200b700:	50fff22e 	bgeu	r10,r3,200b6cc <__ledf2+0x90>
 200b704:	283fe226 	beq	r5,zero,200b690 <__ledf2+0x54>
 200b708:	003feb06 	br	200b6b8 <__ledf2+0x7c>
 200b70c:	313fe936 	bltu	r6,r4,200b6b4 <__ledf2+0x78>
 200b710:	21bfee2e 	bgeu	r4,r6,200b6cc <__ledf2+0x90>
 200b714:	283fde26 	beq	r5,zero,200b690 <__ledf2+0x54>
 200b718:	003fe706 	br	200b6b8 <__ledf2+0x7c>

0200b71c <__muldf3>:
 200b71c:	defff204 	addi	sp,sp,-56
 200b720:	2804d53a 	srli	r2,r5,20
 200b724:	dd800a15 	stw	r22,40(sp)
 200b728:	282cd7fa 	srli	r22,r5,31
 200b72c:	dc000415 	stw	r16,16(sp)
 200b730:	04000434 	movhi	r16,16
 200b734:	df000c15 	stw	fp,48(sp)
 200b738:	dd000815 	stw	r20,32(sp)
 200b73c:	dcc00715 	stw	r19,28(sp)
 200b740:	dc800615 	stw	r18,24(sp)
 200b744:	dc400515 	stw	r17,20(sp)
 200b748:	843fffc4 	addi	r16,r16,-1
 200b74c:	dfc00d15 	stw	ra,52(sp)
 200b750:	ddc00b15 	stw	r23,44(sp)
 200b754:	dd400915 	stw	r21,36(sp)
 200b758:	1501ffcc 	andi	r20,r2,2047
 200b75c:	2023883a 	mov	r17,r4
 200b760:	2025883a 	mov	r18,r4
 200b764:	2c20703a 	and	r16,r5,r16
 200b768:	b027883a 	mov	r19,r22
 200b76c:	b7003fcc 	andi	fp,r22,255
 200b770:	a0005926 	beq	r20,zero,200b8d8 <__muldf3+0x1bc>
 200b774:	0081ffc4 	movi	r2,2047
 200b778:	a0803426 	beq	r20,r2,200b84c <__muldf3+0x130>
 200b77c:	84000434 	orhi	r16,r16,16
 200b780:	2004d77a 	srli	r2,r4,29
 200b784:	802090fa 	slli	r16,r16,3
 200b788:	202490fa 	slli	r18,r4,3
 200b78c:	a53f0044 	addi	r20,r20,-1023
 200b790:	80a0b03a 	or	r16,r16,r2
 200b794:	002b883a 	mov	r21,zero
 200b798:	0015883a 	mov	r10,zero
 200b79c:	3812d53a 	srli	r9,r7,20
 200b7a0:	3806d7fa 	srli	r3,r7,31
 200b7a4:	02000434 	movhi	r8,16
 200b7a8:	423fffc4 	addi	r8,r8,-1
 200b7ac:	4941ffcc 	andi	r5,r9,2047
 200b7b0:	302f883a 	mov	r23,r6
 200b7b4:	3a22703a 	and	r17,r7,r8
 200b7b8:	1ac03fcc 	andi	r11,r3,255
 200b7bc:	28006226 	beq	r5,zero,200b948 <__muldf3+0x22c>
 200b7c0:	0081ffc4 	movi	r2,2047
 200b7c4:	28805a26 	beq	r5,r2,200b930 <__muldf3+0x214>
 200b7c8:	8a000434 	orhi	r8,r17,16
 200b7cc:	3004d77a 	srli	r2,r6,29
 200b7d0:	401090fa 	slli	r8,r8,3
 200b7d4:	302e90fa 	slli	r23,r6,3
 200b7d8:	297f0044 	addi	r5,r5,-1023
 200b7dc:	40a2b03a 	or	r17,r8,r2
 200b7e0:	0013883a 	mov	r9,zero
 200b7e4:	4d4cb03a 	or	r6,r9,r21
 200b7e8:	300c90ba 	slli	r6,r6,2
 200b7ec:	02008074 	movhi	r8,513
 200b7f0:	422e0304 	addi	r8,r8,-18420
 200b7f4:	320d883a 	add	r6,r6,r8
 200b7f8:	31800017 	ldw	r6,0(r6)
 200b7fc:	a14b883a 	add	r5,r20,r5
 200b800:	1dacf03a 	xor	r22,r3,r22
 200b804:	2b000044 	addi	r12,r5,1
 200b808:	3000683a 	jmp	r6
 200b80c:	0200ba48 	cmpgei	r8,zero,745
 200b810:	0200ba34 	movhi	r8,744
 200b814:	0200ba34 	movhi	r8,744
 200b818:	0200ba20 	cmpeqi	r8,zero,744
 200b81c:	0200b868 	cmpgeui	r8,zero,737
 200b820:	0200b868 	cmpgeui	r8,zero,737
 200b824:	0200ba08 	cmpgei	r8,zero,744
 200b828:	0200ba20 	cmpeqi	r8,zero,744
 200b82c:	0200b868 	cmpgeui	r8,zero,737
 200b830:	0200ba08 	cmpgei	r8,zero,744
 200b834:	0200b868 	cmpgeui	r8,zero,737
 200b838:	0200ba20 	cmpeqi	r8,zero,744
 200b83c:	0200b86c 	andhi	r8,zero,737
 200b840:	0200b86c 	andhi	r8,zero,737
 200b844:	0200b86c 	andhi	r8,zero,737
 200b848:	0200bc44 	movi	r8,753
 200b84c:	8104b03a 	or	r2,r16,r4
 200b850:	10006a1e 	bne	r2,zero,200b9fc <__muldf3+0x2e0>
 200b854:	05400204 	movi	r21,8
 200b858:	0021883a 	mov	r16,zero
 200b85c:	0025883a 	mov	r18,zero
 200b860:	02800084 	movi	r10,2
 200b864:	003fcd06 	br	200b79c <__muldf3+0x80>
 200b868:	b039883a 	mov	fp,r22
 200b86c:	00800084 	movi	r2,2
 200b870:	50804e1e 	bne	r10,r2,200b9ac <__muldf3+0x290>
 200b874:	e4c0004c 	andi	r19,fp,1
 200b878:	0101ffc4 	movi	r4,2047
 200b87c:	0021883a 	mov	r16,zero
 200b880:	0025883a 	mov	r18,zero
 200b884:	2008953a 	slli	r4,r4,20
 200b888:	98c03fcc 	andi	r3,r19,255
 200b88c:	01400434 	movhi	r5,16
 200b890:	297fffc4 	addi	r5,r5,-1
 200b894:	180697fa 	slli	r3,r3,31
 200b898:	8160703a 	and	r16,r16,r5
 200b89c:	8120b03a 	or	r16,r16,r4
 200b8a0:	80c6b03a 	or	r3,r16,r3
 200b8a4:	9005883a 	mov	r2,r18
 200b8a8:	dfc00d17 	ldw	ra,52(sp)
 200b8ac:	df000c17 	ldw	fp,48(sp)
 200b8b0:	ddc00b17 	ldw	r23,44(sp)
 200b8b4:	dd800a17 	ldw	r22,40(sp)
 200b8b8:	dd400917 	ldw	r21,36(sp)
 200b8bc:	dd000817 	ldw	r20,32(sp)
 200b8c0:	dcc00717 	ldw	r19,28(sp)
 200b8c4:	dc800617 	ldw	r18,24(sp)
 200b8c8:	dc400517 	ldw	r17,20(sp)
 200b8cc:	dc000417 	ldw	r16,16(sp)
 200b8d0:	dec00e04 	addi	sp,sp,56
 200b8d4:	f800283a 	ret
 200b8d8:	8104b03a 	or	r2,r16,r4
 200b8dc:	10004226 	beq	r2,zero,200b9e8 <__muldf3+0x2cc>
 200b8e0:	8000f926 	beq	r16,zero,200bcc8 <__muldf3+0x5ac>
 200b8e4:	8009883a 	mov	r4,r16
 200b8e8:	d9800315 	stw	r6,12(sp)
 200b8ec:	d9c00015 	stw	r7,0(sp)
 200b8f0:	20005ac0 	call	20005ac <__clzsi2>
 200b8f4:	d9800317 	ldw	r6,12(sp)
 200b8f8:	d9c00017 	ldw	r7,0(sp)
 200b8fc:	1007883a 	mov	r3,r2
 200b900:	01000a04 	movi	r4,40
 200b904:	18bffe04 	addi	r2,r3,-8
 200b908:	20c9c83a 	sub	r4,r4,r3
 200b90c:	80a0983a 	sll	r16,r16,r2
 200b910:	8908d83a 	srl	r4,r17,r4
 200b914:	88a4983a 	sll	r18,r17,r2
 200b918:	2420b03a 	or	r16,r4,r16
 200b91c:	017f0344 	movi	r5,-1011
 200b920:	28e9c83a 	sub	r20,r5,r3
 200b924:	002b883a 	mov	r21,zero
 200b928:	0015883a 	mov	r10,zero
 200b92c:	003f9b06 	br	200b79c <__muldf3+0x80>
 200b930:	8984b03a 	or	r2,r17,r6
 200b934:	10002a1e 	bne	r2,zero,200b9e0 <__muldf3+0x2c4>
 200b938:	0023883a 	mov	r17,zero
 200b93c:	002f883a 	mov	r23,zero
 200b940:	02400084 	movi	r9,2
 200b944:	003fa706 	br	200b7e4 <__muldf3+0xc8>
 200b948:	8984b03a 	or	r2,r17,r6
 200b94c:	10002026 	beq	r2,zero,200b9d0 <__muldf3+0x2b4>
 200b950:	8800cc26 	beq	r17,zero,200bc84 <__muldf3+0x568>
 200b954:	8809883a 	mov	r4,r17
 200b958:	d8c00215 	stw	r3,8(sp)
 200b95c:	d9800315 	stw	r6,12(sp)
 200b960:	da800015 	stw	r10,0(sp)
 200b964:	dac00115 	stw	r11,4(sp)
 200b968:	20005ac0 	call	20005ac <__clzsi2>
 200b96c:	d8c00217 	ldw	r3,8(sp)
 200b970:	d9800317 	ldw	r6,12(sp)
 200b974:	da800017 	ldw	r10,0(sp)
 200b978:	dac00117 	ldw	r11,4(sp)
 200b97c:	1009883a 	mov	r4,r2
 200b980:	01400a04 	movi	r5,40
 200b984:	25fffe04 	addi	r23,r4,-8
 200b988:	290bc83a 	sub	r5,r5,r4
 200b98c:	8dd0983a 	sll	r8,r17,r23
 200b990:	314ad83a 	srl	r5,r6,r5
 200b994:	35ee983a 	sll	r23,r6,r23
 200b998:	2a22b03a 	or	r17,r5,r8
 200b99c:	017f0344 	movi	r5,-1011
 200b9a0:	290bc83a 	sub	r5,r5,r4
 200b9a4:	0013883a 	mov	r9,zero
 200b9a8:	003f8e06 	br	200b7e4 <__muldf3+0xc8>
 200b9ac:	008000c4 	movi	r2,3
 200b9b0:	50811d26 	beq	r10,r2,200be28 <__muldf3+0x70c>
 200b9b4:	00800044 	movi	r2,1
 200b9b8:	5080e01e 	bne	r10,r2,200bd3c <__muldf3+0x620>
 200b9bc:	e0a6703a 	and	r19,fp,r2
 200b9c0:	0009883a 	mov	r4,zero
 200b9c4:	0021883a 	mov	r16,zero
 200b9c8:	0025883a 	mov	r18,zero
 200b9cc:	003fad06 	br	200b884 <__muldf3+0x168>
 200b9d0:	0023883a 	mov	r17,zero
 200b9d4:	002f883a 	mov	r23,zero
 200b9d8:	02400044 	movi	r9,1
 200b9dc:	003f8106 	br	200b7e4 <__muldf3+0xc8>
 200b9e0:	024000c4 	movi	r9,3
 200b9e4:	003f7f06 	br	200b7e4 <__muldf3+0xc8>
 200b9e8:	05400104 	movi	r21,4
 200b9ec:	0021883a 	mov	r16,zero
 200b9f0:	0025883a 	mov	r18,zero
 200b9f4:	02800044 	movi	r10,1
 200b9f8:	003f6806 	br	200b79c <__muldf3+0x80>
 200b9fc:	05400304 	movi	r21,12
 200ba00:	028000c4 	movi	r10,3
 200ba04:	003f6506 	br	200b79c <__muldf3+0x80>
 200ba08:	04000434 	movhi	r16,16
 200ba0c:	0027883a 	mov	r19,zero
 200ba10:	843fffc4 	addi	r16,r16,-1
 200ba14:	04bfffc4 	movi	r18,-1
 200ba18:	0101ffc4 	movi	r4,2047
 200ba1c:	003f9906 	br	200b884 <__muldf3+0x168>
 200ba20:	8821883a 	mov	r16,r17
 200ba24:	b825883a 	mov	r18,r23
 200ba28:	5839883a 	mov	fp,r11
 200ba2c:	4815883a 	mov	r10,r9
 200ba30:	003f8e06 	br	200b86c <__muldf3+0x150>
 200ba34:	8821883a 	mov	r16,r17
 200ba38:	b825883a 	mov	r18,r23
 200ba3c:	b039883a 	mov	fp,r22
 200ba40:	4815883a 	mov	r10,r9
 200ba44:	003f8906 	br	200b86c <__muldf3+0x150>
 200ba48:	b80cd43a 	srli	r6,r23,16
 200ba4c:	9006d43a 	srli	r3,r18,16
 200ba50:	90bfffcc 	andi	r2,r18,65535
 200ba54:	bdffffcc 	andi	r23,r23,65535
 200ba58:	b891383a 	mul	r8,r23,r2
 200ba5c:	b8c9383a 	mul	r4,r23,r3
 200ba60:	309b383a 	mul	r13,r6,r2
 200ba64:	400ed43a 	srli	r7,r8,16
 200ba68:	30df383a 	mul	r15,r6,r3
 200ba6c:	235b883a 	add	r13,r4,r13
 200ba70:	69db883a 	add	r13,r13,r7
 200ba74:	6900022e 	bgeu	r13,r4,200ba80 <__muldf3+0x364>
 200ba78:	01000074 	movhi	r4,1
 200ba7c:	791f883a 	add	r15,r15,r4
 200ba80:	8828d43a 	srli	r20,r17,16
 200ba84:	8c7fffcc 	andi	r17,r17,65535
 200ba88:	888f383a 	mul	r7,r17,r2
 200ba8c:	88d3383a 	mul	r9,r17,r3
 200ba90:	a0a5383a 	mul	r18,r20,r2
 200ba94:	3816d43a 	srli	r11,r7,16
 200ba98:	6814943a 	slli	r10,r13,16
 200ba9c:	4ca5883a 	add	r18,r9,r18
 200baa0:	423fffcc 	andi	r8,r8,65535
 200baa4:	92e5883a 	add	r18,r18,r11
 200baa8:	6808d43a 	srli	r4,r13,16
 200baac:	5215883a 	add	r10,r10,r8
 200bab0:	a0c7383a 	mul	r3,r20,r3
 200bab4:	9240022e 	bgeu	r18,r9,200bac0 <__muldf3+0x3a4>
 200bab8:	00800074 	movhi	r2,1
 200babc:	1887883a 	add	r3,r3,r2
 200bac0:	802ad43a 	srli	r21,r16,16
 200bac4:	80bfffcc 	andi	r2,r16,65535
 200bac8:	b893383a 	mul	r9,r23,r2
 200bacc:	3091383a 	mul	r8,r6,r2
 200bad0:	bd6f383a 	mul	r23,r23,r21
 200bad4:	9026943a 	slli	r19,r18,16
 200bad8:	481ad43a 	srli	r13,r9,16
 200badc:	9024d43a 	srli	r18,r18,16
 200bae0:	39ffffcc 	andi	r7,r7,65535
 200bae4:	ba11883a 	add	r8,r23,r8
 200bae8:	99e7883a 	add	r19,r19,r7
 200baec:	4351883a 	add	r8,r8,r13
 200baf0:	1c97883a 	add	r11,r3,r18
 200baf4:	354d383a 	mul	r6,r6,r21
 200baf8:	9925883a 	add	r18,r19,r4
 200bafc:	45c0022e 	bgeu	r8,r23,200bb08 <__muldf3+0x3ec>
 200bb00:	00c00074 	movhi	r3,1
 200bb04:	30cd883a 	add	r6,r6,r3
 200bb08:	8889383a 	mul	r4,r17,r2
 200bb0c:	8d63383a 	mul	r17,r17,r21
 200bb10:	a085383a 	mul	r2,r20,r2
 200bb14:	200ed43a 	srli	r7,r4,16
 200bb18:	401cd43a 	srli	r14,r8,16
 200bb1c:	401a943a 	slli	r13,r8,16
 200bb20:	8885883a 	add	r2,r17,r2
 200bb24:	4a3fffcc 	andi	r8,r9,65535
 200bb28:	11c5883a 	add	r2,r2,r7
 200bb2c:	339d883a 	add	r14,r6,r14
 200bb30:	6a11883a 	add	r8,r13,r8
 200bb34:	a561383a 	mul	r16,r20,r21
 200bb38:	1440022e 	bgeu	r2,r17,200bb44 <__muldf3+0x428>
 200bb3c:	00c00074 	movhi	r3,1
 200bb40:	80e1883a 	add	r16,r16,r3
 200bb44:	1006943a 	slli	r3,r2,16
 200bb48:	213fffcc 	andi	r4,r4,65535
 200bb4c:	93db883a 	add	r13,r18,r15
 200bb50:	1909883a 	add	r4,r3,r4
 200bb54:	22c7883a 	add	r3,r4,r11
 200bb58:	6cd3803a 	cmpltu	r9,r13,r19
 200bb5c:	6a09883a 	add	r4,r13,r8
 200bb60:	1a5b883a 	add	r13,r3,r9
 200bb64:	2211803a 	cmpltu	r8,r4,r8
 200bb68:	734d883a 	add	r6,r14,r13
 200bb6c:	100ed43a 	srli	r7,r2,16
 200bb70:	6a53803a 	cmpltu	r9,r13,r9
 200bb74:	3205883a 	add	r2,r6,r8
 200bb78:	1ac7803a 	cmpltu	r3,r3,r11
 200bb7c:	1211803a 	cmpltu	r8,r2,r8
 200bb80:	48c6b03a 	or	r3,r9,r3
 200bb84:	338d803a 	cmpltu	r6,r6,r14
 200bb88:	19c7883a 	add	r3,r3,r7
 200bb8c:	418cb03a 	or	r6,r8,r6
 200bb90:	1987883a 	add	r3,r3,r6
 200bb94:	2024927a 	slli	r18,r4,9
 200bb98:	1c07883a 	add	r3,r3,r16
 200bb9c:	1806927a 	slli	r3,r3,9
 200bba0:	1020d5fa 	srli	r16,r2,23
 200bba4:	2008d5fa 	srli	r4,r4,23
 200bba8:	9294b03a 	or	r10,r18,r10
 200bbac:	1004927a 	slli	r2,r2,9
 200bbb0:	5024c03a 	cmpne	r18,r10,zero
 200bbb4:	1c20b03a 	or	r16,r3,r16
 200bbb8:	9108b03a 	or	r4,r18,r4
 200bbbc:	80c0402c 	andhi	r3,r16,256
 200bbc0:	20a4b03a 	or	r18,r4,r2
 200bbc4:	18000726 	beq	r3,zero,200bbe4 <__muldf3+0x4c8>
 200bbc8:	9006d07a 	srli	r3,r18,1
 200bbcc:	800897fa 	slli	r4,r16,31
 200bbd0:	9080004c 	andi	r2,r18,1
 200bbd4:	8020d07a 	srli	r16,r16,1
 200bbd8:	10c4b03a 	or	r2,r2,r3
 200bbdc:	1124b03a 	or	r18,r2,r4
 200bbe0:	600b883a 	mov	r5,r12
 200bbe4:	2900ffc4 	addi	r4,r5,1023
 200bbe8:	01004b0e 	bge	zero,r4,200bd18 <__muldf3+0x5fc>
 200bbec:	908001cc 	andi	r2,r18,7
 200bbf0:	10000726 	beq	r2,zero,200bc10 <__muldf3+0x4f4>
 200bbf4:	90c003cc 	andi	r3,r18,15
 200bbf8:	00800104 	movi	r2,4
 200bbfc:	18800426 	beq	r3,r2,200bc10 <__muldf3+0x4f4>
 200bc00:	9087883a 	add	r3,r18,r2
 200bc04:	1c85803a 	cmpltu	r2,r3,r18
 200bc08:	80a1883a 	add	r16,r16,r2
 200bc0c:	1825883a 	mov	r18,r3
 200bc10:	8080402c 	andhi	r2,r16,256
 200bc14:	10000426 	beq	r2,zero,200bc28 <__muldf3+0x50c>
 200bc18:	00bfc034 	movhi	r2,65280
 200bc1c:	10bfffc4 	addi	r2,r2,-1
 200bc20:	29010004 	addi	r4,r5,1024
 200bc24:	80a0703a 	and	r16,r16,r2
 200bc28:	0081ff84 	movi	r2,2046
 200bc2c:	1100320e 	bge	r2,r4,200bcf8 <__muldf3+0x5dc>
 200bc30:	b4c0004c 	andi	r19,r22,1
 200bc34:	0101ffc4 	movi	r4,2047
 200bc38:	0021883a 	mov	r16,zero
 200bc3c:	0025883a 	mov	r18,zero
 200bc40:	003f1006 	br	200b884 <__muldf3+0x168>
 200bc44:	8080022c 	andhi	r2,r16,8
 200bc48:	10000926 	beq	r2,zero,200bc70 <__muldf3+0x554>
 200bc4c:	8880022c 	andhi	r2,r17,8
 200bc50:	1000071e 	bne	r2,zero,200bc70 <__muldf3+0x554>
 200bc54:	00800434 	movhi	r2,16
 200bc58:	8c000234 	orhi	r16,r17,8
 200bc5c:	10bfffc4 	addi	r2,r2,-1
 200bc60:	1827883a 	mov	r19,r3
 200bc64:	80a0703a 	and	r16,r16,r2
 200bc68:	b825883a 	mov	r18,r23
 200bc6c:	003f6a06 	br	200ba18 <__muldf3+0x2fc>
 200bc70:	00800434 	movhi	r2,16
 200bc74:	84000234 	orhi	r16,r16,8
 200bc78:	10bfffc4 	addi	r2,r2,-1
 200bc7c:	80a0703a 	and	r16,r16,r2
 200bc80:	003f6506 	br	200ba18 <__muldf3+0x2fc>
 200bc84:	3009883a 	mov	r4,r6
 200bc88:	d8c00215 	stw	r3,8(sp)
 200bc8c:	d9800315 	stw	r6,12(sp)
 200bc90:	da800015 	stw	r10,0(sp)
 200bc94:	dac00115 	stw	r11,4(sp)
 200bc98:	20005ac0 	call	20005ac <__clzsi2>
 200bc9c:	11000804 	addi	r4,r2,32
 200bca0:	014009c4 	movi	r5,39
 200bca4:	d8c00217 	ldw	r3,8(sp)
 200bca8:	d9800317 	ldw	r6,12(sp)
 200bcac:	da800017 	ldw	r10,0(sp)
 200bcb0:	dac00117 	ldw	r11,4(sp)
 200bcb4:	293f320e 	bge	r5,r4,200b980 <__muldf3+0x264>
 200bcb8:	10bffe04 	addi	r2,r2,-8
 200bcbc:	b8a2983a 	sll	r17,r23,r2
 200bcc0:	002f883a 	mov	r23,zero
 200bcc4:	003f3506 	br	200b99c <__muldf3+0x280>
 200bcc8:	d9800315 	stw	r6,12(sp)
 200bccc:	d9c00015 	stw	r7,0(sp)
 200bcd0:	20005ac0 	call	20005ac <__clzsi2>
 200bcd4:	10c00804 	addi	r3,r2,32
 200bcd8:	010009c4 	movi	r4,39
 200bcdc:	d9800317 	ldw	r6,12(sp)
 200bce0:	d9c00017 	ldw	r7,0(sp)
 200bce4:	20ff060e 	bge	r4,r3,200b900 <__muldf3+0x1e4>
 200bce8:	10bffe04 	addi	r2,r2,-8
 200bcec:	88a0983a 	sll	r16,r17,r2
 200bcf0:	0025883a 	mov	r18,zero
 200bcf4:	003f0906 	br	200b91c <__muldf3+0x200>
 200bcf8:	9004d0fa 	srli	r2,r18,3
 200bcfc:	8024977a 	slli	r18,r16,29
 200bd00:	8020927a 	slli	r16,r16,9
 200bd04:	2101ffcc 	andi	r4,r4,2047
 200bd08:	90a4b03a 	or	r18,r18,r2
 200bd0c:	8020d33a 	srli	r16,r16,12
 200bd10:	b4c0004c 	andi	r19,r22,1
 200bd14:	003edb06 	br	200b884 <__muldf3+0x168>
 200bd18:	00ff0084 	movi	r3,-1022
 200bd1c:	1947c83a 	sub	r3,r3,r5
 200bd20:	00800e04 	movi	r2,56
 200bd24:	10c0080e 	bge	r2,r3,200bd48 <__muldf3+0x62c>
 200bd28:	b4c0004c 	andi	r19,r22,1
 200bd2c:	0009883a 	mov	r4,zero
 200bd30:	0021883a 	mov	r16,zero
 200bd34:	0025883a 	mov	r18,zero
 200bd38:	003ed206 	br	200b884 <__muldf3+0x168>
 200bd3c:	600b883a 	mov	r5,r12
 200bd40:	e02d883a 	mov	r22,fp
 200bd44:	003fa706 	br	200bbe4 <__muldf3+0x4c8>
 200bd48:	008007c4 	movi	r2,31
 200bd4c:	10c01816 	blt	r2,r3,200bdb0 <__muldf3+0x694>
 200bd50:	29410784 	addi	r5,r5,1054
 200bd54:	8144983a 	sll	r2,r16,r5
 200bd58:	90c8d83a 	srl	r4,r18,r3
 200bd5c:	914a983a 	sll	r5,r18,r5
 200bd60:	80c6d83a 	srl	r3,r16,r3
 200bd64:	2088b03a 	or	r4,r4,r2
 200bd68:	2804c03a 	cmpne	r2,r5,zero
 200bd6c:	2084b03a 	or	r2,r4,r2
 200bd70:	110001cc 	andi	r4,r2,7
 200bd74:	20000726 	beq	r4,zero,200bd94 <__muldf3+0x678>
 200bd78:	114003cc 	andi	r5,r2,15
 200bd7c:	01000104 	movi	r4,4
 200bd80:	29000426 	beq	r5,r4,200bd94 <__muldf3+0x678>
 200bd84:	11000104 	addi	r4,r2,4
 200bd88:	2085803a 	cmpltu	r2,r4,r2
 200bd8c:	1887883a 	add	r3,r3,r2
 200bd90:	2005883a 	mov	r2,r4
 200bd94:	1900202c 	andhi	r4,r3,128
 200bd98:	20001826 	beq	r4,zero,200bdfc <__muldf3+0x6e0>
 200bd9c:	b4c0004c 	andi	r19,r22,1
 200bda0:	01000044 	movi	r4,1
 200bda4:	0021883a 	mov	r16,zero
 200bda8:	0025883a 	mov	r18,zero
 200bdac:	003eb506 	br	200b884 <__muldf3+0x168>
 200bdb0:	00bef884 	movi	r2,-1054
 200bdb4:	1145c83a 	sub	r2,r2,r5
 200bdb8:	8088d83a 	srl	r4,r16,r2
 200bdbc:	00800804 	movi	r2,32
 200bdc0:	18801726 	beq	r3,r2,200be20 <__muldf3+0x704>
 200bdc4:	28810f84 	addi	r2,r5,1086
 200bdc8:	8084983a 	sll	r2,r16,r2
 200bdcc:	1484b03a 	or	r2,r2,r18
 200bdd0:	1004c03a 	cmpne	r2,r2,zero
 200bdd4:	1104b03a 	or	r2,r2,r4
 200bdd8:	10c001cc 	andi	r3,r2,7
 200bddc:	18000b1e 	bne	r3,zero,200be0c <__muldf3+0x6f0>
 200bde0:	0021883a 	mov	r16,zero
 200bde4:	1004d0fa 	srli	r2,r2,3
 200bde8:	b4c0004c 	andi	r19,r22,1
 200bdec:	0009883a 	mov	r4,zero
 200bdf0:	10e4b03a 	or	r18,r2,r3
 200bdf4:	003ea306 	br	200b884 <__muldf3+0x168>
 200bdf8:	0007883a 	mov	r3,zero
 200bdfc:	1820927a 	slli	r16,r3,9
 200be00:	1806977a 	slli	r3,r3,29
 200be04:	8020d33a 	srli	r16,r16,12
 200be08:	003ff606 	br	200bde4 <__muldf3+0x6c8>
 200be0c:	110003cc 	andi	r4,r2,15
 200be10:	00c00104 	movi	r3,4
 200be14:	20fff826 	beq	r4,r3,200bdf8 <__muldf3+0x6dc>
 200be18:	0007883a 	mov	r3,zero
 200be1c:	003fd906 	br	200bd84 <__muldf3+0x668>
 200be20:	0005883a 	mov	r2,zero
 200be24:	003fe906 	br	200bdcc <__muldf3+0x6b0>
 200be28:	00800434 	movhi	r2,16
 200be2c:	84000234 	orhi	r16,r16,8
 200be30:	10bfffc4 	addi	r2,r2,-1
 200be34:	e4c0004c 	andi	r19,fp,1
 200be38:	80a0703a 	and	r16,r16,r2
 200be3c:	003ef606 	br	200ba18 <__muldf3+0x2fc>

0200be40 <__subdf3>:
 200be40:	00c00434 	movhi	r3,16
 200be44:	18ffffc4 	addi	r3,r3,-1
 200be48:	defffb04 	addi	sp,sp,-20
 200be4c:	28d2703a 	and	r9,r5,r3
 200be50:	3814d53a 	srli	r10,r7,20
 200be54:	38c6703a 	and	r3,r7,r3
 200be58:	3004d77a 	srli	r2,r6,29
 200be5c:	dc800215 	stw	r18,8(sp)
 200be60:	dc000015 	stw	r16,0(sp)
 200be64:	2824d7fa 	srli	r18,r5,31
 200be68:	2820d53a 	srli	r16,r5,20
 200be6c:	481290fa 	slli	r9,r9,3
 200be70:	200ad77a 	srli	r5,r4,29
 200be74:	180690fa 	slli	r3,r3,3
 200be78:	dc400115 	stw	r17,4(sp)
 200be7c:	dfc00415 	stw	ra,16(sp)
 200be80:	202290fa 	slli	r17,r4,3
 200be84:	dcc00315 	stw	r19,12(sp)
 200be88:	5281ffcc 	andi	r10,r10,2047
 200be8c:	0101ffc4 	movi	r4,2047
 200be90:	9011883a 	mov	r8,r18
 200be94:	8401ffcc 	andi	r16,r16,2047
 200be98:	94803fcc 	andi	r18,r18,255
 200be9c:	494ab03a 	or	r5,r9,r5
 200bea0:	380ed7fa 	srli	r7,r7,31
 200bea4:	1886b03a 	or	r3,r3,r2
 200bea8:	300c90fa 	slli	r6,r6,3
 200beac:	51009026 	beq	r10,r4,200c0f0 <__subdf3+0x2b0>
 200beb0:	39c0005c 	xori	r7,r7,1
 200beb4:	8285c83a 	sub	r2,r16,r10
 200beb8:	91c06f26 	beq	r18,r7,200c078 <__subdf3+0x238>
 200bebc:	0080b10e 	bge	zero,r2,200c184 <__subdf3+0x344>
 200bec0:	50002a1e 	bne	r10,zero,200bf6c <__subdf3+0x12c>
 200bec4:	1988b03a 	or	r4,r3,r6
 200bec8:	2000941e 	bne	r4,zero,200c11c <__subdf3+0x2dc>
 200becc:	888001cc 	andi	r2,r17,7
 200bed0:	10005b26 	beq	r2,zero,200c040 <__subdf3+0x200>
 200bed4:	88c003cc 	andi	r3,r17,15
 200bed8:	00800104 	movi	r2,4
 200bedc:	18805826 	beq	r3,r2,200c040 <__subdf3+0x200>
 200bee0:	88c00104 	addi	r3,r17,4
 200bee4:	1c63803a 	cmpltu	r17,r3,r17
 200bee8:	2c4b883a 	add	r5,r5,r17
 200beec:	2880202c 	andhi	r2,r5,128
 200bef0:	9200004c 	andi	r8,r18,1
 200bef4:	1823883a 	mov	r17,r3
 200bef8:	10005426 	beq	r2,zero,200c04c <__subdf3+0x20c>
 200befc:	84000044 	addi	r16,r16,1
 200bf00:	0081ffc4 	movi	r2,2047
 200bf04:	8080bf26 	beq	r16,r2,200c204 <__subdf3+0x3c4>
 200bf08:	013fe034 	movhi	r4,65408
 200bf0c:	213fffc4 	addi	r4,r4,-1
 200bf10:	290a703a 	and	r5,r5,r4
 200bf14:	2804977a 	slli	r2,r5,29
 200bf18:	280a927a 	slli	r5,r5,9
 200bf1c:	8822d0fa 	srli	r17,r17,3
 200bf20:	8401ffcc 	andi	r16,r16,2047
 200bf24:	2808d33a 	srli	r4,r5,12
 200bf28:	1444b03a 	or	r2,r2,r17
 200bf2c:	8401ffcc 	andi	r16,r16,2047
 200bf30:	800a953a 	slli	r5,r16,20
 200bf34:	40c03fcc 	andi	r3,r8,255
 200bf38:	04000434 	movhi	r16,16
 200bf3c:	180697fa 	slli	r3,r3,31
 200bf40:	843fffc4 	addi	r16,r16,-1
 200bf44:	2420703a 	and	r16,r4,r16
 200bf48:	8160b03a 	or	r16,r16,r5
 200bf4c:	80c6b03a 	or	r3,r16,r3
 200bf50:	dfc00417 	ldw	ra,16(sp)
 200bf54:	dcc00317 	ldw	r19,12(sp)
 200bf58:	dc800217 	ldw	r18,8(sp)
 200bf5c:	dc400117 	ldw	r17,4(sp)
 200bf60:	dc000017 	ldw	r16,0(sp)
 200bf64:	dec00504 	addi	sp,sp,20
 200bf68:	f800283a 	ret
 200bf6c:	0101ffc4 	movi	r4,2047
 200bf70:	813fd626 	beq	r16,r4,200becc <__subdf3+0x8c>
 200bf74:	18c02034 	orhi	r3,r3,128
 200bf78:	01000e04 	movi	r4,56
 200bf7c:	2080a416 	blt	r4,r2,200c210 <__subdf3+0x3d0>
 200bf80:	010007c4 	movi	r4,31
 200bf84:	2080c716 	blt	r4,r2,200c2a4 <__subdf3+0x464>
 200bf88:	01000804 	movi	r4,32
 200bf8c:	2089c83a 	sub	r4,r4,r2
 200bf90:	1910983a 	sll	r8,r3,r4
 200bf94:	308ed83a 	srl	r7,r6,r2
 200bf98:	3108983a 	sll	r4,r6,r4
 200bf9c:	1884d83a 	srl	r2,r3,r2
 200bfa0:	41ccb03a 	or	r6,r8,r7
 200bfa4:	2008c03a 	cmpne	r4,r4,zero
 200bfa8:	310cb03a 	or	r6,r6,r4
 200bfac:	898dc83a 	sub	r6,r17,r6
 200bfb0:	89a3803a 	cmpltu	r17,r17,r6
 200bfb4:	288bc83a 	sub	r5,r5,r2
 200bfb8:	2c4bc83a 	sub	r5,r5,r17
 200bfbc:	3023883a 	mov	r17,r6
 200bfc0:	2880202c 	andhi	r2,r5,128
 200bfc4:	10006b26 	beq	r2,zero,200c174 <__subdf3+0x334>
 200bfc8:	04c02034 	movhi	r19,128
 200bfcc:	9cffffc4 	addi	r19,r19,-1
 200bfd0:	2ce6703a 	and	r19,r5,r19
 200bfd4:	98007c26 	beq	r19,zero,200c1c8 <__subdf3+0x388>
 200bfd8:	9809883a 	mov	r4,r19
 200bfdc:	20005ac0 	call	20005ac <__clzsi2>
 200bfe0:	10fffe04 	addi	r3,r2,-8
 200bfe4:	010007c4 	movi	r4,31
 200bfe8:	20c07d16 	blt	r4,r3,200c1e0 <__subdf3+0x3a0>
 200bfec:	01400a04 	movi	r5,40
 200bff0:	2885c83a 	sub	r2,r5,r2
 200bff4:	888ad83a 	srl	r5,r17,r2
 200bff8:	98e6983a 	sll	r19,r19,r3
 200bffc:	88e2983a 	sll	r17,r17,r3
 200c000:	2ce6b03a 	or	r19,r5,r19
 200c004:	1c007a16 	blt	r3,r16,200c1f0 <__subdf3+0x3b0>
 200c008:	1c21c83a 	sub	r16,r3,r16
 200c00c:	81400044 	addi	r5,r16,1
 200c010:	00c007c4 	movi	r3,31
 200c014:	19409616 	blt	r3,r5,200c270 <__subdf3+0x430>
 200c018:	1c21c83a 	sub	r16,r3,r16
 200c01c:	8c08983a 	sll	r4,r17,r16
 200c020:	8946d83a 	srl	r3,r17,r5
 200c024:	9c20983a 	sll	r16,r19,r16
 200c028:	2008c03a 	cmpne	r4,r4,zero
 200c02c:	994ad83a 	srl	r5,r19,r5
 200c030:	1c06b03a 	or	r3,r3,r16
 200c034:	1922b03a 	or	r17,r3,r4
 200c038:	0021883a 	mov	r16,zero
 200c03c:	003fa306 	br	200becc <__subdf3+0x8c>
 200c040:	2880202c 	andhi	r2,r5,128
 200c044:	9200004c 	andi	r8,r18,1
 200c048:	103fac1e 	bne	r2,zero,200befc <__subdf3+0xbc>
 200c04c:	2804977a 	slli	r2,r5,29
 200c050:	8822d0fa 	srli	r17,r17,3
 200c054:	00c1ffc4 	movi	r3,2047
 200c058:	280ad0fa 	srli	r5,r5,3
 200c05c:	1444b03a 	or	r2,r2,r17
 200c060:	80c02726 	beq	r16,r3,200c100 <__subdf3+0x2c0>
 200c064:	01000434 	movhi	r4,16
 200c068:	213fffc4 	addi	r4,r4,-1
 200c06c:	80e0703a 	and	r16,r16,r3
 200c070:	2908703a 	and	r4,r5,r4
 200c074:	003fad06 	br	200bf2c <__subdf3+0xec>
 200c078:	0080690e 	bge	zero,r2,200c220 <__subdf3+0x3e0>
 200c07c:	50002f26 	beq	r10,zero,200c13c <__subdf3+0x2fc>
 200c080:	0101ffc4 	movi	r4,2047
 200c084:	813f9126 	beq	r16,r4,200becc <__subdf3+0x8c>
 200c088:	18c02034 	orhi	r3,r3,128
 200c08c:	01000e04 	movi	r4,56
 200c090:	2080b00e 	bge	r4,r2,200c354 <__subdf3+0x514>
 200c094:	198cb03a 	or	r6,r3,r6
 200c098:	300ec03a 	cmpne	r7,r6,zero
 200c09c:	0005883a 	mov	r2,zero
 200c0a0:	3c4f883a 	add	r7,r7,r17
 200c0a4:	3c63803a 	cmpltu	r17,r7,r17
 200c0a8:	114b883a 	add	r5,r2,r5
 200c0ac:	2c4b883a 	add	r5,r5,r17
 200c0b0:	3823883a 	mov	r17,r7
 200c0b4:	2880202c 	andhi	r2,r5,128
 200c0b8:	10002e26 	beq	r2,zero,200c174 <__subdf3+0x334>
 200c0bc:	84000044 	addi	r16,r16,1
 200c0c0:	0081ffc4 	movi	r2,2047
 200c0c4:	8080de26 	beq	r16,r2,200c440 <__subdf3+0x600>
 200c0c8:	00bfe034 	movhi	r2,65408
 200c0cc:	10bfffc4 	addi	r2,r2,-1
 200c0d0:	288a703a 	and	r5,r5,r2
 200c0d4:	880cd07a 	srli	r6,r17,1
 200c0d8:	280897fa 	slli	r4,r5,31
 200c0dc:	88c0004c 	andi	r3,r17,1
 200c0e0:	30e2b03a 	or	r17,r6,r3
 200c0e4:	280ad07a 	srli	r5,r5,1
 200c0e8:	8922b03a 	or	r17,r17,r4
 200c0ec:	003f7706 	br	200becc <__subdf3+0x8c>
 200c0f0:	1984b03a 	or	r2,r3,r6
 200c0f4:	103f6e26 	beq	r2,zero,200beb0 <__subdf3+0x70>
 200c0f8:	39c03fcc 	andi	r7,r7,255
 200c0fc:	003f6d06 	br	200beb4 <__subdf3+0x74>
 200c100:	1146b03a 	or	r3,r2,r5
 200c104:	18003f26 	beq	r3,zero,200c204 <__subdf3+0x3c4>
 200c108:	00c00434 	movhi	r3,16
 200c10c:	29000234 	orhi	r4,r5,8
 200c110:	18ffffc4 	addi	r3,r3,-1
 200c114:	20c8703a 	and	r4,r4,r3
 200c118:	003f8406 	br	200bf2c <__subdf3+0xec>
 200c11c:	10bfffc4 	addi	r2,r2,-1
 200c120:	1000501e 	bne	r2,zero,200c264 <__subdf3+0x424>
 200c124:	898fc83a 	sub	r7,r17,r6
 200c128:	89e3803a 	cmpltu	r17,r17,r7
 200c12c:	28cbc83a 	sub	r5,r5,r3
 200c130:	2c4bc83a 	sub	r5,r5,r17
 200c134:	3823883a 	mov	r17,r7
 200c138:	003fa106 	br	200bfc0 <__subdf3+0x180>
 200c13c:	1988b03a 	or	r4,r3,r6
 200c140:	203f6226 	beq	r4,zero,200becc <__subdf3+0x8c>
 200c144:	10bfffc4 	addi	r2,r2,-1
 200c148:	10009b1e 	bne	r2,zero,200c3b8 <__subdf3+0x578>
 200c14c:	344d883a 	add	r6,r6,r17
 200c150:	3463803a 	cmpltu	r17,r6,r17
 200c154:	194b883a 	add	r5,r3,r5
 200c158:	2c4b883a 	add	r5,r5,r17
 200c15c:	3023883a 	mov	r17,r6
 200c160:	003fd406 	br	200c0b4 <__subdf3+0x274>
 200c164:	1106b03a 	or	r3,r2,r4
 200c168:	1800b426 	beq	r3,zero,200c43c <__subdf3+0x5fc>
 200c16c:	100b883a 	mov	r5,r2
 200c170:	2023883a 	mov	r17,r4
 200c174:	888001cc 	andi	r2,r17,7
 200c178:	103f561e 	bne	r2,zero,200bed4 <__subdf3+0x94>
 200c17c:	9200004c 	andi	r8,r18,1
 200c180:	003fb206 	br	200c04c <__subdf3+0x20c>
 200c184:	1000531e 	bne	r2,zero,200c2d4 <__subdf3+0x494>
 200c188:	80800044 	addi	r2,r16,1
 200c18c:	1081ffcc 	andi	r2,r2,2047
 200c190:	01000044 	movi	r4,1
 200c194:	2080a00e 	bge	r4,r2,200c418 <__subdf3+0x5d8>
 200c198:	8985c83a 	sub	r2,r17,r6
 200c19c:	8889803a 	cmpltu	r4,r17,r2
 200c1a0:	28e7c83a 	sub	r19,r5,r3
 200c1a4:	9927c83a 	sub	r19,r19,r4
 200c1a8:	9900202c 	andhi	r4,r19,128
 200c1ac:	20006226 	beq	r4,zero,200c338 <__subdf3+0x4f8>
 200c1b0:	3463c83a 	sub	r17,r6,r17
 200c1b4:	194bc83a 	sub	r5,r3,r5
 200c1b8:	344d803a 	cmpltu	r6,r6,r17
 200c1bc:	29a7c83a 	sub	r19,r5,r6
 200c1c0:	3825883a 	mov	r18,r7
 200c1c4:	983f841e 	bne	r19,zero,200bfd8 <__subdf3+0x198>
 200c1c8:	8809883a 	mov	r4,r17
 200c1cc:	20005ac0 	call	20005ac <__clzsi2>
 200c1d0:	10800804 	addi	r2,r2,32
 200c1d4:	10fffe04 	addi	r3,r2,-8
 200c1d8:	010007c4 	movi	r4,31
 200c1dc:	20ff830e 	bge	r4,r3,200bfec <__subdf3+0x1ac>
 200c1e0:	14fff604 	addi	r19,r2,-40
 200c1e4:	8ce6983a 	sll	r19,r17,r19
 200c1e8:	0023883a 	mov	r17,zero
 200c1ec:	1c3f860e 	bge	r3,r16,200c008 <__subdf3+0x1c8>
 200c1f0:	017fe034 	movhi	r5,65408
 200c1f4:	297fffc4 	addi	r5,r5,-1
 200c1f8:	80e1c83a 	sub	r16,r16,r3
 200c1fc:	994a703a 	and	r5,r19,r5
 200c200:	003f3206 	br	200becc <__subdf3+0x8c>
 200c204:	0009883a 	mov	r4,zero
 200c208:	0005883a 	mov	r2,zero
 200c20c:	003f4706 	br	200bf2c <__subdf3+0xec>
 200c210:	198cb03a 	or	r6,r3,r6
 200c214:	300cc03a 	cmpne	r6,r6,zero
 200c218:	0005883a 	mov	r2,zero
 200c21c:	003f6306 	br	200bfac <__subdf3+0x16c>
 200c220:	10009d1e 	bne	r2,zero,200c498 <__subdf3+0x658>
 200c224:	81c00044 	addi	r7,r16,1
 200c228:	3881ffcc 	andi	r2,r7,2047
 200c22c:	02400044 	movi	r9,1
 200c230:	4880680e 	bge	r9,r2,200c3d4 <__subdf3+0x594>
 200c234:	0081ffc4 	movi	r2,2047
 200c238:	3880ae26 	beq	r7,r2,200c4f4 <__subdf3+0x6b4>
 200c23c:	344d883a 	add	r6,r6,r17
 200c240:	3463803a 	cmpltu	r17,r6,r17
 200c244:	194b883a 	add	r5,r3,r5
 200c248:	2c4b883a 	add	r5,r5,r17
 200c24c:	282297fa 	slli	r17,r5,31
 200c250:	300cd07a 	srli	r6,r6,1
 200c254:	280ad07a 	srli	r5,r5,1
 200c258:	3821883a 	mov	r16,r7
 200c25c:	89a2b03a 	or	r17,r17,r6
 200c260:	003f1a06 	br	200becc <__subdf3+0x8c>
 200c264:	0101ffc4 	movi	r4,2047
 200c268:	813f431e 	bne	r16,r4,200bf78 <__subdf3+0x138>
 200c26c:	003f1706 	br	200becc <__subdf3+0x8c>
 200c270:	80bff844 	addi	r2,r16,-31
 200c274:	00c00804 	movi	r3,32
 200c278:	9884d83a 	srl	r2,r19,r2
 200c27c:	28c05126 	beq	r5,r3,200c3c4 <__subdf3+0x584>
 200c280:	00c00fc4 	movi	r3,63
 200c284:	1c21c83a 	sub	r16,r3,r16
 200c288:	9c26983a 	sll	r19,r19,r16
 200c28c:	9c62b03a 	or	r17,r19,r17
 200c290:	8822c03a 	cmpne	r17,r17,zero
 200c294:	88a2b03a 	or	r17,r17,r2
 200c298:	000b883a 	mov	r5,zero
 200c29c:	0021883a 	mov	r16,zero
 200c2a0:	003fb406 	br	200c174 <__subdf3+0x334>
 200c2a4:	113ff804 	addi	r4,r2,-32
 200c2a8:	01c00804 	movi	r7,32
 200c2ac:	1908d83a 	srl	r4,r3,r4
 200c2b0:	11c04626 	beq	r2,r7,200c3cc <__subdf3+0x58c>
 200c2b4:	01c01004 	movi	r7,64
 200c2b8:	3885c83a 	sub	r2,r7,r2
 200c2bc:	1884983a 	sll	r2,r3,r2
 200c2c0:	118cb03a 	or	r6,r2,r6
 200c2c4:	300cc03a 	cmpne	r6,r6,zero
 200c2c8:	310cb03a 	or	r6,r6,r4
 200c2cc:	0005883a 	mov	r2,zero
 200c2d0:	003f3606 	br	200bfac <__subdf3+0x16c>
 200c2d4:	80002b26 	beq	r16,zero,200c384 <__subdf3+0x544>
 200c2d8:	0101ffc4 	movi	r4,2047
 200c2dc:	51006926 	beq	r10,r4,200c484 <__subdf3+0x644>
 200c2e0:	0085c83a 	sub	r2,zero,r2
 200c2e4:	29402034 	orhi	r5,r5,128
 200c2e8:	01000e04 	movi	r4,56
 200c2ec:	20807d16 	blt	r4,r2,200c4e4 <__subdf3+0x6a4>
 200c2f0:	010007c4 	movi	r4,31
 200c2f4:	2080d916 	blt	r4,r2,200c65c <__subdf3+0x81c>
 200c2f8:	01000804 	movi	r4,32
 200c2fc:	2089c83a 	sub	r4,r4,r2
 200c300:	2912983a 	sll	r9,r5,r4
 200c304:	8890d83a 	srl	r8,r17,r2
 200c308:	8908983a 	sll	r4,r17,r4
 200c30c:	2884d83a 	srl	r2,r5,r2
 200c310:	4a22b03a 	or	r17,r9,r8
 200c314:	2008c03a 	cmpne	r4,r4,zero
 200c318:	8922b03a 	or	r17,r17,r4
 200c31c:	3463c83a 	sub	r17,r6,r17
 200c320:	1885c83a 	sub	r2,r3,r2
 200c324:	344d803a 	cmpltu	r6,r6,r17
 200c328:	118bc83a 	sub	r5,r2,r6
 200c32c:	5021883a 	mov	r16,r10
 200c330:	3825883a 	mov	r18,r7
 200c334:	003f2206 	br	200bfc0 <__subdf3+0x180>
 200c338:	9886b03a 	or	r3,r19,r2
 200c33c:	18001c1e 	bne	r3,zero,200c3b0 <__subdf3+0x570>
 200c340:	0011883a 	mov	r8,zero
 200c344:	000b883a 	mov	r5,zero
 200c348:	0023883a 	mov	r17,zero
 200c34c:	0021883a 	mov	r16,zero
 200c350:	003f3e06 	br	200c04c <__subdf3+0x20c>
 200c354:	010007c4 	movi	r4,31
 200c358:	20803c16 	blt	r4,r2,200c44c <__subdf3+0x60c>
 200c35c:	01000804 	movi	r4,32
 200c360:	2089c83a 	sub	r4,r4,r2
 200c364:	1912983a 	sll	r9,r3,r4
 200c368:	308ed83a 	srl	r7,r6,r2
 200c36c:	3108983a 	sll	r4,r6,r4
 200c370:	1884d83a 	srl	r2,r3,r2
 200c374:	49ceb03a 	or	r7,r9,r7
 200c378:	2008c03a 	cmpne	r4,r4,zero
 200c37c:	390eb03a 	or	r7,r7,r4
 200c380:	003f4706 	br	200c0a0 <__subdf3+0x260>
 200c384:	2c48b03a 	or	r4,r5,r17
 200c388:	20003e26 	beq	r4,zero,200c484 <__subdf3+0x644>
 200c38c:	0084303a 	nor	r2,zero,r2
 200c390:	10003a1e 	bne	r2,zero,200c47c <__subdf3+0x63c>
 200c394:	3463c83a 	sub	r17,r6,r17
 200c398:	194bc83a 	sub	r5,r3,r5
 200c39c:	344d803a 	cmpltu	r6,r6,r17
 200c3a0:	298bc83a 	sub	r5,r5,r6
 200c3a4:	5021883a 	mov	r16,r10
 200c3a8:	3825883a 	mov	r18,r7
 200c3ac:	003f0406 	br	200bfc0 <__subdf3+0x180>
 200c3b0:	1023883a 	mov	r17,r2
 200c3b4:	003f0706 	br	200bfd4 <__subdf3+0x194>
 200c3b8:	0101ffc4 	movi	r4,2047
 200c3bc:	813f331e 	bne	r16,r4,200c08c <__subdf3+0x24c>
 200c3c0:	003ec206 	br	200becc <__subdf3+0x8c>
 200c3c4:	0027883a 	mov	r19,zero
 200c3c8:	003fb006 	br	200c28c <__subdf3+0x44c>
 200c3cc:	0005883a 	mov	r2,zero
 200c3d0:	003fbb06 	br	200c2c0 <__subdf3+0x480>
 200c3d4:	2c44b03a 	or	r2,r5,r17
 200c3d8:	80008b1e 	bne	r16,zero,200c608 <__subdf3+0x7c8>
 200c3dc:	1000b526 	beq	r2,zero,200c6b4 <__subdf3+0x874>
 200c3e0:	1984b03a 	or	r2,r3,r6
 200c3e4:	103eb926 	beq	r2,zero,200becc <__subdf3+0x8c>
 200c3e8:	3449883a 	add	r4,r6,r17
 200c3ec:	2463803a 	cmpltu	r17,r4,r17
 200c3f0:	194b883a 	add	r5,r3,r5
 200c3f4:	2c4b883a 	add	r5,r5,r17
 200c3f8:	2880202c 	andhi	r2,r5,128
 200c3fc:	2023883a 	mov	r17,r4
 200c400:	103f5c26 	beq	r2,zero,200c174 <__subdf3+0x334>
 200c404:	00bfe034 	movhi	r2,65408
 200c408:	10bfffc4 	addi	r2,r2,-1
 200c40c:	4821883a 	mov	r16,r9
 200c410:	288a703a 	and	r5,r5,r2
 200c414:	003ead06 	br	200becc <__subdf3+0x8c>
 200c418:	2c44b03a 	or	r2,r5,r17
 200c41c:	8000291e 	bne	r16,zero,200c4c4 <__subdf3+0x684>
 200c420:	10004f1e 	bne	r2,zero,200c560 <__subdf3+0x720>
 200c424:	1984b03a 	or	r2,r3,r6
 200c428:	10000426 	beq	r2,zero,200c43c <__subdf3+0x5fc>
 200c42c:	180b883a 	mov	r5,r3
 200c430:	3023883a 	mov	r17,r6
 200c434:	3825883a 	mov	r18,r7
 200c438:	003ea406 	br	200becc <__subdf3+0x8c>
 200c43c:	0011883a 	mov	r8,zero
 200c440:	000b883a 	mov	r5,zero
 200c444:	0023883a 	mov	r17,zero
 200c448:	003f0006 	br	200c04c <__subdf3+0x20c>
 200c44c:	11fff804 	addi	r7,r2,-32
 200c450:	19c8d83a 	srl	r4,r3,r7
 200c454:	01c00804 	movi	r7,32
 200c458:	11c07e26 	beq	r2,r7,200c654 <__subdf3+0x814>
 200c45c:	01c01004 	movi	r7,64
 200c460:	3885c83a 	sub	r2,r7,r2
 200c464:	1884983a 	sll	r2,r3,r2
 200c468:	118cb03a 	or	r6,r2,r6
 200c46c:	300ec03a 	cmpne	r7,r6,zero
 200c470:	390eb03a 	or	r7,r7,r4
 200c474:	0005883a 	mov	r2,zero
 200c478:	003f0906 	br	200c0a0 <__subdf3+0x260>
 200c47c:	0101ffc4 	movi	r4,2047
 200c480:	513f991e 	bne	r10,r4,200c2e8 <__subdf3+0x4a8>
 200c484:	180b883a 	mov	r5,r3
 200c488:	3023883a 	mov	r17,r6
 200c48c:	5021883a 	mov	r16,r10
 200c490:	3825883a 	mov	r18,r7
 200c494:	003e8d06 	br	200becc <__subdf3+0x8c>
 200c498:	80001a1e 	bne	r16,zero,200c504 <__subdf3+0x6c4>
 200c49c:	2c48b03a 	or	r4,r5,r17
 200c4a0:	20005526 	beq	r4,zero,200c5f8 <__subdf3+0x7b8>
 200c4a4:	0084303a 	nor	r2,zero,r2
 200c4a8:	1000511e 	bne	r2,zero,200c5f0 <__subdf3+0x7b0>
 200c4ac:	89a3883a 	add	r17,r17,r6
 200c4b0:	194b883a 	add	r5,r3,r5
 200c4b4:	898d803a 	cmpltu	r6,r17,r6
 200c4b8:	298b883a 	add	r5,r5,r6
 200c4bc:	5021883a 	mov	r16,r10
 200c4c0:	003efc06 	br	200c0b4 <__subdf3+0x274>
 200c4c4:	1000341e 	bne	r2,zero,200c598 <__subdf3+0x758>
 200c4c8:	1984b03a 	or	r2,r3,r6
 200c4cc:	10006f26 	beq	r2,zero,200c68c <__subdf3+0x84c>
 200c4d0:	180b883a 	mov	r5,r3
 200c4d4:	3023883a 	mov	r17,r6
 200c4d8:	3825883a 	mov	r18,r7
 200c4dc:	0401ffc4 	movi	r16,2047
 200c4e0:	003e7a06 	br	200becc <__subdf3+0x8c>
 200c4e4:	2c62b03a 	or	r17,r5,r17
 200c4e8:	8822c03a 	cmpne	r17,r17,zero
 200c4ec:	0005883a 	mov	r2,zero
 200c4f0:	003f8a06 	br	200c31c <__subdf3+0x4dc>
 200c4f4:	3821883a 	mov	r16,r7
 200c4f8:	000b883a 	mov	r5,zero
 200c4fc:	0023883a 	mov	r17,zero
 200c500:	003ed206 	br	200c04c <__subdf3+0x20c>
 200c504:	0101ffc4 	movi	r4,2047
 200c508:	51003b26 	beq	r10,r4,200c5f8 <__subdf3+0x7b8>
 200c50c:	0085c83a 	sub	r2,zero,r2
 200c510:	29402034 	orhi	r5,r5,128
 200c514:	01000e04 	movi	r4,56
 200c518:	20806216 	blt	r4,r2,200c6a4 <__subdf3+0x864>
 200c51c:	010007c4 	movi	r4,31
 200c520:	20806b16 	blt	r4,r2,200c6d0 <__subdf3+0x890>
 200c524:	01000804 	movi	r4,32
 200c528:	2089c83a 	sub	r4,r4,r2
 200c52c:	2912983a 	sll	r9,r5,r4
 200c530:	888ed83a 	srl	r7,r17,r2
 200c534:	8908983a 	sll	r4,r17,r4
 200c538:	2884d83a 	srl	r2,r5,r2
 200c53c:	49e2b03a 	or	r17,r9,r7
 200c540:	2008c03a 	cmpne	r4,r4,zero
 200c544:	8922b03a 	or	r17,r17,r4
 200c548:	89a3883a 	add	r17,r17,r6
 200c54c:	10c5883a 	add	r2,r2,r3
 200c550:	898d803a 	cmpltu	r6,r17,r6
 200c554:	118b883a 	add	r5,r2,r6
 200c558:	5021883a 	mov	r16,r10
 200c55c:	003ed506 	br	200c0b4 <__subdf3+0x274>
 200c560:	1984b03a 	or	r2,r3,r6
 200c564:	103e5926 	beq	r2,zero,200becc <__subdf3+0x8c>
 200c568:	8989c83a 	sub	r4,r17,r6
 200c56c:	8911803a 	cmpltu	r8,r17,r4
 200c570:	28c5c83a 	sub	r2,r5,r3
 200c574:	1205c83a 	sub	r2,r2,r8
 200c578:	1200202c 	andhi	r8,r2,128
 200c57c:	403ef926 	beq	r8,zero,200c164 <__subdf3+0x324>
 200c580:	3463c83a 	sub	r17,r6,r17
 200c584:	194bc83a 	sub	r5,r3,r5
 200c588:	344d803a 	cmpltu	r6,r6,r17
 200c58c:	298bc83a 	sub	r5,r5,r6
 200c590:	3825883a 	mov	r18,r7
 200c594:	003e4d06 	br	200becc <__subdf3+0x8c>
 200c598:	1984b03a 	or	r2,r3,r6
 200c59c:	10002b26 	beq	r2,zero,200c64c <__subdf3+0x80c>
 200c5a0:	2808d0fa 	srli	r4,r5,3
 200c5a4:	8822d0fa 	srli	r17,r17,3
 200c5a8:	280a977a 	slli	r5,r5,29
 200c5ac:	2080022c 	andhi	r2,r4,8
 200c5b0:	2c62b03a 	or	r17,r5,r17
 200c5b4:	10000826 	beq	r2,zero,200c5d8 <__subdf3+0x798>
 200c5b8:	1810d0fa 	srli	r8,r3,3
 200c5bc:	4080022c 	andhi	r2,r8,8
 200c5c0:	1000051e 	bne	r2,zero,200c5d8 <__subdf3+0x798>
 200c5c4:	300cd0fa 	srli	r6,r6,3
 200c5c8:	1804977a 	slli	r2,r3,29
 200c5cc:	4009883a 	mov	r4,r8
 200c5d0:	3825883a 	mov	r18,r7
 200c5d4:	11a2b03a 	or	r17,r2,r6
 200c5d8:	880ad77a 	srli	r5,r17,29
 200c5dc:	200890fa 	slli	r4,r4,3
 200c5e0:	882290fa 	slli	r17,r17,3
 200c5e4:	0401ffc4 	movi	r16,2047
 200c5e8:	290ab03a 	or	r5,r5,r4
 200c5ec:	003e3706 	br	200becc <__subdf3+0x8c>
 200c5f0:	0101ffc4 	movi	r4,2047
 200c5f4:	513fc71e 	bne	r10,r4,200c514 <__subdf3+0x6d4>
 200c5f8:	180b883a 	mov	r5,r3
 200c5fc:	3023883a 	mov	r17,r6
 200c600:	5021883a 	mov	r16,r10
 200c604:	003e3106 	br	200becc <__subdf3+0x8c>
 200c608:	10002d26 	beq	r2,zero,200c6c0 <__subdf3+0x880>
 200c60c:	1984b03a 	or	r2,r3,r6
 200c610:	10000e26 	beq	r2,zero,200c64c <__subdf3+0x80c>
 200c614:	2808d0fa 	srli	r4,r5,3
 200c618:	8822d0fa 	srli	r17,r17,3
 200c61c:	280a977a 	slli	r5,r5,29
 200c620:	2080022c 	andhi	r2,r4,8
 200c624:	2c62b03a 	or	r17,r5,r17
 200c628:	103feb26 	beq	r2,zero,200c5d8 <__subdf3+0x798>
 200c62c:	180ed0fa 	srli	r7,r3,3
 200c630:	3880022c 	andhi	r2,r7,8
 200c634:	103fe81e 	bne	r2,zero,200c5d8 <__subdf3+0x798>
 200c638:	300cd0fa 	srli	r6,r6,3
 200c63c:	1804977a 	slli	r2,r3,29
 200c640:	3809883a 	mov	r4,r7
 200c644:	11a2b03a 	or	r17,r2,r6
 200c648:	003fe306 	br	200c5d8 <__subdf3+0x798>
 200c64c:	0401ffc4 	movi	r16,2047
 200c650:	003e1e06 	br	200becc <__subdf3+0x8c>
 200c654:	0005883a 	mov	r2,zero
 200c658:	003f8306 	br	200c468 <__subdf3+0x628>
 200c65c:	113ff804 	addi	r4,r2,-32
 200c660:	02000804 	movi	r8,32
 200c664:	2908d83a 	srl	r4,r5,r4
 200c668:	12002526 	beq	r2,r8,200c700 <__subdf3+0x8c0>
 200c66c:	02001004 	movi	r8,64
 200c670:	4085c83a 	sub	r2,r8,r2
 200c674:	288a983a 	sll	r5,r5,r2
 200c678:	2c62b03a 	or	r17,r5,r17
 200c67c:	8822c03a 	cmpne	r17,r17,zero
 200c680:	8922b03a 	or	r17,r17,r4
 200c684:	0005883a 	mov	r2,zero
 200c688:	003f2406 	br	200c31c <__subdf3+0x4dc>
 200c68c:	01402034 	movhi	r5,128
 200c690:	0011883a 	mov	r8,zero
 200c694:	297fffc4 	addi	r5,r5,-1
 200c698:	047ffe04 	movi	r17,-8
 200c69c:	0401ffc4 	movi	r16,2047
 200c6a0:	003e6a06 	br	200c04c <__subdf3+0x20c>
 200c6a4:	2c62b03a 	or	r17,r5,r17
 200c6a8:	8822c03a 	cmpne	r17,r17,zero
 200c6ac:	0005883a 	mov	r2,zero
 200c6b0:	003fa506 	br	200c548 <__subdf3+0x708>
 200c6b4:	180b883a 	mov	r5,r3
 200c6b8:	3023883a 	mov	r17,r6
 200c6bc:	003e0306 	br	200becc <__subdf3+0x8c>
 200c6c0:	180b883a 	mov	r5,r3
 200c6c4:	3023883a 	mov	r17,r6
 200c6c8:	0401ffc4 	movi	r16,2047
 200c6cc:	003dff06 	br	200becc <__subdf3+0x8c>
 200c6d0:	113ff804 	addi	r4,r2,-32
 200c6d4:	01c00804 	movi	r7,32
 200c6d8:	2908d83a 	srl	r4,r5,r4
 200c6dc:	11c00a26 	beq	r2,r7,200c708 <__subdf3+0x8c8>
 200c6e0:	01c01004 	movi	r7,64
 200c6e4:	3885c83a 	sub	r2,r7,r2
 200c6e8:	288a983a 	sll	r5,r5,r2
 200c6ec:	2c62b03a 	or	r17,r5,r17
 200c6f0:	8822c03a 	cmpne	r17,r17,zero
 200c6f4:	8922b03a 	or	r17,r17,r4
 200c6f8:	0005883a 	mov	r2,zero
 200c6fc:	003f9206 	br	200c548 <__subdf3+0x708>
 200c700:	000b883a 	mov	r5,zero
 200c704:	003fdc06 	br	200c678 <__subdf3+0x838>
 200c708:	000b883a 	mov	r5,zero
 200c70c:	003ff706 	br	200c6ec <__subdf3+0x8ac>

0200c710 <__fixdfsi>:
 200c710:	2806d53a 	srli	r3,r5,20
 200c714:	00800434 	movhi	r2,16
 200c718:	10bfffc4 	addi	r2,r2,-1
 200c71c:	18c1ffcc 	andi	r3,r3,2047
 200c720:	0180ff84 	movi	r6,1022
 200c724:	2884703a 	and	r2,r5,r2
 200c728:	280ad7fa 	srli	r5,r5,31
 200c72c:	30c0130e 	bge	r6,r3,200c77c <__fixdfsi+0x6c>
 200c730:	01810744 	movi	r6,1053
 200c734:	30c00d16 	blt	r6,r3,200c76c <__fixdfsi+0x5c>
 200c738:	01810cc4 	movi	r6,1075
 200c73c:	30cdc83a 	sub	r6,r6,r3
 200c740:	01c007c4 	movi	r7,31
 200c744:	10800434 	orhi	r2,r2,16
 200c748:	39800e0e 	bge	r7,r6,200c784 <__fixdfsi+0x74>
 200c74c:	010104c4 	movi	r4,1043
 200c750:	20c7c83a 	sub	r3,r4,r3
 200c754:	10c6d83a 	srl	r3,r2,r3
 200c758:	29403fcc 	andi	r5,r5,255
 200c75c:	0145c83a 	sub	r2,zero,r5
 200c760:	1884f03a 	xor	r2,r3,r2
 200c764:	1145883a 	add	r2,r2,r5
 200c768:	f800283a 	ret
 200c76c:	00a00034 	movhi	r2,32768
 200c770:	10bfffc4 	addi	r2,r2,-1
 200c774:	2885883a 	add	r2,r5,r2
 200c778:	f800283a 	ret
 200c77c:	0005883a 	mov	r2,zero
 200c780:	f800283a 	ret
 200c784:	18fefb44 	addi	r3,r3,-1043
 200c788:	2188d83a 	srl	r4,r4,r6
 200c78c:	10c6983a 	sll	r3,r2,r3
 200c790:	20c6b03a 	or	r3,r4,r3
 200c794:	003ff006 	br	200c758 <__fixdfsi+0x48>

0200c798 <__floatsidf>:
 200c798:	defffd04 	addi	sp,sp,-12
 200c79c:	dc400115 	stw	r17,4(sp)
 200c7a0:	dfc00215 	stw	ra,8(sp)
 200c7a4:	dc000015 	stw	r16,0(sp)
 200c7a8:	2023883a 	mov	r17,r4
 200c7ac:	20001426 	beq	r4,zero,200c800 <__floatsidf+0x68>
 200c7b0:	2020d7fa 	srli	r16,r4,31
 200c7b4:	80000126 	beq	r16,zero,200c7bc <__floatsidf+0x24>
 200c7b8:	0123c83a 	sub	r17,zero,r4
 200c7bc:	8809883a 	mov	r4,r17
 200c7c0:	20005ac0 	call	20005ac <__clzsi2>
 200c7c4:	01410784 	movi	r5,1054
 200c7c8:	00c00284 	movi	r3,10
 200c7cc:	288bc83a 	sub	r5,r5,r2
 200c7d0:	18801c16 	blt	r3,r2,200c844 <__floatsidf+0xac>
 200c7d4:	00c002c4 	movi	r3,11
 200c7d8:	1887c83a 	sub	r3,r3,r2
 200c7dc:	88c8d83a 	srl	r4,r17,r3
 200c7e0:	00c00434 	movhi	r3,16
 200c7e4:	18ffffc4 	addi	r3,r3,-1
 200c7e8:	10800544 	addi	r2,r2,21
 200c7ec:	20c8703a 	and	r4,r4,r3
 200c7f0:	8884983a 	sll	r2,r17,r2
 200c7f4:	28c1ffcc 	andi	r3,r5,2047
 200c7f8:	800d883a 	mov	r6,r16
 200c7fc:	00000406 	br	200c810 <__floatsidf+0x78>
 200c800:	000d883a 	mov	r6,zero
 200c804:	0007883a 	mov	r3,zero
 200c808:	0009883a 	mov	r4,zero
 200c80c:	0005883a 	mov	r2,zero
 200c810:	180a953a 	slli	r5,r3,20
 200c814:	31803fcc 	andi	r6,r6,255
 200c818:	00c00434 	movhi	r3,16
 200c81c:	300c97fa 	slli	r6,r6,31
 200c820:	18ffffc4 	addi	r3,r3,-1
 200c824:	20c6703a 	and	r3,r4,r3
 200c828:	1946b03a 	or	r3,r3,r5
 200c82c:	1986b03a 	or	r3,r3,r6
 200c830:	dfc00217 	ldw	ra,8(sp)
 200c834:	dc400117 	ldw	r17,4(sp)
 200c838:	dc000017 	ldw	r16,0(sp)
 200c83c:	dec00304 	addi	sp,sp,12
 200c840:	f800283a 	ret
 200c844:	10fffd44 	addi	r3,r2,-11
 200c848:	88c8983a 	sll	r4,r17,r3
 200c84c:	00800434 	movhi	r2,16
 200c850:	10bfffc4 	addi	r2,r2,-1
 200c854:	2088703a 	and	r4,r4,r2
 200c858:	28c1ffcc 	andi	r3,r5,2047
 200c85c:	800d883a 	mov	r6,r16
 200c860:	0005883a 	mov	r2,zero
 200c864:	003fea06 	br	200c810 <__floatsidf+0x78>

0200c868 <__floatunsidf>:
 200c868:	defffe04 	addi	sp,sp,-8
 200c86c:	dc000015 	stw	r16,0(sp)
 200c870:	dfc00115 	stw	ra,4(sp)
 200c874:	2021883a 	mov	r16,r4
 200c878:	20001026 	beq	r4,zero,200c8bc <__floatunsidf+0x54>
 200c87c:	20005ac0 	call	20005ac <__clzsi2>
 200c880:	01410784 	movi	r5,1054
 200c884:	100d883a 	mov	r6,r2
 200c888:	288bc83a 	sub	r5,r5,r2
 200c88c:	00800284 	movi	r2,10
 200c890:	11801616 	blt	r2,r6,200c8ec <__floatunsidf+0x84>
 200c894:	008002c4 	movi	r2,11
 200c898:	1185c83a 	sub	r2,r2,r6
 200c89c:	8084d83a 	srl	r2,r16,r2
 200c8a0:	00c00434 	movhi	r3,16
 200c8a4:	31c00544 	addi	r7,r6,21
 200c8a8:	18ffffc4 	addi	r3,r3,-1
 200c8ac:	81e0983a 	sll	r16,r16,r7
 200c8b0:	10cc703a 	and	r6,r2,r3
 200c8b4:	2941ffcc 	andi	r5,r5,2047
 200c8b8:	00000206 	br	200c8c4 <__floatunsidf+0x5c>
 200c8bc:	000b883a 	mov	r5,zero
 200c8c0:	000d883a 	mov	r6,zero
 200c8c4:	280a953a 	slli	r5,r5,20
 200c8c8:	00c00434 	movhi	r3,16
 200c8cc:	18ffffc4 	addi	r3,r3,-1
 200c8d0:	30c6703a 	and	r3,r6,r3
 200c8d4:	8005883a 	mov	r2,r16
 200c8d8:	1946b03a 	or	r3,r3,r5
 200c8dc:	dfc00117 	ldw	ra,4(sp)
 200c8e0:	dc000017 	ldw	r16,0(sp)
 200c8e4:	dec00204 	addi	sp,sp,8
 200c8e8:	f800283a 	ret
 200c8ec:	31bffd44 	addi	r6,r6,-11
 200c8f0:	818c983a 	sll	r6,r16,r6
 200c8f4:	00800434 	movhi	r2,16
 200c8f8:	10bfffc4 	addi	r2,r2,-1
 200c8fc:	2941ffcc 	andi	r5,r5,2047
 200c900:	0021883a 	mov	r16,zero
 200c904:	308c703a 	and	r6,r6,r2
 200c908:	003fee06 	br	200c8c4 <__floatunsidf+0x5c>

0200c90c <alt_get_errno>:
 200c90c:	defffe04 	addi	sp,sp,-8
 200c910:	dfc00115 	stw	ra,4(sp)
 200c914:	df000015 	stw	fp,0(sp)
 200c918:	d839883a 	mov	fp,sp
 200c91c:	00808074 	movhi	r2,513
 200c920:	10839f04 	addi	r2,r2,3708
 200c924:	10800017 	ldw	r2,0(r2)
 200c928:	10000526 	beq	r2,zero,200c940 <alt_get_errno+0x34>
 200c92c:	00808074 	movhi	r2,513
 200c930:	10839f04 	addi	r2,r2,3708
 200c934:	10800017 	ldw	r2,0(r2)
 200c938:	103ee83a 	callr	r2
 200c93c:	00000206 	br	200c948 <alt_get_errno+0x3c>
 200c940:	00808074 	movhi	r2,513
 200c944:	108a6504 	addi	r2,r2,10644
 200c948:	e037883a 	mov	sp,fp
 200c94c:	dfc00117 	ldw	ra,4(sp)
 200c950:	df000017 	ldw	fp,0(sp)
 200c954:	dec00204 	addi	sp,sp,8
 200c958:	f800283a 	ret

0200c95c <close>:
 200c95c:	defffb04 	addi	sp,sp,-20
 200c960:	dfc00415 	stw	ra,16(sp)
 200c964:	df000315 	stw	fp,12(sp)
 200c968:	df000304 	addi	fp,sp,12
 200c96c:	e13fff15 	stw	r4,-4(fp)
 200c970:	e0bfff17 	ldw	r2,-4(fp)
 200c974:	10000616 	blt	r2,zero,200c990 <close+0x34>
 200c978:	e0bfff17 	ldw	r2,-4(fp)
 200c97c:	10c00324 	muli	r3,r2,12
 200c980:	00808074 	movhi	r2,513
 200c984:	10bf1c04 	addi	r2,r2,-912
 200c988:	1885883a 	add	r2,r3,r2
 200c98c:	00000106 	br	200c994 <close+0x38>
 200c990:	0005883a 	mov	r2,zero
 200c994:	e0bffd15 	stw	r2,-12(fp)
 200c998:	e0bffd17 	ldw	r2,-12(fp)
 200c99c:	10001926 	beq	r2,zero,200ca04 <close+0xa8>
 200c9a0:	e0bffd17 	ldw	r2,-12(fp)
 200c9a4:	10800017 	ldw	r2,0(r2)
 200c9a8:	10800417 	ldw	r2,16(r2)
 200c9ac:	10000626 	beq	r2,zero,200c9c8 <close+0x6c>
 200c9b0:	e0bffd17 	ldw	r2,-12(fp)
 200c9b4:	10800017 	ldw	r2,0(r2)
 200c9b8:	10800417 	ldw	r2,16(r2)
 200c9bc:	e13ffd17 	ldw	r4,-12(fp)
 200c9c0:	103ee83a 	callr	r2
 200c9c4:	00000106 	br	200c9cc <close+0x70>
 200c9c8:	0005883a 	mov	r2,zero
 200c9cc:	e0bffe15 	stw	r2,-8(fp)
 200c9d0:	e13fff17 	ldw	r4,-4(fp)
 200c9d4:	200d09c0 	call	200d09c <alt_release_fd>
 200c9d8:	e0bffe17 	ldw	r2,-8(fp)
 200c9dc:	1000070e 	bge	r2,zero,200c9fc <close+0xa0>
 200c9e0:	200c90c0 	call	200c90c <alt_get_errno>
 200c9e4:	1007883a 	mov	r3,r2
 200c9e8:	e0bffe17 	ldw	r2,-8(fp)
 200c9ec:	0085c83a 	sub	r2,zero,r2
 200c9f0:	18800015 	stw	r2,0(r3)
 200c9f4:	00bfffc4 	movi	r2,-1
 200c9f8:	00000706 	br	200ca18 <close+0xbc>
 200c9fc:	0005883a 	mov	r2,zero
 200ca00:	00000506 	br	200ca18 <close+0xbc>
 200ca04:	200c90c0 	call	200c90c <alt_get_errno>
 200ca08:	1007883a 	mov	r3,r2
 200ca0c:	00801444 	movi	r2,81
 200ca10:	18800015 	stw	r2,0(r3)
 200ca14:	00bfffc4 	movi	r2,-1
 200ca18:	e037883a 	mov	sp,fp
 200ca1c:	dfc00117 	ldw	ra,4(sp)
 200ca20:	df000017 	ldw	fp,0(sp)
 200ca24:	dec00204 	addi	sp,sp,8
 200ca28:	f800283a 	ret

0200ca2c <alt_dcache_flush_all>:
 200ca2c:	defffe04 	addi	sp,sp,-8
 200ca30:	df000115 	stw	fp,4(sp)
 200ca34:	df000104 	addi	fp,sp,4
 200ca38:	e03fff15 	stw	zero,-4(fp)
 200ca3c:	00000506 	br	200ca54 <alt_dcache_flush_all+0x28>
 200ca40:	e0bfff17 	ldw	r2,-4(fp)
 200ca44:	1000003b 	flushd	0(r2)
 200ca48:	e0bfff17 	ldw	r2,-4(fp)
 200ca4c:	10800804 	addi	r2,r2,32
 200ca50:	e0bfff15 	stw	r2,-4(fp)
 200ca54:	e0bfff17 	ldw	r2,-4(fp)
 200ca58:	10820030 	cmpltui	r2,r2,2048
 200ca5c:	103ff81e 	bne	r2,zero,200ca40 <alt_dcache_flush_all+0x14>
 200ca60:	e037883a 	mov	sp,fp
 200ca64:	df000017 	ldw	fp,0(sp)
 200ca68:	dec00104 	addi	sp,sp,4
 200ca6c:	f800283a 	ret

0200ca70 <alt_dev_null_write>:
 200ca70:	defffc04 	addi	sp,sp,-16
 200ca74:	df000315 	stw	fp,12(sp)
 200ca78:	df000304 	addi	fp,sp,12
 200ca7c:	e13ffd15 	stw	r4,-12(fp)
 200ca80:	e17ffe15 	stw	r5,-8(fp)
 200ca84:	e1bfff15 	stw	r6,-4(fp)
 200ca88:	e0bfff17 	ldw	r2,-4(fp)
 200ca8c:	e037883a 	mov	sp,fp
 200ca90:	df000017 	ldw	fp,0(sp)
 200ca94:	dec00104 	addi	sp,sp,4
 200ca98:	f800283a 	ret

0200ca9c <alt_get_errno>:
 200ca9c:	defffe04 	addi	sp,sp,-8
 200caa0:	dfc00115 	stw	ra,4(sp)
 200caa4:	df000015 	stw	fp,0(sp)
 200caa8:	d839883a 	mov	fp,sp
 200caac:	00808074 	movhi	r2,513
 200cab0:	10839f04 	addi	r2,r2,3708
 200cab4:	10800017 	ldw	r2,0(r2)
 200cab8:	10000526 	beq	r2,zero,200cad0 <alt_get_errno+0x34>
 200cabc:	00808074 	movhi	r2,513
 200cac0:	10839f04 	addi	r2,r2,3708
 200cac4:	10800017 	ldw	r2,0(r2)
 200cac8:	103ee83a 	callr	r2
 200cacc:	00000206 	br	200cad8 <alt_get_errno+0x3c>
 200cad0:	00808074 	movhi	r2,513
 200cad4:	108a6504 	addi	r2,r2,10644
 200cad8:	e037883a 	mov	sp,fp
 200cadc:	dfc00117 	ldw	ra,4(sp)
 200cae0:	df000017 	ldw	fp,0(sp)
 200cae4:	dec00204 	addi	sp,sp,8
 200cae8:	f800283a 	ret

0200caec <fstat>:
 200caec:	defffb04 	addi	sp,sp,-20
 200caf0:	dfc00415 	stw	ra,16(sp)
 200caf4:	df000315 	stw	fp,12(sp)
 200caf8:	df000304 	addi	fp,sp,12
 200cafc:	e13ffe15 	stw	r4,-8(fp)
 200cb00:	e17fff15 	stw	r5,-4(fp)
 200cb04:	e0bffe17 	ldw	r2,-8(fp)
 200cb08:	10000616 	blt	r2,zero,200cb24 <fstat+0x38>
 200cb0c:	e0bffe17 	ldw	r2,-8(fp)
 200cb10:	10c00324 	muli	r3,r2,12
 200cb14:	00808074 	movhi	r2,513
 200cb18:	10bf1c04 	addi	r2,r2,-912
 200cb1c:	1885883a 	add	r2,r3,r2
 200cb20:	00000106 	br	200cb28 <fstat+0x3c>
 200cb24:	0005883a 	mov	r2,zero
 200cb28:	e0bffd15 	stw	r2,-12(fp)
 200cb2c:	e0bffd17 	ldw	r2,-12(fp)
 200cb30:	10001026 	beq	r2,zero,200cb74 <fstat+0x88>
 200cb34:	e0bffd17 	ldw	r2,-12(fp)
 200cb38:	10800017 	ldw	r2,0(r2)
 200cb3c:	10800817 	ldw	r2,32(r2)
 200cb40:	10000726 	beq	r2,zero,200cb60 <fstat+0x74>
 200cb44:	e0bffd17 	ldw	r2,-12(fp)
 200cb48:	10800017 	ldw	r2,0(r2)
 200cb4c:	10800817 	ldw	r2,32(r2)
 200cb50:	e13ffd17 	ldw	r4,-12(fp)
 200cb54:	e17fff17 	ldw	r5,-4(fp)
 200cb58:	103ee83a 	callr	r2
 200cb5c:	00000a06 	br	200cb88 <fstat+0x9c>
 200cb60:	e0bfff17 	ldw	r2,-4(fp)
 200cb64:	00c80004 	movi	r3,8192
 200cb68:	10c00115 	stw	r3,4(r2)
 200cb6c:	0005883a 	mov	r2,zero
 200cb70:	00000506 	br	200cb88 <fstat+0x9c>
 200cb74:	200ca9c0 	call	200ca9c <alt_get_errno>
 200cb78:	1007883a 	mov	r3,r2
 200cb7c:	00801444 	movi	r2,81
 200cb80:	18800015 	stw	r2,0(r3)
 200cb84:	00bfffc4 	movi	r2,-1
 200cb88:	e037883a 	mov	sp,fp
 200cb8c:	dfc00117 	ldw	ra,4(sp)
 200cb90:	df000017 	ldw	fp,0(sp)
 200cb94:	dec00204 	addi	sp,sp,8
 200cb98:	f800283a 	ret

0200cb9c <alt_get_errno>:
 200cb9c:	defffe04 	addi	sp,sp,-8
 200cba0:	dfc00115 	stw	ra,4(sp)
 200cba4:	df000015 	stw	fp,0(sp)
 200cba8:	d839883a 	mov	fp,sp
 200cbac:	00808074 	movhi	r2,513
 200cbb0:	10839f04 	addi	r2,r2,3708
 200cbb4:	10800017 	ldw	r2,0(r2)
 200cbb8:	10000526 	beq	r2,zero,200cbd0 <alt_get_errno+0x34>
 200cbbc:	00808074 	movhi	r2,513
 200cbc0:	10839f04 	addi	r2,r2,3708
 200cbc4:	10800017 	ldw	r2,0(r2)
 200cbc8:	103ee83a 	callr	r2
 200cbcc:	00000206 	br	200cbd8 <alt_get_errno+0x3c>
 200cbd0:	00808074 	movhi	r2,513
 200cbd4:	108a6504 	addi	r2,r2,10644
 200cbd8:	e037883a 	mov	sp,fp
 200cbdc:	dfc00117 	ldw	ra,4(sp)
 200cbe0:	df000017 	ldw	fp,0(sp)
 200cbe4:	dec00204 	addi	sp,sp,8
 200cbe8:	f800283a 	ret

0200cbec <isatty>:
 200cbec:	deffed04 	addi	sp,sp,-76
 200cbf0:	dfc01215 	stw	ra,72(sp)
 200cbf4:	df001115 	stw	fp,68(sp)
 200cbf8:	df001104 	addi	fp,sp,68
 200cbfc:	e13fff15 	stw	r4,-4(fp)
 200cc00:	e0bfff17 	ldw	r2,-4(fp)
 200cc04:	10000616 	blt	r2,zero,200cc20 <isatty+0x34>
 200cc08:	e0bfff17 	ldw	r2,-4(fp)
 200cc0c:	10c00324 	muli	r3,r2,12
 200cc10:	00808074 	movhi	r2,513
 200cc14:	10bf1c04 	addi	r2,r2,-912
 200cc18:	1885883a 	add	r2,r3,r2
 200cc1c:	00000106 	br	200cc24 <isatty+0x38>
 200cc20:	0005883a 	mov	r2,zero
 200cc24:	e0bfef15 	stw	r2,-68(fp)
 200cc28:	e0bfef17 	ldw	r2,-68(fp)
 200cc2c:	10000e26 	beq	r2,zero,200cc68 <isatty+0x7c>
 200cc30:	e0bfef17 	ldw	r2,-68(fp)
 200cc34:	10800017 	ldw	r2,0(r2)
 200cc38:	10800817 	ldw	r2,32(r2)
 200cc3c:	1000021e 	bne	r2,zero,200cc48 <isatty+0x5c>
 200cc40:	00800044 	movi	r2,1
 200cc44:	00000d06 	br	200cc7c <isatty+0x90>
 200cc48:	e0bff004 	addi	r2,fp,-64
 200cc4c:	e13fff17 	ldw	r4,-4(fp)
 200cc50:	100b883a 	mov	r5,r2
 200cc54:	200caec0 	call	200caec <fstat>
 200cc58:	e0bff117 	ldw	r2,-60(fp)
 200cc5c:	10880020 	cmpeqi	r2,r2,8192
 200cc60:	10803fcc 	andi	r2,r2,255
 200cc64:	00000506 	br	200cc7c <isatty+0x90>
 200cc68:	200cb9c0 	call	200cb9c <alt_get_errno>
 200cc6c:	1007883a 	mov	r3,r2
 200cc70:	00801444 	movi	r2,81
 200cc74:	18800015 	stw	r2,0(r3)
 200cc78:	0005883a 	mov	r2,zero
 200cc7c:	e037883a 	mov	sp,fp
 200cc80:	dfc00117 	ldw	ra,4(sp)
 200cc84:	df000017 	ldw	fp,0(sp)
 200cc88:	dec00204 	addi	sp,sp,8
 200cc8c:	f800283a 	ret

0200cc90 <alt_load_section>:
 200cc90:	defffc04 	addi	sp,sp,-16
 200cc94:	df000315 	stw	fp,12(sp)
 200cc98:	df000304 	addi	fp,sp,12
 200cc9c:	e13ffd15 	stw	r4,-12(fp)
 200cca0:	e17ffe15 	stw	r5,-8(fp)
 200cca4:	e1bfff15 	stw	r6,-4(fp)
 200cca8:	e0fffe17 	ldw	r3,-8(fp)
 200ccac:	e0bffd17 	ldw	r2,-12(fp)
 200ccb0:	18800c26 	beq	r3,r2,200cce4 <alt_load_section+0x54>
 200ccb4:	00000806 	br	200ccd8 <alt_load_section+0x48>
 200ccb8:	e0bffe17 	ldw	r2,-8(fp)
 200ccbc:	10c00104 	addi	r3,r2,4
 200ccc0:	e0fffe15 	stw	r3,-8(fp)
 200ccc4:	e0fffd17 	ldw	r3,-12(fp)
 200ccc8:	19000104 	addi	r4,r3,4
 200cccc:	e13ffd15 	stw	r4,-12(fp)
 200ccd0:	18c00017 	ldw	r3,0(r3)
 200ccd4:	10c00015 	stw	r3,0(r2)
 200ccd8:	e0fffe17 	ldw	r3,-8(fp)
 200ccdc:	e0bfff17 	ldw	r2,-4(fp)
 200cce0:	18bff51e 	bne	r3,r2,200ccb8 <alt_load_section+0x28>
 200cce4:	e037883a 	mov	sp,fp
 200cce8:	df000017 	ldw	fp,0(sp)
 200ccec:	dec00104 	addi	sp,sp,4
 200ccf0:	f800283a 	ret

0200ccf4 <alt_load>:
 200ccf4:	defffe04 	addi	sp,sp,-8
 200ccf8:	dfc00115 	stw	ra,4(sp)
 200ccfc:	df000015 	stw	fp,0(sp)
 200cd00:	d839883a 	mov	fp,sp
 200cd04:	01008074 	movhi	r4,513
 200cd08:	2103a404 	addi	r4,r4,3728
 200cd0c:	01408074 	movhi	r5,513
 200cd10:	297ce904 	addi	r5,r5,-3164
 200cd14:	01808074 	movhi	r6,513
 200cd18:	3183a404 	addi	r6,r6,3728
 200cd1c:	200cc900 	call	200cc90 <alt_load_section>
 200cd20:	01008034 	movhi	r4,512
 200cd24:	21000804 	addi	r4,r4,32
 200cd28:	01408034 	movhi	r5,512
 200cd2c:	29400804 	addi	r5,r5,32
 200cd30:	01808034 	movhi	r6,512
 200cd34:	31806f04 	addi	r6,r6,444
 200cd38:	200cc900 	call	200cc90 <alt_load_section>
 200cd3c:	01008074 	movhi	r4,513
 200cd40:	213bf304 	addi	r4,r4,-4148
 200cd44:	01408074 	movhi	r5,513
 200cd48:	297bf304 	addi	r5,r5,-4148
 200cd4c:	01808074 	movhi	r6,513
 200cd50:	31bce904 	addi	r6,r6,-3164
 200cd54:	200cc900 	call	200cc90 <alt_load_section>
 200cd58:	200ca2c0 	call	200ca2c <alt_dcache_flush_all>
 200cd5c:	200e0dc0 	call	200e0dc <alt_icache_flush_all>
 200cd60:	e037883a 	mov	sp,fp
 200cd64:	dfc00117 	ldw	ra,4(sp)
 200cd68:	df000017 	ldw	fp,0(sp)
 200cd6c:	dec00204 	addi	sp,sp,8
 200cd70:	f800283a 	ret

0200cd74 <alt_get_errno>:
 200cd74:	defffe04 	addi	sp,sp,-8
 200cd78:	dfc00115 	stw	ra,4(sp)
 200cd7c:	df000015 	stw	fp,0(sp)
 200cd80:	d839883a 	mov	fp,sp
 200cd84:	00808074 	movhi	r2,513
 200cd88:	10839f04 	addi	r2,r2,3708
 200cd8c:	10800017 	ldw	r2,0(r2)
 200cd90:	10000526 	beq	r2,zero,200cda8 <alt_get_errno+0x34>
 200cd94:	00808074 	movhi	r2,513
 200cd98:	10839f04 	addi	r2,r2,3708
 200cd9c:	10800017 	ldw	r2,0(r2)
 200cda0:	103ee83a 	callr	r2
 200cda4:	00000206 	br	200cdb0 <alt_get_errno+0x3c>
 200cda8:	00808074 	movhi	r2,513
 200cdac:	108a6504 	addi	r2,r2,10644
 200cdb0:	e037883a 	mov	sp,fp
 200cdb4:	dfc00117 	ldw	ra,4(sp)
 200cdb8:	df000017 	ldw	fp,0(sp)
 200cdbc:	dec00204 	addi	sp,sp,8
 200cdc0:	f800283a 	ret

0200cdc4 <lseek>:
 200cdc4:	defff904 	addi	sp,sp,-28
 200cdc8:	dfc00615 	stw	ra,24(sp)
 200cdcc:	df000515 	stw	fp,20(sp)
 200cdd0:	df000504 	addi	fp,sp,20
 200cdd4:	e13ffd15 	stw	r4,-12(fp)
 200cdd8:	e17ffe15 	stw	r5,-8(fp)
 200cddc:	e1bfff15 	stw	r6,-4(fp)
 200cde0:	e03ffb15 	stw	zero,-20(fp)
 200cde4:	e0bffd17 	ldw	r2,-12(fp)
 200cde8:	10000616 	blt	r2,zero,200ce04 <lseek+0x40>
 200cdec:	e0bffd17 	ldw	r2,-12(fp)
 200cdf0:	10c00324 	muli	r3,r2,12
 200cdf4:	00808074 	movhi	r2,513
 200cdf8:	10bf1c04 	addi	r2,r2,-912
 200cdfc:	1885883a 	add	r2,r3,r2
 200ce00:	00000106 	br	200ce08 <lseek+0x44>
 200ce04:	0005883a 	mov	r2,zero
 200ce08:	e0bffc15 	stw	r2,-16(fp)
 200ce0c:	e0bffc17 	ldw	r2,-16(fp)
 200ce10:	10001026 	beq	r2,zero,200ce54 <lseek+0x90>
 200ce14:	e0bffc17 	ldw	r2,-16(fp)
 200ce18:	10800017 	ldw	r2,0(r2)
 200ce1c:	10800717 	ldw	r2,28(r2)
 200ce20:	10000926 	beq	r2,zero,200ce48 <lseek+0x84>
 200ce24:	e0bffc17 	ldw	r2,-16(fp)
 200ce28:	10800017 	ldw	r2,0(r2)
 200ce2c:	10800717 	ldw	r2,28(r2)
 200ce30:	e13ffc17 	ldw	r4,-16(fp)
 200ce34:	e17ffe17 	ldw	r5,-8(fp)
 200ce38:	e1bfff17 	ldw	r6,-4(fp)
 200ce3c:	103ee83a 	callr	r2
 200ce40:	e0bffb15 	stw	r2,-20(fp)
 200ce44:	00000506 	br	200ce5c <lseek+0x98>
 200ce48:	00bfde84 	movi	r2,-134
 200ce4c:	e0bffb15 	stw	r2,-20(fp)
 200ce50:	00000206 	br	200ce5c <lseek+0x98>
 200ce54:	00bfebc4 	movi	r2,-81
 200ce58:	e0bffb15 	stw	r2,-20(fp)
 200ce5c:	e0bffb17 	ldw	r2,-20(fp)
 200ce60:	1000070e 	bge	r2,zero,200ce80 <lseek+0xbc>
 200ce64:	200cd740 	call	200cd74 <alt_get_errno>
 200ce68:	1007883a 	mov	r3,r2
 200ce6c:	e0bffb17 	ldw	r2,-20(fp)
 200ce70:	0085c83a 	sub	r2,zero,r2
 200ce74:	18800015 	stw	r2,0(r3)
 200ce78:	00bfffc4 	movi	r2,-1
 200ce7c:	e0bffb15 	stw	r2,-20(fp)
 200ce80:	e0bffb17 	ldw	r2,-20(fp)
 200ce84:	e037883a 	mov	sp,fp
 200ce88:	dfc00117 	ldw	ra,4(sp)
 200ce8c:	df000017 	ldw	fp,0(sp)
 200ce90:	dec00204 	addi	sp,sp,8
 200ce94:	f800283a 	ret

0200ce98 <alt_main>:
 200ce98:	defffd04 	addi	sp,sp,-12
 200ce9c:	dfc00215 	stw	ra,8(sp)
 200cea0:	df000115 	stw	fp,4(sp)
 200cea4:	df000104 	addi	fp,sp,4
 200cea8:	0009883a 	mov	r4,zero
 200ceac:	200d32c0 	call	200d32c <alt_irq_init>
 200ceb0:	0001883a 	nop
 200ceb4:	200d3600 	call	200d360 <alt_sys_init>
 200ceb8:	01008074 	movhi	r4,513
 200cebc:	213ce104 	addi	r4,r4,-3196
 200cec0:	01408074 	movhi	r5,513
 200cec4:	297ce104 	addi	r5,r5,-3196
 200cec8:	01808074 	movhi	r6,513
 200cecc:	31bce104 	addi	r6,r6,-3196
 200ced0:	200e49c0 	call	200e49c <alt_io_redirect>
 200ced4:	200e0240 	call	200e024 <_do_ctors>
 200ced8:	01008074 	movhi	r4,513
 200cedc:	21382004 	addi	r4,r4,-8064
 200cee0:	200ec280 	call	200ec28 <atexit>
 200cee4:	d126d217 	ldw	r4,-25784(gp)
 200cee8:	d0e6d317 	ldw	r3,-25780(gp)
 200ceec:	d0a6d417 	ldw	r2,-25776(gp)
 200cef0:	180b883a 	mov	r5,r3
 200cef4:	100d883a 	mov	r6,r2
 200cef8:	20003900 	call	2000390 <main>
 200cefc:	e0bfff15 	stw	r2,-4(fp)
 200cf00:	01000044 	movi	r4,1
 200cf04:	200c95c0 	call	200c95c <close>
 200cf08:	e13fff17 	ldw	r4,-4(fp)
 200cf0c:	200ec3c0 	call	200ec3c <exit>

0200cf10 <__malloc_lock>:
 200cf10:	defffe04 	addi	sp,sp,-8
 200cf14:	df000115 	stw	fp,4(sp)
 200cf18:	df000104 	addi	fp,sp,4
 200cf1c:	e13fff15 	stw	r4,-4(fp)
 200cf20:	e037883a 	mov	sp,fp
 200cf24:	df000017 	ldw	fp,0(sp)
 200cf28:	dec00104 	addi	sp,sp,4
 200cf2c:	f800283a 	ret

0200cf30 <__malloc_unlock>:
 200cf30:	defffe04 	addi	sp,sp,-8
 200cf34:	df000115 	stw	fp,4(sp)
 200cf38:	df000104 	addi	fp,sp,4
 200cf3c:	e13fff15 	stw	r4,-4(fp)
 200cf40:	e037883a 	mov	sp,fp
 200cf44:	df000017 	ldw	fp,0(sp)
 200cf48:	dec00104 	addi	sp,sp,4
 200cf4c:	f800283a 	ret

0200cf50 <alt_get_errno>:
 200cf50:	defffe04 	addi	sp,sp,-8
 200cf54:	dfc00115 	stw	ra,4(sp)
 200cf58:	df000015 	stw	fp,0(sp)
 200cf5c:	d839883a 	mov	fp,sp
 200cf60:	00808074 	movhi	r2,513
 200cf64:	10839f04 	addi	r2,r2,3708
 200cf68:	10800017 	ldw	r2,0(r2)
 200cf6c:	10000526 	beq	r2,zero,200cf84 <alt_get_errno+0x34>
 200cf70:	00808074 	movhi	r2,513
 200cf74:	10839f04 	addi	r2,r2,3708
 200cf78:	10800017 	ldw	r2,0(r2)
 200cf7c:	103ee83a 	callr	r2
 200cf80:	00000206 	br	200cf8c <alt_get_errno+0x3c>
 200cf84:	00808074 	movhi	r2,513
 200cf88:	108a6504 	addi	r2,r2,10644
 200cf8c:	e037883a 	mov	sp,fp
 200cf90:	dfc00117 	ldw	ra,4(sp)
 200cf94:	df000017 	ldw	fp,0(sp)
 200cf98:	dec00204 	addi	sp,sp,8
 200cf9c:	f800283a 	ret

0200cfa0 <read>:
 200cfa0:	defff904 	addi	sp,sp,-28
 200cfa4:	dfc00615 	stw	ra,24(sp)
 200cfa8:	df000515 	stw	fp,20(sp)
 200cfac:	df000504 	addi	fp,sp,20
 200cfb0:	e13ffd15 	stw	r4,-12(fp)
 200cfb4:	e17ffe15 	stw	r5,-8(fp)
 200cfb8:	e1bfff15 	stw	r6,-4(fp)
 200cfbc:	e0bffd17 	ldw	r2,-12(fp)
 200cfc0:	10000616 	blt	r2,zero,200cfdc <read+0x3c>
 200cfc4:	e0bffd17 	ldw	r2,-12(fp)
 200cfc8:	10c00324 	muli	r3,r2,12
 200cfcc:	00808074 	movhi	r2,513
 200cfd0:	10bf1c04 	addi	r2,r2,-912
 200cfd4:	1885883a 	add	r2,r3,r2
 200cfd8:	00000106 	br	200cfe0 <read+0x40>
 200cfdc:	0005883a 	mov	r2,zero
 200cfe0:	e0bffb15 	stw	r2,-20(fp)
 200cfe4:	e0bffb17 	ldw	r2,-20(fp)
 200cfe8:	10002226 	beq	r2,zero,200d074 <read+0xd4>
 200cfec:	e0bffb17 	ldw	r2,-20(fp)
 200cff0:	10800217 	ldw	r2,8(r2)
 200cff4:	108000cc 	andi	r2,r2,3
 200cff8:	10800060 	cmpeqi	r2,r2,1
 200cffc:	1000181e 	bne	r2,zero,200d060 <read+0xc0>
 200d000:	e0bffb17 	ldw	r2,-20(fp)
 200d004:	10800017 	ldw	r2,0(r2)
 200d008:	10800517 	ldw	r2,20(r2)
 200d00c:	10001426 	beq	r2,zero,200d060 <read+0xc0>
 200d010:	e0bffb17 	ldw	r2,-20(fp)
 200d014:	10800017 	ldw	r2,0(r2)
 200d018:	10800517 	ldw	r2,20(r2)
 200d01c:	e0ffff17 	ldw	r3,-4(fp)
 200d020:	e13ffb17 	ldw	r4,-20(fp)
 200d024:	e17ffe17 	ldw	r5,-8(fp)
 200d028:	180d883a 	mov	r6,r3
 200d02c:	103ee83a 	callr	r2
 200d030:	e0bffc15 	stw	r2,-16(fp)
 200d034:	e0bffc17 	ldw	r2,-16(fp)
 200d038:	1000070e 	bge	r2,zero,200d058 <read+0xb8>
 200d03c:	200cf500 	call	200cf50 <alt_get_errno>
 200d040:	1007883a 	mov	r3,r2
 200d044:	e0bffc17 	ldw	r2,-16(fp)
 200d048:	0085c83a 	sub	r2,zero,r2
 200d04c:	18800015 	stw	r2,0(r3)
 200d050:	00bfffc4 	movi	r2,-1
 200d054:	00000c06 	br	200d088 <read+0xe8>
 200d058:	e0bffc17 	ldw	r2,-16(fp)
 200d05c:	00000a06 	br	200d088 <read+0xe8>
 200d060:	200cf500 	call	200cf50 <alt_get_errno>
 200d064:	1007883a 	mov	r3,r2
 200d068:	00800344 	movi	r2,13
 200d06c:	18800015 	stw	r2,0(r3)
 200d070:	00000406 	br	200d084 <read+0xe4>
 200d074:	200cf500 	call	200cf50 <alt_get_errno>
 200d078:	1007883a 	mov	r3,r2
 200d07c:	00801444 	movi	r2,81
 200d080:	18800015 	stw	r2,0(r3)
 200d084:	00bfffc4 	movi	r2,-1
 200d088:	e037883a 	mov	sp,fp
 200d08c:	dfc00117 	ldw	ra,4(sp)
 200d090:	df000017 	ldw	fp,0(sp)
 200d094:	dec00204 	addi	sp,sp,8
 200d098:	f800283a 	ret

0200d09c <alt_release_fd>:
 200d09c:	defffe04 	addi	sp,sp,-8
 200d0a0:	df000115 	stw	fp,4(sp)
 200d0a4:	df000104 	addi	fp,sp,4
 200d0a8:	e13fff15 	stw	r4,-4(fp)
 200d0ac:	e0bfff17 	ldw	r2,-4(fp)
 200d0b0:	108000d0 	cmplti	r2,r2,3
 200d0b4:	10000d1e 	bne	r2,zero,200d0ec <alt_release_fd+0x50>
 200d0b8:	00808074 	movhi	r2,513
 200d0bc:	10bf1c04 	addi	r2,r2,-912
 200d0c0:	e0ffff17 	ldw	r3,-4(fp)
 200d0c4:	18c00324 	muli	r3,r3,12
 200d0c8:	10c5883a 	add	r2,r2,r3
 200d0cc:	10800204 	addi	r2,r2,8
 200d0d0:	10000015 	stw	zero,0(r2)
 200d0d4:	00808074 	movhi	r2,513
 200d0d8:	10bf1c04 	addi	r2,r2,-912
 200d0dc:	e0ffff17 	ldw	r3,-4(fp)
 200d0e0:	18c00324 	muli	r3,r3,12
 200d0e4:	10c5883a 	add	r2,r2,r3
 200d0e8:	10000015 	stw	zero,0(r2)
 200d0ec:	e037883a 	mov	sp,fp
 200d0f0:	df000017 	ldw	fp,0(sp)
 200d0f4:	dec00104 	addi	sp,sp,4
 200d0f8:	f800283a 	ret

0200d0fc <sbrk>:
 200d0fc:	defff904 	addi	sp,sp,-28
 200d100:	df000615 	stw	fp,24(sp)
 200d104:	df000604 	addi	fp,sp,24
 200d108:	e13fff15 	stw	r4,-4(fp)
 200d10c:	0005303a 	rdctl	r2,status
 200d110:	e0bffc15 	stw	r2,-16(fp)
 200d114:	e0fffc17 	ldw	r3,-16(fp)
 200d118:	00bfff84 	movi	r2,-2
 200d11c:	1884703a 	and	r2,r3,r2
 200d120:	1001703a 	wrctl	status,r2
 200d124:	e0bffc17 	ldw	r2,-16(fp)
 200d128:	e0bffa15 	stw	r2,-24(fp)
 200d12c:	d0a00c17 	ldw	r2,-32720(gp)
 200d130:	10c000c4 	addi	r3,r2,3
 200d134:	00bfff04 	movi	r2,-4
 200d138:	1884703a 	and	r2,r3,r2
 200d13c:	d0a00c15 	stw	r2,-32720(gp)
 200d140:	d0e00c17 	ldw	r3,-32720(gp)
 200d144:	e0bfff17 	ldw	r2,-4(fp)
 200d148:	1887883a 	add	r3,r3,r2
 200d14c:	00810034 	movhi	r2,1024
 200d150:	10800004 	addi	r2,r2,0
 200d154:	10c0062e 	bgeu	r2,r3,200d170 <sbrk+0x74>
 200d158:	e0bffa17 	ldw	r2,-24(fp)
 200d15c:	e0bffd15 	stw	r2,-12(fp)
 200d160:	e0bffd17 	ldw	r2,-12(fp)
 200d164:	1001703a 	wrctl	status,r2
 200d168:	00bfffc4 	movi	r2,-1
 200d16c:	00000b06 	br	200d19c <sbrk+0xa0>
 200d170:	d0a00c17 	ldw	r2,-32720(gp)
 200d174:	e0bffb15 	stw	r2,-20(fp)
 200d178:	d0e00c17 	ldw	r3,-32720(gp)
 200d17c:	e0bfff17 	ldw	r2,-4(fp)
 200d180:	1885883a 	add	r2,r3,r2
 200d184:	d0a00c15 	stw	r2,-32720(gp)
 200d188:	e0bffa17 	ldw	r2,-24(fp)
 200d18c:	e0bffe15 	stw	r2,-8(fp)
 200d190:	e0bffe17 	ldw	r2,-8(fp)
 200d194:	1001703a 	wrctl	status,r2
 200d198:	e0bffb17 	ldw	r2,-20(fp)
 200d19c:	e037883a 	mov	sp,fp
 200d1a0:	df000017 	ldw	fp,0(sp)
 200d1a4:	dec00104 	addi	sp,sp,4
 200d1a8:	f800283a 	ret

0200d1ac <alt_get_errno>:
 200d1ac:	defffe04 	addi	sp,sp,-8
 200d1b0:	dfc00115 	stw	ra,4(sp)
 200d1b4:	df000015 	stw	fp,0(sp)
 200d1b8:	d839883a 	mov	fp,sp
 200d1bc:	00808074 	movhi	r2,513
 200d1c0:	10839f04 	addi	r2,r2,3708
 200d1c4:	10800017 	ldw	r2,0(r2)
 200d1c8:	10000526 	beq	r2,zero,200d1e0 <alt_get_errno+0x34>
 200d1cc:	00808074 	movhi	r2,513
 200d1d0:	10839f04 	addi	r2,r2,3708
 200d1d4:	10800017 	ldw	r2,0(r2)
 200d1d8:	103ee83a 	callr	r2
 200d1dc:	00000206 	br	200d1e8 <alt_get_errno+0x3c>
 200d1e0:	00808074 	movhi	r2,513
 200d1e4:	108a6504 	addi	r2,r2,10644
 200d1e8:	e037883a 	mov	sp,fp
 200d1ec:	dfc00117 	ldw	ra,4(sp)
 200d1f0:	df000017 	ldw	fp,0(sp)
 200d1f4:	dec00204 	addi	sp,sp,8
 200d1f8:	f800283a 	ret

0200d1fc <write>:
 200d1fc:	defff904 	addi	sp,sp,-28
 200d200:	dfc00615 	stw	ra,24(sp)
 200d204:	df000515 	stw	fp,20(sp)
 200d208:	df000504 	addi	fp,sp,20
 200d20c:	e13ffd15 	stw	r4,-12(fp)
 200d210:	e17ffe15 	stw	r5,-8(fp)
 200d214:	e1bfff15 	stw	r6,-4(fp)
 200d218:	e0bffd17 	ldw	r2,-12(fp)
 200d21c:	10000616 	blt	r2,zero,200d238 <write+0x3c>
 200d220:	e0bffd17 	ldw	r2,-12(fp)
 200d224:	10c00324 	muli	r3,r2,12
 200d228:	00808074 	movhi	r2,513
 200d22c:	10bf1c04 	addi	r2,r2,-912
 200d230:	1885883a 	add	r2,r3,r2
 200d234:	00000106 	br	200d23c <write+0x40>
 200d238:	0005883a 	mov	r2,zero
 200d23c:	e0bffb15 	stw	r2,-20(fp)
 200d240:	e0bffb17 	ldw	r2,-20(fp)
 200d244:	10002126 	beq	r2,zero,200d2cc <write+0xd0>
 200d248:	e0bffb17 	ldw	r2,-20(fp)
 200d24c:	10800217 	ldw	r2,8(r2)
 200d250:	108000cc 	andi	r2,r2,3
 200d254:	10001826 	beq	r2,zero,200d2b8 <write+0xbc>
 200d258:	e0bffb17 	ldw	r2,-20(fp)
 200d25c:	10800017 	ldw	r2,0(r2)
 200d260:	10800617 	ldw	r2,24(r2)
 200d264:	10001426 	beq	r2,zero,200d2b8 <write+0xbc>
 200d268:	e0bffb17 	ldw	r2,-20(fp)
 200d26c:	10800017 	ldw	r2,0(r2)
 200d270:	10800617 	ldw	r2,24(r2)
 200d274:	e0ffff17 	ldw	r3,-4(fp)
 200d278:	e13ffb17 	ldw	r4,-20(fp)
 200d27c:	e17ffe17 	ldw	r5,-8(fp)
 200d280:	180d883a 	mov	r6,r3
 200d284:	103ee83a 	callr	r2
 200d288:	e0bffc15 	stw	r2,-16(fp)
 200d28c:	e0bffc17 	ldw	r2,-16(fp)
 200d290:	1000070e 	bge	r2,zero,200d2b0 <write+0xb4>
 200d294:	200d1ac0 	call	200d1ac <alt_get_errno>
 200d298:	1007883a 	mov	r3,r2
 200d29c:	e0bffc17 	ldw	r2,-16(fp)
 200d2a0:	0085c83a 	sub	r2,zero,r2
 200d2a4:	18800015 	stw	r2,0(r3)
 200d2a8:	00bfffc4 	movi	r2,-1
 200d2ac:	00000c06 	br	200d2e0 <write+0xe4>
 200d2b0:	e0bffc17 	ldw	r2,-16(fp)
 200d2b4:	00000a06 	br	200d2e0 <write+0xe4>
 200d2b8:	200d1ac0 	call	200d1ac <alt_get_errno>
 200d2bc:	1007883a 	mov	r3,r2
 200d2c0:	00800344 	movi	r2,13
 200d2c4:	18800015 	stw	r2,0(r3)
 200d2c8:	00000406 	br	200d2dc <write+0xe0>
 200d2cc:	200d1ac0 	call	200d1ac <alt_get_errno>
 200d2d0:	1007883a 	mov	r3,r2
 200d2d4:	00801444 	movi	r2,81
 200d2d8:	18800015 	stw	r2,0(r3)
 200d2dc:	00bfffc4 	movi	r2,-1
 200d2e0:	e037883a 	mov	sp,fp
 200d2e4:	dfc00117 	ldw	ra,4(sp)
 200d2e8:	df000017 	ldw	fp,0(sp)
 200d2ec:	dec00204 	addi	sp,sp,8
 200d2f0:	f800283a 	ret

0200d2f4 <alt_dev_reg>:
 200d2f4:	defffd04 	addi	sp,sp,-12
 200d2f8:	dfc00215 	stw	ra,8(sp)
 200d2fc:	df000115 	stw	fp,4(sp)
 200d300:	df000104 	addi	fp,sp,4
 200d304:	e13fff15 	stw	r4,-4(fp)
 200d308:	e13fff17 	ldw	r4,-4(fp)
 200d30c:	01408074 	movhi	r5,513
 200d310:	29439c04 	addi	r5,r5,3696
 200d314:	200df800 	call	200df80 <alt_dev_llist_insert>
 200d318:	e037883a 	mov	sp,fp
 200d31c:	dfc00117 	ldw	ra,4(sp)
 200d320:	df000017 	ldw	fp,0(sp)
 200d324:	dec00204 	addi	sp,sp,8
 200d328:	f800283a 	ret

0200d32c <alt_irq_init>:
 200d32c:	defffd04 	addi	sp,sp,-12
 200d330:	dfc00215 	stw	ra,8(sp)
 200d334:	df000115 	stw	fp,4(sp)
 200d338:	df000104 	addi	fp,sp,4
 200d33c:	e13fff15 	stw	r4,-4(fp)
 200d340:	200e9240 	call	200e924 <altera_nios2_qsys_irq_init>
 200d344:	00800044 	movi	r2,1
 200d348:	1001703a 	wrctl	status,r2
 200d34c:	e037883a 	mov	sp,fp
 200d350:	dfc00117 	ldw	ra,4(sp)
 200d354:	df000017 	ldw	fp,0(sp)
 200d358:	dec00204 	addi	sp,sp,8
 200d35c:	f800283a 	ret

0200d360 <alt_sys_init>:
 200d360:	defffe04 	addi	sp,sp,-8
 200d364:	dfc00115 	stw	ra,4(sp)
 200d368:	df000015 	stw	fp,0(sp)
 200d36c:	d839883a 	mov	fp,sp
 200d370:	01008074 	movhi	r4,513
 200d374:	213f8604 	addi	r4,r4,-488
 200d378:	000b883a 	mov	r5,zero
 200d37c:	000d883a 	mov	r6,zero
 200d380:	200d5080 	call	200d508 <altera_avalon_jtag_uart_init>
 200d384:	01008074 	movhi	r4,513
 200d388:	213f7c04 	addi	r4,r4,-528
 200d38c:	200d2f40 	call	200d2f4 <alt_dev_reg>
 200d390:	e037883a 	mov	sp,fp
 200d394:	dfc00117 	ldw	ra,4(sp)
 200d398:	df000017 	ldw	fp,0(sp)
 200d39c:	dec00204 	addi	sp,sp,8
 200d3a0:	f800283a 	ret

0200d3a4 <altera_avalon_jtag_uart_read_fd>:
 200d3a4:	defffa04 	addi	sp,sp,-24
 200d3a8:	dfc00515 	stw	ra,20(sp)
 200d3ac:	df000415 	stw	fp,16(sp)
 200d3b0:	df000404 	addi	fp,sp,16
 200d3b4:	e13ffd15 	stw	r4,-12(fp)
 200d3b8:	e17ffe15 	stw	r5,-8(fp)
 200d3bc:	e1bfff15 	stw	r6,-4(fp)
 200d3c0:	e0bffd17 	ldw	r2,-12(fp)
 200d3c4:	10800017 	ldw	r2,0(r2)
 200d3c8:	e0bffc15 	stw	r2,-16(fp)
 200d3cc:	e0bffc17 	ldw	r2,-16(fp)
 200d3d0:	10c00a04 	addi	r3,r2,40
 200d3d4:	e0bffd17 	ldw	r2,-12(fp)
 200d3d8:	10800217 	ldw	r2,8(r2)
 200d3dc:	1809883a 	mov	r4,r3
 200d3e0:	e17ffe17 	ldw	r5,-8(fp)
 200d3e4:	e1bfff17 	ldw	r6,-4(fp)
 200d3e8:	100f883a 	mov	r7,r2
 200d3ec:	200d9cc0 	call	200d9cc <altera_avalon_jtag_uart_read>
 200d3f0:	e037883a 	mov	sp,fp
 200d3f4:	dfc00117 	ldw	ra,4(sp)
 200d3f8:	df000017 	ldw	fp,0(sp)
 200d3fc:	dec00204 	addi	sp,sp,8
 200d400:	f800283a 	ret

0200d404 <altera_avalon_jtag_uart_write_fd>:
 200d404:	defffa04 	addi	sp,sp,-24
 200d408:	dfc00515 	stw	ra,20(sp)
 200d40c:	df000415 	stw	fp,16(sp)
 200d410:	df000404 	addi	fp,sp,16
 200d414:	e13ffd15 	stw	r4,-12(fp)
 200d418:	e17ffe15 	stw	r5,-8(fp)
 200d41c:	e1bfff15 	stw	r6,-4(fp)
 200d420:	e0bffd17 	ldw	r2,-12(fp)
 200d424:	10800017 	ldw	r2,0(r2)
 200d428:	e0bffc15 	stw	r2,-16(fp)
 200d42c:	e0bffc17 	ldw	r2,-16(fp)
 200d430:	10c00a04 	addi	r3,r2,40
 200d434:	e0bffd17 	ldw	r2,-12(fp)
 200d438:	10800217 	ldw	r2,8(r2)
 200d43c:	1809883a 	mov	r4,r3
 200d440:	e17ffe17 	ldw	r5,-8(fp)
 200d444:	e1bfff17 	ldw	r6,-4(fp)
 200d448:	100f883a 	mov	r7,r2
 200d44c:	200dbd80 	call	200dbd8 <altera_avalon_jtag_uart_write>
 200d450:	e037883a 	mov	sp,fp
 200d454:	dfc00117 	ldw	ra,4(sp)
 200d458:	df000017 	ldw	fp,0(sp)
 200d45c:	dec00204 	addi	sp,sp,8
 200d460:	f800283a 	ret

0200d464 <altera_avalon_jtag_uart_close_fd>:
 200d464:	defffc04 	addi	sp,sp,-16
 200d468:	dfc00315 	stw	ra,12(sp)
 200d46c:	df000215 	stw	fp,8(sp)
 200d470:	df000204 	addi	fp,sp,8
 200d474:	e13fff15 	stw	r4,-4(fp)
 200d478:	e0bfff17 	ldw	r2,-4(fp)
 200d47c:	10800017 	ldw	r2,0(r2)
 200d480:	e0bffe15 	stw	r2,-8(fp)
 200d484:	e0bffe17 	ldw	r2,-8(fp)
 200d488:	10c00a04 	addi	r3,r2,40
 200d48c:	e0bfff17 	ldw	r2,-4(fp)
 200d490:	10800217 	ldw	r2,8(r2)
 200d494:	1809883a 	mov	r4,r3
 200d498:	100b883a 	mov	r5,r2
 200d49c:	200d8780 	call	200d878 <altera_avalon_jtag_uart_close>
 200d4a0:	e037883a 	mov	sp,fp
 200d4a4:	dfc00117 	ldw	ra,4(sp)
 200d4a8:	df000017 	ldw	fp,0(sp)
 200d4ac:	dec00204 	addi	sp,sp,8
 200d4b0:	f800283a 	ret

0200d4b4 <altera_avalon_jtag_uart_ioctl_fd>:
 200d4b4:	defffa04 	addi	sp,sp,-24
 200d4b8:	dfc00515 	stw	ra,20(sp)
 200d4bc:	df000415 	stw	fp,16(sp)
 200d4c0:	df000404 	addi	fp,sp,16
 200d4c4:	e13ffd15 	stw	r4,-12(fp)
 200d4c8:	e17ffe15 	stw	r5,-8(fp)
 200d4cc:	e1bfff15 	stw	r6,-4(fp)
 200d4d0:	e0bffd17 	ldw	r2,-12(fp)
 200d4d4:	10800017 	ldw	r2,0(r2)
 200d4d8:	e0bffc15 	stw	r2,-16(fp)
 200d4dc:	e0bffc17 	ldw	r2,-16(fp)
 200d4e0:	10800a04 	addi	r2,r2,40
 200d4e4:	1009883a 	mov	r4,r2
 200d4e8:	e17ffe17 	ldw	r5,-8(fp)
 200d4ec:	e1bfff17 	ldw	r6,-4(fp)
 200d4f0:	200d8e00 	call	200d8e0 <altera_avalon_jtag_uart_ioctl>
 200d4f4:	e037883a 	mov	sp,fp
 200d4f8:	dfc00117 	ldw	ra,4(sp)
 200d4fc:	df000017 	ldw	fp,0(sp)
 200d500:	dec00204 	addi	sp,sp,8
 200d504:	f800283a 	ret

0200d508 <altera_avalon_jtag_uart_init>:
 200d508:	defffa04 	addi	sp,sp,-24
 200d50c:	dfc00515 	stw	ra,20(sp)
 200d510:	df000415 	stw	fp,16(sp)
 200d514:	df000404 	addi	fp,sp,16
 200d518:	e13ffd15 	stw	r4,-12(fp)
 200d51c:	e17ffe15 	stw	r5,-8(fp)
 200d520:	e1bfff15 	stw	r6,-4(fp)
 200d524:	e0bffd17 	ldw	r2,-12(fp)
 200d528:	00c00044 	movi	r3,1
 200d52c:	10c00815 	stw	r3,32(r2)
 200d530:	e0bffd17 	ldw	r2,-12(fp)
 200d534:	10800017 	ldw	r2,0(r2)
 200d538:	10800104 	addi	r2,r2,4
 200d53c:	1007883a 	mov	r3,r2
 200d540:	e0bffd17 	ldw	r2,-12(fp)
 200d544:	10800817 	ldw	r2,32(r2)
 200d548:	18800035 	stwio	r2,0(r3)
 200d54c:	e0fffe17 	ldw	r3,-8(fp)
 200d550:	e0bfff17 	ldw	r2,-4(fp)
 200d554:	d8000015 	stw	zero,0(sp)
 200d558:	1809883a 	mov	r4,r3
 200d55c:	100b883a 	mov	r5,r2
 200d560:	01808074 	movhi	r6,513
 200d564:	31b57304 	addi	r6,r6,-10804
 200d568:	e1fffd17 	ldw	r7,-12(fp)
 200d56c:	200e10c0 	call	200e10c <alt_ic_isr_register>
 200d570:	e0bffd17 	ldw	r2,-12(fp)
 200d574:	10000915 	stw	zero,36(r2)
 200d578:	e0bffd17 	ldw	r2,-12(fp)
 200d57c:	10c00204 	addi	r3,r2,8
 200d580:	00808074 	movhi	r2,513
 200d584:	108a6a04 	addi	r2,r2,10664
 200d588:	10800017 	ldw	r2,0(r2)
 200d58c:	1809883a 	mov	r4,r3
 200d590:	100b883a 	mov	r5,r2
 200d594:	01808074 	movhi	r6,513
 200d598:	31b5f404 	addi	r6,r6,-10288
 200d59c:	e1fffd17 	ldw	r7,-12(fp)
 200d5a0:	200ddf00 	call	200ddf0 <alt_alarm_start>
 200d5a4:	1000040e 	bge	r2,zero,200d5b8 <altera_avalon_jtag_uart_init+0xb0>
 200d5a8:	e0fffd17 	ldw	r3,-12(fp)
 200d5ac:	00a00034 	movhi	r2,32768
 200d5b0:	10bfffc4 	addi	r2,r2,-1
 200d5b4:	18800115 	stw	r2,4(r3)
 200d5b8:	e037883a 	mov	sp,fp
 200d5bc:	dfc00117 	ldw	ra,4(sp)
 200d5c0:	df000017 	ldw	fp,0(sp)
 200d5c4:	dec00204 	addi	sp,sp,8
 200d5c8:	f800283a 	ret

0200d5cc <altera_avalon_jtag_uart_irq>:
 200d5cc:	defff804 	addi	sp,sp,-32
 200d5d0:	df000715 	stw	fp,28(sp)
 200d5d4:	df000704 	addi	fp,sp,28
 200d5d8:	e13fff15 	stw	r4,-4(fp)
 200d5dc:	e0bfff17 	ldw	r2,-4(fp)
 200d5e0:	e0bffb15 	stw	r2,-20(fp)
 200d5e4:	e0bffb17 	ldw	r2,-20(fp)
 200d5e8:	10800017 	ldw	r2,0(r2)
 200d5ec:	e0bffc15 	stw	r2,-16(fp)
 200d5f0:	e0bffc17 	ldw	r2,-16(fp)
 200d5f4:	10800104 	addi	r2,r2,4
 200d5f8:	10800037 	ldwio	r2,0(r2)
 200d5fc:	e0bffd15 	stw	r2,-12(fp)
 200d600:	e0bffd17 	ldw	r2,-12(fp)
 200d604:	1080c00c 	andi	r2,r2,768
 200d608:	1000011e 	bne	r2,zero,200d610 <altera_avalon_jtag_uart_irq+0x44>
 200d60c:	00006c06 	br	200d7c0 <altera_avalon_jtag_uart_irq+0x1f4>
 200d610:	e0bffd17 	ldw	r2,-12(fp)
 200d614:	1080400c 	andi	r2,r2,256
 200d618:	10003426 	beq	r2,zero,200d6ec <altera_avalon_jtag_uart_irq+0x120>
 200d61c:	00800074 	movhi	r2,1
 200d620:	e0bff915 	stw	r2,-28(fp)
 200d624:	e0bffb17 	ldw	r2,-20(fp)
 200d628:	10800a17 	ldw	r2,40(r2)
 200d62c:	10800044 	addi	r2,r2,1
 200d630:	1081ffcc 	andi	r2,r2,2047
 200d634:	e0bffe15 	stw	r2,-8(fp)
 200d638:	e0bffb17 	ldw	r2,-20(fp)
 200d63c:	10c00b17 	ldw	r3,44(r2)
 200d640:	e0bffe17 	ldw	r2,-8(fp)
 200d644:	1880011e 	bne	r3,r2,200d64c <altera_avalon_jtag_uart_irq+0x80>
 200d648:	00001606 	br	200d6a4 <altera_avalon_jtag_uart_irq+0xd8>
 200d64c:	e0bffc17 	ldw	r2,-16(fp)
 200d650:	10800037 	ldwio	r2,0(r2)
 200d654:	e0bff915 	stw	r2,-28(fp)
 200d658:	e0bff917 	ldw	r2,-28(fp)
 200d65c:	10a0000c 	andi	r2,r2,32768
 200d660:	1000011e 	bne	r2,zero,200d668 <altera_avalon_jtag_uart_irq+0x9c>
 200d664:	00000f06 	br	200d6a4 <altera_avalon_jtag_uart_irq+0xd8>
 200d668:	e0bffb17 	ldw	r2,-20(fp)
 200d66c:	10800a17 	ldw	r2,40(r2)
 200d670:	e0fff917 	ldw	r3,-28(fp)
 200d674:	1809883a 	mov	r4,r3
 200d678:	e0fffb17 	ldw	r3,-20(fp)
 200d67c:	1885883a 	add	r2,r3,r2
 200d680:	10800e04 	addi	r2,r2,56
 200d684:	11000005 	stb	r4,0(r2)
 200d688:	e0bffb17 	ldw	r2,-20(fp)
 200d68c:	10800a17 	ldw	r2,40(r2)
 200d690:	10800044 	addi	r2,r2,1
 200d694:	10c1ffcc 	andi	r3,r2,2047
 200d698:	e0bffb17 	ldw	r2,-20(fp)
 200d69c:	10c00a15 	stw	r3,40(r2)
 200d6a0:	003fe006 	br	200d624 <altera_avalon_jtag_uart_irq+0x58>
 200d6a4:	e0bff917 	ldw	r2,-28(fp)
 200d6a8:	10bfffec 	andhi	r2,r2,65535
 200d6ac:	10000f26 	beq	r2,zero,200d6ec <altera_avalon_jtag_uart_irq+0x120>
 200d6b0:	e0bffb17 	ldw	r2,-20(fp)
 200d6b4:	10c00817 	ldw	r3,32(r2)
 200d6b8:	00bfff84 	movi	r2,-2
 200d6bc:	1886703a 	and	r3,r3,r2
 200d6c0:	e0bffb17 	ldw	r2,-20(fp)
 200d6c4:	10c00815 	stw	r3,32(r2)
 200d6c8:	e0bffc17 	ldw	r2,-16(fp)
 200d6cc:	10800104 	addi	r2,r2,4
 200d6d0:	1007883a 	mov	r3,r2
 200d6d4:	e0bffb17 	ldw	r2,-20(fp)
 200d6d8:	10800817 	ldw	r2,32(r2)
 200d6dc:	18800035 	stwio	r2,0(r3)
 200d6e0:	e0bffc17 	ldw	r2,-16(fp)
 200d6e4:	10800104 	addi	r2,r2,4
 200d6e8:	10800037 	ldwio	r2,0(r2)
 200d6ec:	e0bffd17 	ldw	r2,-12(fp)
 200d6f0:	1080800c 	andi	r2,r2,512
 200d6f4:	10003126 	beq	r2,zero,200d7bc <altera_avalon_jtag_uart_irq+0x1f0>
 200d6f8:	e0bffd17 	ldw	r2,-12(fp)
 200d6fc:	1004d43a 	srli	r2,r2,16
 200d700:	e0bffa15 	stw	r2,-24(fp)
 200d704:	00001406 	br	200d758 <altera_avalon_jtag_uart_irq+0x18c>
 200d708:	e0bffc17 	ldw	r2,-16(fp)
 200d70c:	e0fffb17 	ldw	r3,-20(fp)
 200d710:	18c00d17 	ldw	r3,52(r3)
 200d714:	e13ffb17 	ldw	r4,-20(fp)
 200d718:	20c7883a 	add	r3,r4,r3
 200d71c:	18c20e04 	addi	r3,r3,2104
 200d720:	18c00003 	ldbu	r3,0(r3)
 200d724:	18c03fcc 	andi	r3,r3,255
 200d728:	18c0201c 	xori	r3,r3,128
 200d72c:	18ffe004 	addi	r3,r3,-128
 200d730:	10c00035 	stwio	r3,0(r2)
 200d734:	e0bffb17 	ldw	r2,-20(fp)
 200d738:	10800d17 	ldw	r2,52(r2)
 200d73c:	10800044 	addi	r2,r2,1
 200d740:	10c1ffcc 	andi	r3,r2,2047
 200d744:	e0bffb17 	ldw	r2,-20(fp)
 200d748:	10c00d15 	stw	r3,52(r2)
 200d74c:	e0bffa17 	ldw	r2,-24(fp)
 200d750:	10bfffc4 	addi	r2,r2,-1
 200d754:	e0bffa15 	stw	r2,-24(fp)
 200d758:	e0bffa17 	ldw	r2,-24(fp)
 200d75c:	10000526 	beq	r2,zero,200d774 <altera_avalon_jtag_uart_irq+0x1a8>
 200d760:	e0bffb17 	ldw	r2,-20(fp)
 200d764:	10c00d17 	ldw	r3,52(r2)
 200d768:	e0bffb17 	ldw	r2,-20(fp)
 200d76c:	10800c17 	ldw	r2,48(r2)
 200d770:	18bfe51e 	bne	r3,r2,200d708 <altera_avalon_jtag_uart_irq+0x13c>
 200d774:	e0bffa17 	ldw	r2,-24(fp)
 200d778:	10001026 	beq	r2,zero,200d7bc <altera_avalon_jtag_uart_irq+0x1f0>
 200d77c:	e0bffb17 	ldw	r2,-20(fp)
 200d780:	10c00817 	ldw	r3,32(r2)
 200d784:	00bfff44 	movi	r2,-3
 200d788:	1886703a 	and	r3,r3,r2
 200d78c:	e0bffb17 	ldw	r2,-20(fp)
 200d790:	10c00815 	stw	r3,32(r2)
 200d794:	e0bffb17 	ldw	r2,-20(fp)
 200d798:	10800017 	ldw	r2,0(r2)
 200d79c:	10800104 	addi	r2,r2,4
 200d7a0:	1007883a 	mov	r3,r2
 200d7a4:	e0bffb17 	ldw	r2,-20(fp)
 200d7a8:	10800817 	ldw	r2,32(r2)
 200d7ac:	18800035 	stwio	r2,0(r3)
 200d7b0:	e0bffc17 	ldw	r2,-16(fp)
 200d7b4:	10800104 	addi	r2,r2,4
 200d7b8:	10800037 	ldwio	r2,0(r2)
 200d7bc:	003f8c06 	br	200d5f0 <altera_avalon_jtag_uart_irq+0x24>
 200d7c0:	e037883a 	mov	sp,fp
 200d7c4:	df000017 	ldw	fp,0(sp)
 200d7c8:	dec00104 	addi	sp,sp,4
 200d7cc:	f800283a 	ret

0200d7d0 <altera_avalon_jtag_uart_timeout>:
 200d7d0:	defff804 	addi	sp,sp,-32
 200d7d4:	df000715 	stw	fp,28(sp)
 200d7d8:	df000704 	addi	fp,sp,28
 200d7dc:	e13ffb15 	stw	r4,-20(fp)
 200d7e0:	e0bffb17 	ldw	r2,-20(fp)
 200d7e4:	e0bff915 	stw	r2,-28(fp)
 200d7e8:	e0bff917 	ldw	r2,-28(fp)
 200d7ec:	10800017 	ldw	r2,0(r2)
 200d7f0:	10800104 	addi	r2,r2,4
 200d7f4:	10800037 	ldwio	r2,0(r2)
 200d7f8:	e0bffa15 	stw	r2,-24(fp)
 200d7fc:	e0bffa17 	ldw	r2,-24(fp)
 200d800:	1081000c 	andi	r2,r2,1024
 200d804:	10000b26 	beq	r2,zero,200d834 <altera_avalon_jtag_uart_timeout+0x64>
 200d808:	e0bff917 	ldw	r2,-28(fp)
 200d80c:	10800017 	ldw	r2,0(r2)
 200d810:	10800104 	addi	r2,r2,4
 200d814:	1007883a 	mov	r3,r2
 200d818:	e0bff917 	ldw	r2,-28(fp)
 200d81c:	10800817 	ldw	r2,32(r2)
 200d820:	10810014 	ori	r2,r2,1024
 200d824:	18800035 	stwio	r2,0(r3)
 200d828:	e0bff917 	ldw	r2,-28(fp)
 200d82c:	10000915 	stw	zero,36(r2)
 200d830:	00000a06 	br	200d85c <altera_avalon_jtag_uart_timeout+0x8c>
 200d834:	e0bff917 	ldw	r2,-28(fp)
 200d838:	10c00917 	ldw	r3,36(r2)
 200d83c:	00a00034 	movhi	r2,32768
 200d840:	10bfff04 	addi	r2,r2,-4
 200d844:	10c00536 	bltu	r2,r3,200d85c <altera_avalon_jtag_uart_timeout+0x8c>
 200d848:	e0bff917 	ldw	r2,-28(fp)
 200d84c:	10800917 	ldw	r2,36(r2)
 200d850:	10c00044 	addi	r3,r2,1
 200d854:	e0bff917 	ldw	r2,-28(fp)
 200d858:	10c00915 	stw	r3,36(r2)
 200d85c:	00808074 	movhi	r2,513
 200d860:	108a6a04 	addi	r2,r2,10664
 200d864:	10800017 	ldw	r2,0(r2)
 200d868:	e037883a 	mov	sp,fp
 200d86c:	df000017 	ldw	fp,0(sp)
 200d870:	dec00104 	addi	sp,sp,4
 200d874:	f800283a 	ret

0200d878 <altera_avalon_jtag_uart_close>:
 200d878:	defffd04 	addi	sp,sp,-12
 200d87c:	df000215 	stw	fp,8(sp)
 200d880:	df000204 	addi	fp,sp,8
 200d884:	e13ffe15 	stw	r4,-8(fp)
 200d888:	e17fff15 	stw	r5,-4(fp)
 200d88c:	00000506 	br	200d8a4 <altera_avalon_jtag_uart_close+0x2c>
 200d890:	e0bfff17 	ldw	r2,-4(fp)
 200d894:	1090000c 	andi	r2,r2,16384
 200d898:	10000226 	beq	r2,zero,200d8a4 <altera_avalon_jtag_uart_close+0x2c>
 200d89c:	00bffd44 	movi	r2,-11
 200d8a0:	00000b06 	br	200d8d0 <altera_avalon_jtag_uart_close+0x58>
 200d8a4:	e0bffe17 	ldw	r2,-8(fp)
 200d8a8:	10c00d17 	ldw	r3,52(r2)
 200d8ac:	e0bffe17 	ldw	r2,-8(fp)
 200d8b0:	10800c17 	ldw	r2,48(r2)
 200d8b4:	18800526 	beq	r3,r2,200d8cc <altera_avalon_jtag_uart_close+0x54>
 200d8b8:	e0bffe17 	ldw	r2,-8(fp)
 200d8bc:	10c00917 	ldw	r3,36(r2)
 200d8c0:	e0bffe17 	ldw	r2,-8(fp)
 200d8c4:	10800117 	ldw	r2,4(r2)
 200d8c8:	18bff136 	bltu	r3,r2,200d890 <altera_avalon_jtag_uart_close+0x18>
 200d8cc:	0005883a 	mov	r2,zero
 200d8d0:	e037883a 	mov	sp,fp
 200d8d4:	df000017 	ldw	fp,0(sp)
 200d8d8:	dec00104 	addi	sp,sp,4
 200d8dc:	f800283a 	ret

0200d8e0 <altera_avalon_jtag_uart_ioctl>:
 200d8e0:	defffa04 	addi	sp,sp,-24
 200d8e4:	df000515 	stw	fp,20(sp)
 200d8e8:	df000504 	addi	fp,sp,20
 200d8ec:	e13ffd15 	stw	r4,-12(fp)
 200d8f0:	e17ffe15 	stw	r5,-8(fp)
 200d8f4:	e1bfff15 	stw	r6,-4(fp)
 200d8f8:	00bff9c4 	movi	r2,-25
 200d8fc:	e0bffb15 	stw	r2,-20(fp)
 200d900:	e0bffe17 	ldw	r2,-8(fp)
 200d904:	10da8060 	cmpeqi	r3,r2,27137
 200d908:	1800031e 	bne	r3,zero,200d918 <altera_avalon_jtag_uart_ioctl+0x38>
 200d90c:	109a80a0 	cmpeqi	r2,r2,27138
 200d910:	1000191e 	bne	r2,zero,200d978 <altera_avalon_jtag_uart_ioctl+0x98>
 200d914:	00002806 	br	200d9b8 <altera_avalon_jtag_uart_ioctl+0xd8>
 200d918:	e0bffd17 	ldw	r2,-12(fp)
 200d91c:	10c00117 	ldw	r3,4(r2)
 200d920:	00a00034 	movhi	r2,32768
 200d924:	10bfffc4 	addi	r2,r2,-1
 200d928:	18801226 	beq	r3,r2,200d974 <altera_avalon_jtag_uart_ioctl+0x94>
 200d92c:	e0bfff17 	ldw	r2,-4(fp)
 200d930:	10800017 	ldw	r2,0(r2)
 200d934:	e0bffc15 	stw	r2,-16(fp)
 200d938:	e0bffc17 	ldw	r2,-16(fp)
 200d93c:	10800090 	cmplti	r2,r2,2
 200d940:	1000061e 	bne	r2,zero,200d95c <altera_avalon_jtag_uart_ioctl+0x7c>
 200d944:	e0fffc17 	ldw	r3,-16(fp)
 200d948:	00a00034 	movhi	r2,32768
 200d94c:	10bfffc4 	addi	r2,r2,-1
 200d950:	18800226 	beq	r3,r2,200d95c <altera_avalon_jtag_uart_ioctl+0x7c>
 200d954:	e0bffc17 	ldw	r2,-16(fp)
 200d958:	00000206 	br	200d964 <altera_avalon_jtag_uart_ioctl+0x84>
 200d95c:	00a00034 	movhi	r2,32768
 200d960:	10bfff84 	addi	r2,r2,-2
 200d964:	e0fffd17 	ldw	r3,-12(fp)
 200d968:	18800115 	stw	r2,4(r3)
 200d96c:	e03ffb15 	stw	zero,-20(fp)
 200d970:	00001106 	br	200d9b8 <altera_avalon_jtag_uart_ioctl+0xd8>
 200d974:	00001006 	br	200d9b8 <altera_avalon_jtag_uart_ioctl+0xd8>
 200d978:	e0bffd17 	ldw	r2,-12(fp)
 200d97c:	10c00117 	ldw	r3,4(r2)
 200d980:	00a00034 	movhi	r2,32768
 200d984:	10bfffc4 	addi	r2,r2,-1
 200d988:	18800a26 	beq	r3,r2,200d9b4 <altera_avalon_jtag_uart_ioctl+0xd4>
 200d98c:	e0bffd17 	ldw	r2,-12(fp)
 200d990:	10c00917 	ldw	r3,36(r2)
 200d994:	e0bffd17 	ldw	r2,-12(fp)
 200d998:	10800117 	ldw	r2,4(r2)
 200d99c:	1885803a 	cmpltu	r2,r3,r2
 200d9a0:	10c03fcc 	andi	r3,r2,255
 200d9a4:	e0bfff17 	ldw	r2,-4(fp)
 200d9a8:	10c00015 	stw	r3,0(r2)
 200d9ac:	e03ffb15 	stw	zero,-20(fp)
 200d9b0:	00000006 	br	200d9b4 <altera_avalon_jtag_uart_ioctl+0xd4>
 200d9b4:	0001883a 	nop
 200d9b8:	e0bffb17 	ldw	r2,-20(fp)
 200d9bc:	e037883a 	mov	sp,fp
 200d9c0:	df000017 	ldw	fp,0(sp)
 200d9c4:	dec00104 	addi	sp,sp,4
 200d9c8:	f800283a 	ret

0200d9cc <altera_avalon_jtag_uart_read>:
 200d9cc:	defff304 	addi	sp,sp,-52
 200d9d0:	dfc00c15 	stw	ra,48(sp)
 200d9d4:	df000b15 	stw	fp,44(sp)
 200d9d8:	df000b04 	addi	fp,sp,44
 200d9dc:	e13ffc15 	stw	r4,-16(fp)
 200d9e0:	e17ffd15 	stw	r5,-12(fp)
 200d9e4:	e1bffe15 	stw	r6,-8(fp)
 200d9e8:	e1ffff15 	stw	r7,-4(fp)
 200d9ec:	e0bffd17 	ldw	r2,-12(fp)
 200d9f0:	e0bff515 	stw	r2,-44(fp)
 200d9f4:	00004906 	br	200db1c <altera_avalon_jtag_uart_read+0x150>
 200d9f8:	e0bffc17 	ldw	r2,-16(fp)
 200d9fc:	10800a17 	ldw	r2,40(r2)
 200da00:	e0bff715 	stw	r2,-36(fp)
 200da04:	e0bffc17 	ldw	r2,-16(fp)
 200da08:	10800b17 	ldw	r2,44(r2)
 200da0c:	e0bff815 	stw	r2,-32(fp)
 200da10:	e0fff717 	ldw	r3,-36(fp)
 200da14:	e0bff817 	ldw	r2,-32(fp)
 200da18:	18800536 	bltu	r3,r2,200da30 <altera_avalon_jtag_uart_read+0x64>
 200da1c:	e0fff717 	ldw	r3,-36(fp)
 200da20:	e0bff817 	ldw	r2,-32(fp)
 200da24:	1885c83a 	sub	r2,r3,r2
 200da28:	e0bff615 	stw	r2,-40(fp)
 200da2c:	00000406 	br	200da40 <altera_avalon_jtag_uart_read+0x74>
 200da30:	00c20004 	movi	r3,2048
 200da34:	e0bff817 	ldw	r2,-32(fp)
 200da38:	1885c83a 	sub	r2,r3,r2
 200da3c:	e0bff615 	stw	r2,-40(fp)
 200da40:	e0bff617 	ldw	r2,-40(fp)
 200da44:	1000011e 	bne	r2,zero,200da4c <altera_avalon_jtag_uart_read+0x80>
 200da48:	00001d06 	br	200dac0 <altera_avalon_jtag_uart_read+0xf4>
 200da4c:	e0fffe17 	ldw	r3,-8(fp)
 200da50:	e0bff617 	ldw	r2,-40(fp)
 200da54:	1880022e 	bgeu	r3,r2,200da60 <altera_avalon_jtag_uart_read+0x94>
 200da58:	e0bffe17 	ldw	r2,-8(fp)
 200da5c:	e0bff615 	stw	r2,-40(fp)
 200da60:	e0bff817 	ldw	r2,-32(fp)
 200da64:	10800e04 	addi	r2,r2,56
 200da68:	e0fffc17 	ldw	r3,-16(fp)
 200da6c:	1885883a 	add	r2,r3,r2
 200da70:	e13ff517 	ldw	r4,-44(fp)
 200da74:	100b883a 	mov	r5,r2
 200da78:	e1bff617 	ldw	r6,-40(fp)
 200da7c:	2005d9c0 	call	2005d9c <memcpy>
 200da80:	e0fff517 	ldw	r3,-44(fp)
 200da84:	e0bff617 	ldw	r2,-40(fp)
 200da88:	1885883a 	add	r2,r3,r2
 200da8c:	e0bff515 	stw	r2,-44(fp)
 200da90:	e0fffe17 	ldw	r3,-8(fp)
 200da94:	e0bff617 	ldw	r2,-40(fp)
 200da98:	1885c83a 	sub	r2,r3,r2
 200da9c:	e0bffe15 	stw	r2,-8(fp)
 200daa0:	e0fff817 	ldw	r3,-32(fp)
 200daa4:	e0bff617 	ldw	r2,-40(fp)
 200daa8:	1885883a 	add	r2,r3,r2
 200daac:	10c1ffcc 	andi	r3,r2,2047
 200dab0:	e0bffc17 	ldw	r2,-16(fp)
 200dab4:	10c00b15 	stw	r3,44(r2)
 200dab8:	e0bffe17 	ldw	r2,-8(fp)
 200dabc:	00bfce16 	blt	zero,r2,200d9f8 <altera_avalon_jtag_uart_read+0x2c>
 200dac0:	e0fff517 	ldw	r3,-44(fp)
 200dac4:	e0bffd17 	ldw	r2,-12(fp)
 200dac8:	18800126 	beq	r3,r2,200dad0 <altera_avalon_jtag_uart_read+0x104>
 200dacc:	00001506 	br	200db24 <altera_avalon_jtag_uart_read+0x158>
 200dad0:	e0bfff17 	ldw	r2,-4(fp)
 200dad4:	1090000c 	andi	r2,r2,16384
 200dad8:	10000126 	beq	r2,zero,200dae0 <altera_avalon_jtag_uart_read+0x114>
 200dadc:	00001106 	br	200db24 <altera_avalon_jtag_uart_read+0x158>
 200dae0:	0001883a 	nop
 200dae4:	e0bffc17 	ldw	r2,-16(fp)
 200dae8:	10c00a17 	ldw	r3,40(r2)
 200daec:	e0bff717 	ldw	r2,-36(fp)
 200daf0:	1880051e 	bne	r3,r2,200db08 <altera_avalon_jtag_uart_read+0x13c>
 200daf4:	e0bffc17 	ldw	r2,-16(fp)
 200daf8:	10c00917 	ldw	r3,36(r2)
 200dafc:	e0bffc17 	ldw	r2,-16(fp)
 200db00:	10800117 	ldw	r2,4(r2)
 200db04:	18bff736 	bltu	r3,r2,200dae4 <altera_avalon_jtag_uart_read+0x118>
 200db08:	e0bffc17 	ldw	r2,-16(fp)
 200db0c:	10c00a17 	ldw	r3,40(r2)
 200db10:	e0bff717 	ldw	r2,-36(fp)
 200db14:	1880011e 	bne	r3,r2,200db1c <altera_avalon_jtag_uart_read+0x150>
 200db18:	00000206 	br	200db24 <altera_avalon_jtag_uart_read+0x158>
 200db1c:	e0bffe17 	ldw	r2,-8(fp)
 200db20:	00bfb516 	blt	zero,r2,200d9f8 <altera_avalon_jtag_uart_read+0x2c>
 200db24:	e0fff517 	ldw	r3,-44(fp)
 200db28:	e0bffd17 	ldw	r2,-12(fp)
 200db2c:	18801826 	beq	r3,r2,200db90 <altera_avalon_jtag_uart_read+0x1c4>
 200db30:	0005303a 	rdctl	r2,status
 200db34:	e0bffa15 	stw	r2,-24(fp)
 200db38:	e0fffa17 	ldw	r3,-24(fp)
 200db3c:	00bfff84 	movi	r2,-2
 200db40:	1884703a 	and	r2,r3,r2
 200db44:	1001703a 	wrctl	status,r2
 200db48:	e0bffa17 	ldw	r2,-24(fp)
 200db4c:	e0bff915 	stw	r2,-28(fp)
 200db50:	e0bffc17 	ldw	r2,-16(fp)
 200db54:	10800817 	ldw	r2,32(r2)
 200db58:	10c00054 	ori	r3,r2,1
 200db5c:	e0bffc17 	ldw	r2,-16(fp)
 200db60:	10c00815 	stw	r3,32(r2)
 200db64:	e0bffc17 	ldw	r2,-16(fp)
 200db68:	10800017 	ldw	r2,0(r2)
 200db6c:	10800104 	addi	r2,r2,4
 200db70:	1007883a 	mov	r3,r2
 200db74:	e0bffc17 	ldw	r2,-16(fp)
 200db78:	10800817 	ldw	r2,32(r2)
 200db7c:	18800035 	stwio	r2,0(r3)
 200db80:	e0bff917 	ldw	r2,-28(fp)
 200db84:	e0bffb15 	stw	r2,-20(fp)
 200db88:	e0bffb17 	ldw	r2,-20(fp)
 200db8c:	1001703a 	wrctl	status,r2
 200db90:	e0fff517 	ldw	r3,-44(fp)
 200db94:	e0bffd17 	ldw	r2,-12(fp)
 200db98:	18800426 	beq	r3,r2,200dbac <altera_avalon_jtag_uart_read+0x1e0>
 200db9c:	e0fff517 	ldw	r3,-44(fp)
 200dba0:	e0bffd17 	ldw	r2,-12(fp)
 200dba4:	1885c83a 	sub	r2,r3,r2
 200dba8:	00000606 	br	200dbc4 <altera_avalon_jtag_uart_read+0x1f8>
 200dbac:	e0bfff17 	ldw	r2,-4(fp)
 200dbb0:	1090000c 	andi	r2,r2,16384
 200dbb4:	10000226 	beq	r2,zero,200dbc0 <altera_avalon_jtag_uart_read+0x1f4>
 200dbb8:	00bffd44 	movi	r2,-11
 200dbbc:	00000106 	br	200dbc4 <altera_avalon_jtag_uart_read+0x1f8>
 200dbc0:	00bffec4 	movi	r2,-5
 200dbc4:	e037883a 	mov	sp,fp
 200dbc8:	dfc00117 	ldw	ra,4(sp)
 200dbcc:	df000017 	ldw	fp,0(sp)
 200dbd0:	dec00204 	addi	sp,sp,8
 200dbd4:	f800283a 	ret

0200dbd8 <altera_avalon_jtag_uart_write>:
 200dbd8:	defff304 	addi	sp,sp,-52
 200dbdc:	dfc00c15 	stw	ra,48(sp)
 200dbe0:	df000b15 	stw	fp,44(sp)
 200dbe4:	df000b04 	addi	fp,sp,44
 200dbe8:	e13ffc15 	stw	r4,-16(fp)
 200dbec:	e17ffd15 	stw	r5,-12(fp)
 200dbf0:	e1bffe15 	stw	r6,-8(fp)
 200dbf4:	e1ffff15 	stw	r7,-4(fp)
 200dbf8:	e03ff515 	stw	zero,-44(fp)
 200dbfc:	e0bffd17 	ldw	r2,-12(fp)
 200dc00:	e0bff715 	stw	r2,-36(fp)
 200dc04:	00003806 	br	200dce8 <altera_avalon_jtag_uart_write+0x110>
 200dc08:	e0bffc17 	ldw	r2,-16(fp)
 200dc0c:	10800c17 	ldw	r2,48(r2)
 200dc10:	e0bff815 	stw	r2,-32(fp)
 200dc14:	e0bffc17 	ldw	r2,-16(fp)
 200dc18:	10800d17 	ldw	r2,52(r2)
 200dc1c:	e0bff515 	stw	r2,-44(fp)
 200dc20:	e0fff817 	ldw	r3,-32(fp)
 200dc24:	e0bff517 	ldw	r2,-44(fp)
 200dc28:	1880062e 	bgeu	r3,r2,200dc44 <altera_avalon_jtag_uart_write+0x6c>
 200dc2c:	e0fff517 	ldw	r3,-44(fp)
 200dc30:	e0bff817 	ldw	r2,-32(fp)
 200dc34:	1885c83a 	sub	r2,r3,r2
 200dc38:	10bfffc4 	addi	r2,r2,-1
 200dc3c:	e0bff615 	stw	r2,-40(fp)
 200dc40:	00000b06 	br	200dc70 <altera_avalon_jtag_uart_write+0x98>
 200dc44:	e0bff517 	ldw	r2,-44(fp)
 200dc48:	10000526 	beq	r2,zero,200dc60 <altera_avalon_jtag_uart_write+0x88>
 200dc4c:	00c20004 	movi	r3,2048
 200dc50:	e0bff817 	ldw	r2,-32(fp)
 200dc54:	1885c83a 	sub	r2,r3,r2
 200dc58:	e0bff615 	stw	r2,-40(fp)
 200dc5c:	00000406 	br	200dc70 <altera_avalon_jtag_uart_write+0x98>
 200dc60:	00c1ffc4 	movi	r3,2047
 200dc64:	e0bff817 	ldw	r2,-32(fp)
 200dc68:	1885c83a 	sub	r2,r3,r2
 200dc6c:	e0bff615 	stw	r2,-40(fp)
 200dc70:	e0bff617 	ldw	r2,-40(fp)
 200dc74:	1000011e 	bne	r2,zero,200dc7c <altera_avalon_jtag_uart_write+0xa4>
 200dc78:	00001d06 	br	200dcf0 <altera_avalon_jtag_uart_write+0x118>
 200dc7c:	e0fffe17 	ldw	r3,-8(fp)
 200dc80:	e0bff617 	ldw	r2,-40(fp)
 200dc84:	1880022e 	bgeu	r3,r2,200dc90 <altera_avalon_jtag_uart_write+0xb8>
 200dc88:	e0bffe17 	ldw	r2,-8(fp)
 200dc8c:	e0bff615 	stw	r2,-40(fp)
 200dc90:	e0bff817 	ldw	r2,-32(fp)
 200dc94:	10820e04 	addi	r2,r2,2104
 200dc98:	e0fffc17 	ldw	r3,-16(fp)
 200dc9c:	1885883a 	add	r2,r3,r2
 200dca0:	1009883a 	mov	r4,r2
 200dca4:	e17ffd17 	ldw	r5,-12(fp)
 200dca8:	e1bff617 	ldw	r6,-40(fp)
 200dcac:	2005d9c0 	call	2005d9c <memcpy>
 200dcb0:	e0fffd17 	ldw	r3,-12(fp)
 200dcb4:	e0bff617 	ldw	r2,-40(fp)
 200dcb8:	1885883a 	add	r2,r3,r2
 200dcbc:	e0bffd15 	stw	r2,-12(fp)
 200dcc0:	e0fffe17 	ldw	r3,-8(fp)
 200dcc4:	e0bff617 	ldw	r2,-40(fp)
 200dcc8:	1885c83a 	sub	r2,r3,r2
 200dccc:	e0bffe15 	stw	r2,-8(fp)
 200dcd0:	e0fff817 	ldw	r3,-32(fp)
 200dcd4:	e0bff617 	ldw	r2,-40(fp)
 200dcd8:	1885883a 	add	r2,r3,r2
 200dcdc:	10c1ffcc 	andi	r3,r2,2047
 200dce0:	e0bffc17 	ldw	r2,-16(fp)
 200dce4:	10c00c15 	stw	r3,48(r2)
 200dce8:	e0bffe17 	ldw	r2,-8(fp)
 200dcec:	00bfc616 	blt	zero,r2,200dc08 <altera_avalon_jtag_uart_write+0x30>
 200dcf0:	0005303a 	rdctl	r2,status
 200dcf4:	e0bffa15 	stw	r2,-24(fp)
 200dcf8:	e0fffa17 	ldw	r3,-24(fp)
 200dcfc:	00bfff84 	movi	r2,-2
 200dd00:	1884703a 	and	r2,r3,r2
 200dd04:	1001703a 	wrctl	status,r2
 200dd08:	e0bffa17 	ldw	r2,-24(fp)
 200dd0c:	e0bff915 	stw	r2,-28(fp)
 200dd10:	e0bffc17 	ldw	r2,-16(fp)
 200dd14:	10800817 	ldw	r2,32(r2)
 200dd18:	10c00094 	ori	r3,r2,2
 200dd1c:	e0bffc17 	ldw	r2,-16(fp)
 200dd20:	10c00815 	stw	r3,32(r2)
 200dd24:	e0bffc17 	ldw	r2,-16(fp)
 200dd28:	10800017 	ldw	r2,0(r2)
 200dd2c:	10800104 	addi	r2,r2,4
 200dd30:	1007883a 	mov	r3,r2
 200dd34:	e0bffc17 	ldw	r2,-16(fp)
 200dd38:	10800817 	ldw	r2,32(r2)
 200dd3c:	18800035 	stwio	r2,0(r3)
 200dd40:	e0bff917 	ldw	r2,-28(fp)
 200dd44:	e0bffb15 	stw	r2,-20(fp)
 200dd48:	e0bffb17 	ldw	r2,-20(fp)
 200dd4c:	1001703a 	wrctl	status,r2
 200dd50:	e0bffe17 	ldw	r2,-8(fp)
 200dd54:	0080120e 	bge	zero,r2,200dda0 <altera_avalon_jtag_uart_write+0x1c8>
 200dd58:	e0bfff17 	ldw	r2,-4(fp)
 200dd5c:	1090000c 	andi	r2,r2,16384
 200dd60:	10000126 	beq	r2,zero,200dd68 <altera_avalon_jtag_uart_write+0x190>
 200dd64:	00001006 	br	200dda8 <altera_avalon_jtag_uart_write+0x1d0>
 200dd68:	0001883a 	nop
 200dd6c:	e0bffc17 	ldw	r2,-16(fp)
 200dd70:	10c00d17 	ldw	r3,52(r2)
 200dd74:	e0bff517 	ldw	r2,-44(fp)
 200dd78:	1880051e 	bne	r3,r2,200dd90 <altera_avalon_jtag_uart_write+0x1b8>
 200dd7c:	e0bffc17 	ldw	r2,-16(fp)
 200dd80:	10c00917 	ldw	r3,36(r2)
 200dd84:	e0bffc17 	ldw	r2,-16(fp)
 200dd88:	10800117 	ldw	r2,4(r2)
 200dd8c:	18bff736 	bltu	r3,r2,200dd6c <altera_avalon_jtag_uart_write+0x194>
 200dd90:	e0bffc17 	ldw	r2,-16(fp)
 200dd94:	10800917 	ldw	r2,36(r2)
 200dd98:	10000126 	beq	r2,zero,200dda0 <altera_avalon_jtag_uart_write+0x1c8>
 200dd9c:	00000206 	br	200dda8 <altera_avalon_jtag_uart_write+0x1d0>
 200dda0:	e0bffe17 	ldw	r2,-8(fp)
 200dda4:	00bf9716 	blt	zero,r2,200dc04 <altera_avalon_jtag_uart_write+0x2c>
 200dda8:	e0fffd17 	ldw	r3,-12(fp)
 200ddac:	e0bff717 	ldw	r2,-36(fp)
 200ddb0:	18800426 	beq	r3,r2,200ddc4 <altera_avalon_jtag_uart_write+0x1ec>
 200ddb4:	e0fffd17 	ldw	r3,-12(fp)
 200ddb8:	e0bff717 	ldw	r2,-36(fp)
 200ddbc:	1885c83a 	sub	r2,r3,r2
 200ddc0:	00000606 	br	200dddc <altera_avalon_jtag_uart_write+0x204>
 200ddc4:	e0bfff17 	ldw	r2,-4(fp)
 200ddc8:	1090000c 	andi	r2,r2,16384
 200ddcc:	10000226 	beq	r2,zero,200ddd8 <altera_avalon_jtag_uart_write+0x200>
 200ddd0:	00bffd44 	movi	r2,-11
 200ddd4:	00000106 	br	200dddc <altera_avalon_jtag_uart_write+0x204>
 200ddd8:	00bffec4 	movi	r2,-5
 200dddc:	e037883a 	mov	sp,fp
 200dde0:	dfc00117 	ldw	ra,4(sp)
 200dde4:	df000017 	ldw	fp,0(sp)
 200dde8:	dec00204 	addi	sp,sp,8
 200ddec:	f800283a 	ret

0200ddf0 <alt_alarm_start>:
 200ddf0:	defff504 	addi	sp,sp,-44
 200ddf4:	df000a15 	stw	fp,40(sp)
 200ddf8:	df000a04 	addi	fp,sp,40
 200ddfc:	e13ffc15 	stw	r4,-16(fp)
 200de00:	e17ffd15 	stw	r5,-12(fp)
 200de04:	e1bffe15 	stw	r6,-8(fp)
 200de08:	e1ffff15 	stw	r7,-4(fp)
 200de0c:	e03ff615 	stw	zero,-40(fp)
 200de10:	00808074 	movhi	r2,513
 200de14:	108a6a04 	addi	r2,r2,10664
 200de18:	10800017 	ldw	r2,0(r2)
 200de1c:	10003f26 	beq	r2,zero,200df1c <alt_alarm_start+0x12c>
 200de20:	e0bffc17 	ldw	r2,-16(fp)
 200de24:	10003b26 	beq	r2,zero,200df14 <alt_alarm_start+0x124>
 200de28:	e0bffc17 	ldw	r2,-16(fp)
 200de2c:	e0fffe17 	ldw	r3,-8(fp)
 200de30:	10c00315 	stw	r3,12(r2)
 200de34:	e0bffc17 	ldw	r2,-16(fp)
 200de38:	e0ffff17 	ldw	r3,-4(fp)
 200de3c:	10c00515 	stw	r3,20(r2)
 200de40:	0005303a 	rdctl	r2,status
 200de44:	e0bff815 	stw	r2,-32(fp)
 200de48:	e0fff817 	ldw	r3,-32(fp)
 200de4c:	00bfff84 	movi	r2,-2
 200de50:	1884703a 	and	r2,r3,r2
 200de54:	1001703a 	wrctl	status,r2
 200de58:	e0bff817 	ldw	r2,-32(fp)
 200de5c:	e0bff715 	stw	r2,-36(fp)
 200de60:	00808074 	movhi	r2,513
 200de64:	108a6b04 	addi	r2,r2,10668
 200de68:	10800017 	ldw	r2,0(r2)
 200de6c:	e0bff615 	stw	r2,-40(fp)
 200de70:	e0fffd17 	ldw	r3,-12(fp)
 200de74:	e0bff617 	ldw	r2,-40(fp)
 200de78:	1885883a 	add	r2,r3,r2
 200de7c:	10c00044 	addi	r3,r2,1
 200de80:	e0bffc17 	ldw	r2,-16(fp)
 200de84:	10c00215 	stw	r3,8(r2)
 200de88:	e0bffc17 	ldw	r2,-16(fp)
 200de8c:	10c00217 	ldw	r3,8(r2)
 200de90:	e0bff617 	ldw	r2,-40(fp)
 200de94:	1880042e 	bgeu	r3,r2,200dea8 <alt_alarm_start+0xb8>
 200de98:	e0bffc17 	ldw	r2,-16(fp)
 200de9c:	00c00044 	movi	r3,1
 200dea0:	10c00405 	stb	r3,16(r2)
 200dea4:	00000206 	br	200deb0 <alt_alarm_start+0xc0>
 200dea8:	e0bffc17 	ldw	r2,-16(fp)
 200deac:	10000405 	stb	zero,16(r2)
 200deb0:	e0fffc17 	ldw	r3,-16(fp)
 200deb4:	00808074 	movhi	r2,513
 200deb8:	1083a204 	addi	r2,r2,3720
 200debc:	e0bff915 	stw	r2,-28(fp)
 200dec0:	e0fffa15 	stw	r3,-24(fp)
 200dec4:	e0bffa17 	ldw	r2,-24(fp)
 200dec8:	e0fff917 	ldw	r3,-28(fp)
 200decc:	10c00115 	stw	r3,4(r2)
 200ded0:	e0bff917 	ldw	r2,-28(fp)
 200ded4:	10c00017 	ldw	r3,0(r2)
 200ded8:	e0bffa17 	ldw	r2,-24(fp)
 200dedc:	10c00015 	stw	r3,0(r2)
 200dee0:	e0bff917 	ldw	r2,-28(fp)
 200dee4:	10800017 	ldw	r2,0(r2)
 200dee8:	e0fffa17 	ldw	r3,-24(fp)
 200deec:	10c00115 	stw	r3,4(r2)
 200def0:	e0bff917 	ldw	r2,-28(fp)
 200def4:	e0fffa17 	ldw	r3,-24(fp)
 200def8:	10c00015 	stw	r3,0(r2)
 200defc:	e0bff717 	ldw	r2,-36(fp)
 200df00:	e0bffb15 	stw	r2,-20(fp)
 200df04:	e0bffb17 	ldw	r2,-20(fp)
 200df08:	1001703a 	wrctl	status,r2
 200df0c:	0005883a 	mov	r2,zero
 200df10:	00000306 	br	200df20 <alt_alarm_start+0x130>
 200df14:	00bffa84 	movi	r2,-22
 200df18:	00000106 	br	200df20 <alt_alarm_start+0x130>
 200df1c:	00bfde84 	movi	r2,-134
 200df20:	e037883a 	mov	sp,fp
 200df24:	df000017 	ldw	fp,0(sp)
 200df28:	dec00104 	addi	sp,sp,4
 200df2c:	f800283a 	ret

0200df30 <alt_get_errno>:
 200df30:	defffe04 	addi	sp,sp,-8
 200df34:	dfc00115 	stw	ra,4(sp)
 200df38:	df000015 	stw	fp,0(sp)
 200df3c:	d839883a 	mov	fp,sp
 200df40:	00808074 	movhi	r2,513
 200df44:	10839f04 	addi	r2,r2,3708
 200df48:	10800017 	ldw	r2,0(r2)
 200df4c:	10000526 	beq	r2,zero,200df64 <alt_get_errno+0x34>
 200df50:	00808074 	movhi	r2,513
 200df54:	10839f04 	addi	r2,r2,3708
 200df58:	10800017 	ldw	r2,0(r2)
 200df5c:	103ee83a 	callr	r2
 200df60:	00000206 	br	200df6c <alt_get_errno+0x3c>
 200df64:	00808074 	movhi	r2,513
 200df68:	108a6504 	addi	r2,r2,10644
 200df6c:	e037883a 	mov	sp,fp
 200df70:	dfc00117 	ldw	ra,4(sp)
 200df74:	df000017 	ldw	fp,0(sp)
 200df78:	dec00204 	addi	sp,sp,8
 200df7c:	f800283a 	ret

0200df80 <alt_dev_llist_insert>:
 200df80:	defffa04 	addi	sp,sp,-24
 200df84:	dfc00515 	stw	ra,20(sp)
 200df88:	df000415 	stw	fp,16(sp)
 200df8c:	df000404 	addi	fp,sp,16
 200df90:	e13ffe15 	stw	r4,-8(fp)
 200df94:	e17fff15 	stw	r5,-4(fp)
 200df98:	e0bffe17 	ldw	r2,-8(fp)
 200df9c:	10000326 	beq	r2,zero,200dfac <alt_dev_llist_insert+0x2c>
 200dfa0:	e0bffe17 	ldw	r2,-8(fp)
 200dfa4:	10800217 	ldw	r2,8(r2)
 200dfa8:	1000061e 	bne	r2,zero,200dfc4 <alt_dev_llist_insert+0x44>
 200dfac:	200df300 	call	200df30 <alt_get_errno>
 200dfb0:	1007883a 	mov	r3,r2
 200dfb4:	00800584 	movi	r2,22
 200dfb8:	18800015 	stw	r2,0(r3)
 200dfbc:	00bffa84 	movi	r2,-22
 200dfc0:	00001306 	br	200e010 <alt_dev_llist_insert+0x90>
 200dfc4:	e0bffe17 	ldw	r2,-8(fp)
 200dfc8:	e0ffff17 	ldw	r3,-4(fp)
 200dfcc:	e0fffc15 	stw	r3,-16(fp)
 200dfd0:	e0bffd15 	stw	r2,-12(fp)
 200dfd4:	e0bffd17 	ldw	r2,-12(fp)
 200dfd8:	e0fffc17 	ldw	r3,-16(fp)
 200dfdc:	10c00115 	stw	r3,4(r2)
 200dfe0:	e0bffc17 	ldw	r2,-16(fp)
 200dfe4:	10c00017 	ldw	r3,0(r2)
 200dfe8:	e0bffd17 	ldw	r2,-12(fp)
 200dfec:	10c00015 	stw	r3,0(r2)
 200dff0:	e0bffc17 	ldw	r2,-16(fp)
 200dff4:	10800017 	ldw	r2,0(r2)
 200dff8:	e0fffd17 	ldw	r3,-12(fp)
 200dffc:	10c00115 	stw	r3,4(r2)
 200e000:	e0bffc17 	ldw	r2,-16(fp)
 200e004:	e0fffd17 	ldw	r3,-12(fp)
 200e008:	10c00015 	stw	r3,0(r2)
 200e00c:	0005883a 	mov	r2,zero
 200e010:	e037883a 	mov	sp,fp
 200e014:	dfc00117 	ldw	ra,4(sp)
 200e018:	df000017 	ldw	fp,0(sp)
 200e01c:	dec00204 	addi	sp,sp,8
 200e020:	f800283a 	ret

0200e024 <_do_ctors>:
 200e024:	defffd04 	addi	sp,sp,-12
 200e028:	dfc00215 	stw	ra,8(sp)
 200e02c:	df000115 	stw	fp,4(sp)
 200e030:	df000104 	addi	fp,sp,4
 200e034:	00808074 	movhi	r2,513
 200e038:	10bbf204 	addi	r2,r2,-4152
 200e03c:	e0bfff15 	stw	r2,-4(fp)
 200e040:	00000606 	br	200e05c <_do_ctors+0x38>
 200e044:	e0bfff17 	ldw	r2,-4(fp)
 200e048:	10800017 	ldw	r2,0(r2)
 200e04c:	103ee83a 	callr	r2
 200e050:	e0bfff17 	ldw	r2,-4(fp)
 200e054:	10bfff04 	addi	r2,r2,-4
 200e058:	e0bfff15 	stw	r2,-4(fp)
 200e05c:	e0ffff17 	ldw	r3,-4(fp)
 200e060:	00808074 	movhi	r2,513
 200e064:	10bbf304 	addi	r2,r2,-4148
 200e068:	18bff62e 	bgeu	r3,r2,200e044 <_do_ctors+0x20>
 200e06c:	e037883a 	mov	sp,fp
 200e070:	dfc00117 	ldw	ra,4(sp)
 200e074:	df000017 	ldw	fp,0(sp)
 200e078:	dec00204 	addi	sp,sp,8
 200e07c:	f800283a 	ret

0200e080 <_do_dtors>:
 200e080:	defffd04 	addi	sp,sp,-12
 200e084:	dfc00215 	stw	ra,8(sp)
 200e088:	df000115 	stw	fp,4(sp)
 200e08c:	df000104 	addi	fp,sp,4
 200e090:	00808074 	movhi	r2,513
 200e094:	10bbf204 	addi	r2,r2,-4152
 200e098:	e0bfff15 	stw	r2,-4(fp)
 200e09c:	00000606 	br	200e0b8 <_do_dtors+0x38>
 200e0a0:	e0bfff17 	ldw	r2,-4(fp)
 200e0a4:	10800017 	ldw	r2,0(r2)
 200e0a8:	103ee83a 	callr	r2
 200e0ac:	e0bfff17 	ldw	r2,-4(fp)
 200e0b0:	10bfff04 	addi	r2,r2,-4
 200e0b4:	e0bfff15 	stw	r2,-4(fp)
 200e0b8:	e0ffff17 	ldw	r3,-4(fp)
 200e0bc:	00808074 	movhi	r2,513
 200e0c0:	10bbf304 	addi	r2,r2,-4148
 200e0c4:	18bff62e 	bgeu	r3,r2,200e0a0 <_do_dtors+0x20>
 200e0c8:	e037883a 	mov	sp,fp
 200e0cc:	dfc00117 	ldw	ra,4(sp)
 200e0d0:	df000017 	ldw	fp,0(sp)
 200e0d4:	dec00204 	addi	sp,sp,8
 200e0d8:	f800283a 	ret

0200e0dc <alt_icache_flush_all>:
 200e0dc:	defffe04 	addi	sp,sp,-8
 200e0e0:	dfc00115 	stw	ra,4(sp)
 200e0e4:	df000015 	stw	fp,0(sp)
 200e0e8:	d839883a 	mov	fp,sp
 200e0ec:	0009883a 	mov	r4,zero
 200e0f0:	01440004 	movi	r5,4096
 200e0f4:	200eb9c0 	call	200eb9c <alt_icache_flush>
 200e0f8:	e037883a 	mov	sp,fp
 200e0fc:	dfc00117 	ldw	ra,4(sp)
 200e100:	df000017 	ldw	fp,0(sp)
 200e104:	dec00204 	addi	sp,sp,8
 200e108:	f800283a 	ret

0200e10c <alt_ic_isr_register>:
 200e10c:	defff904 	addi	sp,sp,-28
 200e110:	dfc00615 	stw	ra,24(sp)
 200e114:	df000515 	stw	fp,20(sp)
 200e118:	df000504 	addi	fp,sp,20
 200e11c:	e13ffc15 	stw	r4,-16(fp)
 200e120:	e17ffd15 	stw	r5,-12(fp)
 200e124:	e1bffe15 	stw	r6,-8(fp)
 200e128:	e1ffff15 	stw	r7,-4(fp)
 200e12c:	e0800217 	ldw	r2,8(fp)
 200e130:	d8800015 	stw	r2,0(sp)
 200e134:	e13ffc17 	ldw	r4,-16(fp)
 200e138:	e17ffd17 	ldw	r5,-12(fp)
 200e13c:	e1bffe17 	ldw	r6,-8(fp)
 200e140:	e1ffff17 	ldw	r7,-4(fp)
 200e144:	200e2ec0 	call	200e2ec <alt_iic_isr_register>
 200e148:	e037883a 	mov	sp,fp
 200e14c:	dfc00117 	ldw	ra,4(sp)
 200e150:	df000017 	ldw	fp,0(sp)
 200e154:	dec00204 	addi	sp,sp,8
 200e158:	f800283a 	ret

0200e15c <alt_ic_irq_enable>:
 200e15c:	defff904 	addi	sp,sp,-28
 200e160:	df000615 	stw	fp,24(sp)
 200e164:	df000604 	addi	fp,sp,24
 200e168:	e13ffe15 	stw	r4,-8(fp)
 200e16c:	e17fff15 	stw	r5,-4(fp)
 200e170:	e0bfff17 	ldw	r2,-4(fp)
 200e174:	e0bffa15 	stw	r2,-24(fp)
 200e178:	0005303a 	rdctl	r2,status
 200e17c:	e0bffb15 	stw	r2,-20(fp)
 200e180:	e0fffb17 	ldw	r3,-20(fp)
 200e184:	00bfff84 	movi	r2,-2
 200e188:	1884703a 	and	r2,r3,r2
 200e18c:	1001703a 	wrctl	status,r2
 200e190:	e0bffb17 	ldw	r2,-20(fp)
 200e194:	e0bffc15 	stw	r2,-16(fp)
 200e198:	e0bffa17 	ldw	r2,-24(fp)
 200e19c:	00c00044 	movi	r3,1
 200e1a0:	1884983a 	sll	r2,r3,r2
 200e1a4:	1007883a 	mov	r3,r2
 200e1a8:	00808074 	movhi	r2,513
 200e1ac:	108a6904 	addi	r2,r2,10660
 200e1b0:	10800017 	ldw	r2,0(r2)
 200e1b4:	1886b03a 	or	r3,r3,r2
 200e1b8:	00808074 	movhi	r2,513
 200e1bc:	108a6904 	addi	r2,r2,10660
 200e1c0:	10c00015 	stw	r3,0(r2)
 200e1c4:	00808074 	movhi	r2,513
 200e1c8:	108a6904 	addi	r2,r2,10660
 200e1cc:	10800017 	ldw	r2,0(r2)
 200e1d0:	100170fa 	wrctl	ienable,r2
 200e1d4:	e0bffc17 	ldw	r2,-16(fp)
 200e1d8:	e0bffd15 	stw	r2,-12(fp)
 200e1dc:	e0bffd17 	ldw	r2,-12(fp)
 200e1e0:	1001703a 	wrctl	status,r2
 200e1e4:	0005883a 	mov	r2,zero
 200e1e8:	0001883a 	nop
 200e1ec:	e037883a 	mov	sp,fp
 200e1f0:	df000017 	ldw	fp,0(sp)
 200e1f4:	dec00104 	addi	sp,sp,4
 200e1f8:	f800283a 	ret

0200e1fc <alt_ic_irq_disable>:
 200e1fc:	defff904 	addi	sp,sp,-28
 200e200:	df000615 	stw	fp,24(sp)
 200e204:	df000604 	addi	fp,sp,24
 200e208:	e13ffe15 	stw	r4,-8(fp)
 200e20c:	e17fff15 	stw	r5,-4(fp)
 200e210:	e0bfff17 	ldw	r2,-4(fp)
 200e214:	e0bffa15 	stw	r2,-24(fp)
 200e218:	0005303a 	rdctl	r2,status
 200e21c:	e0bffb15 	stw	r2,-20(fp)
 200e220:	e0fffb17 	ldw	r3,-20(fp)
 200e224:	00bfff84 	movi	r2,-2
 200e228:	1884703a 	and	r2,r3,r2
 200e22c:	1001703a 	wrctl	status,r2
 200e230:	e0bffb17 	ldw	r2,-20(fp)
 200e234:	e0bffc15 	stw	r2,-16(fp)
 200e238:	e0bffa17 	ldw	r2,-24(fp)
 200e23c:	00c00044 	movi	r3,1
 200e240:	1884983a 	sll	r2,r3,r2
 200e244:	0084303a 	nor	r2,zero,r2
 200e248:	1007883a 	mov	r3,r2
 200e24c:	00808074 	movhi	r2,513
 200e250:	108a6904 	addi	r2,r2,10660
 200e254:	10800017 	ldw	r2,0(r2)
 200e258:	1886703a 	and	r3,r3,r2
 200e25c:	00808074 	movhi	r2,513
 200e260:	108a6904 	addi	r2,r2,10660
 200e264:	10c00015 	stw	r3,0(r2)
 200e268:	00808074 	movhi	r2,513
 200e26c:	108a6904 	addi	r2,r2,10660
 200e270:	10800017 	ldw	r2,0(r2)
 200e274:	100170fa 	wrctl	ienable,r2
 200e278:	e0bffc17 	ldw	r2,-16(fp)
 200e27c:	e0bffd15 	stw	r2,-12(fp)
 200e280:	e0bffd17 	ldw	r2,-12(fp)
 200e284:	1001703a 	wrctl	status,r2
 200e288:	0005883a 	mov	r2,zero
 200e28c:	0001883a 	nop
 200e290:	e037883a 	mov	sp,fp
 200e294:	df000017 	ldw	fp,0(sp)
 200e298:	dec00104 	addi	sp,sp,4
 200e29c:	f800283a 	ret

0200e2a0 <alt_ic_irq_enabled>:
 200e2a0:	defffc04 	addi	sp,sp,-16
 200e2a4:	df000315 	stw	fp,12(sp)
 200e2a8:	df000304 	addi	fp,sp,12
 200e2ac:	e13ffe15 	stw	r4,-8(fp)
 200e2b0:	e17fff15 	stw	r5,-4(fp)
 200e2b4:	000530fa 	rdctl	r2,ienable
 200e2b8:	e0bffd15 	stw	r2,-12(fp)
 200e2bc:	e0bfff17 	ldw	r2,-4(fp)
 200e2c0:	00c00044 	movi	r3,1
 200e2c4:	1884983a 	sll	r2,r3,r2
 200e2c8:	1007883a 	mov	r3,r2
 200e2cc:	e0bffd17 	ldw	r2,-12(fp)
 200e2d0:	1884703a 	and	r2,r3,r2
 200e2d4:	1004c03a 	cmpne	r2,r2,zero
 200e2d8:	10803fcc 	andi	r2,r2,255
 200e2dc:	e037883a 	mov	sp,fp
 200e2e0:	df000017 	ldw	fp,0(sp)
 200e2e4:	dec00104 	addi	sp,sp,4
 200e2e8:	f800283a 	ret

0200e2ec <alt_iic_isr_register>:
 200e2ec:	defff504 	addi	sp,sp,-44
 200e2f0:	dfc00a15 	stw	ra,40(sp)
 200e2f4:	df000915 	stw	fp,36(sp)
 200e2f8:	df000904 	addi	fp,sp,36
 200e2fc:	e13ffc15 	stw	r4,-16(fp)
 200e300:	e17ffd15 	stw	r5,-12(fp)
 200e304:	e1bffe15 	stw	r6,-8(fp)
 200e308:	e1ffff15 	stw	r7,-4(fp)
 200e30c:	00bffa84 	movi	r2,-22
 200e310:	e0bff715 	stw	r2,-36(fp)
 200e314:	e0bffd17 	ldw	r2,-12(fp)
 200e318:	e0bff815 	stw	r2,-32(fp)
 200e31c:	e0bff817 	ldw	r2,-32(fp)
 200e320:	10800808 	cmpgei	r2,r2,32
 200e324:	1000271e 	bne	r2,zero,200e3c4 <alt_iic_isr_register+0xd8>
 200e328:	0005303a 	rdctl	r2,status
 200e32c:	e0bffa15 	stw	r2,-24(fp)
 200e330:	e0fffa17 	ldw	r3,-24(fp)
 200e334:	00bfff84 	movi	r2,-2
 200e338:	1884703a 	and	r2,r3,r2
 200e33c:	1001703a 	wrctl	status,r2
 200e340:	e0bffa17 	ldw	r2,-24(fp)
 200e344:	e0bff915 	stw	r2,-28(fp)
 200e348:	00808074 	movhi	r2,513
 200e34c:	108a7604 	addi	r2,r2,10712
 200e350:	e0fff817 	ldw	r3,-32(fp)
 200e354:	180690fa 	slli	r3,r3,3
 200e358:	10c5883a 	add	r2,r2,r3
 200e35c:	e0fffe17 	ldw	r3,-8(fp)
 200e360:	10c00015 	stw	r3,0(r2)
 200e364:	00808074 	movhi	r2,513
 200e368:	108a7604 	addi	r2,r2,10712
 200e36c:	e0fff817 	ldw	r3,-32(fp)
 200e370:	180690fa 	slli	r3,r3,3
 200e374:	10c5883a 	add	r2,r2,r3
 200e378:	10800104 	addi	r2,r2,4
 200e37c:	e0ffff17 	ldw	r3,-4(fp)
 200e380:	10c00015 	stw	r3,0(r2)
 200e384:	e0bffe17 	ldw	r2,-8(fp)
 200e388:	10000526 	beq	r2,zero,200e3a0 <alt_iic_isr_register+0xb4>
 200e38c:	e0bff817 	ldw	r2,-32(fp)
 200e390:	e13ffc17 	ldw	r4,-16(fp)
 200e394:	100b883a 	mov	r5,r2
 200e398:	200e15c0 	call	200e15c <alt_ic_irq_enable>
 200e39c:	00000406 	br	200e3b0 <alt_iic_isr_register+0xc4>
 200e3a0:	e0bff817 	ldw	r2,-32(fp)
 200e3a4:	e13ffc17 	ldw	r4,-16(fp)
 200e3a8:	100b883a 	mov	r5,r2
 200e3ac:	200e1fc0 	call	200e1fc <alt_ic_irq_disable>
 200e3b0:	e0bff715 	stw	r2,-36(fp)
 200e3b4:	e0bff917 	ldw	r2,-28(fp)
 200e3b8:	e0bffb15 	stw	r2,-20(fp)
 200e3bc:	e0bffb17 	ldw	r2,-20(fp)
 200e3c0:	1001703a 	wrctl	status,r2
 200e3c4:	e0bff717 	ldw	r2,-36(fp)
 200e3c8:	e037883a 	mov	sp,fp
 200e3cc:	dfc00117 	ldw	ra,4(sp)
 200e3d0:	df000017 	ldw	fp,0(sp)
 200e3d4:	dec00204 	addi	sp,sp,8
 200e3d8:	f800283a 	ret

0200e3dc <alt_open_fd>:
 200e3dc:	defff904 	addi	sp,sp,-28
 200e3e0:	dfc00615 	stw	ra,24(sp)
 200e3e4:	df000515 	stw	fp,20(sp)
 200e3e8:	df000504 	addi	fp,sp,20
 200e3ec:	e13ffc15 	stw	r4,-16(fp)
 200e3f0:	e17ffd15 	stw	r5,-12(fp)
 200e3f4:	e1bffe15 	stw	r6,-8(fp)
 200e3f8:	e1ffff15 	stw	r7,-4(fp)
 200e3fc:	e13ffd17 	ldw	r4,-12(fp)
 200e400:	e17ffe17 	ldw	r5,-8(fp)
 200e404:	e1bfff17 	ldw	r6,-4(fp)
 200e408:	200e6300 	call	200e630 <open>
 200e40c:	e0bffb15 	stw	r2,-20(fp)
 200e410:	e0bffb17 	ldw	r2,-20(fp)
 200e414:	10001c16 	blt	r2,zero,200e488 <alt_open_fd+0xac>
 200e418:	00808074 	movhi	r2,513
 200e41c:	10bf1c04 	addi	r2,r2,-912
 200e420:	e0fffb17 	ldw	r3,-20(fp)
 200e424:	18c00324 	muli	r3,r3,12
 200e428:	10c5883a 	add	r2,r2,r3
 200e42c:	10c00017 	ldw	r3,0(r2)
 200e430:	e0bffc17 	ldw	r2,-16(fp)
 200e434:	10c00015 	stw	r3,0(r2)
 200e438:	00808074 	movhi	r2,513
 200e43c:	10bf1c04 	addi	r2,r2,-912
 200e440:	e0fffb17 	ldw	r3,-20(fp)
 200e444:	18c00324 	muli	r3,r3,12
 200e448:	10c5883a 	add	r2,r2,r3
 200e44c:	10800104 	addi	r2,r2,4
 200e450:	10c00017 	ldw	r3,0(r2)
 200e454:	e0bffc17 	ldw	r2,-16(fp)
 200e458:	10c00115 	stw	r3,4(r2)
 200e45c:	00808074 	movhi	r2,513
 200e460:	10bf1c04 	addi	r2,r2,-912
 200e464:	e0fffb17 	ldw	r3,-20(fp)
 200e468:	18c00324 	muli	r3,r3,12
 200e46c:	10c5883a 	add	r2,r2,r3
 200e470:	10800204 	addi	r2,r2,8
 200e474:	10c00017 	ldw	r3,0(r2)
 200e478:	e0bffc17 	ldw	r2,-16(fp)
 200e47c:	10c00215 	stw	r3,8(r2)
 200e480:	e13ffb17 	ldw	r4,-20(fp)
 200e484:	200d09c0 	call	200d09c <alt_release_fd>
 200e488:	e037883a 	mov	sp,fp
 200e48c:	dfc00117 	ldw	ra,4(sp)
 200e490:	df000017 	ldw	fp,0(sp)
 200e494:	dec00204 	addi	sp,sp,8
 200e498:	f800283a 	ret

0200e49c <alt_io_redirect>:
 200e49c:	defffb04 	addi	sp,sp,-20
 200e4a0:	dfc00415 	stw	ra,16(sp)
 200e4a4:	df000315 	stw	fp,12(sp)
 200e4a8:	df000304 	addi	fp,sp,12
 200e4ac:	e13ffd15 	stw	r4,-12(fp)
 200e4b0:	e17ffe15 	stw	r5,-8(fp)
 200e4b4:	e1bfff15 	stw	r6,-4(fp)
 200e4b8:	01008074 	movhi	r4,513
 200e4bc:	213f1f04 	addi	r4,r4,-900
 200e4c0:	e17ffd17 	ldw	r5,-12(fp)
 200e4c4:	01800044 	movi	r6,1
 200e4c8:	01c07fc4 	movi	r7,511
 200e4cc:	200e3dc0 	call	200e3dc <alt_open_fd>
 200e4d0:	01008074 	movhi	r4,513
 200e4d4:	213f1c04 	addi	r4,r4,-912
 200e4d8:	e17ffe17 	ldw	r5,-8(fp)
 200e4dc:	000d883a 	mov	r6,zero
 200e4e0:	01c07fc4 	movi	r7,511
 200e4e4:	200e3dc0 	call	200e3dc <alt_open_fd>
 200e4e8:	01008074 	movhi	r4,513
 200e4ec:	213f2204 	addi	r4,r4,-888
 200e4f0:	e17fff17 	ldw	r5,-4(fp)
 200e4f4:	01800044 	movi	r6,1
 200e4f8:	01c07fc4 	movi	r7,511
 200e4fc:	200e3dc0 	call	200e3dc <alt_open_fd>
 200e500:	e037883a 	mov	sp,fp
 200e504:	dfc00117 	ldw	ra,4(sp)
 200e508:	df000017 	ldw	fp,0(sp)
 200e50c:	dec00204 	addi	sp,sp,8
 200e510:	f800283a 	ret

0200e514 <alt_get_errno>:
 200e514:	defffe04 	addi	sp,sp,-8
 200e518:	dfc00115 	stw	ra,4(sp)
 200e51c:	df000015 	stw	fp,0(sp)
 200e520:	d839883a 	mov	fp,sp
 200e524:	00808074 	movhi	r2,513
 200e528:	10839f04 	addi	r2,r2,3708
 200e52c:	10800017 	ldw	r2,0(r2)
 200e530:	10000526 	beq	r2,zero,200e548 <alt_get_errno+0x34>
 200e534:	00808074 	movhi	r2,513
 200e538:	10839f04 	addi	r2,r2,3708
 200e53c:	10800017 	ldw	r2,0(r2)
 200e540:	103ee83a 	callr	r2
 200e544:	00000206 	br	200e550 <alt_get_errno+0x3c>
 200e548:	00808074 	movhi	r2,513
 200e54c:	108a6504 	addi	r2,r2,10644
 200e550:	e037883a 	mov	sp,fp
 200e554:	dfc00117 	ldw	ra,4(sp)
 200e558:	df000017 	ldw	fp,0(sp)
 200e55c:	dec00204 	addi	sp,sp,8
 200e560:	f800283a 	ret

0200e564 <alt_file_locked>:
 200e564:	defffd04 	addi	sp,sp,-12
 200e568:	df000215 	stw	fp,8(sp)
 200e56c:	df000204 	addi	fp,sp,8
 200e570:	e13fff15 	stw	r4,-4(fp)
 200e574:	e0bfff17 	ldw	r2,-4(fp)
 200e578:	10800217 	ldw	r2,8(r2)
 200e57c:	10d00034 	orhi	r3,r2,16384
 200e580:	e0bfff17 	ldw	r2,-4(fp)
 200e584:	10c00215 	stw	r3,8(r2)
 200e588:	e03ffe15 	stw	zero,-8(fp)
 200e58c:	00001d06 	br	200e604 <alt_file_locked+0xa0>
 200e590:	00808074 	movhi	r2,513
 200e594:	10bf1c04 	addi	r2,r2,-912
 200e598:	e0fffe17 	ldw	r3,-8(fp)
 200e59c:	18c00324 	muli	r3,r3,12
 200e5a0:	10c5883a 	add	r2,r2,r3
 200e5a4:	10c00017 	ldw	r3,0(r2)
 200e5a8:	e0bfff17 	ldw	r2,-4(fp)
 200e5ac:	10800017 	ldw	r2,0(r2)
 200e5b0:	1880111e 	bne	r3,r2,200e5f8 <alt_file_locked+0x94>
 200e5b4:	00808074 	movhi	r2,513
 200e5b8:	10bf1c04 	addi	r2,r2,-912
 200e5bc:	e0fffe17 	ldw	r3,-8(fp)
 200e5c0:	18c00324 	muli	r3,r3,12
 200e5c4:	10c5883a 	add	r2,r2,r3
 200e5c8:	10800204 	addi	r2,r2,8
 200e5cc:	10800017 	ldw	r2,0(r2)
 200e5d0:	1000090e 	bge	r2,zero,200e5f8 <alt_file_locked+0x94>
 200e5d4:	e0bffe17 	ldw	r2,-8(fp)
 200e5d8:	10c00324 	muli	r3,r2,12
 200e5dc:	00808074 	movhi	r2,513
 200e5e0:	10bf1c04 	addi	r2,r2,-912
 200e5e4:	1887883a 	add	r3,r3,r2
 200e5e8:	e0bfff17 	ldw	r2,-4(fp)
 200e5ec:	18800226 	beq	r3,r2,200e5f8 <alt_file_locked+0x94>
 200e5f0:	00bffcc4 	movi	r2,-13
 200e5f4:	00000a06 	br	200e620 <alt_file_locked+0xbc>
 200e5f8:	e0bffe17 	ldw	r2,-8(fp)
 200e5fc:	10800044 	addi	r2,r2,1
 200e600:	e0bffe15 	stw	r2,-8(fp)
 200e604:	00808074 	movhi	r2,513
 200e608:	10839e04 	addi	r2,r2,3704
 200e60c:	10800017 	ldw	r2,0(r2)
 200e610:	1007883a 	mov	r3,r2
 200e614:	e0bffe17 	ldw	r2,-8(fp)
 200e618:	18bfdd2e 	bgeu	r3,r2,200e590 <alt_file_locked+0x2c>
 200e61c:	0005883a 	mov	r2,zero
 200e620:	e037883a 	mov	sp,fp
 200e624:	df000017 	ldw	fp,0(sp)
 200e628:	dec00104 	addi	sp,sp,4
 200e62c:	f800283a 	ret

0200e630 <open>:
 200e630:	defff604 	addi	sp,sp,-40
 200e634:	dfc00915 	stw	ra,36(sp)
 200e638:	df000815 	stw	fp,32(sp)
 200e63c:	df000804 	addi	fp,sp,32
 200e640:	e13ffd15 	stw	r4,-12(fp)
 200e644:	e17ffe15 	stw	r5,-8(fp)
 200e648:	e1bfff15 	stw	r6,-4(fp)
 200e64c:	00bfffc4 	movi	r2,-1
 200e650:	e0bff915 	stw	r2,-28(fp)
 200e654:	00bffb44 	movi	r2,-19
 200e658:	e0bffa15 	stw	r2,-24(fp)
 200e65c:	e03ffb15 	stw	zero,-20(fp)
 200e660:	e13ffd17 	ldw	r4,-12(fp)
 200e664:	01408074 	movhi	r5,513
 200e668:	29439c04 	addi	r5,r5,3696
 200e66c:	200e9440 	call	200e944 <alt_find_dev>
 200e670:	e0bff815 	stw	r2,-32(fp)
 200e674:	e0bff817 	ldw	r2,-32(fp)
 200e678:	1000051e 	bne	r2,zero,200e690 <open+0x60>
 200e67c:	e13ffd17 	ldw	r4,-12(fp)
 200e680:	200e9d40 	call	200e9d4 <alt_find_file>
 200e684:	e0bff815 	stw	r2,-32(fp)
 200e688:	00800044 	movi	r2,1
 200e68c:	e0bffb15 	stw	r2,-20(fp)
 200e690:	e0bff817 	ldw	r2,-32(fp)
 200e694:	10002926 	beq	r2,zero,200e73c <open+0x10c>
 200e698:	e13ff817 	ldw	r4,-32(fp)
 200e69c:	200eae80 	call	200eae8 <alt_get_fd>
 200e6a0:	e0bff915 	stw	r2,-28(fp)
 200e6a4:	e0bff917 	ldw	r2,-28(fp)
 200e6a8:	1000030e 	bge	r2,zero,200e6b8 <open+0x88>
 200e6ac:	e0bff917 	ldw	r2,-28(fp)
 200e6b0:	e0bffa15 	stw	r2,-24(fp)
 200e6b4:	00002306 	br	200e744 <open+0x114>
 200e6b8:	e0bff917 	ldw	r2,-28(fp)
 200e6bc:	10c00324 	muli	r3,r2,12
 200e6c0:	00808074 	movhi	r2,513
 200e6c4:	10bf1c04 	addi	r2,r2,-912
 200e6c8:	1885883a 	add	r2,r3,r2
 200e6cc:	e0bffc15 	stw	r2,-16(fp)
 200e6d0:	e0fffe17 	ldw	r3,-8(fp)
 200e6d4:	00900034 	movhi	r2,16384
 200e6d8:	10bfffc4 	addi	r2,r2,-1
 200e6dc:	1886703a 	and	r3,r3,r2
 200e6e0:	e0bffc17 	ldw	r2,-16(fp)
 200e6e4:	10c00215 	stw	r3,8(r2)
 200e6e8:	e0bffb17 	ldw	r2,-20(fp)
 200e6ec:	1000051e 	bne	r2,zero,200e704 <open+0xd4>
 200e6f0:	e13ffc17 	ldw	r4,-16(fp)
 200e6f4:	200e5640 	call	200e564 <alt_file_locked>
 200e6f8:	e0bffa15 	stw	r2,-24(fp)
 200e6fc:	e0bffa17 	ldw	r2,-24(fp)
 200e700:	10001016 	blt	r2,zero,200e744 <open+0x114>
 200e704:	e0bff817 	ldw	r2,-32(fp)
 200e708:	10800317 	ldw	r2,12(r2)
 200e70c:	10000826 	beq	r2,zero,200e730 <open+0x100>
 200e710:	e0bff817 	ldw	r2,-32(fp)
 200e714:	10800317 	ldw	r2,12(r2)
 200e718:	e13ffc17 	ldw	r4,-16(fp)
 200e71c:	e17ffd17 	ldw	r5,-12(fp)
 200e720:	e1bffe17 	ldw	r6,-8(fp)
 200e724:	e1ffff17 	ldw	r7,-4(fp)
 200e728:	103ee83a 	callr	r2
 200e72c:	00000106 	br	200e734 <open+0x104>
 200e730:	0005883a 	mov	r2,zero
 200e734:	e0bffa15 	stw	r2,-24(fp)
 200e738:	00000206 	br	200e744 <open+0x114>
 200e73c:	00bffb44 	movi	r2,-19
 200e740:	e0bffa15 	stw	r2,-24(fp)
 200e744:	e0bffa17 	ldw	r2,-24(fp)
 200e748:	1000090e 	bge	r2,zero,200e770 <open+0x140>
 200e74c:	e13ff917 	ldw	r4,-28(fp)
 200e750:	200d09c0 	call	200d09c <alt_release_fd>
 200e754:	200e5140 	call	200e514 <alt_get_errno>
 200e758:	1007883a 	mov	r3,r2
 200e75c:	e0bffa17 	ldw	r2,-24(fp)
 200e760:	0085c83a 	sub	r2,zero,r2
 200e764:	18800015 	stw	r2,0(r3)
 200e768:	00bfffc4 	movi	r2,-1
 200e76c:	00000106 	br	200e774 <open+0x144>
 200e770:	e0bff917 	ldw	r2,-28(fp)
 200e774:	e037883a 	mov	sp,fp
 200e778:	dfc00117 	ldw	ra,4(sp)
 200e77c:	df000017 	ldw	fp,0(sp)
 200e780:	dec00204 	addi	sp,sp,8
 200e784:	f800283a 	ret

0200e788 <alt_alarm_stop>:
 200e788:	defffa04 	addi	sp,sp,-24
 200e78c:	df000515 	stw	fp,20(sp)
 200e790:	df000504 	addi	fp,sp,20
 200e794:	e13fff15 	stw	r4,-4(fp)
 200e798:	0005303a 	rdctl	r2,status
 200e79c:	e0bffc15 	stw	r2,-16(fp)
 200e7a0:	e0fffc17 	ldw	r3,-16(fp)
 200e7a4:	00bfff84 	movi	r2,-2
 200e7a8:	1884703a 	and	r2,r3,r2
 200e7ac:	1001703a 	wrctl	status,r2
 200e7b0:	e0bffc17 	ldw	r2,-16(fp)
 200e7b4:	e0bffb15 	stw	r2,-20(fp)
 200e7b8:	e0bfff17 	ldw	r2,-4(fp)
 200e7bc:	e0bffd15 	stw	r2,-12(fp)
 200e7c0:	e0bffd17 	ldw	r2,-12(fp)
 200e7c4:	10800017 	ldw	r2,0(r2)
 200e7c8:	e0fffd17 	ldw	r3,-12(fp)
 200e7cc:	18c00117 	ldw	r3,4(r3)
 200e7d0:	10c00115 	stw	r3,4(r2)
 200e7d4:	e0bffd17 	ldw	r2,-12(fp)
 200e7d8:	10800117 	ldw	r2,4(r2)
 200e7dc:	e0fffd17 	ldw	r3,-12(fp)
 200e7e0:	18c00017 	ldw	r3,0(r3)
 200e7e4:	10c00015 	stw	r3,0(r2)
 200e7e8:	e0bffd17 	ldw	r2,-12(fp)
 200e7ec:	e0fffd17 	ldw	r3,-12(fp)
 200e7f0:	10c00115 	stw	r3,4(r2)
 200e7f4:	e0bffd17 	ldw	r2,-12(fp)
 200e7f8:	e0fffd17 	ldw	r3,-12(fp)
 200e7fc:	10c00015 	stw	r3,0(r2)
 200e800:	e0bffb17 	ldw	r2,-20(fp)
 200e804:	e0bffe15 	stw	r2,-8(fp)
 200e808:	e0bffe17 	ldw	r2,-8(fp)
 200e80c:	1001703a 	wrctl	status,r2
 200e810:	e037883a 	mov	sp,fp
 200e814:	df000017 	ldw	fp,0(sp)
 200e818:	dec00104 	addi	sp,sp,4
 200e81c:	f800283a 	ret

0200e820 <alt_tick>:
 200e820:	defffb04 	addi	sp,sp,-20
 200e824:	dfc00415 	stw	ra,16(sp)
 200e828:	df000315 	stw	fp,12(sp)
 200e82c:	df000304 	addi	fp,sp,12
 200e830:	d0a00e17 	ldw	r2,-32712(gp)
 200e834:	e0bffd15 	stw	r2,-12(fp)
 200e838:	d0a6d717 	ldw	r2,-25764(gp)
 200e83c:	10800044 	addi	r2,r2,1
 200e840:	d0a6d715 	stw	r2,-25764(gp)
 200e844:	00002e06 	br	200e900 <alt_tick+0xe0>
 200e848:	e0bffd17 	ldw	r2,-12(fp)
 200e84c:	10800017 	ldw	r2,0(r2)
 200e850:	e0bffe15 	stw	r2,-8(fp)
 200e854:	e0bffd17 	ldw	r2,-12(fp)
 200e858:	10800403 	ldbu	r2,16(r2)
 200e85c:	10803fcc 	andi	r2,r2,255
 200e860:	10000426 	beq	r2,zero,200e874 <alt_tick+0x54>
 200e864:	d0a6d717 	ldw	r2,-25764(gp)
 200e868:	1000021e 	bne	r2,zero,200e874 <alt_tick+0x54>
 200e86c:	e0bffd17 	ldw	r2,-12(fp)
 200e870:	10000405 	stb	zero,16(r2)
 200e874:	e0bffd17 	ldw	r2,-12(fp)
 200e878:	10800217 	ldw	r2,8(r2)
 200e87c:	d0e6d717 	ldw	r3,-25764(gp)
 200e880:	18801d36 	bltu	r3,r2,200e8f8 <alt_tick+0xd8>
 200e884:	e0bffd17 	ldw	r2,-12(fp)
 200e888:	10800403 	ldbu	r2,16(r2)
 200e88c:	10803fcc 	andi	r2,r2,255
 200e890:	1000191e 	bne	r2,zero,200e8f8 <alt_tick+0xd8>
 200e894:	e0bffd17 	ldw	r2,-12(fp)
 200e898:	10800317 	ldw	r2,12(r2)
 200e89c:	e0fffd17 	ldw	r3,-12(fp)
 200e8a0:	18c00517 	ldw	r3,20(r3)
 200e8a4:	1809883a 	mov	r4,r3
 200e8a8:	103ee83a 	callr	r2
 200e8ac:	e0bfff15 	stw	r2,-4(fp)
 200e8b0:	e0bfff17 	ldw	r2,-4(fp)
 200e8b4:	1000031e 	bne	r2,zero,200e8c4 <alt_tick+0xa4>
 200e8b8:	e13ffd17 	ldw	r4,-12(fp)
 200e8bc:	200e7880 	call	200e788 <alt_alarm_stop>
 200e8c0:	00000d06 	br	200e8f8 <alt_tick+0xd8>
 200e8c4:	e0bffd17 	ldw	r2,-12(fp)
 200e8c8:	10c00217 	ldw	r3,8(r2)
 200e8cc:	e0bfff17 	ldw	r2,-4(fp)
 200e8d0:	1887883a 	add	r3,r3,r2
 200e8d4:	e0bffd17 	ldw	r2,-12(fp)
 200e8d8:	10c00215 	stw	r3,8(r2)
 200e8dc:	e0bffd17 	ldw	r2,-12(fp)
 200e8e0:	10c00217 	ldw	r3,8(r2)
 200e8e4:	d0a6d717 	ldw	r2,-25764(gp)
 200e8e8:	1880032e 	bgeu	r3,r2,200e8f8 <alt_tick+0xd8>
 200e8ec:	e0bffd17 	ldw	r2,-12(fp)
 200e8f0:	00c00044 	movi	r3,1
 200e8f4:	10c00405 	stb	r3,16(r2)
 200e8f8:	e0bffe17 	ldw	r2,-8(fp)
 200e8fc:	e0bffd15 	stw	r2,-12(fp)
 200e900:	e0fffd17 	ldw	r3,-12(fp)
 200e904:	d0a00e04 	addi	r2,gp,-32712
 200e908:	18bfcf1e 	bne	r3,r2,200e848 <alt_tick+0x28>
 200e90c:	0001883a 	nop
 200e910:	e037883a 	mov	sp,fp
 200e914:	dfc00117 	ldw	ra,4(sp)
 200e918:	df000017 	ldw	fp,0(sp)
 200e91c:	dec00204 	addi	sp,sp,8
 200e920:	f800283a 	ret

0200e924 <altera_nios2_qsys_irq_init>:
 200e924:	deffff04 	addi	sp,sp,-4
 200e928:	df000015 	stw	fp,0(sp)
 200e92c:	d839883a 	mov	fp,sp
 200e930:	000170fa 	wrctl	ienable,zero
 200e934:	e037883a 	mov	sp,fp
 200e938:	df000017 	ldw	fp,0(sp)
 200e93c:	dec00104 	addi	sp,sp,4
 200e940:	f800283a 	ret

0200e944 <alt_find_dev>:
 200e944:	defffa04 	addi	sp,sp,-24
 200e948:	dfc00515 	stw	ra,20(sp)
 200e94c:	df000415 	stw	fp,16(sp)
 200e950:	df000404 	addi	fp,sp,16
 200e954:	e13ffe15 	stw	r4,-8(fp)
 200e958:	e17fff15 	stw	r5,-4(fp)
 200e95c:	e0bfff17 	ldw	r2,-4(fp)
 200e960:	10800017 	ldw	r2,0(r2)
 200e964:	e0bffc15 	stw	r2,-16(fp)
 200e968:	e13ffe17 	ldw	r4,-8(fp)
 200e96c:	20007440 	call	2000744 <strlen>
 200e970:	10800044 	addi	r2,r2,1
 200e974:	e0bffd15 	stw	r2,-12(fp)
 200e978:	00000d06 	br	200e9b0 <alt_find_dev+0x6c>
 200e97c:	e0bffc17 	ldw	r2,-16(fp)
 200e980:	10c00217 	ldw	r3,8(r2)
 200e984:	e0bffd17 	ldw	r2,-12(fp)
 200e988:	1809883a 	mov	r4,r3
 200e98c:	e17ffe17 	ldw	r5,-8(fp)
 200e990:	100d883a 	mov	r6,r2
 200e994:	200ec740 	call	200ec74 <memcmp>
 200e998:	1000021e 	bne	r2,zero,200e9a4 <alt_find_dev+0x60>
 200e99c:	e0bffc17 	ldw	r2,-16(fp)
 200e9a0:	00000706 	br	200e9c0 <alt_find_dev+0x7c>
 200e9a4:	e0bffc17 	ldw	r2,-16(fp)
 200e9a8:	10800017 	ldw	r2,0(r2)
 200e9ac:	e0bffc15 	stw	r2,-16(fp)
 200e9b0:	e0fffc17 	ldw	r3,-16(fp)
 200e9b4:	e0bfff17 	ldw	r2,-4(fp)
 200e9b8:	18bff01e 	bne	r3,r2,200e97c <alt_find_dev+0x38>
 200e9bc:	0005883a 	mov	r2,zero
 200e9c0:	e037883a 	mov	sp,fp
 200e9c4:	dfc00117 	ldw	ra,4(sp)
 200e9c8:	df000017 	ldw	fp,0(sp)
 200e9cc:	dec00204 	addi	sp,sp,8
 200e9d0:	f800283a 	ret

0200e9d4 <alt_find_file>:
 200e9d4:	defffb04 	addi	sp,sp,-20
 200e9d8:	dfc00415 	stw	ra,16(sp)
 200e9dc:	df000315 	stw	fp,12(sp)
 200e9e0:	df000304 	addi	fp,sp,12
 200e9e4:	e13fff15 	stw	r4,-4(fp)
 200e9e8:	00808074 	movhi	r2,513
 200e9ec:	10839a04 	addi	r2,r2,3688
 200e9f0:	10800017 	ldw	r2,0(r2)
 200e9f4:	e0bffd15 	stw	r2,-12(fp)
 200e9f8:	00003106 	br	200eac0 <alt_find_file+0xec>
 200e9fc:	e0bffd17 	ldw	r2,-12(fp)
 200ea00:	10800217 	ldw	r2,8(r2)
 200ea04:	1009883a 	mov	r4,r2
 200ea08:	20007440 	call	2000744 <strlen>
 200ea0c:	e0bffe15 	stw	r2,-8(fp)
 200ea10:	e0bffd17 	ldw	r2,-12(fp)
 200ea14:	10c00217 	ldw	r3,8(r2)
 200ea18:	e0bffe17 	ldw	r2,-8(fp)
 200ea1c:	10bfffc4 	addi	r2,r2,-1
 200ea20:	1885883a 	add	r2,r3,r2
 200ea24:	10800003 	ldbu	r2,0(r2)
 200ea28:	10803fcc 	andi	r2,r2,255
 200ea2c:	1080201c 	xori	r2,r2,128
 200ea30:	10bfe004 	addi	r2,r2,-128
 200ea34:	10800bd8 	cmpnei	r2,r2,47
 200ea38:	1000031e 	bne	r2,zero,200ea48 <alt_find_file+0x74>
 200ea3c:	e0bffe17 	ldw	r2,-8(fp)
 200ea40:	10bfffc4 	addi	r2,r2,-1
 200ea44:	e0bffe15 	stw	r2,-8(fp)
 200ea48:	e0bffe17 	ldw	r2,-8(fp)
 200ea4c:	e0ffff17 	ldw	r3,-4(fp)
 200ea50:	1885883a 	add	r2,r3,r2
 200ea54:	10800003 	ldbu	r2,0(r2)
 200ea58:	10803fcc 	andi	r2,r2,255
 200ea5c:	1080201c 	xori	r2,r2,128
 200ea60:	10bfe004 	addi	r2,r2,-128
 200ea64:	10800be0 	cmpeqi	r2,r2,47
 200ea68:	1000081e 	bne	r2,zero,200ea8c <alt_find_file+0xb8>
 200ea6c:	e0bffe17 	ldw	r2,-8(fp)
 200ea70:	e0ffff17 	ldw	r3,-4(fp)
 200ea74:	1885883a 	add	r2,r3,r2
 200ea78:	10800003 	ldbu	r2,0(r2)
 200ea7c:	10803fcc 	andi	r2,r2,255
 200ea80:	1080201c 	xori	r2,r2,128
 200ea84:	10bfe004 	addi	r2,r2,-128
 200ea88:	10000a1e 	bne	r2,zero,200eab4 <alt_find_file+0xe0>
 200ea8c:	e0bffd17 	ldw	r2,-12(fp)
 200ea90:	10c00217 	ldw	r3,8(r2)
 200ea94:	e0bffe17 	ldw	r2,-8(fp)
 200ea98:	1809883a 	mov	r4,r3
 200ea9c:	e17fff17 	ldw	r5,-4(fp)
 200eaa0:	100d883a 	mov	r6,r2
 200eaa4:	200ec740 	call	200ec74 <memcmp>
 200eaa8:	1000021e 	bne	r2,zero,200eab4 <alt_find_file+0xe0>
 200eaac:	e0bffd17 	ldw	r2,-12(fp)
 200eab0:	00000806 	br	200ead4 <alt_find_file+0x100>
 200eab4:	e0bffd17 	ldw	r2,-12(fp)
 200eab8:	10800017 	ldw	r2,0(r2)
 200eabc:	e0bffd15 	stw	r2,-12(fp)
 200eac0:	e0fffd17 	ldw	r3,-12(fp)
 200eac4:	00808074 	movhi	r2,513
 200eac8:	10839a04 	addi	r2,r2,3688
 200eacc:	18bfcb1e 	bne	r3,r2,200e9fc <alt_find_file+0x28>
 200ead0:	0005883a 	mov	r2,zero
 200ead4:	e037883a 	mov	sp,fp
 200ead8:	dfc00117 	ldw	ra,4(sp)
 200eadc:	df000017 	ldw	fp,0(sp)
 200eae0:	dec00204 	addi	sp,sp,8
 200eae4:	f800283a 	ret

0200eae8 <alt_get_fd>:
 200eae8:	defffc04 	addi	sp,sp,-16
 200eaec:	df000315 	stw	fp,12(sp)
 200eaf0:	df000304 	addi	fp,sp,12
 200eaf4:	e13fff15 	stw	r4,-4(fp)
 200eaf8:	00bffa04 	movi	r2,-24
 200eafc:	e0bffe15 	stw	r2,-8(fp)
 200eb00:	e03ffd15 	stw	zero,-12(fp)
 200eb04:	00001d06 	br	200eb7c <alt_get_fd+0x94>
 200eb08:	00808074 	movhi	r2,513
 200eb0c:	10bf1c04 	addi	r2,r2,-912
 200eb10:	e0fffd17 	ldw	r3,-12(fp)
 200eb14:	18c00324 	muli	r3,r3,12
 200eb18:	10c5883a 	add	r2,r2,r3
 200eb1c:	10800017 	ldw	r2,0(r2)
 200eb20:	1000131e 	bne	r2,zero,200eb70 <alt_get_fd+0x88>
 200eb24:	00808074 	movhi	r2,513
 200eb28:	10bf1c04 	addi	r2,r2,-912
 200eb2c:	e0fffd17 	ldw	r3,-12(fp)
 200eb30:	18c00324 	muli	r3,r3,12
 200eb34:	10c5883a 	add	r2,r2,r3
 200eb38:	e0ffff17 	ldw	r3,-4(fp)
 200eb3c:	10c00015 	stw	r3,0(r2)
 200eb40:	00808074 	movhi	r2,513
 200eb44:	10839e04 	addi	r2,r2,3704
 200eb48:	10c00017 	ldw	r3,0(r2)
 200eb4c:	e0bffd17 	ldw	r2,-12(fp)
 200eb50:	1880040e 	bge	r3,r2,200eb64 <alt_get_fd+0x7c>
 200eb54:	00808074 	movhi	r2,513
 200eb58:	10839e04 	addi	r2,r2,3704
 200eb5c:	e0fffd17 	ldw	r3,-12(fp)
 200eb60:	10c00015 	stw	r3,0(r2)
 200eb64:	e0bffd17 	ldw	r2,-12(fp)
 200eb68:	e0bffe15 	stw	r2,-8(fp)
 200eb6c:	00000606 	br	200eb88 <alt_get_fd+0xa0>
 200eb70:	e0bffd17 	ldw	r2,-12(fp)
 200eb74:	10800044 	addi	r2,r2,1
 200eb78:	e0bffd15 	stw	r2,-12(fp)
 200eb7c:	e0bffd17 	ldw	r2,-12(fp)
 200eb80:	10800810 	cmplti	r2,r2,32
 200eb84:	103fe01e 	bne	r2,zero,200eb08 <alt_get_fd+0x20>
 200eb88:	e0bffe17 	ldw	r2,-8(fp)
 200eb8c:	e037883a 	mov	sp,fp
 200eb90:	df000017 	ldw	fp,0(sp)
 200eb94:	dec00104 	addi	sp,sp,4
 200eb98:	f800283a 	ret

0200eb9c <alt_icache_flush>:
 200eb9c:	defffb04 	addi	sp,sp,-20
 200eba0:	df000415 	stw	fp,16(sp)
 200eba4:	df000404 	addi	fp,sp,16
 200eba8:	e13ffe15 	stw	r4,-8(fp)
 200ebac:	e17fff15 	stw	r5,-4(fp)
 200ebb0:	e0bfff17 	ldw	r2,-4(fp)
 200ebb4:	10840070 	cmpltui	r2,r2,4097
 200ebb8:	1000021e 	bne	r2,zero,200ebc4 <alt_icache_flush+0x28>
 200ebbc:	00840004 	movi	r2,4096
 200ebc0:	e0bfff15 	stw	r2,-4(fp)
 200ebc4:	e0fffe17 	ldw	r3,-8(fp)
 200ebc8:	e0bfff17 	ldw	r2,-4(fp)
 200ebcc:	1885883a 	add	r2,r3,r2
 200ebd0:	e0bffd15 	stw	r2,-12(fp)
 200ebd4:	e0bffe17 	ldw	r2,-8(fp)
 200ebd8:	e0bffc15 	stw	r2,-16(fp)
 200ebdc:	00000506 	br	200ebf4 <alt_icache_flush+0x58>
 200ebe0:	e0bffc17 	ldw	r2,-16(fp)
 200ebe4:	1000603a 	flushi	r2
 200ebe8:	e0bffc17 	ldw	r2,-16(fp)
 200ebec:	10800804 	addi	r2,r2,32
 200ebf0:	e0bffc15 	stw	r2,-16(fp)
 200ebf4:	e0fffc17 	ldw	r3,-16(fp)
 200ebf8:	e0bffd17 	ldw	r2,-12(fp)
 200ebfc:	18bff836 	bltu	r3,r2,200ebe0 <alt_icache_flush+0x44>
 200ec00:	e0bffe17 	ldw	r2,-8(fp)
 200ec04:	108007cc 	andi	r2,r2,31
 200ec08:	10000226 	beq	r2,zero,200ec14 <alt_icache_flush+0x78>
 200ec0c:	e0bffc17 	ldw	r2,-16(fp)
 200ec10:	1000603a 	flushi	r2
 200ec14:	0000203a 	flushp
 200ec18:	e037883a 	mov	sp,fp
 200ec1c:	df000017 	ldw	fp,0(sp)
 200ec20:	dec00104 	addi	sp,sp,4
 200ec24:	f800283a 	ret

0200ec28 <atexit>:
 200ec28:	200b883a 	mov	r5,r4
 200ec2c:	000d883a 	mov	r6,zero
 200ec30:	0009883a 	mov	r4,zero
 200ec34:	000f883a 	mov	r7,zero
 200ec38:	200ecf01 	jmpi	200ecf0 <__register_exitproc>

0200ec3c <exit>:
 200ec3c:	defffe04 	addi	sp,sp,-8
 200ec40:	000b883a 	mov	r5,zero
 200ec44:	dc000015 	stw	r16,0(sp)
 200ec48:	dfc00115 	stw	ra,4(sp)
 200ec4c:	2021883a 	mov	r16,r4
 200ec50:	200ee040 	call	200ee04 <__call_exitprocs>
 200ec54:	00808074 	movhi	r2,513
 200ec58:	10839404 	addi	r2,r2,3664
 200ec5c:	11000017 	ldw	r4,0(r2)
 200ec60:	20800f17 	ldw	r2,60(r4)
 200ec64:	10000126 	beq	r2,zero,200ec6c <exit+0x30>
 200ec68:	103ee83a 	callr	r2
 200ec6c:	8009883a 	mov	r4,r16
 200ec70:	200ef980 	call	200ef98 <_exit>

0200ec74 <memcmp>:
 200ec74:	01c000c4 	movi	r7,3
 200ec78:	3980192e 	bgeu	r7,r6,200ece0 <memcmp+0x6c>
 200ec7c:	2144b03a 	or	r2,r4,r5
 200ec80:	11c4703a 	and	r2,r2,r7
 200ec84:	10000f26 	beq	r2,zero,200ecc4 <memcmp+0x50>
 200ec88:	20800003 	ldbu	r2,0(r4)
 200ec8c:	28c00003 	ldbu	r3,0(r5)
 200ec90:	10c0151e 	bne	r2,r3,200ece8 <memcmp+0x74>
 200ec94:	31bfff84 	addi	r6,r6,-2
 200ec98:	01ffffc4 	movi	r7,-1
 200ec9c:	00000406 	br	200ecb0 <memcmp+0x3c>
 200eca0:	20800003 	ldbu	r2,0(r4)
 200eca4:	28c00003 	ldbu	r3,0(r5)
 200eca8:	31bfffc4 	addi	r6,r6,-1
 200ecac:	10c00e1e 	bne	r2,r3,200ece8 <memcmp+0x74>
 200ecb0:	21000044 	addi	r4,r4,1
 200ecb4:	29400044 	addi	r5,r5,1
 200ecb8:	31fff91e 	bne	r6,r7,200eca0 <memcmp+0x2c>
 200ecbc:	0005883a 	mov	r2,zero
 200ecc0:	f800283a 	ret
 200ecc4:	20c00017 	ldw	r3,0(r4)
 200ecc8:	28800017 	ldw	r2,0(r5)
 200eccc:	1880041e 	bne	r3,r2,200ece0 <memcmp+0x6c>
 200ecd0:	31bfff04 	addi	r6,r6,-4
 200ecd4:	21000104 	addi	r4,r4,4
 200ecd8:	29400104 	addi	r5,r5,4
 200ecdc:	39bff936 	bltu	r7,r6,200ecc4 <memcmp+0x50>
 200ece0:	303fe91e 	bne	r6,zero,200ec88 <memcmp+0x14>
 200ece4:	003ff506 	br	200ecbc <memcmp+0x48>
 200ece8:	10c5c83a 	sub	r2,r2,r3
 200ecec:	f800283a 	ret

0200ecf0 <__register_exitproc>:
 200ecf0:	00808074 	movhi	r2,513
 200ecf4:	defffa04 	addi	sp,sp,-24
 200ecf8:	10839404 	addi	r2,r2,3664
 200ecfc:	dc000315 	stw	r16,12(sp)
 200ed00:	14000017 	ldw	r16,0(r2)
 200ed04:	dc400415 	stw	r17,16(sp)
 200ed08:	dfc00515 	stw	ra,20(sp)
 200ed0c:	80805217 	ldw	r2,328(r16)
 200ed10:	2023883a 	mov	r17,r4
 200ed14:	10003626 	beq	r2,zero,200edf0 <__register_exitproc+0x100>
 200ed18:	10c00117 	ldw	r3,4(r2)
 200ed1c:	010007c4 	movi	r4,31
 200ed20:	20c00e16 	blt	r4,r3,200ed5c <__register_exitproc+0x6c>
 200ed24:	1a400044 	addi	r9,r3,1
 200ed28:	8800211e 	bne	r17,zero,200edb0 <__register_exitproc+0xc0>
 200ed2c:	18c00084 	addi	r3,r3,2
 200ed30:	18c7883a 	add	r3,r3,r3
 200ed34:	18c7883a 	add	r3,r3,r3
 200ed38:	12400115 	stw	r9,4(r2)
 200ed3c:	10c7883a 	add	r3,r2,r3
 200ed40:	19400015 	stw	r5,0(r3)
 200ed44:	0005883a 	mov	r2,zero
 200ed48:	dfc00517 	ldw	ra,20(sp)
 200ed4c:	dc400417 	ldw	r17,16(sp)
 200ed50:	dc000317 	ldw	r16,12(sp)
 200ed54:	dec00604 	addi	sp,sp,24
 200ed58:	f800283a 	ret
 200ed5c:	00800034 	movhi	r2,0
 200ed60:	10800004 	addi	r2,r2,0
 200ed64:	10002526 	beq	r2,zero,200edfc <__register_exitproc+0x10c>
 200ed68:	01006404 	movi	r4,400
 200ed6c:	d9400015 	stw	r5,0(sp)
 200ed70:	d9800115 	stw	r6,4(sp)
 200ed74:	d9c00215 	stw	r7,8(sp)
 200ed78:	00000000 	call	0 <__alt_mem_sdram-0x2000000>
 200ed7c:	d9400017 	ldw	r5,0(sp)
 200ed80:	d9800117 	ldw	r6,4(sp)
 200ed84:	d9c00217 	ldw	r7,8(sp)
 200ed88:	10001c26 	beq	r2,zero,200edfc <__register_exitproc+0x10c>
 200ed8c:	80c05217 	ldw	r3,328(r16)
 200ed90:	10000115 	stw	zero,4(r2)
 200ed94:	02400044 	movi	r9,1
 200ed98:	10c00015 	stw	r3,0(r2)
 200ed9c:	80805215 	stw	r2,328(r16)
 200eda0:	10006215 	stw	zero,392(r2)
 200eda4:	10006315 	stw	zero,396(r2)
 200eda8:	0007883a 	mov	r3,zero
 200edac:	883fdf26 	beq	r17,zero,200ed2c <__register_exitproc+0x3c>
 200edb0:	18d1883a 	add	r8,r3,r3
 200edb4:	4211883a 	add	r8,r8,r8
 200edb8:	1211883a 	add	r8,r2,r8
 200edbc:	41802215 	stw	r6,136(r8)
 200edc0:	01000044 	movi	r4,1
 200edc4:	11806217 	ldw	r6,392(r2)
 200edc8:	20c8983a 	sll	r4,r4,r3
 200edcc:	310cb03a 	or	r6,r6,r4
 200edd0:	11806215 	stw	r6,392(r2)
 200edd4:	41c04215 	stw	r7,264(r8)
 200edd8:	01800084 	movi	r6,2
 200eddc:	89bfd31e 	bne	r17,r6,200ed2c <__register_exitproc+0x3c>
 200ede0:	11806317 	ldw	r6,396(r2)
 200ede4:	3108b03a 	or	r4,r6,r4
 200ede8:	11006315 	stw	r4,396(r2)
 200edec:	003fcf06 	br	200ed2c <__register_exitproc+0x3c>
 200edf0:	80805304 	addi	r2,r16,332
 200edf4:	80805215 	stw	r2,328(r16)
 200edf8:	003fc706 	br	200ed18 <__register_exitproc+0x28>
 200edfc:	00bfffc4 	movi	r2,-1
 200ee00:	003fd106 	br	200ed48 <__register_exitproc+0x58>

0200ee04 <__call_exitprocs>:
 200ee04:	00808074 	movhi	r2,513
 200ee08:	10839404 	addi	r2,r2,3664
 200ee0c:	10800017 	ldw	r2,0(r2)
 200ee10:	defff404 	addi	sp,sp,-48
 200ee14:	dd800815 	stw	r22,32(sp)
 200ee18:	d8800015 	stw	r2,0(sp)
 200ee1c:	10805204 	addi	r2,r2,328
 200ee20:	dd000615 	stw	r20,24(sp)
 200ee24:	dc800415 	stw	r18,16(sp)
 200ee28:	dfc00b15 	stw	ra,44(sp)
 200ee2c:	df000a15 	stw	fp,40(sp)
 200ee30:	ddc00915 	stw	r23,36(sp)
 200ee34:	dd400715 	stw	r21,28(sp)
 200ee38:	dcc00515 	stw	r19,20(sp)
 200ee3c:	dc400315 	stw	r17,12(sp)
 200ee40:	dc000215 	stw	r16,8(sp)
 200ee44:	2025883a 	mov	r18,r4
 200ee48:	2829883a 	mov	r20,r5
 200ee4c:	d8800115 	stw	r2,4(sp)
 200ee50:	05bfffc4 	movi	r22,-1
 200ee54:	d8800017 	ldw	r2,0(sp)
 200ee58:	14c05217 	ldw	r19,328(r2)
 200ee5c:	98001d26 	beq	r19,zero,200eed4 <__call_exitprocs+0xd0>
 200ee60:	dd400117 	ldw	r21,4(sp)
 200ee64:	98800117 	ldw	r2,4(r19)
 200ee68:	173fffc4 	addi	fp,r2,-1
 200ee6c:	e0000d16 	blt	fp,zero,200eea4 <__call_exitprocs+0xa0>
 200ee70:	14000044 	addi	r16,r2,1
 200ee74:	8421883a 	add	r16,r16,r16
 200ee78:	8421883a 	add	r16,r16,r16
 200ee7c:	84402004 	addi	r17,r16,128
 200ee80:	9c63883a 	add	r17,r19,r17
 200ee84:	9c21883a 	add	r16,r19,r16
 200ee88:	a0001e26 	beq	r20,zero,200ef04 <__call_exitprocs+0x100>
 200ee8c:	80804017 	ldw	r2,256(r16)
 200ee90:	15001c26 	beq	r2,r20,200ef04 <__call_exitprocs+0x100>
 200ee94:	e73fffc4 	addi	fp,fp,-1
 200ee98:	843fff04 	addi	r16,r16,-4
 200ee9c:	8c7fff04 	addi	r17,r17,-4
 200eea0:	e5bff91e 	bne	fp,r22,200ee88 <__call_exitprocs+0x84>
 200eea4:	00800034 	movhi	r2,0
 200eea8:	10800004 	addi	r2,r2,0
 200eeac:	10000926 	beq	r2,zero,200eed4 <__call_exitprocs+0xd0>
 200eeb0:	98800117 	ldw	r2,4(r19)
 200eeb4:	1000311e 	bne	r2,zero,200ef7c <__call_exitprocs+0x178>
 200eeb8:	98800017 	ldw	r2,0(r19)
 200eebc:	10003426 	beq	r2,zero,200ef90 <__call_exitprocs+0x18c>
 200eec0:	9809883a 	mov	r4,r19
 200eec4:	a8800015 	stw	r2,0(r21)
 200eec8:	00000000 	call	0 <__alt_mem_sdram-0x2000000>
 200eecc:	acc00017 	ldw	r19,0(r21)
 200eed0:	983fe41e 	bne	r19,zero,200ee64 <__call_exitprocs+0x60>
 200eed4:	dfc00b17 	ldw	ra,44(sp)
 200eed8:	df000a17 	ldw	fp,40(sp)
 200eedc:	ddc00917 	ldw	r23,36(sp)
 200eee0:	dd800817 	ldw	r22,32(sp)
 200eee4:	dd400717 	ldw	r21,28(sp)
 200eee8:	dd000617 	ldw	r20,24(sp)
 200eeec:	dcc00517 	ldw	r19,20(sp)
 200eef0:	dc800417 	ldw	r18,16(sp)
 200eef4:	dc400317 	ldw	r17,12(sp)
 200eef8:	dc000217 	ldw	r16,8(sp)
 200eefc:	dec00c04 	addi	sp,sp,48
 200ef00:	f800283a 	ret
 200ef04:	98800117 	ldw	r2,4(r19)
 200ef08:	80c00017 	ldw	r3,0(r16)
 200ef0c:	10bfffc4 	addi	r2,r2,-1
 200ef10:	17001526 	beq	r2,fp,200ef68 <__call_exitprocs+0x164>
 200ef14:	80000015 	stw	zero,0(r16)
 200ef18:	183fde26 	beq	r3,zero,200ee94 <__call_exitprocs+0x90>
 200ef1c:	00800044 	movi	r2,1
 200ef20:	1708983a 	sll	r4,r2,fp
 200ef24:	98806217 	ldw	r2,392(r19)
 200ef28:	9dc00117 	ldw	r23,4(r19)
 200ef2c:	2084703a 	and	r2,r4,r2
 200ef30:	1000061e 	bne	r2,zero,200ef4c <__call_exitprocs+0x148>
 200ef34:	183ee83a 	callr	r3
 200ef38:	98800117 	ldw	r2,4(r19)
 200ef3c:	15ffc51e 	bne	r2,r23,200ee54 <__call_exitprocs+0x50>
 200ef40:	a8800017 	ldw	r2,0(r21)
 200ef44:	14ffd326 	beq	r2,r19,200ee94 <__call_exitprocs+0x90>
 200ef48:	003fc206 	br	200ee54 <__call_exitprocs+0x50>
 200ef4c:	98806317 	ldw	r2,396(r19)
 200ef50:	2084703a 	and	r2,r4,r2
 200ef54:	1000061e 	bne	r2,zero,200ef70 <__call_exitprocs+0x16c>
 200ef58:	89400017 	ldw	r5,0(r17)
 200ef5c:	9009883a 	mov	r4,r18
 200ef60:	183ee83a 	callr	r3
 200ef64:	003ff406 	br	200ef38 <__call_exitprocs+0x134>
 200ef68:	9f000115 	stw	fp,4(r19)
 200ef6c:	003fea06 	br	200ef18 <__call_exitprocs+0x114>
 200ef70:	89000017 	ldw	r4,0(r17)
 200ef74:	183ee83a 	callr	r3
 200ef78:	003fef06 	br	200ef38 <__call_exitprocs+0x134>
 200ef7c:	98800017 	ldw	r2,0(r19)
 200ef80:	982b883a 	mov	r21,r19
 200ef84:	1027883a 	mov	r19,r2
 200ef88:	983fb61e 	bne	r19,zero,200ee64 <__call_exitprocs+0x60>
 200ef8c:	003fd106 	br	200eed4 <__call_exitprocs+0xd0>
 200ef90:	0005883a 	mov	r2,zero
 200ef94:	003ffa06 	br	200ef80 <__call_exitprocs+0x17c>

0200ef98 <_exit>:
 200ef98:	defffd04 	addi	sp,sp,-12
 200ef9c:	df000215 	stw	fp,8(sp)
 200efa0:	df000204 	addi	fp,sp,8
 200efa4:	e13fff15 	stw	r4,-4(fp)
 200efa8:	0001883a 	nop
 200efac:	e0bfff17 	ldw	r2,-4(fp)
 200efb0:	e0bffe15 	stw	r2,-8(fp)
 200efb4:	e0bffe17 	ldw	r2,-8(fp)
 200efb8:	10000226 	beq	r2,zero,200efc4 <_exit+0x2c>
 200efbc:	002af070 	cmpltui	zero,zero,43969
 200efc0:	00000106 	br	200efc8 <_exit+0x30>
 200efc4:	002af0b0 	cmpltui	zero,zero,43970
 200efc8:	003fff06 	br	200efc8 <_exit+0x30>
