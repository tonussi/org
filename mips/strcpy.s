
strcpy:     file format elf64-x86-64


Disassembly of section .interp:

0000000000400238 <.interp>:
  400238:	2f                   	(bad)
  400239:	6c                   	insb   (%dx),%es:(%rdi)
  40023a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
  400241:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
  400246:	78 2d                	js     400275 <_init-0x1f3>
  400248:	78 38                	js     400282 <_init-0x1e6>
  40024a:	36                   	ss
  40024b:	2d 36 34 2e 73       	sub    $0x732e3436,%eax
  400250:	6f                   	outsl  %ds:(%rsi),(%dx)
  400251:	2e 32 00             	xor    %cs:(%rax),%al

Disassembly of section .note.ABI-tag:

0000000000400254 <.note.ABI-tag>:
  400254:	04 00                	add    $0x0,%al
  400256:	00 00                	add    %al,(%rax)
  400258:	10 00                	adc    %al,(%rax)
  40025a:	00 00                	add    %al,(%rax)
  40025c:	01 00                	add    %eax,(%rax)
  40025e:	00 00                	add    %al,(%rax)
  400260:	47                   	rex.RXB
  400261:	4e 55                	rex.WRX push %rbp
  400263:	00 00                	add    %al,(%rax)
  400265:	00 00                	add    %al,(%rax)
  400267:	00 02                	add    %al,(%rdx)
  400269:	00 00                	add    %al,(%rax)
  40026b:	00 06                	add    %al,(%rsi)
  40026d:	00 00                	add    %al,(%rax)
  40026f:	00 18                	add    %bl,(%rax)
  400271:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.gnu.build-id:

0000000000400274 <.note.gnu.build-id>:
  400274:	04 00                	add    $0x0,%al
  400276:	00 00                	add    %al,(%rax)
  400278:	14 00                	adc    $0x0,%al
  40027a:	00 00                	add    %al,(%rax)
  40027c:	03 00                	add    (%rax),%eax
  40027e:	00 00                	add    %al,(%rax)
  400280:	47                   	rex.RXB
  400281:	4e 55                	rex.WRX push %rbp
  400283:	00 d2                	add    %dl,%dl
  400285:	8f 85 9a 84 99 cf    	popq   -0x30667b66(%rbp)
  40028b:	54                   	push   %rsp
  40028c:	5c                   	pop    %rsp
  40028d:	e5 3c                	in     $0x3c,%eax
  40028f:	0c 53                	or     $0x53,%al
  400291:	bc b9 f0 9d 3b       	mov    $0x3b9df0b9,%esp
  400296:	27                   	(bad)
  400297:	c5                   	.byte 0xc5

Disassembly of section .gnu.hash:

0000000000400298 <.gnu.hash>:
  400298:	02 00                	add    (%rax),%al
  40029a:	00 00                	add    %al,(%rax)
  40029c:	05 00 00 00 01       	add    $0x1000000,%eax
  4002a1:	00 00                	add    %al,(%rax)
  4002a3:	00 06                	add    %al,(%rsi)
  4002a5:	00 00                	add    %al,(%rax)
  4002a7:	00 00                	add    %al,(%rax)
  4002a9:	04 00                	add    $0x0,%al
  4002ab:	08 00                	or     %al,(%rax)
  4002ad:	00 00                	add    %al,(%rax)
  4002af:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 4002b5 <_init-0x1b3>
  4002b5:	00 00                	add    %al,(%rax)
  4002b7:	00 cb                	add    %cl,%bl
  4002b9:	96                   	xchg   %eax,%esi
  4002ba:	93                   	xchg   %eax,%ebx
  4002bb:	1c                   	.byte 0x1c

Disassembly of section .dynsym:

00000000004002c0 <.dynsym>:
	...
  4002d8:	12 00                	adc    (%rax),%al
  4002da:	00 00                	add    %al,(%rax)
  4002dc:	12 00                	adc    (%rax),%al
	...
  4002ee:	00 00                	add    %al,(%rax)
  4002f0:	23 00                	and    (%rax),%eax
  4002f2:	00 00                	add    %al,(%rax)
  4002f4:	12 00                	adc    (%rax),%al
	...
  400306:	00 00                	add    %al,(%rax)
  400308:	2a 00                	sub    (%rax),%al
  40030a:	00 00                	add    %al,(%rax)
  40030c:	12 00                	adc    (%rax),%al
	...
  40031e:	00 00                	add    %al,(%rax)
  400320:	3c 00                	cmp    $0x0,%al
  400322:	00 00                	add    %al,(%rax)
  400324:	20 00                	and    %al,(%rax)
	...
  400336:	00 00                	add    %al,(%rax)
  400338:	0b 00                	or     (%rax),%eax
  40033a:	00 00                	add    %al,(%rax)
  40033c:	12 00                	adc    (%rax),%al
  40033e:	0d 00 5e 06 40       	or     $0x40065e00,%eax
  400343:	00 00                	add    %al,(%rax)
  400345:	00 00                	add    %al,(%rax)
  400347:	00 41 00             	add    %al,0x0(%rcx)
  40034a:	00 00                	add    %al,(%rax)
  40034c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynstr:

0000000000400350 <.dynstr>:
  400350:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  400354:	63 2e                	movslq (%rsi),%ebp
  400356:	73 6f                	jae    4003c7 <_init-0xa1>
  400358:	2e 36 00 73 74       	cs add %dh,%cs:%ss:0x74(%rbx)
  40035d:	72 63                	jb     4003c2 <_init-0xa6>
  40035f:	70 79                	jo     4003da <_init-0x8e>
  400361:	00 5f 5f             	add    %bl,0x5f(%rdi)
  400364:	73 74                	jae    4003da <_init-0x8e>
  400366:	61                   	(bad)
  400367:	63 6b 5f             	movslq 0x5f(%rbx),%ebp
  40036a:	63 68 6b             	movslq 0x6b(%rax),%ebp
  40036d:	5f                   	pop    %rdi
  40036e:	66                   	data16
  40036f:	61                   	(bad)
  400370:	69 6c 00 70 72 69 6e 	imul   $0x746e6972,0x70(%rax,%rax,1),%ebp
  400377:	74
  400378:	66                   	data16
  400379:	00 5f 5f             	add    %bl,0x5f(%rdi)
  40037c:	6c                   	insb   (%dx),%es:(%rdi)
  40037d:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
  400384:	72 74                	jb     4003fa <_init-0x6e>
  400386:	5f                   	pop    %rdi
  400387:	6d                   	insl   (%dx),%es:(%rdi)
  400388:	61                   	(bad)
  400389:	69 6e 00 5f 5f 67 6d 	imul   $0x6d675f5f,0x0(%rsi),%ebp
  400390:	6f                   	outsl  %ds:(%rsi),(%dx)
  400391:	6e                   	outsb  %ds:(%rsi),(%dx)
  400392:	5f                   	pop    %rdi
  400393:	73 74                	jae    400409 <_init-0x5f>
  400395:	61                   	(bad)
  400396:	72 74                	jb     40040c <_init-0x5c>
  400398:	5f                   	pop    %rdi
  400399:	5f                   	pop    %rdi
  40039a:	00 47 4c             	add    %al,0x4c(%rdi)
  40039d:	49                   	rex.WB
  40039e:	42                   	rex.X
  40039f:	43 5f                	rex.XB pop %r15
  4003a1:	32 2e                	xor    (%rsi),%ch
  4003a3:	32 2e                	xor    (%rsi),%ch
  4003a5:	35 00 47 4c 49       	xor    $0x494c4700,%eax
  4003aa:	42                   	rex.X
  4003ab:	43 5f                	rex.XB pop %r15
  4003ad:	32 2e                	xor    (%rsi),%ch
  4003af:	34 00                	xor    $0x0,%al

Disassembly of section .gnu.version:

00000000004003b2 <.gnu.version>:
  4003b2:	00 00                	add    %al,(%rax)
  4003b4:	02 00                	add    (%rax),%al
  4003b6:	03 00                	add    (%rax),%eax
  4003b8:	03 00                	add    (%rax),%eax
  4003ba:	00 00                	add    %al,(%rax)
  4003bc:	01 00                	add    %eax,(%rax)

Disassembly of section .gnu.version_r:

00000000004003c0 <.gnu.version_r>:
  4003c0:	01 00                	add    %eax,(%rax)
  4003c2:	02 00                	add    (%rax),%al
  4003c4:	01 00                	add    %eax,(%rax)
  4003c6:	00 00                	add    %al,(%rax)
  4003c8:	10 00                	adc    %al,(%rax)
  4003ca:	00 00                	add    %al,(%rax)
  4003cc:	00 00                	add    %al,(%rax)
  4003ce:	00 00                	add    %al,(%rax)
  4003d0:	75 1a                	jne    4003ec <_init-0x7c>
  4003d2:	69 09 00 00 03 00    	imul   $0x30000,(%rcx),%ecx
  4003d8:	4b 00 00             	rex.WXB add %al,(%r8)
  4003db:	00 10                	add    %dl,(%rax)
  4003dd:	00 00                	add    %al,(%rax)
  4003df:	00 14 69             	add    %dl,(%rcx,%rbp,2)
  4003e2:	69 0d 00 00 02 00 57 	imul   $0x57,0x20000(%rip),%ecx        # 4203ec <__FRAME_END__+0x1fb6c>
  4003e9:	00 00 00
  4003ec:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

00000000004003f0 <.rela.dyn>:
  4003f0:	f8                   	clc
  4003f1:	0f 60 00             	punpcklbw (%rax),%mm0
  4003f4:	00 00                	add    %al,(%rax)
  4003f6:	00 00                	add    %al,(%rax)
  4003f8:	06                   	(bad)
  4003f9:	00 00                	add    %al,(%rax)
  4003fb:	00 04 00             	add    %al,(%rax,%rax,1)
	...

Disassembly of section .rela.plt:

0000000000400408 <.rela.plt>:
  400408:	18 10                	sbb    %dl,(%rax)
  40040a:	60                   	(bad)
  40040b:	00 00                	add    %al,(%rax)
  40040d:	00 00                	add    %al,(%rax)
  40040f:	00 07                	add    %al,(%rdi)
  400411:	00 00                	add    %al,(%rax)
  400413:	00 01                	add    %al,(%rcx)
	...
  40041d:	00 00                	add    %al,(%rax)
  40041f:	00 20                	add    %ah,(%rax)
  400421:	10 60 00             	adc    %ah,0x0(%rax)
  400424:	00 00                	add    %al,(%rax)
  400426:	00 00                	add    %al,(%rax)
  400428:	07                   	(bad)
  400429:	00 00                	add    %al,(%rax)
  40042b:	00 02                	add    %al,(%rdx)
	...
  400435:	00 00                	add    %al,(%rax)
  400437:	00 28                	add    %ch,(%rax)
  400439:	10 60 00             	adc    %ah,0x0(%rax)
  40043c:	00 00                	add    %al,(%rax)
  40043e:	00 00                	add    %al,(%rax)
  400440:	07                   	(bad)
  400441:	00 00                	add    %al,(%rax)
  400443:	00 03                	add    %al,(%rbx)
	...
  40044d:	00 00                	add    %al,(%rax)
  40044f:	00 30                	add    %dh,(%rax)
  400451:	10 60 00             	adc    %ah,0x0(%rax)
  400454:	00 00                	add    %al,(%rax)
  400456:	00 00                	add    %al,(%rax)
  400458:	07                   	(bad)
  400459:	00 00                	add    %al,(%rax)
  40045b:	00 04 00             	add    %al,(%rax,%rax,1)
	...

Disassembly of section .init:

0000000000400468 <_init>:
  400468:	48 83 ec 08          	sub    $0x8,%rsp
  40046c:	48 8b 05 85 0b 20 00 	mov    0x200b85(%rip),%rax        # 600ff8 <_DYNAMIC+0x1d0>
  400473:	48 85 c0             	test   %rax,%rax
  400476:	74 05                	je     40047d <_init+0x15>
  400478:	e8 53 00 00 00       	callq  4004d0 <__gmon_start__@plt>
  40047d:	48 83 c4 08          	add    $0x8,%rsp
  400481:	c3                   	retq

Disassembly of section .plt:

0000000000400490 <__stack_chk_fail@plt-0x10>:
  400490:	ff 35 72 0b 20 00    	pushq  0x200b72(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400496:	ff 25 74 0b 20 00    	jmpq   *0x200b74(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40049c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004004a0 <__stack_chk_fail@plt>:
  4004a0:	ff 25 72 0b 20 00    	jmpq   *0x200b72(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  4004a6:	68 00 00 00 00       	pushq  $0x0
  4004ab:	e9 e0 ff ff ff       	jmpq   400490 <_init+0x28>

00000000004004b0 <printf@plt>:
  4004b0:	ff 25 6a 0b 20 00    	jmpq   *0x200b6a(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  4004b6:	68 01 00 00 00       	pushq  $0x1
  4004bb:	e9 d0 ff ff ff       	jmpq   400490 <_init+0x28>

00000000004004c0 <__libc_start_main@plt>:
  4004c0:	ff 25 62 0b 20 00    	jmpq   *0x200b62(%rip)        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  4004c6:	68 02 00 00 00       	pushq  $0x2
  4004cb:	e9 c0 ff ff ff       	jmpq   400490 <_init+0x28>

00000000004004d0 <__gmon_start__@plt>:
  4004d0:	ff 25 5a 0b 20 00    	jmpq   *0x200b5a(%rip)        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  4004d6:	68 03 00 00 00       	pushq  $0x3
  4004db:	e9 b0 ff ff ff       	jmpq   400490 <_init+0x28>

Disassembly of section .text:

00000000004004e0 <_start>:
  4004e0:	31 ed                	xor    %ebp,%ebp
  4004e2:	49 89 d1             	mov    %rdx,%r9
  4004e5:	5e                   	pop    %rsi
  4004e6:	48 89 e2             	mov    %rsp,%rdx
  4004e9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4004ed:	50                   	push   %rax
  4004ee:	54                   	push   %rsp
  4004ef:	49 c7 c0 30 07 40 00 	mov    $0x400730,%r8
  4004f6:	48 c7 c1 a0 06 40 00 	mov    $0x4006a0,%rcx
  4004fd:	48 c7 c7 cd 05 40 00 	mov    $0x4005cd,%rdi
  400504:	e8 b7 ff ff ff       	callq  4004c0 <__libc_start_main@plt>
  400509:	f4                   	hlt
  40050a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400510 <deregister_tm_clones>:
  400510:	b8 4f 10 60 00       	mov    $0x60104f,%eax
  400515:	55                   	push   %rbp
  400516:	48 2d 48 10 60 00    	sub    $0x601048,%rax
  40051c:	48 83 f8 0e          	cmp    $0xe,%rax
  400520:	48 89 e5             	mov    %rsp,%rbp
  400523:	77 02                	ja     400527 <deregister_tm_clones+0x17>
  400525:	5d                   	pop    %rbp
  400526:	c3                   	retq
  400527:	b8 00 00 00 00       	mov    $0x0,%eax
  40052c:	48 85 c0             	test   %rax,%rax
  40052f:	74 f4                	je     400525 <deregister_tm_clones+0x15>
  400531:	5d                   	pop    %rbp
  400532:	bf 48 10 60 00       	mov    $0x601048,%edi
  400537:	ff e0                	jmpq   *%rax
  400539:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400540 <register_tm_clones>:
  400540:	b8 48 10 60 00       	mov    $0x601048,%eax
  400545:	55                   	push   %rbp
  400546:	48 2d 48 10 60 00    	sub    $0x601048,%rax
  40054c:	48 c1 f8 03          	sar    $0x3,%rax
  400550:	48 89 e5             	mov    %rsp,%rbp
  400553:	48 89 c2             	mov    %rax,%rdx
  400556:	48 c1 ea 3f          	shr    $0x3f,%rdx
  40055a:	48 01 d0             	add    %rdx,%rax
  40055d:	48 d1 f8             	sar    %rax
  400560:	75 02                	jne    400564 <register_tm_clones+0x24>
  400562:	5d                   	pop    %rbp
  400563:	c3                   	retq
  400564:	ba 00 00 00 00       	mov    $0x0,%edx
  400569:	48 85 d2             	test   %rdx,%rdx
  40056c:	74 f4                	je     400562 <register_tm_clones+0x22>
  40056e:	5d                   	pop    %rbp
  40056f:	48 89 c6             	mov    %rax,%rsi
  400572:	bf 48 10 60 00       	mov    $0x601048,%edi
  400577:	ff e2                	jmpq   *%rdx
  400579:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400580 <__do_global_dtors_aux>:
  400580:	80 3d c1 0a 20 00 00 	cmpb   $0x0,0x200ac1(%rip)        # 601048 <__TMC_END__>
  400587:	75 11                	jne    40059a <__do_global_dtors_aux+0x1a>
  400589:	55                   	push   %rbp
  40058a:	48 89 e5             	mov    %rsp,%rbp
  40058d:	e8 7e ff ff ff       	callq  400510 <deregister_tm_clones>
  400592:	5d                   	pop    %rbp
  400593:	c6 05 ae 0a 20 00 01 	movb   $0x1,0x200aae(%rip)        # 601048 <__TMC_END__>
  40059a:	f3 c3                	repz retq
  40059c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005a0 <frame_dummy>:
  4005a0:	48 83 3d 78 08 20 00 	cmpq   $0x0,0x200878(%rip)        # 600e20 <__JCR_END__>
  4005a7:	00
  4005a8:	74 1e                	je     4005c8 <frame_dummy+0x28>
  4005aa:	b8 00 00 00 00       	mov    $0x0,%eax
  4005af:	48 85 c0             	test   %rax,%rax
  4005b2:	74 14                	je     4005c8 <frame_dummy+0x28>
  4005b4:	55                   	push   %rbp
  4005b5:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  4005ba:	48 89 e5             	mov    %rsp,%rbp
  4005bd:	ff d0                	callq  *%rax
  4005bf:	5d                   	pop    %rbp
  4005c0:	e9 7b ff ff ff       	jmpq   400540 <register_tm_clones>
  4005c5:	0f 1f 00             	nopl   (%rax)
  4005c8:	e9 73 ff ff ff       	jmpq   400540 <register_tm_clones>

00000000004005cd <main>:
  4005cd:	55                   	push   %rbp
  4005ce:	48 89 e5             	mov    %rsp,%rbp
  4005d1:	48 83 ec 30          	sub    $0x30,%rsp
  4005d5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4005dc:	00 00
  4005de:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4005e2:	31 c0                	xor    %eax,%eax
  4005e4:	c7 45 e0 61 62 63 00 	movl   $0x636261,-0x20(%rbp)
  4005eb:	c7 45 f0 64 66 67 00 	movl   $0x676664,-0x10(%rbp)
  4005f2:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
  4005f6:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  4005fa:	48 89 d6             	mov    %rdx,%rsi
  4005fd:	48 89 c7             	mov    %rax,%rdi
  400600:	e8 59 00 00 00       	callq  40065e <strcpy>
  400605:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
  40060c:	eb 2f                	jmp    40063d <main+0x70>
  40060e:	8b 45 dc             	mov    -0x24(%rbp),%eax
  400611:	48 98                	cltq
  400613:	0f b6 44 05 f0       	movzbl -0x10(%rbp,%rax,1),%eax
  400618:	0f be d0             	movsbl %al,%edx
  40061b:	8b 45 dc             	mov    -0x24(%rbp),%eax
  40061e:	48 98                	cltq
  400620:	0f b6 44 05 e0       	movzbl -0x20(%rbp,%rax,1),%eax
  400625:	0f be c0             	movsbl %al,%eax
  400628:	89 c6                	mov    %eax,%esi
  40062a:	bf 44 07 40 00       	mov    $0x400744,%edi
  40062f:	b8 00 00 00 00       	mov    $0x0,%eax
  400634:	e8 77 fe ff ff       	callq  4004b0 <printf@plt>
  400639:	83 45 dc 01          	addl   $0x1,-0x24(%rbp)
  40063d:	83 7d dc 02          	cmpl   $0x2,-0x24(%rbp)
  400641:	7e cb                	jle    40060e <main+0x41>
  400643:	b8 00 00 00 00       	mov    $0x0,%eax
  400648:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  40064c:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  400653:	00 00
  400655:	74 05                	je     40065c <main+0x8f>
  400657:	e8 44 fe ff ff       	callq  4004a0 <__stack_chk_fail@plt>
  40065c:	c9                   	leaveq
  40065d:	c3                   	retq

000000000040065e <strcpy>:
  40065e:	55                   	push   %rbp
  40065f:	48 89 e5             	mov    %rsp,%rbp
  400662:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400666:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  40066a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400671:	eb 04                	jmp    400677 <strcpy+0x19>
  400673:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  400677:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40067a:	48 63 d0             	movslq %eax,%rdx
  40067d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400681:	48 01 d0             	add    %rdx,%rax
  400684:	8b 55 fc             	mov    -0x4(%rbp),%edx
  400687:	48 63 ca             	movslq %edx,%rcx
  40068a:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  40068e:	48 01 ca             	add    %rcx,%rdx
  400691:	0f b6 12             	movzbl (%rdx),%edx
  400694:	88 10                	mov    %dl,(%rax)
  400696:	0f b6 00             	movzbl (%rax),%eax
  400699:	84 c0                	test   %al,%al
  40069b:	75 d6                	jne    400673 <strcpy+0x15>
  40069d:	5d                   	pop    %rbp
  40069e:	c3                   	retq
  40069f:	90                   	nop

00000000004006a0 <__libc_csu_init>:
  4006a0:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  4006a5:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  4006aa:	48 8d 2d 67 07 20 00 	lea    0x200767(%rip),%rbp        # 600e18 <__init_array_end>
  4006b1:	4c 8d 25 58 07 20 00 	lea    0x200758(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  4006b8:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  4006bd:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  4006c2:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  4006c7:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  4006cc:	48 83 ec 38          	sub    $0x38,%rsp
  4006d0:	4c 29 e5             	sub    %r12,%rbp
  4006d3:	41 89 ff             	mov    %edi,%r15d
  4006d6:	49 89 f6             	mov    %rsi,%r14
  4006d9:	48 c1 fd 03          	sar    $0x3,%rbp
  4006dd:	49 89 d5             	mov    %rdx,%r13
  4006e0:	31 db                	xor    %ebx,%ebx
  4006e2:	e8 81 fd ff ff       	callq  400468 <_init>
  4006e7:	48 85 ed             	test   %rbp,%rbp
  4006ea:	74 1a                	je     400706 <__libc_csu_init+0x66>
  4006ec:	0f 1f 40 00          	nopl   0x0(%rax)
  4006f0:	4c 89 ea             	mov    %r13,%rdx
  4006f3:	4c 89 f6             	mov    %r14,%rsi
  4006f6:	44 89 ff             	mov    %r15d,%edi
  4006f9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4006fd:	48 83 c3 01          	add    $0x1,%rbx
  400701:	48 39 eb             	cmp    %rbp,%rbx
  400704:	75 ea                	jne    4006f0 <__libc_csu_init+0x50>
  400706:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  40070b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  400710:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  400715:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  40071a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  40071f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  400724:	48 83 c4 38          	add    $0x38,%rsp
  400728:	c3                   	retq
  400729:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400730 <__libc_csu_fini>:
  400730:	f3 c3                	repz retq

Disassembly of section .fini:

0000000000400734 <_fini>:
  400734:	48 83 ec 08          	sub    $0x8,%rsp
  400738:	48 83 c4 08          	add    $0x8,%rsp
  40073c:	c3                   	retq

Disassembly of section .rodata:

0000000000400740 <_IO_stdin_used>:
  400740:	01 00                	add    %eax,(%rax)
  400742:	02 00                	add    (%rax),%al
  400744:	25 63 20 3d 3d       	and    $0x3d3d2063,%eax
  400749:	20                   	.byte 0x20
  40074a:	25                   	.byte 0x25
  40074b:	63 00                	movslq (%rax),%eax

Disassembly of section .eh_frame_hdr:

0000000000400750 <.eh_frame_hdr>:
  400750:	01 1b                	add    %ebx,(%rbx)
  400752:	03 3b                	add    (%rbx),%edi
  400754:	3c 00                	cmp    $0x0,%al
  400756:	00 00                	add    %al,(%rax)
  400758:	06                   	(bad)
  400759:	00 00                	add    %al,(%rax)
  40075b:	00 40 fd             	add    %al,-0x3(%rax)
  40075e:	ff                   	(bad)
  40075f:	ff 88 00 00 00 90    	decl   -0x70000000(%rax)
  400765:	fd                   	std
  400766:	ff                   	(bad)
  400767:	ff 58 00             	lcallq *0x0(%rax)
  40076a:	00 00                	add    %al,(%rax)
  40076c:	7d fe                	jge    40076c <_IO_stdin_used+0x2c>
  40076e:	ff                   	(bad)
  40076f:	ff b0 00 00 00 0e    	pushq  0xe000000(%rax)
  400775:	ff                   	(bad)
  400776:	ff                   	(bad)
  400777:	ff d0                	callq  *%rax
  400779:	00 00                	add    %al,(%rax)
  40077b:	00 50 ff             	add    %dl,-0x1(%rax)
  40077e:	ff                   	(bad)
  40077f:	ff f0                	push   %rax
  400781:	00 00                	add    %al,(%rax)
  400783:	00 e0                	add    %ah,%al
  400785:	ff                   	(bad)
  400786:	ff                   	(bad)
  400787:	ff 18                	lcallq *(%rax)
  400789:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .eh_frame:

0000000000400790 <__FRAME_END__-0xf0>:
  400790:	14 00                	adc    $0x0,%al
  400792:	00 00                	add    %al,(%rax)
  400794:	00 00                	add    %al,(%rax)
  400796:	00 00                	add    %al,(%rax)
  400798:	01 7a 52             	add    %edi,0x52(%rdx)
  40079b:	00 01                	add    %al,(%rcx)
  40079d:	78 10                	js     4007af <_IO_stdin_used+0x6f>
  40079f:	01 1b                	add    %ebx,(%rbx)
  4007a1:	0c 07                	or     $0x7,%al
  4007a3:	08 90 01 07 10 14    	or     %dl,0x14100701(%rax)
  4007a9:	00 00                	add    %al,(%rax)
  4007ab:	00 1c 00             	add    %bl,(%rax,%rax,1)
  4007ae:	00 00                	add    %al,(%rax)
  4007b0:	30 fd                	xor    %bh,%ch
  4007b2:	ff                   	(bad)
  4007b3:	ff 2a                	ljmpq  *(%rdx)
	...
  4007bd:	00 00                	add    %al,(%rax)
  4007bf:	00 14 00             	add    %dl,(%rax,%rax,1)
  4007c2:	00 00                	add    %al,(%rax)
  4007c4:	00 00                	add    %al,(%rax)
  4007c6:	00 00                	add    %al,(%rax)
  4007c8:	01 7a 52             	add    %edi,0x52(%rdx)
  4007cb:	00 01                	add    %al,(%rcx)
  4007cd:	78 10                	js     4007df <_IO_stdin_used+0x9f>
  4007cf:	01 1b                	add    %ebx,(%rbx)
  4007d1:	0c 07                	or     $0x7,%al
  4007d3:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
  4007d9:	00 00                	add    %al,(%rax)
  4007db:	00 1c 00             	add    %bl,(%rax,%rax,1)
  4007de:	00 00                	add    %al,(%rax)
  4007e0:	b0 fc                	mov    $0xfc,%al
  4007e2:	ff                   	(bad)
  4007e3:	ff 50 00             	callq  *0x0(%rax)
  4007e6:	00 00                	add    %al,(%rax)
  4007e8:	00 0e                	add    %cl,(%rsi)
  4007ea:	10 46 0e             	adc    %al,0xe(%rsi)
  4007ed:	18 4a 0f             	sbb    %cl,0xf(%rdx)
  4007f0:	0b 77 08             	or     0x8(%rdi),%esi
  4007f3:	80 00 3f             	addb   $0x3f,(%rax)
  4007f6:	1a 3b                	sbb    (%rbx),%bh
  4007f8:	2a 33                	sub    (%rbx),%dh
  4007fa:	24 22                	and    $0x22,%al
  4007fc:	00 00                	add    %al,(%rax)
  4007fe:	00 00                	add    %al,(%rax)
  400800:	1c 00                	sbb    $0x0,%al
  400802:	00 00                	add    %al,(%rax)
  400804:	44 00 00             	add    %r8b,(%rax)
  400807:	00 c5                	add    %al,%ch
  400809:	fd                   	std
  40080a:	ff                   	(bad)
  40080b:	ff 91 00 00 00 00    	callq  *0x0(%rcx)
  400811:	41 0e                	rex.B (bad)
  400813:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  400819:	02 8c 0c 07 08 00 00 	add    0x807(%rsp,%rcx,1),%cl
  400820:	1c 00                	sbb    $0x0,%al
  400822:	00 00                	add    %al,(%rax)
  400824:	64 00 00             	add    %al,%fs:(%rax)
  400827:	00 36                	add    %dh,(%rsi)
  400829:	fe                   	(bad)
  40082a:	ff                   	(bad)
  40082b:	ff 41 00             	incl   0x0(%rcx)
  40082e:	00 00                	add    %al,(%rax)
  400830:	00 41 0e             	add    %al,0xe(%rcx)
  400833:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  400839:	7c 0c                	jl     400847 <_IO_stdin_used+0x107>
  40083b:	07                   	(bad)
  40083c:	08 00                	or     %al,(%rax)
  40083e:	00 00                	add    %al,(%rax)
  400840:	24 00                	and    $0x0,%al
  400842:	00 00                	add    %al,(%rax)
  400844:	84 00                	test   %al,(%rax)
  400846:	00 00                	add    %al,(%rax)
  400848:	58                   	pop    %rax
  400849:	fe                   	(bad)
  40084a:	ff                   	(bad)
  40084b:	ff 89 00 00 00 00    	decl   0x0(%rcx)
  400851:	4a 86 06             	rex.WX xchg %al,(%rsi)
  400854:	8c 05 66 0e 40 83    	mov    %es,-0x7cbff19a(%rip)        # ffffffff838016c0 <_end+0xffffffff83200670>
  40085a:	07                   	(bad)
  40085b:	8d 04 8e             	lea    (%rsi,%rcx,4),%eax
  40085e:	03 8f 02 02 58 0e    	add    0xe580202(%rdi),%ecx
  400864:	08 00                	or     %al,(%rax)
  400866:	00 00                	add    %al,(%rax)
  400868:	14 00                	adc    $0x0,%al
  40086a:	00 00                	add    %al,(%rax)
  40086c:	ac                   	lods   %ds:(%rsi),%al
  40086d:	00 00                	add    %al,(%rax)
  40086f:	00 c0                	add    %al,%al
  400871:	fe                   	(bad)
  400872:	ff                   	(bad)
  400873:	ff 02                	incl   (%rdx)
	...

0000000000400880 <__FRAME_END__>:
  400880:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000600e10 <__frame_dummy_init_array_entry>:
  600e10:	a0                   	.byte 0xa0
  600e11:	05 40 00 00 00       	add    $0x40,%eax
	...

Disassembly of section .fini_array:

0000000000600e18 <__do_global_dtors_aux_fini_array_entry>:
  600e18:	80 05 40 00 00 00 00 	addb   $0x0,0x40(%rip)        # 600e5f <_DYNAMIC+0x37>
	...

Disassembly of section .jcr:

0000000000600e20 <__JCR_END__>:
	...

Disassembly of section .dynamic:

0000000000600e28 <_DYNAMIC>:
  600e28:	01 00                	add    %eax,(%rax)
  600e2a:	00 00                	add    %al,(%rax)
  600e2c:	00 00                	add    %al,(%rax)
  600e2e:	00 00                	add    %al,(%rax)
  600e30:	01 00                	add    %eax,(%rax)
  600e32:	00 00                	add    %al,(%rax)
  600e34:	00 00                	add    %al,(%rax)
  600e36:	00 00                	add    %al,(%rax)
  600e38:	0c 00                	or     $0x0,%al
  600e3a:	00 00                	add    %al,(%rax)
  600e3c:	00 00                	add    %al,(%rax)
  600e3e:	00 00                	add    %al,(%rax)
  600e40:	68 04 40 00 00       	pushq  $0x4004
  600e45:	00 00                	add    %al,(%rax)
  600e47:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 600e4d <_DYNAMIC+0x25>
  600e4d:	00 00                	add    %al,(%rax)
  600e4f:	00 34 07             	add    %dh,(%rdi,%rax,1)
  600e52:	40 00 00             	add    %al,(%rax)
  600e55:	00 00                	add    %al,(%rax)
  600e57:	00 19                	add    %bl,(%rcx)
  600e59:	00 00                	add    %al,(%rax)
  600e5b:	00 00                	add    %al,(%rax)
  600e5d:	00 00                	add    %al,(%rax)
  600e5f:	00 10                	add    %dl,(%rax)
  600e61:	0e                   	(bad)
  600e62:	60                   	(bad)
  600e63:	00 00                	add    %al,(%rax)
  600e65:	00 00                	add    %al,(%rax)
  600e67:	00 1b                	add    %bl,(%rbx)
  600e69:	00 00                	add    %al,(%rax)
  600e6b:	00 00                	add    %al,(%rax)
  600e6d:	00 00                	add    %al,(%rax)
  600e6f:	00 08                	add    %cl,(%rax)
  600e71:	00 00                	add    %al,(%rax)
  600e73:	00 00                	add    %al,(%rax)
  600e75:	00 00                	add    %al,(%rax)
  600e77:	00 1a                	add    %bl,(%rdx)
  600e79:	00 00                	add    %al,(%rax)
  600e7b:	00 00                	add    %al,(%rax)
  600e7d:	00 00                	add    %al,(%rax)
  600e7f:	00 18                	add    %bl,(%rax)
  600e81:	0e                   	(bad)
  600e82:	60                   	(bad)
  600e83:	00 00                	add    %al,(%rax)
  600e85:	00 00                	add    %al,(%rax)
  600e87:	00 1c 00             	add    %bl,(%rax,%rax,1)
  600e8a:	00 00                	add    %al,(%rax)
  600e8c:	00 00                	add    %al,(%rax)
  600e8e:	00 00                	add    %al,(%rax)
  600e90:	08 00                	or     %al,(%rax)
  600e92:	00 00                	add    %al,(%rax)
  600e94:	00 00                	add    %al,(%rax)
  600e96:	00 00                	add    %al,(%rax)
  600e98:	f5                   	cmc
  600e99:	fe                   	(bad)
  600e9a:	ff 6f 00             	ljmpq  *0x0(%rdi)
  600e9d:	00 00                	add    %al,(%rax)
  600e9f:	00 98 02 40 00 00    	add    %bl,0x4002(%rax)
  600ea5:	00 00                	add    %al,(%rax)
  600ea7:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 600ead <_DYNAMIC+0x85>
  600ead:	00 00                	add    %al,(%rax)
  600eaf:	00 50 03             	add    %dl,0x3(%rax)
  600eb2:	40 00 00             	add    %al,(%rax)
  600eb5:	00 00                	add    %al,(%rax)
  600eb7:	00 06                	add    %al,(%rsi)
  600eb9:	00 00                	add    %al,(%rax)
  600ebb:	00 00                	add    %al,(%rax)
  600ebd:	00 00                	add    %al,(%rax)
  600ebf:	00 c0                	add    %al,%al
  600ec1:	02 40 00             	add    0x0(%rax),%al
  600ec4:	00 00                	add    %al,(%rax)
  600ec6:	00 00                	add    %al,(%rax)
  600ec8:	0a 00                	or     (%rax),%al
  600eca:	00 00                	add    %al,(%rax)
  600ecc:	00 00                	add    %al,(%rax)
  600ece:	00 00                	add    %al,(%rax)
  600ed0:	61                   	(bad)
  600ed1:	00 00                	add    %al,(%rax)
  600ed3:	00 00                	add    %al,(%rax)
  600ed5:	00 00                	add    %al,(%rax)
  600ed7:	00 0b                	add    %cl,(%rbx)
  600ed9:	00 00                	add    %al,(%rax)
  600edb:	00 00                	add    %al,(%rax)
  600edd:	00 00                	add    %al,(%rax)
  600edf:	00 18                	add    %bl,(%rax)
  600ee1:	00 00                	add    %al,(%rax)
  600ee3:	00 00                	add    %al,(%rax)
  600ee5:	00 00                	add    %al,(%rax)
  600ee7:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 600eed <_DYNAMIC+0xc5>
	...
  600ef5:	00 00                	add    %al,(%rax)
  600ef7:	00 03                	add    %al,(%rbx)
	...
  600f01:	10 60 00             	adc    %ah,0x0(%rax)
  600f04:	00 00                	add    %al,(%rax)
  600f06:	00 00                	add    %al,(%rax)
  600f08:	02 00                	add    (%rax),%al
  600f0a:	00 00                	add    %al,(%rax)
  600f0c:	00 00                	add    %al,(%rax)
  600f0e:	00 00                	add    %al,(%rax)
  600f10:	60                   	(bad)
  600f11:	00 00                	add    %al,(%rax)
  600f13:	00 00                	add    %al,(%rax)
  600f15:	00 00                	add    %al,(%rax)
  600f17:	00 14 00             	add    %dl,(%rax,%rax,1)
  600f1a:	00 00                	add    %al,(%rax)
  600f1c:	00 00                	add    %al,(%rax)
  600f1e:	00 00                	add    %al,(%rax)
  600f20:	07                   	(bad)
  600f21:	00 00                	add    %al,(%rax)
  600f23:	00 00                	add    %al,(%rax)
  600f25:	00 00                	add    %al,(%rax)
  600f27:	00 17                	add    %dl,(%rdi)
  600f29:	00 00                	add    %al,(%rax)
  600f2b:	00 00                	add    %al,(%rax)
  600f2d:	00 00                	add    %al,(%rax)
  600f2f:	00 08                	add    %cl,(%rax)
  600f31:	04 40                	add    $0x40,%al
  600f33:	00 00                	add    %al,(%rax)
  600f35:	00 00                	add    %al,(%rax)
  600f37:	00 07                	add    %al,(%rdi)
  600f39:	00 00                	add    %al,(%rax)
  600f3b:	00 00                	add    %al,(%rax)
  600f3d:	00 00                	add    %al,(%rax)
  600f3f:	00 f0                	add    %dh,%al
  600f41:	03 40 00             	add    0x0(%rax),%eax
  600f44:	00 00                	add    %al,(%rax)
  600f46:	00 00                	add    %al,(%rax)
  600f48:	08 00                	or     %al,(%rax)
  600f4a:	00 00                	add    %al,(%rax)
  600f4c:	00 00                	add    %al,(%rax)
  600f4e:	00 00                	add    %al,(%rax)
  600f50:	18 00                	sbb    %al,(%rax)
  600f52:	00 00                	add    %al,(%rax)
  600f54:	00 00                	add    %al,(%rax)
  600f56:	00 00                	add    %al,(%rax)
  600f58:	09 00                	or     %eax,(%rax)
  600f5a:	00 00                	add    %al,(%rax)
  600f5c:	00 00                	add    %al,(%rax)
  600f5e:	00 00                	add    %al,(%rax)
  600f60:	18 00                	sbb    %al,(%rax)
  600f62:	00 00                	add    %al,(%rax)
  600f64:	00 00                	add    %al,(%rax)
  600f66:	00 00                	add    %al,(%rax)
  600f68:	fe                   	(bad)
  600f69:	ff                   	(bad)
  600f6a:	ff 6f 00             	ljmpq  *0x0(%rdi)
  600f6d:	00 00                	add    %al,(%rax)
  600f6f:	00 c0                	add    %al,%al
  600f71:	03 40 00             	add    0x0(%rax),%eax
  600f74:	00 00                	add    %al,(%rax)
  600f76:	00 00                	add    %al,(%rax)
  600f78:	ff                   	(bad)
  600f79:	ff                   	(bad)
  600f7a:	ff 6f 00             	ljmpq  *0x0(%rdi)
  600f7d:	00 00                	add    %al,(%rax)
  600f7f:	00 01                	add    %al,(%rcx)
  600f81:	00 00                	add    %al,(%rax)
  600f83:	00 00                	add    %al,(%rax)
  600f85:	00 00                	add    %al,(%rax)
  600f87:	00 f0                	add    %dh,%al
  600f89:	ff                   	(bad)
  600f8a:	ff 6f 00             	ljmpq  *0x0(%rdi)
  600f8d:	00 00                	add    %al,(%rax)
  600f8f:	00 b2 03 40 00 00    	add    %dh,0x4003(%rdx)
	...

Disassembly of section .got:

0000000000600ff8 <.got>:
	...

Disassembly of section .got.plt:

0000000000601000 <_GLOBAL_OFFSET_TABLE_>:
  601000:	28 0e                	sub    %cl,(%rsi)
  601002:	60                   	(bad)
	...
  601017:	00 a6 04 40 00 00    	add    %ah,0x4004(%rsi)
  60101d:	00 00                	add    %al,(%rax)
  60101f:	00 b6 04 40 00 00    	add    %dh,0x4004(%rsi)
  601025:	00 00                	add    %al,(%rax)
  601027:	00 c6                	add    %al,%dh
  601029:	04 40                	add    $0x40,%al
  60102b:	00 00                	add    %al,(%rax)
  60102d:	00 00                	add    %al,(%rax)
  60102f:	00 d6                	add    %dl,%dh
  601031:	04 40                	add    $0x40,%al
  601033:	00 00                	add    %al,(%rax)
  601035:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

0000000000601038 <__data_start>:
	...

0000000000601040 <__dso_handle>:
	...

Disassembly of section .bss:

0000000000601048 <__bss_start>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 55 62             	sub    %dl,0x62(%rbp)
   8:	75 6e                	jne    78 <_init-0x4003f0>
   a:	74 75                	je     81 <_init-0x4003e7>
   c:	2f                   	(bad)
   d:	4c 69 6e 61 72 6f 20 	imul   $0x34206f72,0x61(%rsi),%r13
  14:	34
  15:	2e 38 2e             	cmp    %ch,%cs:(%rsi)
  18:	31 2d 31 30 75 62    	xor    %ebp,0x62753031(%rip)        # 6275304f <_end+0x62151fff>
  1e:	75 6e                	jne    8e <_init-0x4003da>
  20:	74 75                	je     97 <_init-0x4003d1>
  22:	39 29                	cmp    %ebp,(%rcx)
  24:	20 34 2e             	and    %dh,(%rsi,%rbp,1)
  27:	38 2e                	cmp    %ch,(%rsi)
  29:	31 00                	xor    %eax,(%rax)
  2b:	47                   	rex.RXB
  2c:	43                   	rex.XB
  2d:	43 3a 20             	rex.XB cmp (%r8),%spl
  30:	28 55 62             	sub    %dl,0x62(%rbp)
  33:	75 6e                	jne    a3 <_init-0x4003c5>
  35:	74 75                	je     ac <_init-0x4003bc>
  37:	2f                   	(bad)
  38:	4c 69 6e 61 72 6f 20 	imul   $0x34206f72,0x61(%rsi),%r13
  3f:	34
  40:	2e                   	cs
  41:	37                   	(bad)
  42:	2e 33 2d 37 75 62 75 	xor    %cs:0x75627537(%rip),%ebp        # 75627580 <_end+0x75026530>
  49:	6e                   	outsb  %ds:(%rsi),(%dx)
  4a:	74 75                	je     c1 <_init-0x4003a7>
  4c:	33 29                	xor    (%rcx),%ebp
  4e:	20 34 2e             	and    %dh,(%rsi,%rbp,1)
  51:	37                   	(bad)
  52:	2e 33 00             	xor    %cs:(%rax),%eax
