
a.exe:     file format pei-x86-64


Disassembly of section .text:

0000000000401000 <__mingw_invalidParameterHandler>:
  401000:	c3                   	retq   
  401001:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401008:	00 00 00 00 
  40100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401010 <pre_c_init>:
  401010:	48 83 ec 28          	sub    $0x28,%rsp
  401014:	48 8b 05 95 34 00 00 	mov    0x3495(%rip),%rax        # 4044b0 <.refptr.mingw_initltsdrot_force>
  40101b:	31 c9                	xor    %ecx,%ecx
  40101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401023:	48 8b 05 96 34 00 00 	mov    0x3496(%rip),%rax        # 4044c0 <.refptr.mingw_initltsdyn_force>
  40102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401030:	48 8b 05 99 34 00 00 	mov    0x3499(%rip),%rax        # 4044d0 <.refptr.mingw_initltssuo_force>
  401037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40103d:	48 8b 05 5c 34 00 00 	mov    0x345c(%rip),%rax        # 4044a0 <.refptr.mingw_initcharmax>
  401044:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40104a:	48 8b 05 3f 33 00 00 	mov    0x333f(%rip),%rax        # 404390 <.refptr.__image_base__>
  401051:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
  401056:	75 0f                	jne    401067 <pre_c_init+0x57>
  401058:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
  40105c:	48 01 d0             	add    %rdx,%rax
  40105f:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
  401065:	74 59                	je     4010c0 <pre_c_init+0xb0>
  401067:	48 8b 05 22 34 00 00 	mov    0x3422(%rip),%rax        # 404490 <.refptr.mingw_app_type>
  40106e:	89 0d 98 5f 00 00    	mov    %ecx,0x5f98(%rip)        # 40700c <managedapp>
  401074:	8b 00                	mov    (%rax),%eax
  401076:	85 c0                	test   %eax,%eax
  401078:	75 36                	jne    4010b0 <pre_c_init+0xa0>
  40107a:	b9 01 00 00 00       	mov    $0x1,%ecx
  40107f:	e8 94 1a 00 00       	callq  402b18 <__set_app_type>
  401084:	e8 07 1b 00 00       	callq  402b90 <__p__fmode>
  401089:	48 8b 15 c0 33 00 00 	mov    0x33c0(%rip),%rdx        # 404450 <.refptr._fmode>
  401090:	8b 12                	mov    (%rdx),%edx
  401092:	89 10                	mov    %edx,(%rax)
  401094:	e8 97 05 00 00       	callq  401630 <_setargv>
  401099:	48 8b 05 a0 32 00 00 	mov    0x32a0(%rip),%rax        # 404340 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
  4010a0:	83 38 01             	cmpl   $0x1,(%rax)
  4010a3:	74 4b                	je     4010f0 <pre_c_init+0xe0>
  4010a5:	31 c0                	xor    %eax,%eax
  4010a7:	48 83 c4 28          	add    $0x28,%rsp
  4010ab:	c3                   	retq   
  4010ac:	0f 1f 40 00          	nopl   0x0(%rax)
  4010b0:	b9 02 00 00 00       	mov    $0x2,%ecx
  4010b5:	e8 5e 1a 00 00       	callq  402b18 <__set_app_type>
  4010ba:	eb c8                	jmp    401084 <pre_c_init+0x74>
  4010bc:	0f 1f 40 00          	nopl   0x0(%rax)
  4010c0:	0f b7 50 18          	movzwl 0x18(%rax),%edx
  4010c4:	66 81 fa 0b 01       	cmp    $0x10b,%dx
  4010c9:	74 3d                	je     401108 <pre_c_init+0xf8>
  4010cb:	66 81 fa 0b 02       	cmp    $0x20b,%dx
  4010d0:	75 95                	jne    401067 <pre_c_init+0x57>
  4010d2:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
  4010d9:	76 8c                	jbe    401067 <pre_c_init+0x57>
  4010db:	8b 90 f8 00 00 00    	mov    0xf8(%rax),%edx
  4010e1:	31 c9                	xor    %ecx,%ecx
  4010e3:	85 d2                	test   %edx,%edx
  4010e5:	0f 95 c1             	setne  %cl
  4010e8:	e9 7a ff ff ff       	jmpq   401067 <pre_c_init+0x57>
  4010ed:	0f 1f 00             	nopl   (%rax)
  4010f0:	48 8d 0d f9 07 00 00 	lea    0x7f9(%rip),%rcx        # 4018f0 <_matherr>
  4010f7:	e8 a4 0e 00 00       	callq  401fa0 <__mingw_setusermatherr>
  4010fc:	31 c0                	xor    %eax,%eax
  4010fe:	48 83 c4 28          	add    $0x28,%rsp
  401102:	c3                   	retq   
  401103:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401108:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
  40110c:	0f 86 55 ff ff ff    	jbe    401067 <pre_c_init+0x57>
  401112:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
  401119:	31 c9                	xor    %ecx,%ecx
  40111b:	45 85 c0             	test   %r8d,%r8d
  40111e:	0f 95 c1             	setne  %cl
  401121:	e9 41 ff ff ff       	jmpq   401067 <pre_c_init+0x57>
  401126:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40112d:	00 00 00 

0000000000401130 <pre_cpp_init>:
  401130:	48 83 ec 38          	sub    $0x38,%rsp
  401134:	48 8b 05 45 33 00 00 	mov    0x3345(%rip),%rax        # 404480 <.refptr._newmode>
  40113b:	4c 8d 05 d6 5e 00 00 	lea    0x5ed6(%rip),%r8        # 407018 <envp>
  401142:	48 8d 15 d7 5e 00 00 	lea    0x5ed7(%rip),%rdx        # 407020 <argv>
  401149:	48 8d 0d d8 5e 00 00 	lea    0x5ed8(%rip),%rcx        # 407028 <argc>
  401150:	8b 00                	mov    (%rax),%eax
  401152:	89 05 ac 5e 00 00    	mov    %eax,0x5eac(%rip)        # 407004 <startinfo>
  401158:	48 8d 05 a5 5e 00 00 	lea    0x5ea5(%rip),%rax        # 407004 <startinfo>
  40115f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  401164:	48 8b 05 d5 32 00 00 	mov    0x32d5(%rip),%rax        # 404440 <.refptr._dowildcard>
  40116b:	44 8b 08             	mov    (%rax),%r9d
  40116e:	e8 b5 19 00 00       	callq  402b28 <__getmainargs>
  401173:	90                   	nop
  401174:	48 83 c4 38          	add    $0x38,%rsp
  401178:	c3                   	retq   
  401179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401180 <__tmainCRTStartup>:
  401180:	41 55                	push   %r13
  401182:	41 54                	push   %r12
  401184:	55                   	push   %rbp
  401185:	57                   	push   %rdi
  401186:	56                   	push   %rsi
  401187:	53                   	push   %rbx
  401188:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
  40118f:	b9 0d 00 00 00       	mov    $0xd,%ecx
  401194:	31 c0                	xor    %eax,%eax
  401196:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
  40119b:	4c 89 c7             	mov    %r8,%rdi
  40119e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4011a1:	48 8b 3d e8 32 00 00 	mov    0x32e8(%rip),%rdi        # 404490 <.refptr.mingw_app_type>
  4011a8:	44 8b 0f             	mov    (%rdi),%r9d
  4011ab:	45 85 c9             	test   %r9d,%r9d
  4011ae:	0f 85 9c 02 00 00    	jne    401450 <__tmainCRTStartup+0x2d0>
  4011b4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
  4011bb:	00 00 
  4011bd:	48 8b 1d 1c 32 00 00 	mov    0x321c(%rip),%rbx        # 4043e0 <.refptr.__native_startup_lock>
  4011c4:	48 8b 70 08          	mov    0x8(%rax),%rsi
  4011c8:	31 ed                	xor    %ebp,%ebp
  4011ca:	4c 8b 25 83 70 00 00 	mov    0x7083(%rip),%r12        # 408254 <__imp_Sleep>
  4011d1:	eb 16                	jmp    4011e9 <__tmainCRTStartup+0x69>
  4011d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4011d8:	48 39 c6             	cmp    %rax,%rsi
  4011db:	0f 84 17 02 00 00    	je     4013f8 <__tmainCRTStartup+0x278>
  4011e1:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
  4011e6:	41 ff d4             	callq  *%r12
  4011e9:	48 89 e8             	mov    %rbp,%rax
  4011ec:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
  4011f1:	48 85 c0             	test   %rax,%rax
  4011f4:	75 e2                	jne    4011d8 <__tmainCRTStartup+0x58>
  4011f6:	48 8b 35 f3 31 00 00 	mov    0x31f3(%rip),%rsi        # 4043f0 <.refptr.__native_startup_state>
  4011fd:	31 ed                	xor    %ebp,%ebp
  4011ff:	8b 06                	mov    (%rsi),%eax
  401201:	83 f8 01             	cmp    $0x1,%eax
  401204:	0f 84 05 02 00 00    	je     40140f <__tmainCRTStartup+0x28f>
  40120a:	8b 06                	mov    (%rsi),%eax
  40120c:	85 c0                	test   %eax,%eax
  40120e:	0f 84 6c 02 00 00    	je     401480 <__tmainCRTStartup+0x300>
  401214:	c7 05 ea 5d 00 00 01 	movl   $0x1,0x5dea(%rip)        # 407008 <has_cctor>
  40121b:	00 00 00 
  40121e:	8b 06                	mov    (%rsi),%eax
  401220:	83 f8 01             	cmp    $0x1,%eax
  401223:	0f 84 fb 01 00 00    	je     401424 <__tmainCRTStartup+0x2a4>
  401229:	85 ed                	test   %ebp,%ebp
  40122b:	0f 84 14 02 00 00    	je     401445 <__tmainCRTStartup+0x2c5>
  401231:	48 8b 05 48 31 00 00 	mov    0x3148(%rip),%rax        # 404380 <.refptr.__dyn_tls_init_callback>
  401238:	48 8b 00             	mov    (%rax),%rax
  40123b:	48 85 c0             	test   %rax,%rax
  40123e:	74 0c                	je     40124c <__tmainCRTStartup+0xcc>
  401240:	45 31 c0             	xor    %r8d,%r8d
  401243:	ba 02 00 00 00       	mov    $0x2,%edx
  401248:	31 c9                	xor    %ecx,%ecx
  40124a:	ff d0                	callq  *%rax
  40124c:	e8 0f 0a 00 00       	callq  401c60 <_pei386_runtime_relocator>
  401251:	48 8d 0d 18 10 00 00 	lea    0x1018(%rip),%rcx        # 402270 <_gnu_exception_handler>
  401258:	ff 15 ee 6f 00 00    	callq  *0x6fee(%rip)        # 40824c <__imp_SetUnhandledExceptionFilter>
  40125e:	48 8b 15 6b 31 00 00 	mov    0x316b(%rip),%rdx        # 4043d0 <.refptr.__mingw_oldexcpt_handler>
  401265:	48 89 02             	mov    %rax,(%rdx)
  401268:	e8 03 0f 00 00       	callq  402170 <__mingw_init_ehandler>
  40126d:	48 8d 0d 8c fd ff ff 	lea    -0x274(%rip),%rcx        # 401000 <__mingw_invalidParameterHandler>
  401274:	e8 f7 18 00 00       	callq  402b70 <_set_invalid_parameter_handler>
  401279:	e8 72 07 00 00       	callq  4019f0 <_fpreset>
  40127e:	48 8b 05 0b 31 00 00 	mov    0x310b(%rip),%rax        # 404390 <.refptr.__image_base__>
  401285:	48 89 05 dc 66 00 00 	mov    %rax,0x66dc(%rip)        # 407968 <__mingw_winmain_hInstance>
  40128c:	e8 ef 18 00 00       	callq  402b80 <__p__acmdln>
  401291:	31 c9                	xor    %ecx,%ecx
  401293:	48 8b 00             	mov    (%rax),%rax
  401296:	48 85 c0             	test   %rax,%rax
  401299:	75 16                	jne    4012b1 <__tmainCRTStartup+0x131>
  40129b:	eb 52                	jmp    4012ef <__tmainCRTStartup+0x16f>
  40129d:	0f 1f 00             	nopl   (%rax)
  4012a0:	84 d2                	test   %dl,%dl
  4012a2:	74 44                	je     4012e8 <__tmainCRTStartup+0x168>
  4012a4:	83 e1 01             	and    $0x1,%ecx
  4012a7:	74 27                	je     4012d0 <__tmainCRTStartup+0x150>
  4012a9:	b9 01 00 00 00       	mov    $0x1,%ecx
  4012ae:	48 ff c0             	inc    %rax
  4012b1:	0f b6 10             	movzbl (%rax),%edx
  4012b4:	80 fa 20             	cmp    $0x20,%dl
  4012b7:	7e e7                	jle    4012a0 <__tmainCRTStartup+0x120>
  4012b9:	41 89 c8             	mov    %ecx,%r8d
  4012bc:	41 83 f0 01          	xor    $0x1,%r8d
  4012c0:	80 fa 22             	cmp    $0x22,%dl
  4012c3:	41 0f 44 c8          	cmove  %r8d,%ecx
  4012c7:	eb e5                	jmp    4012ae <__tmainCRTStartup+0x12e>
  4012c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4012d0:	84 d2                	test   %dl,%dl
  4012d2:	74 14                	je     4012e8 <__tmainCRTStartup+0x168>
  4012d4:	0f 1f 40 00          	nopl   0x0(%rax)
  4012d8:	0f b6 50 01          	movzbl 0x1(%rax),%edx
  4012dc:	48 ff c0             	inc    %rax
  4012df:	84 d2                	test   %dl,%dl
  4012e1:	74 05                	je     4012e8 <__tmainCRTStartup+0x168>
  4012e3:	80 fa 20             	cmp    $0x20,%dl
  4012e6:	7e f0                	jle    4012d8 <__tmainCRTStartup+0x158>
  4012e8:	48 89 05 71 66 00 00 	mov    %rax,0x6671(%rip)        # 407960 <__mingw_winmain_lpCmdLine>
  4012ef:	44 8b 07             	mov    (%rdi),%r8d
  4012f2:	45 85 c0             	test   %r8d,%r8d
  4012f5:	74 16                	je     40130d <__tmainCRTStartup+0x18d>
  4012f7:	b8 0a 00 00 00       	mov    $0xa,%eax
  4012fc:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
  401301:	0f 85 e1 00 00 00    	jne    4013e8 <__tmainCRTStartup+0x268>
  401307:	89 05 f3 1c 00 00    	mov    %eax,0x1cf3(%rip)        # 403000 <__data_start__>
  40130d:	8b 1d 15 5d 00 00    	mov    0x5d15(%rip),%ebx        # 407028 <argc>
  401313:	44 8d 6b 01          	lea    0x1(%rbx),%r13d
  401317:	4d 63 ed             	movslq %r13d,%r13
  40131a:	49 c1 e5 03          	shl    $0x3,%r13
  40131e:	4c 89 e9             	mov    %r13,%rcx
  401321:	e8 92 17 00 00       	callq  402ab8 <malloc>
  401326:	48 8b 3d f3 5c 00 00 	mov    0x5cf3(%rip),%rdi        # 407020 <argv>
  40132d:	48 89 c5             	mov    %rax,%rbp
  401330:	85 db                	test   %ebx,%ebx
  401332:	7e 45                	jle    401379 <__tmainCRTStartup+0x1f9>
  401334:	44 8d 63 ff          	lea    -0x1(%rbx),%r12d
  401338:	31 db                	xor    %ebx,%ebx
  40133a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401340:	48 8b 0c df          	mov    (%rdi,%rbx,8),%rcx
  401344:	e8 57 17 00 00       	callq  402aa0 <strlen>
  401349:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40134d:	48 89 f1             	mov    %rsi,%rcx
  401350:	e8 63 17 00 00       	callq  402ab8 <malloc>
  401355:	49 89 f0             	mov    %rsi,%r8
  401358:	48 89 44 dd 00       	mov    %rax,0x0(%rbp,%rbx,8)
  40135d:	48 8b 14 df          	mov    (%rdi,%rbx,8),%rdx
  401361:	48 89 c1             	mov    %rax,%rcx
  401364:	e8 47 17 00 00       	callq  402ab0 <memcpy>
  401369:	48 89 d8             	mov    %rbx,%rax
  40136c:	48 ff c3             	inc    %rbx
  40136f:	49 39 c4             	cmp    %rax,%r12
  401372:	75 cc                	jne    401340 <__tmainCRTStartup+0x1c0>
  401374:	4a 8d 44 2d f8       	lea    -0x8(%rbp,%r13,1),%rax
  401379:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  401380:	48 89 2d 99 5c 00 00 	mov    %rbp,0x5c99(%rip)        # 407020 <argv>
  401387:	e8 74 02 00 00       	callq  401600 <__main>
  40138c:	48 8b 05 0d 30 00 00 	mov    0x300d(%rip),%rax        # 4043a0 <.refptr.__imp___initenv>
  401393:	4c 8b 05 7e 5c 00 00 	mov    0x5c7e(%rip),%r8        # 407018 <envp>
  40139a:	8b 0d 88 5c 00 00    	mov    0x5c88(%rip),%ecx        # 407028 <argc>
  4013a0:	48 8b 00             	mov    (%rax),%rax
  4013a3:	4c 89 00             	mov    %r8,(%rax)
  4013a6:	48 8b 15 73 5c 00 00 	mov    0x5c73(%rip),%rdx        # 407020 <argv>
  4013ad:	e8 be 18 00 00       	callq  402c70 <main>
  4013b2:	8b 0d 54 5c 00 00    	mov    0x5c54(%rip),%ecx        # 40700c <managedapp>
  4013b8:	89 05 52 5c 00 00    	mov    %eax,0x5c52(%rip)        # 407010 <mainret>
  4013be:	85 c9                	test   %ecx,%ecx
  4013c0:	0f 84 d8 00 00 00    	je     40149e <__tmainCRTStartup+0x31e>
  4013c6:	8b 15 3c 5c 00 00    	mov    0x5c3c(%rip),%edx        # 407008 <has_cctor>
  4013cc:	85 d2                	test   %edx,%edx
  4013ce:	0f 84 8c 00 00 00    	je     401460 <__tmainCRTStartup+0x2e0>
  4013d4:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
  4013db:	5b                   	pop    %rbx
  4013dc:	5e                   	pop    %rsi
  4013dd:	5f                   	pop    %rdi
  4013de:	5d                   	pop    %rbp
  4013df:	41 5c                	pop    %r12
  4013e1:	41 5d                	pop    %r13
  4013e3:	c3                   	retq   
  4013e4:	0f 1f 40 00          	nopl   0x0(%rax)
  4013e8:	0f b7 44 24 60       	movzwl 0x60(%rsp),%eax
  4013ed:	e9 15 ff ff ff       	jmpq   401307 <__tmainCRTStartup+0x187>
  4013f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4013f8:	48 8b 35 f1 2f 00 00 	mov    0x2ff1(%rip),%rsi        # 4043f0 <.refptr.__native_startup_state>
  4013ff:	bd 01 00 00 00       	mov    $0x1,%ebp
  401404:	8b 06                	mov    (%rsi),%eax
  401406:	83 f8 01             	cmp    $0x1,%eax
  401409:	0f 85 fb fd ff ff    	jne    40120a <__tmainCRTStartup+0x8a>
  40140f:	b9 1f 00 00 00       	mov    $0x1f,%ecx
  401414:	e8 ef 16 00 00       	callq  402b08 <_amsg_exit>
  401419:	8b 06                	mov    (%rsi),%eax
  40141b:	83 f8 01             	cmp    $0x1,%eax
  40141e:	0f 85 05 fe ff ff    	jne    401229 <__tmainCRTStartup+0xa9>
  401424:	48 8b 15 e5 2f 00 00 	mov    0x2fe5(%rip),%rdx        # 404410 <.refptr.__xc_z>
  40142b:	48 8b 0d ce 2f 00 00 	mov    0x2fce(%rip),%rcx        # 404400 <.refptr.__xc_a>
  401432:	e8 c1 16 00 00       	callq  402af8 <_initterm>
  401437:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
  40143d:	85 ed                	test   %ebp,%ebp
  40143f:	0f 85 ec fd ff ff    	jne    401231 <__tmainCRTStartup+0xb1>
  401445:	31 c0                	xor    %eax,%eax
  401447:	48 87 03             	xchg   %rax,(%rbx)
  40144a:	e9 e2 fd ff ff       	jmpq   401231 <__tmainCRTStartup+0xb1>
  40144f:	90                   	nop
  401450:	4c 89 c1             	mov    %r8,%rcx
  401453:	ff 15 a3 6d 00 00    	callq  *0x6da3(%rip)        # 4081fc <__imp_GetStartupInfoA>
  401459:	e9 56 fd ff ff       	jmpq   4011b4 <__tmainCRTStartup+0x34>
  40145e:	66 90                	xchg   %ax,%ax
  401460:	e8 9b 16 00 00       	callq  402b00 <_cexit>
  401465:	8b 05 a5 5b 00 00    	mov    0x5ba5(%rip),%eax        # 407010 <mainret>
  40146b:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
  401472:	5b                   	pop    %rbx
  401473:	5e                   	pop    %rsi
  401474:	5f                   	pop    %rdi
  401475:	5d                   	pop    %rbp
  401476:	41 5c                	pop    %r12
  401478:	41 5d                	pop    %r13
  40147a:	c3                   	retq   
  40147b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401480:	48 8b 15 a9 2f 00 00 	mov    0x2fa9(%rip),%rdx        # 404430 <.refptr.__xi_z>
  401487:	48 8b 0d 92 2f 00 00 	mov    0x2f92(%rip),%rcx        # 404420 <.refptr.__xi_a>
  40148e:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
  401494:	e8 5f 16 00 00       	callq  402af8 <_initterm>
  401499:	e9 80 fd ff ff       	jmpq   40121e <__tmainCRTStartup+0x9e>
  40149e:	89 c1                	mov    %eax,%ecx
  4014a0:	e8 33 16 00 00       	callq  402ad8 <exit>
  4014a5:	90                   	nop
  4014a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014ad:	00 00 00 

00000000004014b0 <WinMainCRTStartup>:
  4014b0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014b4 <.l_startw>:
  4014b4:	48 8b 05 d5 2f 00 00 	mov    0x2fd5(%rip),%rax        # 404490 <.refptr.mingw_app_type>
  4014bb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  4014c1:	e8 7a 01 00 00       	callq  401640 <__security_init_cookie>
  4014c6:	e8 b5 fc ff ff       	callq  401180 <__tmainCRTStartup>
  4014cb:	90                   	nop

00000000004014cc <.l_endw>:
  4014cc:	90                   	nop
  4014cd:	48 83 c4 28          	add    $0x28,%rsp
  4014d1:	c3                   	retq   
  4014d2:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4014d9:	00 00 00 00 
  4014dd:	0f 1f 00             	nopl   (%rax)

00000000004014e0 <mainCRTStartup>:
  4014e0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014e4 <.l_start>:
  4014e4:	48 8b 05 a5 2f 00 00 	mov    0x2fa5(%rip),%rax        # 404490 <.refptr.mingw_app_type>
  4014eb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  4014f1:	e8 4a 01 00 00       	callq  401640 <__security_init_cookie>
  4014f6:	e8 85 fc ff ff       	callq  401180 <__tmainCRTStartup>
  4014fb:	90                   	nop

00000000004014fc <.l_end>:
  4014fc:	90                   	nop
  4014fd:	48 83 c4 28          	add    $0x28,%rsp
  401501:	c3                   	retq   
  401502:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401509:	00 00 00 00 
  40150d:	0f 1f 00             	nopl   (%rax)

0000000000401510 <atexit>:
  401510:	48 83 ec 28          	sub    $0x28,%rsp
  401514:	e8 d7 15 00 00       	callq  402af0 <_onexit>
  401519:	48 85 c0             	test   %rax,%rax
  40151c:	0f 94 c0             	sete   %al
  40151f:	0f b6 c0             	movzbl %al,%eax
  401522:	f7 d8                	neg    %eax
  401524:	48 83 c4 28          	add    $0x28,%rsp
  401528:	c3                   	retq   
  401529:	90                   	nop
  40152a:	90                   	nop
  40152b:	90                   	nop
  40152c:	90                   	nop
  40152d:	90                   	nop
  40152e:	90                   	nop
  40152f:	90                   	nop

0000000000401530 <__gcc_register_frame>:
  401530:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 401540 <__gcc_deregister_frame>
  401537:	e9 d4 ff ff ff       	jmpq   401510 <atexit>
  40153c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401540 <__gcc_deregister_frame>:
  401540:	c3                   	retq   
  401541:	90                   	nop
  401542:	90                   	nop
  401543:	90                   	nop
  401544:	90                   	nop
  401545:	90                   	nop
  401546:	90                   	nop
  401547:	90                   	nop
  401548:	90                   	nop
  401549:	90                   	nop
  40154a:	90                   	nop
  40154b:	90                   	nop
  40154c:	90                   	nop
  40154d:	90                   	nop
  40154e:	90                   	nop
  40154f:	90                   	nop

0000000000401550 <__do_global_dtors>:
  401550:	48 83 ec 28          	sub    $0x28,%rsp
  401554:	48 8b 05 c5 1a 00 00 	mov    0x1ac5(%rip),%rax        # 403020 <p.92473>
  40155b:	48 8b 00             	mov    (%rax),%rax
  40155e:	48 85 c0             	test   %rax,%rax
  401561:	74 22                	je     401585 <__do_global_dtors+0x35>
  401563:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401568:	ff d0                	callq  *%rax
  40156a:	48 8b 05 af 1a 00 00 	mov    0x1aaf(%rip),%rax        # 403020 <p.92473>
  401571:	48 8d 50 08          	lea    0x8(%rax),%rdx
  401575:	48 8b 40 08          	mov    0x8(%rax),%rax
  401579:	48 89 15 a0 1a 00 00 	mov    %rdx,0x1aa0(%rip)        # 403020 <p.92473>
  401580:	48 85 c0             	test   %rax,%rax
  401583:	75 e3                	jne    401568 <__do_global_dtors+0x18>
  401585:	48 83 c4 28          	add    $0x28,%rsp
  401589:	c3                   	retq   
  40158a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401590 <__do_global_ctors>:
  401590:	56                   	push   %rsi
  401591:	53                   	push   %rbx
  401592:	48 83 ec 28          	sub    $0x28,%rsp
  401596:	48 8b 15 b3 2d 00 00 	mov    0x2db3(%rip),%rdx        # 404350 <.refptr.__CTOR_LIST__>
  40159d:	48 8b 02             	mov    (%rdx),%rax
  4015a0:	89 c1                	mov    %eax,%ecx
  4015a2:	83 f8 ff             	cmp    $0xffffffff,%eax
  4015a5:	74 39                	je     4015e0 <__do_global_ctors+0x50>
  4015a7:	85 c9                	test   %ecx,%ecx
  4015a9:	74 20                	je     4015cb <__do_global_ctors+0x3b>
  4015ab:	89 c8                	mov    %ecx,%eax
  4015ad:	ff c9                	dec    %ecx
  4015af:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
  4015b3:	48 29 c8             	sub    %rcx,%rax
  4015b6:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
  4015bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4015c0:	ff 13                	callq  *(%rbx)
  4015c2:	48 83 eb 08          	sub    $0x8,%rbx
  4015c6:	48 39 f3             	cmp    %rsi,%rbx
  4015c9:	75 f5                	jne    4015c0 <__do_global_ctors+0x30>
  4015cb:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 401550 <__do_global_dtors>
  4015d2:	48 83 c4 28          	add    $0x28,%rsp
  4015d6:	5b                   	pop    %rbx
  4015d7:	5e                   	pop    %rsi
  4015d8:	e9 33 ff ff ff       	jmpq   401510 <atexit>
  4015dd:	0f 1f 00             	nopl   (%rax)
  4015e0:	31 c0                	xor    %eax,%eax
  4015e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4015e8:	44 8d 40 01          	lea    0x1(%rax),%r8d
  4015ec:	89 c1                	mov    %eax,%ecx
  4015ee:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
  4015f3:	4c 89 c0             	mov    %r8,%rax
  4015f6:	75 f0                	jne    4015e8 <__do_global_ctors+0x58>
  4015f8:	eb ad                	jmp    4015a7 <__do_global_ctors+0x17>
  4015fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401600 <__main>:
  401600:	8b 05 2a 5a 00 00    	mov    0x5a2a(%rip),%eax        # 407030 <initialized>
  401606:	85 c0                	test   %eax,%eax
  401608:	74 06                	je     401610 <__main+0x10>
  40160a:	c3                   	retq   
  40160b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401610:	c7 05 16 5a 00 00 01 	movl   $0x1,0x5a16(%rip)        # 407030 <initialized>
  401617:	00 00 00 
  40161a:	e9 71 ff ff ff       	jmpq   401590 <__do_global_ctors>
  40161f:	90                   	nop

0000000000401620 <my_lconv_init>:
  401620:	48 ff 25 85 6c 00 00 	rex.W jmpq *0x6c85(%rip)        # 4082ac <__imp___lconv_init>
  401627:	90                   	nop
  401628:	90                   	nop
  401629:	90                   	nop
  40162a:	90                   	nop
  40162b:	90                   	nop
  40162c:	90                   	nop
  40162d:	90                   	nop
  40162e:	90                   	nop
  40162f:	90                   	nop

0000000000401630 <_setargv>:
  401630:	31 c0                	xor    %eax,%eax
  401632:	c3                   	retq   
  401633:	90                   	nop
  401634:	90                   	nop
  401635:	90                   	nop
  401636:	90                   	nop
  401637:	90                   	nop
  401638:	90                   	nop
  401639:	90                   	nop
  40163a:	90                   	nop
  40163b:	90                   	nop
  40163c:	90                   	nop
  40163d:	90                   	nop
  40163e:	90                   	nop
  40163f:	90                   	nop

0000000000401640 <__security_init_cookie>:
  401640:	41 54                	push   %r12
  401642:	55                   	push   %rbp
  401643:	57                   	push   %rdi
  401644:	56                   	push   %rsi
  401645:	53                   	push   %rbx
  401646:	48 83 ec 30          	sub    $0x30,%rsp
  40164a:	48 8b 1d 6f 1a 00 00 	mov    0x1a6f(%rip),%rbx        # 4030c0 <__security_cookie>
  401651:	48 b8 32 a2 df 2d 99 	movabs $0x2b992ddfa232,%rax
  401658:	2b 00 00 
  40165b:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  401662:	00 00 
  401664:	48 39 c3             	cmp    %rax,%rbx
  401667:	74 17                	je     401680 <__security_init_cookie+0x40>
  401669:	48 f7 d3             	not    %rbx
  40166c:	48 89 1d 5d 1a 00 00 	mov    %rbx,0x1a5d(%rip)        # 4030d0 <__security_cookie_complement>
  401673:	48 83 c4 30          	add    $0x30,%rsp
  401677:	5b                   	pop    %rbx
  401678:	5e                   	pop    %rsi
  401679:	5f                   	pop    %rdi
  40167a:	5d                   	pop    %rbp
  40167b:	41 5c                	pop    %r12
  40167d:	c3                   	retq   
  40167e:	66 90                	xchg   %ax,%ax
  401680:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  401685:	ff 15 79 6b 00 00    	callq  *0x6b79(%rip)        # 408204 <__imp_GetSystemTimeAsFileTime>
  40168b:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  401690:	ff 15 4e 6b 00 00    	callq  *0x6b4e(%rip)        # 4081e4 <__imp_GetCurrentProcessId>
  401696:	89 c5                	mov    %eax,%ebp
  401698:	ff 15 4e 6b 00 00    	callq  *0x6b4e(%rip)        # 4081ec <__imp_GetCurrentThreadId>
  40169e:	89 c7                	mov    %eax,%edi
  4016a0:	ff 15 66 6b 00 00    	callq  *0x6b66(%rip)        # 40820c <__imp_GetTickCount>
  4016a6:	48 8d 4c 24 28       	lea    0x28(%rsp),%rcx
  4016ab:	41 89 c4             	mov    %eax,%r12d
  4016ae:	ff 15 70 6b 00 00    	callq  *0x6b70(%rip)        # 408224 <__imp_QueryPerformanceCounter>
  4016b4:	48 33 74 24 28       	xor    0x28(%rsp),%rsi
  4016b9:	89 e8                	mov    %ebp,%eax
  4016bb:	48 ba ff ff ff ff ff 	movabs $0xffffffffffff,%rdx
  4016c2:	ff 00 00 
  4016c5:	48 31 f0             	xor    %rsi,%rax
  4016c8:	89 fe                	mov    %edi,%esi
  4016ca:	48 31 c6             	xor    %rax,%rsi
  4016cd:	44 89 e0             	mov    %r12d,%eax
  4016d0:	48 31 f0             	xor    %rsi,%rax
  4016d3:	48 21 d0             	and    %rdx,%rax
  4016d6:	48 39 d8             	cmp    %rbx,%rax
  4016d9:	74 25                	je     401700 <__security_init_cookie+0xc0>
  4016db:	48 89 c2             	mov    %rax,%rdx
  4016de:	48 f7 d2             	not    %rdx
  4016e1:	48 89 05 d8 19 00 00 	mov    %rax,0x19d8(%rip)        # 4030c0 <__security_cookie>
  4016e8:	48 89 15 e1 19 00 00 	mov    %rdx,0x19e1(%rip)        # 4030d0 <__security_cookie_complement>
  4016ef:	48 83 c4 30          	add    $0x30,%rsp
  4016f3:	5b                   	pop    %rbx
  4016f4:	5e                   	pop    %rsi
  4016f5:	5f                   	pop    %rdi
  4016f6:	5d                   	pop    %rbp
  4016f7:	41 5c                	pop    %r12
  4016f9:	c3                   	retq   
  4016fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401700:	48 ba cc 5d 20 d2 66 	movabs $0xffffd466d2205dcc,%rdx
  401707:	d4 ff ff 
  40170a:	48 b8 33 a2 df 2d 99 	movabs $0x2b992ddfa233,%rax
  401711:	2b 00 00 
  401714:	eb cb                	jmp    4016e1 <__security_init_cookie+0xa1>
  401716:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40171d:	00 00 00 

0000000000401720 <__report_gsfailure>:
  401720:	55                   	push   %rbp
  401721:	56                   	push   %rsi
  401722:	53                   	push   %rbx
  401723:	48 89 e5             	mov    %rsp,%rbp
  401726:	48 83 ec 70          	sub    $0x70,%rsp
  40172a:	48 89 cb             	mov    %rcx,%rbx
  40172d:	48 8d 0d 2c 59 00 00 	lea    0x592c(%rip),%rcx        # 407060 <GS_ContextRecord>
  401734:	ff 15 fa 6a 00 00    	callq  *0x6afa(%rip)        # 408234 <__imp_RtlCaptureContext>
  40173a:	48 8b 35 17 5a 00 00 	mov    0x5a17(%rip),%rsi        # 407158 <GS_ContextRecord+0xf8>
  401741:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
  401745:	45 31 c0             	xor    %r8d,%r8d
  401748:	48 89 f1             	mov    %rsi,%rcx
  40174b:	ff 15 eb 6a 00 00    	callq  *0x6aeb(%rip)        # 40823c <__imp_RtlLookupFunctionEntry>
  401751:	49 89 c1             	mov    %rax,%r9
  401754:	48 85 c0             	test   %rax,%rax
  401757:	0f 84 a0 00 00 00    	je     4017fd <__report_gsfailure+0xdd>
  40175d:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  401761:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  401765:	49 89 f0             	mov    %rsi,%r8
  401768:	31 c9                	xor    %ecx,%ecx
  40176a:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  40176f:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
  401773:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401778:	48 8d 05 e1 58 00 00 	lea    0x58e1(%rip),%rax        # 407060 <GS_ContextRecord>
  40177f:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  401786:	00 00 
  401788:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  40178d:	ff 15 b1 6a 00 00    	callq  *0x6ab1(%rip)        # 408244 <__imp_RtlVirtualUnwind>
  401793:	48 8b 05 be 59 00 00 	mov    0x59be(%rip),%rax        # 407158 <GS_ContextRecord+0xf8>
  40179a:	31 c9                	xor    %ecx,%ecx
  40179c:	48 89 1d 3d 59 00 00 	mov    %rbx,0x593d(%rip)        # 4070e0 <GS_ContextRecord+0x80>
  4017a3:	48 89 05 a6 5d 00 00 	mov    %rax,0x5da6(%rip)        # 407550 <GS_ExceptionRecord+0x10>
  4017aa:	48 b8 09 04 00 c0 01 	movabs $0x1c0000409,%rax
  4017b1:	00 00 00 
  4017b4:	48 89 05 85 5d 00 00 	mov    %rax,0x5d85(%rip)        # 407540 <GS_ExceptionRecord>
  4017bb:	48 8b 05 fe 18 00 00 	mov    0x18fe(%rip),%rax        # 4030c0 <__security_cookie>
  4017c2:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  4017c6:	48 8b 05 03 19 00 00 	mov    0x1903(%rip),%rax        # 4030d0 <__security_cookie_complement>
  4017cd:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4017d1:	ff 15 75 6a 00 00    	callq  *0x6a75(%rip)        # 40824c <__imp_SetUnhandledExceptionFilter>
  4017d7:	48 8d 0d 22 28 00 00 	lea    0x2822(%rip),%rcx        # 404000 <GS_ExceptionPointers>
  4017de:	ff 15 88 6a 00 00    	callq  *0x6a88(%rip)        # 40826c <__imp_UnhandledExceptionFilter>
  4017e4:	ff 15 f2 69 00 00    	callq  *0x69f2(%rip)        # 4081dc <__imp_GetCurrentProcess>
  4017ea:	ba 09 04 00 c0       	mov    $0xc0000409,%edx
  4017ef:	48 89 c1             	mov    %rax,%rcx
  4017f2:	ff 15 64 6a 00 00    	callq  *0x6a64(%rip)        # 40825c <__imp_TerminateProcess>
  4017f8:	e8 eb 12 00 00       	callq  402ae8 <abort>
  4017fd:	48 8b 45 18          	mov    0x18(%rbp),%rax
  401801:	48 89 05 50 59 00 00 	mov    %rax,0x5950(%rip)        # 407158 <GS_ContextRecord+0xf8>
  401808:	48 8d 45 08          	lea    0x8(%rbp),%rax
  40180c:	48 89 05 e5 58 00 00 	mov    %rax,0x58e5(%rip)        # 4070f8 <GS_ContextRecord+0x98>
  401813:	e9 7b ff ff ff       	jmpq   401793 <__report_gsfailure+0x73>
  401818:	90                   	nop
  401819:	90                   	nop
  40181a:	90                   	nop
  40181b:	90                   	nop
  40181c:	90                   	nop
  40181d:	90                   	nop
  40181e:	90                   	nop
  40181f:	90                   	nop

0000000000401820 <__dyn_tls_dtor>:
  401820:	48 83 ec 28          	sub    $0x28,%rsp
  401824:	83 fa 03             	cmp    $0x3,%edx
  401827:	74 17                	je     401840 <__dyn_tls_dtor+0x20>
  401829:	85 d2                	test   %edx,%edx
  40182b:	74 13                	je     401840 <__dyn_tls_dtor+0x20>
  40182d:	b8 01 00 00 00       	mov    $0x1,%eax
  401832:	48 83 c4 28          	add    $0x28,%rsp
  401836:	c3                   	retq   
  401837:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40183e:	00 00 
  401840:	e8 5b 0d 00 00       	callq  4025a0 <__mingw_TLScallback>
  401845:	b8 01 00 00 00       	mov    $0x1,%eax
  40184a:	48 83 c4 28          	add    $0x28,%rsp
  40184e:	c3                   	retq   
  40184f:	90                   	nop

0000000000401850 <__dyn_tls_init>:
  401850:	56                   	push   %rsi
  401851:	53                   	push   %rbx
  401852:	48 83 ec 28          	sub    $0x28,%rsp
  401856:	48 8b 05 d3 2a 00 00 	mov    0x2ad3(%rip),%rax        # 404330 <.refptr._CRT_MT>
  40185d:	83 38 02             	cmpl   $0x2,(%rax)
  401860:	74 06                	je     401868 <__dyn_tls_init+0x18>
  401862:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
  401868:	83 fa 02             	cmp    $0x2,%edx
  40186b:	74 13                	je     401880 <__dyn_tls_init+0x30>
  40186d:	83 fa 01             	cmp    $0x1,%edx
  401870:	74 4e                	je     4018c0 <__dyn_tls_init+0x70>
  401872:	b8 01 00 00 00       	mov    $0x1,%eax
  401877:	48 83 c4 28          	add    $0x28,%rsp
  40187b:	5b                   	pop    %rbx
  40187c:	5e                   	pop    %rsi
  40187d:	c3                   	retq   
  40187e:	66 90                	xchg   %ax,%ax
  401880:	48 8d 1d d9 77 00 00 	lea    0x77d9(%rip),%rbx        # 409060 <__xd_z>
  401887:	48 8d 35 d2 77 00 00 	lea    0x77d2(%rip),%rsi        # 409060 <__xd_z>
  40188e:	48 39 de             	cmp    %rbx,%rsi
  401891:	74 df                	je     401872 <__dyn_tls_init+0x22>
  401893:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401898:	48 8b 03             	mov    (%rbx),%rax
  40189b:	48 85 c0             	test   %rax,%rax
  40189e:	74 02                	je     4018a2 <__dyn_tls_init+0x52>
  4018a0:	ff d0                	callq  *%rax
  4018a2:	48 83 c3 08          	add    $0x8,%rbx
  4018a6:	48 39 de             	cmp    %rbx,%rsi
  4018a9:	75 ed                	jne    401898 <__dyn_tls_init+0x48>
  4018ab:	b8 01 00 00 00       	mov    $0x1,%eax
  4018b0:	48 83 c4 28          	add    $0x28,%rsp
  4018b4:	5b                   	pop    %rbx
  4018b5:	5e                   	pop    %rsi
  4018b6:	c3                   	retq   
  4018b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4018be:	00 00 
  4018c0:	e8 db 0c 00 00       	callq  4025a0 <__mingw_TLScallback>
  4018c5:	b8 01 00 00 00       	mov    $0x1,%eax
  4018ca:	48 83 c4 28          	add    $0x28,%rsp
  4018ce:	5b                   	pop    %rbx
  4018cf:	5e                   	pop    %rsi
  4018d0:	c3                   	retq   
  4018d1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4018d8:	00 00 00 00 
  4018dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004018e0 <__tlregdtor>:
  4018e0:	31 c0                	xor    %eax,%eax
  4018e2:	c3                   	retq   
  4018e3:	90                   	nop
  4018e4:	90                   	nop
  4018e5:	90                   	nop
  4018e6:	90                   	nop
  4018e7:	90                   	nop
  4018e8:	90                   	nop
  4018e9:	90                   	nop
  4018ea:	90                   	nop
  4018eb:	90                   	nop
  4018ec:	90                   	nop
  4018ed:	90                   	nop
  4018ee:	90                   	nop
  4018ef:	90                   	nop

00000000004018f0 <_matherr>:
  4018f0:	56                   	push   %rsi
  4018f1:	53                   	push   %rbx
  4018f2:	48 83 ec 78          	sub    $0x78,%rsp
  4018f6:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
  4018fb:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
  401900:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
  401906:	83 39 06             	cmpl   $0x6,(%rcx)
  401909:	0f 87 cd 00 00 00    	ja     4019dc <_matherr+0xec>
  40190f:	8b 01                	mov    (%rcx),%eax
  401911:	48 8d 15 8c 28 00 00 	lea    0x288c(%rip),%rdx        # 4041a4 <.rdata+0x124>
  401918:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  40191c:	48 01 d0             	add    %rdx,%rax
  40191f:	ff e0                	jmpq   *%rax
  401921:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401928:	48 8d 1d 27 28 00 00 	lea    0x2827(%rip),%rbx        # 404156 <.rdata+0xd6>
  40192f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
  401935:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
  40193a:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
  40193f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
  401943:	b9 02 00 00 00       	mov    $0x2,%ecx
  401948:	e8 f3 11 00 00       	callq  402b40 <__acrt_iob_func>
  40194d:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
  401954:	49 89 d8             	mov    %rbx,%r8
  401957:	48 8d 15 1a 28 00 00 	lea    0x281a(%rip),%rdx        # 404178 <.rdata+0xf8>
  40195e:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
  401964:	48 89 c1             	mov    %rax,%rcx
  401967:	49 89 f1             	mov    %rsi,%r9
  40196a:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
  401970:	e8 5b 11 00 00       	callq  402ad0 <fprintf>
  401975:	90                   	nop
  401976:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
  40197b:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
  401980:	31 c0                	xor    %eax,%eax
  401982:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
  401988:	48 83 c4 78          	add    $0x78,%rsp
  40198c:	5b                   	pop    %rbx
  40198d:	5e                   	pop    %rsi
  40198e:	c3                   	retq   
  40198f:	90                   	nop
  401990:	48 8d 1d f9 26 00 00 	lea    0x26f9(%rip),%rbx        # 404090 <.rdata+0x10>
  401997:	eb 96                	jmp    40192f <_matherr+0x3f>
  401999:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4019a0:	48 8d 1d 29 27 00 00 	lea    0x2729(%rip),%rbx        # 4040d0 <.rdata+0x50>
  4019a7:	eb 86                	jmp    40192f <_matherr+0x3f>
  4019a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4019b0:	48 8d 1d f9 26 00 00 	lea    0x26f9(%rip),%rbx        # 4040b0 <.rdata+0x30>
  4019b7:	e9 73 ff ff ff       	jmpq   40192f <_matherr+0x3f>
  4019bc:	0f 1f 40 00          	nopl   0x0(%rax)
  4019c0:	48 8d 1d 59 27 00 00 	lea    0x2759(%rip),%rbx        # 404120 <.rdata+0xa0>
  4019c7:	e9 63 ff ff ff       	jmpq   40192f <_matherr+0x3f>
  4019cc:	0f 1f 40 00          	nopl   0x0(%rax)
  4019d0:	48 8d 1d 21 27 00 00 	lea    0x2721(%rip),%rbx        # 4040f8 <.rdata+0x78>
  4019d7:	e9 53 ff ff ff       	jmpq   40192f <_matherr+0x3f>
  4019dc:	48 8d 1d 9d 26 00 00 	lea    0x269d(%rip),%rbx        # 404080 <.rdata>
  4019e3:	e9 47 ff ff ff       	jmpq   40192f <_matherr+0x3f>
  4019e8:	90                   	nop
  4019e9:	90                   	nop
  4019ea:	90                   	nop
  4019eb:	90                   	nop
  4019ec:	90                   	nop
  4019ed:	90                   	nop
  4019ee:	90                   	nop
  4019ef:	90                   	nop

00000000004019f0 <_fpreset>:
  4019f0:	db e3                	fninit 
  4019f2:	c3                   	retq   
  4019f3:	90                   	nop
  4019f4:	90                   	nop
  4019f5:	90                   	nop
  4019f6:	90                   	nop
  4019f7:	90                   	nop
  4019f8:	90                   	nop
  4019f9:	90                   	nop
  4019fa:	90                   	nop
  4019fb:	90                   	nop
  4019fc:	90                   	nop
  4019fd:	90                   	nop
  4019fe:	90                   	nop
  4019ff:	90                   	nop

0000000000401a00 <__report_error>:
  401a00:	41 54                	push   %r12
  401a02:	53                   	push   %rbx
  401a03:	48 83 ec 38          	sub    $0x38,%rsp
  401a07:	49 89 cc             	mov    %rcx,%r12
  401a0a:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
  401a0f:	b9 02 00 00 00       	mov    $0x2,%ecx
  401a14:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
  401a19:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
  401a1e:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
  401a23:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401a28:	e8 13 11 00 00       	callq  402b40 <__acrt_iob_func>
  401a2d:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
  401a33:	ba 01 00 00 00       	mov    $0x1,%edx
  401a38:	48 8d 0d 81 27 00 00 	lea    0x2781(%rip),%rcx        # 4041c0 <.rdata>
  401a3f:	49 89 c1             	mov    %rax,%r9
  401a42:	e8 79 10 00 00       	callq  402ac0 <fwrite>
  401a47:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
  401a4c:	b9 02 00 00 00       	mov    $0x2,%ecx
  401a51:	e8 ea 10 00 00       	callq  402b40 <__acrt_iob_func>
  401a56:	4c 89 e2             	mov    %r12,%rdx
  401a59:	48 89 c1             	mov    %rax,%rcx
  401a5c:	49 89 d8             	mov    %rbx,%r8
  401a5f:	e8 2c 10 00 00       	callq  402a90 <vfprintf>
  401a64:	e8 7f 10 00 00       	callq  402ae8 <abort>
  401a69:	90                   	nop
  401a6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401a70 <__write_memory.part.0>:
  401a70:	41 54                	push   %r12
  401a72:	55                   	push   %rbp
  401a73:	57                   	push   %rdi
  401a74:	56                   	push   %rsi
  401a75:	53                   	push   %rbx
  401a76:	48 83 ec 50          	sub    $0x50,%rsp
  401a7a:	48 63 35 93 5b 00 00 	movslq 0x5b93(%rip),%rsi        # 407614 <maxSections>
  401a81:	49 89 cc             	mov    %rcx,%r12
  401a84:	48 89 d7             	mov    %rdx,%rdi
  401a87:	4c 89 c3             	mov    %r8,%rbx
  401a8a:	85 f6                	test   %esi,%esi
  401a8c:	0f 8e 5e 01 00 00    	jle    401bf0 <__write_memory.part.0+0x180>
  401a92:	48 8b 05 7f 5b 00 00 	mov    0x5b7f(%rip),%rax        # 407618 <the_secs>
  401a99:	31 c9                	xor    %ecx,%ecx
  401a9b:	48 83 c0 18          	add    $0x18,%rax
  401a9f:	90                   	nop
  401aa0:	48 8b 10             	mov    (%rax),%rdx
  401aa3:	49 39 d4             	cmp    %rdx,%r12
  401aa6:	72 14                	jb     401abc <__write_memory.part.0+0x4c>
  401aa8:	4c 8b 40 08          	mov    0x8(%rax),%r8
  401aac:	45 8b 40 08          	mov    0x8(%r8),%r8d
  401ab0:	4c 01 c2             	add    %r8,%rdx
  401ab3:	49 39 d4             	cmp    %rdx,%r12
  401ab6:	0f 82 85 00 00 00    	jb     401b41 <__write_memory.part.0+0xd1>
  401abc:	ff c1                	inc    %ecx
  401abe:	48 83 c0 28          	add    $0x28,%rax
  401ac2:	39 f1                	cmp    %esi,%ecx
  401ac4:	75 da                	jne    401aa0 <__write_memory.part.0+0x30>
  401ac6:	4c 89 e1             	mov    %r12,%rcx
  401ac9:	e8 e2 0c 00 00       	callq  4027b0 <__mingw_GetSectionForAddress>
  401ace:	48 89 c5             	mov    %rax,%rbp
  401ad1:	48 85 c0             	test   %rax,%rax
  401ad4:	0f 84 58 01 00 00    	je     401c32 <__write_memory.part.0+0x1c2>
  401ada:	48 8b 05 37 5b 00 00 	mov    0x5b37(%rip),%rax        # 407618 <the_secs>
  401ae1:	48 8d 34 b6          	lea    (%rsi,%rsi,4),%rsi
  401ae5:	48 c1 e6 03          	shl    $0x3,%rsi
  401ae9:	48 01 f0             	add    %rsi,%rax
  401aec:	48 89 68 20          	mov    %rbp,0x20(%rax)
  401af0:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  401af6:	e8 d5 0d 00 00       	callq  4028d0 <_GetPEImageBase>
  401afb:	8b 4d 0c             	mov    0xc(%rbp),%ecx
  401afe:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  401b03:	41 b8 30 00 00 00    	mov    $0x30,%r8d
  401b09:	48 01 c1             	add    %rax,%rcx
  401b0c:	48 8b 05 05 5b 00 00 	mov    0x5b05(%rip),%rax        # 407618 <the_secs>
  401b13:	48 89 4c 30 18       	mov    %rcx,0x18(%rax,%rsi,1)
  401b18:	ff 15 5e 67 00 00    	callq  *0x675e(%rip)        # 40827c <__imp_VirtualQuery>
  401b1e:	48 85 c0             	test   %rax,%rax
  401b21:	0f 84 1a 01 00 00    	je     401c41 <__write_memory.part.0+0x1d1>
  401b27:	8b 44 24 44          	mov    0x44(%rsp),%eax
  401b2b:	8d 50 c0             	lea    -0x40(%rax),%edx
  401b2e:	83 e2 bf             	and    $0xffffffbf,%edx
  401b31:	74 08                	je     401b3b <__write_memory.part.0+0xcb>
  401b33:	83 e8 04             	sub    $0x4,%eax
  401b36:	83 e0 fb             	and    $0xfffffffb,%eax
  401b39:	75 6d                	jne    401ba8 <__write_memory.part.0+0x138>
  401b3b:	ff 05 d3 5a 00 00    	incl   0x5ad3(%rip)        # 407614 <maxSections>
  401b41:	83 fb 08             	cmp    $0x8,%ebx
  401b44:	73 2a                	jae    401b70 <__write_memory.part.0+0x100>
  401b46:	f6 c3 04             	test   $0x4,%bl
  401b49:	0f 85 b1 00 00 00    	jne    401c00 <__write_memory.part.0+0x190>
  401b4f:	85 db                	test   %ebx,%ebx
  401b51:	74 10                	je     401b63 <__write_memory.part.0+0xf3>
  401b53:	0f b6 07             	movzbl (%rdi),%eax
  401b56:	41 88 04 24          	mov    %al,(%r12)
  401b5a:	f6 c3 02             	test   $0x2,%bl
  401b5d:	0f 85 bd 00 00 00    	jne    401c20 <__write_memory.part.0+0x1b0>
  401b63:	48 83 c4 50          	add    $0x50,%rsp
  401b67:	5b                   	pop    %rbx
  401b68:	5e                   	pop    %rsi
  401b69:	5f                   	pop    %rdi
  401b6a:	5d                   	pop    %rbp
  401b6b:	41 5c                	pop    %r12
  401b6d:	c3                   	retq   
  401b6e:	66 90                	xchg   %ax,%ax
  401b70:	89 d8                	mov    %ebx,%eax
  401b72:	ff cb                	dec    %ebx
  401b74:	48 8b 54 07 f8       	mov    -0x8(%rdi,%rax,1),%rdx
  401b79:	49 89 54 04 f8       	mov    %rdx,-0x8(%r12,%rax,1)
  401b7e:	83 fb 08             	cmp    $0x8,%ebx
  401b81:	72 e0                	jb     401b63 <__write_memory.part.0+0xf3>
  401b83:	83 e3 f8             	and    $0xfffffff8,%ebx
  401b86:	31 c0                	xor    %eax,%eax
  401b88:	89 c2                	mov    %eax,%edx
  401b8a:	83 c0 08             	add    $0x8,%eax
  401b8d:	48 8b 0c 17          	mov    (%rdi,%rdx,1),%rcx
  401b91:	49 89 0c 14          	mov    %rcx,(%r12,%rdx,1)
  401b95:	39 d8                	cmp    %ebx,%eax
  401b97:	72 ef                	jb     401b88 <__write_memory.part.0+0x118>
  401b99:	48 83 c4 50          	add    $0x50,%rsp
  401b9d:	5b                   	pop    %rbx
  401b9e:	5e                   	pop    %rsi
  401b9f:	5f                   	pop    %rdi
  401ba0:	5d                   	pop    %rbp
  401ba1:	41 5c                	pop    %r12
  401ba3:	c3                   	retq   
  401ba4:	0f 1f 40 00          	nopl   0x0(%rax)
  401ba8:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  401bad:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  401bb2:	41 b8 40 00 00 00    	mov    $0x40,%r8d
  401bb8:	48 03 35 59 5a 00 00 	add    0x5a59(%rip),%rsi        # 407618 <the_secs>
  401bbf:	48 89 4e 08          	mov    %rcx,0x8(%rsi)
  401bc3:	49 89 f1             	mov    %rsi,%r9
  401bc6:	48 89 56 10          	mov    %rdx,0x10(%rsi)
  401bca:	ff 15 a4 66 00 00    	callq  *0x66a4(%rip)        # 408274 <__imp_VirtualProtect>
  401bd0:	85 c0                	test   %eax,%eax
  401bd2:	0f 85 63 ff ff ff    	jne    401b3b <__write_memory.part.0+0xcb>
  401bd8:	ff 15 16 66 00 00    	callq  *0x6616(%rip)        # 4081f4 <__imp_GetLastError>
  401bde:	48 8d 0d 53 26 00 00 	lea    0x2653(%rip),%rcx        # 404238 <.rdata+0x78>
  401be5:	89 c2                	mov    %eax,%edx
  401be7:	e8 14 fe ff ff       	callq  401a00 <__report_error>
  401bec:	0f 1f 40 00          	nopl   0x0(%rax)
  401bf0:	31 f6                	xor    %esi,%esi
  401bf2:	e9 cf fe ff ff       	jmpq   401ac6 <__write_memory.part.0+0x56>
  401bf7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401bfe:	00 00 
  401c00:	8b 07                	mov    (%rdi),%eax
  401c02:	89 db                	mov    %ebx,%ebx
  401c04:	41 89 04 24          	mov    %eax,(%r12)
  401c08:	8b 44 1f fc          	mov    -0x4(%rdi,%rbx,1),%eax
  401c0c:	41 89 44 1c fc       	mov    %eax,-0x4(%r12,%rbx,1)
  401c11:	e9 4d ff ff ff       	jmpq   401b63 <__write_memory.part.0+0xf3>
  401c16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401c1d:	00 00 00 
  401c20:	89 db                	mov    %ebx,%ebx
  401c22:	0f b7 44 1f fe       	movzwl -0x2(%rdi,%rbx,1),%eax
  401c27:	66 41 89 44 1c fe    	mov    %ax,-0x2(%r12,%rbx,1)
  401c2d:	e9 31 ff ff ff       	jmpq   401b63 <__write_memory.part.0+0xf3>
  401c32:	4c 89 e2             	mov    %r12,%rdx
  401c35:	48 8d 0d a4 25 00 00 	lea    0x25a4(%rip),%rcx        # 4041e0 <.rdata+0x20>
  401c3c:	e8 bf fd ff ff       	callq  401a00 <__report_error>
  401c41:	48 8b 05 d0 59 00 00 	mov    0x59d0(%rip),%rax        # 407618 <the_secs>
  401c48:	8b 55 08             	mov    0x8(%rbp),%edx
  401c4b:	48 8d 0d ae 25 00 00 	lea    0x25ae(%rip),%rcx        # 404200 <.rdata+0x40>
  401c52:	4c 8b 44 30 18       	mov    0x18(%rax,%rsi,1),%r8
  401c57:	e8 a4 fd ff ff       	callq  401a00 <__report_error>
  401c5c:	90                   	nop
  401c5d:	0f 1f 00             	nopl   (%rax)

0000000000401c60 <_pei386_runtime_relocator>:
  401c60:	55                   	push   %rbp
  401c61:	41 57                	push   %r15
  401c63:	41 56                	push   %r14
  401c65:	41 55                	push   %r13
  401c67:	41 54                	push   %r12
  401c69:	57                   	push   %rdi
  401c6a:	56                   	push   %rsi
  401c6b:	53                   	push   %rbx
  401c6c:	48 83 ec 38          	sub    $0x38,%rsp
  401c70:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  401c77:	00 
  401c78:	8b 35 92 59 00 00    	mov    0x5992(%rip),%esi        # 407610 <was_init.93799>
  401c7e:	85 f6                	test   %esi,%esi
  401c80:	74 16                	je     401c98 <_pei386_runtime_relocator+0x38>
  401c82:	48 8d 65 b8          	lea    -0x48(%rbp),%rsp
  401c86:	5b                   	pop    %rbx
  401c87:	5e                   	pop    %rsi
  401c88:	5f                   	pop    %rdi
  401c89:	41 5c                	pop    %r12
  401c8b:	41 5d                	pop    %r13
  401c8d:	41 5e                	pop    %r14
  401c8f:	41 5f                	pop    %r15
  401c91:	5d                   	pop    %rbp
  401c92:	c3                   	retq   
  401c93:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401c98:	c7 05 6e 59 00 00 01 	movl   $0x1,0x596e(%rip)        # 407610 <was_init.93799>
  401c9f:	00 00 00 
  401ca2:	e8 89 0b 00 00       	callq  402830 <__mingw_GetSectionCount>
  401ca7:	48 98                	cltq   
  401ca9:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401cad:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
  401cb4:	00 
  401cb5:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401cb9:	e8 92 0d 00 00       	callq  402a50 <___chkstk_ms>
  401cbe:	4c 8b 2d 9b 26 00 00 	mov    0x269b(%rip),%r13        # 404360 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
  401cc5:	48 8b 1d a4 26 00 00 	mov    0x26a4(%rip),%rbx        # 404370 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
  401ccc:	c7 05 3e 59 00 00 00 	movl   $0x0,0x593e(%rip)        # 407614 <maxSections>
  401cd3:	00 00 00 
  401cd6:	48 29 c4             	sub    %rax,%rsp
  401cd9:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  401cde:	48 89 05 33 59 00 00 	mov    %rax,0x5933(%rip)        # 407618 <the_secs>
  401ce5:	4c 89 e8             	mov    %r13,%rax
  401ce8:	48 29 d8             	sub    %rbx,%rax
  401ceb:	48 83 f8 07          	cmp    $0x7,%rax
  401cef:	7e 91                	jle    401c82 <_pei386_runtime_relocator+0x22>
  401cf1:	8b 13                	mov    (%rbx),%edx
  401cf3:	48 83 f8 0b          	cmp    $0xb,%rax
  401cf7:	0f 8f 4b 01 00 00    	jg     401e48 <_pei386_runtime_relocator+0x1e8>
  401cfd:	85 d2                	test   %edx,%edx
  401cff:	0f 85 cb 01 00 00    	jne    401ed0 <_pei386_runtime_relocator+0x270>
  401d05:	8b 43 04             	mov    0x4(%rbx),%eax
  401d08:	85 c0                	test   %eax,%eax
  401d0a:	0f 85 c0 01 00 00    	jne    401ed0 <_pei386_runtime_relocator+0x270>
  401d10:	8b 53 08             	mov    0x8(%rbx),%edx
  401d13:	83 fa 01             	cmp    $0x1,%edx
  401d16:	0f 85 1c 02 00 00    	jne    401f38 <_pei386_runtime_relocator+0x2d8>
  401d1c:	48 83 c3 0c          	add    $0xc,%rbx
  401d20:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  401d24:	4c 8b 35 65 26 00 00 	mov    0x2665(%rip),%r14        # 404390 <.refptr.__image_base__>
  401d2b:	49 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%r15
  401d32:	ff ff ff 
  401d35:	4c 39 eb             	cmp    %r13,%rbx
  401d38:	72 3f                	jb     401d79 <_pei386_runtime_relocator+0x119>
  401d3a:	e9 43 ff ff ff       	jmpq   401c82 <_pei386_runtime_relocator+0x22>
  401d3f:	90                   	nop
  401d40:	44 0f b6 01          	movzbl (%rcx),%r8d
  401d44:	49 89 fc             	mov    %rdi,%r12
  401d47:	4d 89 c2             	mov    %r8,%r10
  401d4a:	49 81 ca 00 ff ff ff 	or     $0xffffffffffffff00,%r10
  401d51:	45 84 c0             	test   %r8b,%r8b
  401d54:	4d 0f 48 c2          	cmovs  %r10,%r8
  401d58:	49 29 d0             	sub    %rdx,%r8
  401d5b:	48 89 fa             	mov    %rdi,%rdx
  401d5e:	4d 01 c8             	add    %r9,%r8
  401d61:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  401d65:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  401d6b:	e8 00 fd ff ff       	callq  401a70 <__write_memory.part.0>
  401d70:	48 83 c3 0c          	add    $0xc,%rbx
  401d74:	4c 39 eb             	cmp    %r13,%rbx
  401d77:	73 77                	jae    401df0 <_pei386_runtime_relocator+0x190>
  401d79:	8b 13                	mov    (%rbx),%edx
  401d7b:	8b 4b 04             	mov    0x4(%rbx),%ecx
  401d7e:	44 0f b6 43 08       	movzbl 0x8(%rbx),%r8d
  401d83:	4c 01 f2             	add    %r14,%rdx
  401d86:	4c 01 f1             	add    %r14,%rcx
  401d89:	4c 8b 0a             	mov    (%rdx),%r9
  401d8c:	41 83 f8 20          	cmp    $0x20,%r8d
  401d90:	0f 84 0a 01 00 00    	je     401ea0 <_pei386_runtime_relocator+0x240>
  401d96:	0f 87 d4 00 00 00    	ja     401e70 <_pei386_runtime_relocator+0x210>
  401d9c:	41 83 f8 08          	cmp    $0x8,%r8d
  401da0:	74 9e                	je     401d40 <_pei386_runtime_relocator+0xe0>
  401da2:	41 83 f8 10          	cmp    $0x10,%r8d
  401da6:	0f 85 75 01 00 00    	jne    401f21 <_pei386_runtime_relocator+0x2c1>
  401dac:	44 0f b7 01          	movzwl (%rcx),%r8d
  401db0:	49 89 fc             	mov    %rdi,%r12
  401db3:	4d 89 c2             	mov    %r8,%r10
  401db6:	49 81 ca 00 00 ff ff 	or     $0xffffffffffff0000,%r10
  401dbd:	66 45 85 c0          	test   %r8w,%r8w
  401dc1:	4d 0f 48 c2          	cmovs  %r10,%r8
  401dc5:	48 83 c3 0c          	add    $0xc,%rbx
  401dc9:	49 29 d0             	sub    %rdx,%r8
  401dcc:	48 89 fa             	mov    %rdi,%rdx
  401dcf:	4d 01 c8             	add    %r9,%r8
  401dd2:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  401dd6:	41 b8 02 00 00 00    	mov    $0x2,%r8d
  401ddc:	e8 8f fc ff ff       	callq  401a70 <__write_memory.part.0>
  401de1:	4c 39 eb             	cmp    %r13,%rbx
  401de4:	72 93                	jb     401d79 <_pei386_runtime_relocator+0x119>
  401de6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401ded:	00 00 00 
  401df0:	8b 05 1e 58 00 00    	mov    0x581e(%rip),%eax        # 407614 <maxSections>
  401df6:	85 c0                	test   %eax,%eax
  401df8:	0f 8e 84 fe ff ff    	jle    401c82 <_pei386_runtime_relocator+0x22>
  401dfe:	48 8b 3d 6f 64 00 00 	mov    0x646f(%rip),%rdi        # 408274 <__imp_VirtualProtect>
  401e05:	31 db                	xor    %ebx,%ebx
  401e07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401e0e:	00 00 
  401e10:	48 8b 05 01 58 00 00 	mov    0x5801(%rip),%rax        # 407618 <the_secs>
  401e17:	48 01 d8             	add    %rbx,%rax
  401e1a:	44 8b 00             	mov    (%rax),%r8d
  401e1d:	45 85 c0             	test   %r8d,%r8d
  401e20:	74 0d                	je     401e2f <_pei386_runtime_relocator+0x1cf>
  401e22:	48 8b 50 10          	mov    0x10(%rax),%rdx
  401e26:	48 8b 48 08          	mov    0x8(%rax),%rcx
  401e2a:	4d 89 e1             	mov    %r12,%r9
  401e2d:	ff d7                	callq  *%rdi
  401e2f:	ff c6                	inc    %esi
  401e31:	48 83 c3 28          	add    $0x28,%rbx
  401e35:	3b 35 d9 57 00 00    	cmp    0x57d9(%rip),%esi        # 407614 <maxSections>
  401e3b:	7c d3                	jl     401e10 <_pei386_runtime_relocator+0x1b0>
  401e3d:	e9 40 fe ff ff       	jmpq   401c82 <_pei386_runtime_relocator+0x22>
  401e42:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401e48:	85 d2                	test   %edx,%edx
  401e4a:	0f 85 80 00 00 00    	jne    401ed0 <_pei386_runtime_relocator+0x270>
  401e50:	8b 43 04             	mov    0x4(%rbx),%eax
  401e53:	89 c7                	mov    %eax,%edi
  401e55:	0b 7b 08             	or     0x8(%rbx),%edi
  401e58:	0f 85 aa fe ff ff    	jne    401d08 <_pei386_runtime_relocator+0xa8>
  401e5e:	8b 53 0c             	mov    0xc(%rbx),%edx
  401e61:	48 83 c3 0c          	add    $0xc,%rbx
  401e65:	e9 93 fe ff ff       	jmpq   401cfd <_pei386_runtime_relocator+0x9d>
  401e6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401e70:	41 83 f8 40          	cmp    $0x40,%r8d
  401e74:	0f 85 a7 00 00 00    	jne    401f21 <_pei386_runtime_relocator+0x2c1>
  401e7a:	48 8b 01             	mov    (%rcx),%rax
  401e7d:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  401e83:	49 89 fc             	mov    %rdi,%r12
  401e86:	48 29 d0             	sub    %rdx,%rax
  401e89:	48 89 fa             	mov    %rdi,%rdx
  401e8c:	4c 01 c8             	add    %r9,%rax
  401e8f:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  401e93:	e8 d8 fb ff ff       	callq  401a70 <__write_memory.part.0>
  401e98:	e9 d3 fe ff ff       	jmpq   401d70 <_pei386_runtime_relocator+0x110>
  401e9d:	0f 1f 00             	nopl   (%rax)
  401ea0:	8b 01                	mov    (%rcx),%eax
  401ea2:	49 89 fc             	mov    %rdi,%r12
  401ea5:	49 89 c0             	mov    %rax,%r8
  401ea8:	4c 09 f8             	or     %r15,%rax
  401eab:	45 85 c0             	test   %r8d,%r8d
  401eae:	49 0f 49 c0          	cmovns %r8,%rax
  401eb2:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  401eb8:	48 29 d0             	sub    %rdx,%rax
  401ebb:	48 89 fa             	mov    %rdi,%rdx
  401ebe:	4c 01 c8             	add    %r9,%rax
  401ec1:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  401ec5:	e8 a6 fb ff ff       	callq  401a70 <__write_memory.part.0>
  401eca:	e9 a1 fe ff ff       	jmpq   401d70 <_pei386_runtime_relocator+0x110>
  401ecf:	90                   	nop
  401ed0:	4c 39 eb             	cmp    %r13,%rbx
  401ed3:	0f 83 a9 fd ff ff    	jae    401c82 <_pei386_runtime_relocator+0x22>
  401ed9:	49 ff cd             	dec    %r13
  401edc:	48 8b 3d ad 24 00 00 	mov    0x24ad(%rip),%rdi        # 404390 <.refptr.__image_base__>
  401ee3:	4c 8d 65 a8          	lea    -0x58(%rbp),%r12
  401ee7:	49 29 dd             	sub    %rbx,%r13
  401eea:	49 c1 ed 03          	shr    $0x3,%r13
  401eee:	4e 8d 6c eb 08       	lea    0x8(%rbx,%r13,8),%r13
  401ef3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401ef8:	8b 4b 04             	mov    0x4(%rbx),%ecx
  401efb:	8b 03                	mov    (%rbx),%eax
  401efd:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  401f03:	4c 89 e2             	mov    %r12,%rdx
  401f06:	48 83 c3 08          	add    $0x8,%rbx
  401f0a:	48 01 f9             	add    %rdi,%rcx
  401f0d:	03 01                	add    (%rcx),%eax
  401f0f:	89 45 a8             	mov    %eax,-0x58(%rbp)
  401f12:	e8 59 fb ff ff       	callq  401a70 <__write_memory.part.0>
  401f17:	4c 39 eb             	cmp    %r13,%rbx
  401f1a:	75 dc                	jne    401ef8 <_pei386_runtime_relocator+0x298>
  401f1c:	e9 cf fe ff ff       	jmpq   401df0 <_pei386_runtime_relocator+0x190>
  401f21:	44 89 c2             	mov    %r8d,%edx
  401f24:	48 8d 0d 6d 23 00 00 	lea    0x236d(%rip),%rcx        # 404298 <.rdata+0xd8>
  401f2b:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
  401f32:	00 
  401f33:	e8 c8 fa ff ff       	callq  401a00 <__report_error>
  401f38:	48 8d 0d 21 23 00 00 	lea    0x2321(%rip),%rcx        # 404260 <.rdata+0xa0>
  401f3f:	e8 bc fa ff ff       	callq  401a00 <__report_error>
  401f44:	90                   	nop
  401f45:	90                   	nop
  401f46:	90                   	nop
  401f47:	90                   	nop
  401f48:	90                   	nop
  401f49:	90                   	nop
  401f4a:	90                   	nop
  401f4b:	90                   	nop
  401f4c:	90                   	nop
  401f4d:	90                   	nop
  401f4e:	90                   	nop
  401f4f:	90                   	nop

0000000000401f50 <__mingw_raise_matherr>:
  401f50:	48 83 ec 58          	sub    $0x58,%rsp
  401f54:	48 8b 05 c5 56 00 00 	mov    0x56c5(%rip),%rax        # 407620 <stUserMathErr>
  401f5b:	48 85 c0             	test   %rax,%rax
  401f5e:	74 2c                	je     401f8c <__mingw_raise_matherr+0x3c>
  401f60:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
  401f67:	00 00 
  401f69:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
  401f6d:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  401f72:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  401f77:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
  401f7d:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
  401f83:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
  401f89:	ff d0                	callq  *%rax
  401f8b:	90                   	nop
  401f8c:	48 83 c4 58          	add    $0x58,%rsp
  401f90:	c3                   	retq   
  401f91:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401f98:	00 00 00 00 
  401f9c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401fa0 <__mingw_setusermatherr>:
  401fa0:	48 89 0d 79 56 00 00 	mov    %rcx,0x5679(%rip)        # 407620 <stUserMathErr>
  401fa7:	e9 64 0b 00 00       	jmpq   402b10 <__setusermatherr>
  401fac:	90                   	nop
  401fad:	90                   	nop
  401fae:	90                   	nop
  401faf:	90                   	nop

0000000000401fb0 <__mingw_SEH_error_handler>:
  401fb0:	48 83 ec 28          	sub    $0x28,%rsp
  401fb4:	8b 01                	mov    (%rcx),%eax
  401fb6:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  401fbb:	0f 87 2f 01 00 00    	ja     4020f0 <__mingw_SEH_error_handler+0x140>
  401fc1:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
  401fc6:	76 58                	jbe    402020 <__mingw_SEH_error_handler+0x70>
  401fc8:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
  401fcd:	83 f8 09             	cmp    $0x9,%eax
  401fd0:	77 3a                	ja     40200c <__mingw_SEH_error_handler+0x5c>
  401fd2:	48 8d 15 f7 22 00 00 	lea    0x22f7(%rip),%rdx        # 4042d0 <.rdata>
  401fd9:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  401fdd:	48 01 d0             	add    %rdx,%rax
  401fe0:	ff e0                	jmpq   *%rax
  401fe2:	31 d2                	xor    %edx,%edx
  401fe4:	b9 08 00 00 00       	mov    $0x8,%ecx
  401fe9:	e8 ba 0a 00 00       	callq  402aa8 <signal>
  401fee:	48 83 f8 01          	cmp    $0x1,%rax
  401ff2:	0f 85 a5 00 00 00    	jne    40209d <__mingw_SEH_error_handler+0xed>
  401ff8:	ba 01 00 00 00       	mov    $0x1,%edx
  401ffd:	b9 08 00 00 00       	mov    $0x8,%ecx
  402002:	e8 a1 0a 00 00       	callq  402aa8 <signal>
  402007:	e8 e4 f9 ff ff       	callq  4019f0 <_fpreset>
  40200c:	45 31 c0             	xor    %r8d,%r8d
  40200f:	44 89 c0             	mov    %r8d,%eax
  402012:	48 83 c4 28          	add    $0x28,%rsp
  402016:	c3                   	retq   
  402017:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40201e:	00 00 
  402020:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  402025:	0f 84 95 00 00 00    	je     4020c0 <__mingw_SEH_error_handler+0x110>
  40202b:	76 46                	jbe    402073 <__mingw_SEH_error_handler+0xc3>
  40202d:	45 31 c0             	xor    %r8d,%r8d
  402030:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  402035:	74 d8                	je     40200f <__mingw_SEH_error_handler+0x5f>
  402037:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  40203c:	0f 85 ae 00 00 00    	jne    4020f0 <__mingw_SEH_error_handler+0x140>
  402042:	31 d2                	xor    %edx,%edx
  402044:	b9 04 00 00 00       	mov    $0x4,%ecx
  402049:	e8 5a 0a 00 00       	callq  402aa8 <signal>
  40204e:	48 83 f8 01          	cmp    $0x1,%rax
  402052:	0f 84 b8 00 00 00    	je     402110 <__mingw_SEH_error_handler+0x160>
  402058:	48 85 c0             	test   %rax,%rax
  40205b:	0f 84 9f 00 00 00    	je     402100 <__mingw_SEH_error_handler+0x150>
  402061:	b9 04 00 00 00       	mov    $0x4,%ecx
  402066:	ff d0                	callq  *%rax
  402068:	45 31 c0             	xor    %r8d,%r8d
  40206b:	44 89 c0             	mov    %r8d,%eax
  40206e:	48 83 c4 28          	add    $0x28,%rsp
  402072:	c3                   	retq   
  402073:	45 31 c0             	xor    %r8d,%r8d
  402076:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  40207b:	41 0f 95 c0          	setne  %r8b
  40207f:	44 89 c0             	mov    %r8d,%eax
  402082:	48 83 c4 28          	add    $0x28,%rsp
  402086:	c3                   	retq   
  402087:	31 d2                	xor    %edx,%edx
  402089:	b9 08 00 00 00       	mov    $0x8,%ecx
  40208e:	e8 15 0a 00 00       	callq  402aa8 <signal>
  402093:	48 83 f8 01          	cmp    $0x1,%rax
  402097:	0f 84 93 00 00 00    	je     402130 <__mingw_SEH_error_handler+0x180>
  40209d:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  4020a3:	48 85 c0             	test   %rax,%rax
  4020a6:	0f 84 63 ff ff ff    	je     40200f <__mingw_SEH_error_handler+0x5f>
  4020ac:	b9 08 00 00 00       	mov    $0x8,%ecx
  4020b1:	ff d0                	callq  *%rax
  4020b3:	45 31 c0             	xor    %r8d,%r8d
  4020b6:	e9 54 ff ff ff       	jmpq   40200f <__mingw_SEH_error_handler+0x5f>
  4020bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4020c0:	31 d2                	xor    %edx,%edx
  4020c2:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4020c7:	e8 dc 09 00 00       	callq  402aa8 <signal>
  4020cc:	48 83 f8 01          	cmp    $0x1,%rax
  4020d0:	74 7e                	je     402150 <__mingw_SEH_error_handler+0x1a0>
  4020d2:	48 85 c0             	test   %rax,%rax
  4020d5:	74 29                	je     402100 <__mingw_SEH_error_handler+0x150>
  4020d7:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4020dc:	ff d0                	callq  *%rax
  4020de:	45 31 c0             	xor    %r8d,%r8d
  4020e1:	e9 29 ff ff ff       	jmpq   40200f <__mingw_SEH_error_handler+0x5f>
  4020e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4020ed:	00 00 00 
  4020f0:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  4020f6:	e9 14 ff ff ff       	jmpq   40200f <__mingw_SEH_error_handler+0x5f>
  4020fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402100:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  402106:	e9 04 ff ff ff       	jmpq   40200f <__mingw_SEH_error_handler+0x5f>
  40210b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402110:	ba 01 00 00 00       	mov    $0x1,%edx
  402115:	b9 04 00 00 00       	mov    $0x4,%ecx
  40211a:	e8 89 09 00 00       	callq  402aa8 <signal>
  40211f:	45 31 c0             	xor    %r8d,%r8d
  402122:	e9 e8 fe ff ff       	jmpq   40200f <__mingw_SEH_error_handler+0x5f>
  402127:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40212e:	00 00 
  402130:	ba 01 00 00 00       	mov    $0x1,%edx
  402135:	b9 08 00 00 00       	mov    $0x8,%ecx
  40213a:	e8 69 09 00 00       	callq  402aa8 <signal>
  40213f:	45 31 c0             	xor    %r8d,%r8d
  402142:	e9 c8 fe ff ff       	jmpq   40200f <__mingw_SEH_error_handler+0x5f>
  402147:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40214e:	00 00 
  402150:	ba 01 00 00 00       	mov    $0x1,%edx
  402155:	b9 0b 00 00 00       	mov    $0xb,%ecx
  40215a:	e8 49 09 00 00       	callq  402aa8 <signal>
  40215f:	45 31 c0             	xor    %r8d,%r8d
  402162:	e9 a8 fe ff ff       	jmpq   40200f <__mingw_SEH_error_handler+0x5f>
  402167:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40216e:	00 00 

0000000000402170 <__mingw_init_ehandler>:
  402170:	41 54                	push   %r12
  402172:	55                   	push   %rbp
  402173:	57                   	push   %rdi
  402174:	56                   	push   %rsi
  402175:	53                   	push   %rbx
  402176:	48 83 ec 20          	sub    $0x20,%rsp
  40217a:	e8 51 07 00 00       	callq  4028d0 <_GetPEImageBase>
  40217f:	48 89 c6             	mov    %rax,%rsi
  402182:	8b 05 c0 54 00 00    	mov    0x54c0(%rip),%eax        # 407648 <was_here.93643>
  402188:	85 c0                	test   %eax,%eax
  40218a:	75 25                	jne    4021b1 <__mingw_init_ehandler+0x41>
  40218c:	48 85 f6             	test   %rsi,%rsi
  40218f:	74 20                	je     4021b1 <__mingw_init_ehandler+0x41>
  402191:	48 8d 0d 60 21 00 00 	lea    0x2160(%rip),%rcx        # 4042f8 <.rdata+0x28>
  402198:	c7 05 a6 54 00 00 01 	movl   $0x1,0x54a6(%rip)        # 407648 <was_here.93643>
  40219f:	00 00 00 
  4021a2:	e8 69 05 00 00       	callq  402710 <_FindPESectionByName>
  4021a7:	48 85 c0             	test   %rax,%rax
  4021aa:	74 14                	je     4021c0 <__mingw_init_ehandler+0x50>
  4021ac:	b8 01 00 00 00       	mov    $0x1,%eax
  4021b1:	48 83 c4 20          	add    $0x20,%rsp
  4021b5:	5b                   	pop    %rbx
  4021b6:	5e                   	pop    %rsi
  4021b7:	5f                   	pop    %rdi
  4021b8:	5d                   	pop    %rbp
  4021b9:	41 5c                	pop    %r12
  4021bb:	c3                   	retq   
  4021bc:	0f 1f 40 00          	nopl   0x0(%rax)
  4021c0:	48 8d 1d 99 55 00 00 	lea    0x5599(%rip),%rbx        # 407760 <emu_pdata>
  4021c7:	b9 30 00 00 00       	mov    $0x30,%ecx
  4021cc:	45 31 e4             	xor    %r12d,%r12d
  4021cf:	48 8d 15 8a 54 00 00 	lea    0x548a(%rip),%rdx        # 407660 <emu_xdata>
  4021d6:	48 89 df             	mov    %rbx,%rdi
  4021d9:	48 8d 2d d0 fd ff ff 	lea    -0x230(%rip),%rbp        # 401fb0 <__mingw_SEH_error_handler>
  4021e0:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4021e3:	b9 20 00 00 00       	mov    $0x20,%ecx
  4021e8:	48 89 d7             	mov    %rdx,%rdi
  4021eb:	48 29 f5             	sub    %rsi,%rbp
  4021ee:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4021f1:	48 89 d7             	mov    %rdx,%rdi
  4021f4:	eb 36                	jmp    40222c <__mingw_init_ehandler+0xbc>
  4021f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4021fd:	00 00 00 
  402200:	c6 07 09             	movb   $0x9,(%rdi)
  402203:	49 ff c4             	inc    %r12
  402206:	48 83 c3 0c          	add    $0xc,%rbx
  40220a:	89 6f 04             	mov    %ebp,0x4(%rdi)
  40220d:	8b 50 0c             	mov    0xc(%rax),%edx
  402210:	89 53 f4             	mov    %edx,-0xc(%rbx)
  402213:	03 50 08             	add    0x8(%rax),%edx
  402216:	48 89 f8             	mov    %rdi,%rax
  402219:	48 83 c7 08          	add    $0x8,%rdi
  40221d:	48 29 f0             	sub    %rsi,%rax
  402220:	89 53 f8             	mov    %edx,-0x8(%rbx)
  402223:	89 43 fc             	mov    %eax,-0x4(%rbx)
  402226:	49 83 fc 20          	cmp    $0x20,%r12
  40222a:	74 24                	je     402250 <__mingw_init_ehandler+0xe0>
  40222c:	4c 89 e1             	mov    %r12,%rcx
  40222f:	e8 2c 06 00 00       	callq  402860 <_FindPESectionExec>
  402234:	48 85 c0             	test   %rax,%rax
  402237:	75 c7                	jne    402200 <__mingw_init_ehandler+0x90>
  402239:	4d 85 e4             	test   %r12,%r12
  40223c:	0f 84 6a ff ff ff    	je     4021ac <__mingw_init_ehandler+0x3c>
  402242:	44 89 e2             	mov    %r12d,%edx
  402245:	eb 0e                	jmp    402255 <__mingw_init_ehandler+0xe5>
  402247:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40224e:	00 00 
  402250:	ba 20 00 00 00       	mov    $0x20,%edx
  402255:	49 89 f0             	mov    %rsi,%r8
  402258:	48 8d 0d 01 55 00 00 	lea    0x5501(%rip),%rcx        # 407760 <emu_pdata>
  40225f:	ff 15 c7 5f 00 00    	callq  *0x5fc7(%rip)        # 40822c <__imp_RtlAddFunctionTable>
  402265:	e9 42 ff ff ff       	jmpq   4021ac <__mingw_init_ehandler+0x3c>
  40226a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000402270 <_gnu_exception_handler>:
  402270:	41 54                	push   %r12
  402272:	48 83 ec 20          	sub    $0x20,%rsp
  402276:	48 8b 11             	mov    (%rcx),%rdx
  402279:	8b 02                	mov    (%rdx),%eax
  40227b:	49 89 cc             	mov    %rcx,%r12
  40227e:	89 c1                	mov    %eax,%ecx
  402280:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
  402286:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
  40228c:	0f 84 ce 00 00 00    	je     402360 <_gnu_exception_handler+0xf0>
  402292:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  402297:	0f 87 aa 00 00 00    	ja     402347 <_gnu_exception_handler+0xd7>
  40229d:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
  4022a2:	76 54                	jbe    4022f8 <_gnu_exception_handler+0x88>
  4022a4:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
  4022a9:	83 f8 09             	cmp    $0x9,%eax
  4022ac:	77 3a                	ja     4022e8 <_gnu_exception_handler+0x78>
  4022ae:	48 8d 15 4b 20 00 00 	lea    0x204b(%rip),%rdx        # 404300 <.rdata+0x30>
  4022b5:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  4022b9:	48 01 d0             	add    %rdx,%rax
  4022bc:	ff e0                	jmpq   *%rax
  4022be:	31 d2                	xor    %edx,%edx
  4022c0:	b9 08 00 00 00       	mov    $0x8,%ecx
  4022c5:	e8 de 07 00 00       	callq  402aa8 <signal>
  4022ca:	48 83 f8 01          	cmp    $0x1,%rax
  4022ce:	0f 85 b7 00 00 00    	jne    40238b <_gnu_exception_handler+0x11b>
  4022d4:	ba 01 00 00 00       	mov    $0x1,%edx
  4022d9:	b9 08 00 00 00       	mov    $0x8,%ecx
  4022de:	e8 c5 07 00 00       	callq  402aa8 <signal>
  4022e3:	e8 08 f7 ff ff       	callq  4019f0 <_fpreset>
  4022e8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022ed:	48 83 c4 20          	add    $0x20,%rsp
  4022f1:	41 5c                	pop    %r12
  4022f3:	c3                   	retq   
  4022f4:	0f 1f 40 00          	nopl   0x0(%rax)
  4022f8:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  4022fd:	0f 84 a5 00 00 00    	je     4023a8 <_gnu_exception_handler+0x138>
  402303:	76 3b                	jbe    402340 <_gnu_exception_handler+0xd0>
  402305:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  40230a:	74 dc                	je     4022e8 <_gnu_exception_handler+0x78>
  40230c:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  402311:	75 34                	jne    402347 <_gnu_exception_handler+0xd7>
  402313:	31 d2                	xor    %edx,%edx
  402315:	b9 04 00 00 00       	mov    $0x4,%ecx
  40231a:	e8 89 07 00 00       	callq  402aa8 <signal>
  40231f:	48 83 f8 01          	cmp    $0x1,%rax
  402323:	0f 84 a7 00 00 00    	je     4023d0 <_gnu_exception_handler+0x160>
  402329:	48 85 c0             	test   %rax,%rax
  40232c:	74 19                	je     402347 <_gnu_exception_handler+0xd7>
  40232e:	b9 04 00 00 00       	mov    $0x4,%ecx
  402333:	ff d0                	callq  *%rax
  402335:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40233a:	eb b1                	jmp    4022ed <_gnu_exception_handler+0x7d>
  40233c:	0f 1f 40 00          	nopl   0x0(%rax)
  402340:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  402345:	74 a1                	je     4022e8 <_gnu_exception_handler+0x78>
  402347:	48 8b 05 f2 52 00 00 	mov    0x52f2(%rip),%rax        # 407640 <__mingw_oldexcpt_handler>
  40234e:	48 85 c0             	test   %rax,%rax
  402351:	74 1d                	je     402370 <_gnu_exception_handler+0x100>
  402353:	4c 89 e1             	mov    %r12,%rcx
  402356:	48 83 c4 20          	add    $0x20,%rsp
  40235a:	41 5c                	pop    %r12
  40235c:	48 ff e0             	rex.W jmpq *%rax
  40235f:	90                   	nop
  402360:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
  402364:	0f 85 28 ff ff ff    	jne    402292 <_gnu_exception_handler+0x22>
  40236a:	e9 79 ff ff ff       	jmpq   4022e8 <_gnu_exception_handler+0x78>
  40236f:	90                   	nop
  402370:	31 c0                	xor    %eax,%eax
  402372:	48 83 c4 20          	add    $0x20,%rsp
  402376:	41 5c                	pop    %r12
  402378:	c3                   	retq   
  402379:	31 d2                	xor    %edx,%edx
  40237b:	b9 08 00 00 00       	mov    $0x8,%ecx
  402380:	e8 23 07 00 00       	callq  402aa8 <signal>
  402385:	48 83 f8 01          	cmp    $0x1,%rax
  402389:	74 65                	je     4023f0 <_gnu_exception_handler+0x180>
  40238b:	48 85 c0             	test   %rax,%rax
  40238e:	74 b7                	je     402347 <_gnu_exception_handler+0xd7>
  402390:	b9 08 00 00 00       	mov    $0x8,%ecx
  402395:	ff d0                	callq  *%rax
  402397:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40239c:	e9 4c ff ff ff       	jmpq   4022ed <_gnu_exception_handler+0x7d>
  4023a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4023a8:	31 d2                	xor    %edx,%edx
  4023aa:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4023af:	e8 f4 06 00 00       	callq  402aa8 <signal>
  4023b4:	48 83 f8 01          	cmp    $0x1,%rax
  4023b8:	74 4f                	je     402409 <_gnu_exception_handler+0x199>
  4023ba:	48 85 c0             	test   %rax,%rax
  4023bd:	74 88                	je     402347 <_gnu_exception_handler+0xd7>
  4023bf:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4023c4:	ff d0                	callq  *%rax
  4023c6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4023cb:	e9 1d ff ff ff       	jmpq   4022ed <_gnu_exception_handler+0x7d>
  4023d0:	ba 01 00 00 00       	mov    $0x1,%edx
  4023d5:	b9 04 00 00 00       	mov    $0x4,%ecx
  4023da:	e8 c9 06 00 00       	callq  402aa8 <signal>
  4023df:	83 c8 ff             	or     $0xffffffff,%eax
  4023e2:	e9 06 ff ff ff       	jmpq   4022ed <_gnu_exception_handler+0x7d>
  4023e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4023ee:	00 00 
  4023f0:	ba 01 00 00 00       	mov    $0x1,%edx
  4023f5:	b9 08 00 00 00       	mov    $0x8,%ecx
  4023fa:	e8 a9 06 00 00       	callq  402aa8 <signal>
  4023ff:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402404:	e9 e4 fe ff ff       	jmpq   4022ed <_gnu_exception_handler+0x7d>
  402409:	ba 01 00 00 00       	mov    $0x1,%edx
  40240e:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402413:	e8 90 06 00 00       	callq  402aa8 <signal>
  402418:	83 c8 ff             	or     $0xffffffff,%eax
  40241b:	e9 cd fe ff ff       	jmpq   4022ed <_gnu_exception_handler+0x7d>

0000000000402420 <__mingwthr_run_key_dtors.part.0>:
  402420:	41 54                	push   %r12
  402422:	57                   	push   %rdi
  402423:	56                   	push   %rsi
  402424:	53                   	push   %rbx
  402425:	48 83 ec 28          	sub    $0x28,%rsp
  402429:	48 8d 0d d0 54 00 00 	lea    0x54d0(%rip),%rcx        # 407900 <__mingwthr_cs>
  402430:	ff 15 9e 5d 00 00    	callq  *0x5d9e(%rip)        # 4081d4 <__imp_EnterCriticalSection>
  402436:	48 8b 1d a3 54 00 00 	mov    0x54a3(%rip),%rbx        # 4078e0 <key_dtor_list>
  40243d:	48 85 db             	test   %rbx,%rbx
  402440:	74 32                	je     402474 <__mingwthr_run_key_dtors.part.0+0x54>
  402442:	48 8b 3d 1b 5e 00 00 	mov    0x5e1b(%rip),%rdi        # 408264 <__imp_TlsGetValue>
  402449:	48 8b 35 a4 5d 00 00 	mov    0x5da4(%rip),%rsi        # 4081f4 <__imp_GetLastError>
  402450:	8b 0b                	mov    (%rbx),%ecx
  402452:	ff d7                	callq  *%rdi
  402454:	49 89 c4             	mov    %rax,%r12
  402457:	ff d6                	callq  *%rsi
  402459:	85 c0                	test   %eax,%eax
  40245b:	75 0e                	jne    40246b <__mingwthr_run_key_dtors.part.0+0x4b>
  40245d:	4d 85 e4             	test   %r12,%r12
  402460:	74 09                	je     40246b <__mingwthr_run_key_dtors.part.0+0x4b>
  402462:	48 8b 43 08          	mov    0x8(%rbx),%rax
  402466:	4c 89 e1             	mov    %r12,%rcx
  402469:	ff d0                	callq  *%rax
  40246b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40246f:	48 85 db             	test   %rbx,%rbx
  402472:	75 dc                	jne    402450 <__mingwthr_run_key_dtors.part.0+0x30>
  402474:	48 8d 0d 85 54 00 00 	lea    0x5485(%rip),%rcx        # 407900 <__mingwthr_cs>
  40247b:	48 83 c4 28          	add    $0x28,%rsp
  40247f:	5b                   	pop    %rbx
  402480:	5e                   	pop    %rsi
  402481:	5f                   	pop    %rdi
  402482:	41 5c                	pop    %r12
  402484:	48 ff 25 91 5d 00 00 	rex.W jmpq *0x5d91(%rip)        # 40821c <__imp_LeaveCriticalSection>
  40248b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402490 <___w64_mingwthr_add_key_dtor>:
  402490:	57                   	push   %rdi
  402491:	56                   	push   %rsi
  402492:	53                   	push   %rbx
  402493:	48 83 ec 20          	sub    $0x20,%rsp
  402497:	8b 05 4b 54 00 00    	mov    0x544b(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  40249d:	89 cf                	mov    %ecx,%edi
  40249f:	48 89 d6             	mov    %rdx,%rsi
  4024a2:	85 c0                	test   %eax,%eax
  4024a4:	75 0a                	jne    4024b0 <___w64_mingwthr_add_key_dtor+0x20>
  4024a6:	48 83 c4 20          	add    $0x20,%rsp
  4024aa:	5b                   	pop    %rbx
  4024ab:	5e                   	pop    %rsi
  4024ac:	5f                   	pop    %rdi
  4024ad:	c3                   	retq   
  4024ae:	66 90                	xchg   %ax,%ax
  4024b0:	ba 18 00 00 00       	mov    $0x18,%edx
  4024b5:	b9 01 00 00 00       	mov    $0x1,%ecx
  4024ba:	e8 21 06 00 00       	callq  402ae0 <calloc>
  4024bf:	48 89 c3             	mov    %rax,%rbx
  4024c2:	48 85 c0             	test   %rax,%rax
  4024c5:	74 3c                	je     402503 <___w64_mingwthr_add_key_dtor+0x73>
  4024c7:	89 38                	mov    %edi,(%rax)
  4024c9:	48 8d 0d 30 54 00 00 	lea    0x5430(%rip),%rcx        # 407900 <__mingwthr_cs>
  4024d0:	48 89 70 08          	mov    %rsi,0x8(%rax)
  4024d4:	ff 15 fa 5c 00 00    	callq  *0x5cfa(%rip)        # 4081d4 <__imp_EnterCriticalSection>
  4024da:	48 8b 05 ff 53 00 00 	mov    0x53ff(%rip),%rax        # 4078e0 <key_dtor_list>
  4024e1:	48 8d 0d 18 54 00 00 	lea    0x5418(%rip),%rcx        # 407900 <__mingwthr_cs>
  4024e8:	48 89 1d f1 53 00 00 	mov    %rbx,0x53f1(%rip)        # 4078e0 <key_dtor_list>
  4024ef:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4024f3:	ff 15 23 5d 00 00    	callq  *0x5d23(%rip)        # 40821c <__imp_LeaveCriticalSection>
  4024f9:	31 c0                	xor    %eax,%eax
  4024fb:	48 83 c4 20          	add    $0x20,%rsp
  4024ff:	5b                   	pop    %rbx
  402500:	5e                   	pop    %rsi
  402501:	5f                   	pop    %rdi
  402502:	c3                   	retq   
  402503:	83 c8 ff             	or     $0xffffffff,%eax
  402506:	eb 9e                	jmp    4024a6 <___w64_mingwthr_add_key_dtor+0x16>
  402508:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40250f:	00 

0000000000402510 <___w64_mingwthr_remove_key_dtor>:
  402510:	53                   	push   %rbx
  402511:	48 83 ec 20          	sub    $0x20,%rsp
  402515:	8b 05 cd 53 00 00    	mov    0x53cd(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  40251b:	89 cb                	mov    %ecx,%ebx
  40251d:	85 c0                	test   %eax,%eax
  40251f:	75 0f                	jne    402530 <___w64_mingwthr_remove_key_dtor+0x20>
  402521:	31 c0                	xor    %eax,%eax
  402523:	48 83 c4 20          	add    $0x20,%rsp
  402527:	5b                   	pop    %rbx
  402528:	c3                   	retq   
  402529:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402530:	48 8d 0d c9 53 00 00 	lea    0x53c9(%rip),%rcx        # 407900 <__mingwthr_cs>
  402537:	ff 15 97 5c 00 00    	callq  *0x5c97(%rip)        # 4081d4 <__imp_EnterCriticalSection>
  40253d:	48 8b 0d 9c 53 00 00 	mov    0x539c(%rip),%rcx        # 4078e0 <key_dtor_list>
  402544:	48 85 c9             	test   %rcx,%rcx
  402547:	74 2a                	je     402573 <___w64_mingwthr_remove_key_dtor+0x63>
  402549:	31 d2                	xor    %edx,%edx
  40254b:	eb 0e                	jmp    40255b <___w64_mingwthr_remove_key_dtor+0x4b>
  40254d:	0f 1f 00             	nopl   (%rax)
  402550:	48 89 ca             	mov    %rcx,%rdx
  402553:	48 85 c0             	test   %rax,%rax
  402556:	74 1b                	je     402573 <___w64_mingwthr_remove_key_dtor+0x63>
  402558:	48 89 c1             	mov    %rax,%rcx
  40255b:	8b 01                	mov    (%rcx),%eax
  40255d:	39 d8                	cmp    %ebx,%eax
  40255f:	48 8b 41 10          	mov    0x10(%rcx),%rax
  402563:	75 eb                	jne    402550 <___w64_mingwthr_remove_key_dtor+0x40>
  402565:	48 85 d2             	test   %rdx,%rdx
  402568:	74 26                	je     402590 <___w64_mingwthr_remove_key_dtor+0x80>
  40256a:	48 89 42 10          	mov    %rax,0x10(%rdx)
  40256e:	e8 55 05 00 00       	callq  402ac8 <free>
  402573:	48 8d 0d 86 53 00 00 	lea    0x5386(%rip),%rcx        # 407900 <__mingwthr_cs>
  40257a:	ff 15 9c 5c 00 00    	callq  *0x5c9c(%rip)        # 40821c <__imp_LeaveCriticalSection>
  402580:	31 c0                	xor    %eax,%eax
  402582:	48 83 c4 20          	add    $0x20,%rsp
  402586:	5b                   	pop    %rbx
  402587:	c3                   	retq   
  402588:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40258f:	00 
  402590:	48 89 05 49 53 00 00 	mov    %rax,0x5349(%rip)        # 4078e0 <key_dtor_list>
  402597:	eb d5                	jmp    40256e <___w64_mingwthr_remove_key_dtor+0x5e>
  402599:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004025a0 <__mingw_TLScallback>:
  4025a0:	53                   	push   %rbx
  4025a1:	48 83 ec 20          	sub    $0x20,%rsp
  4025a5:	83 fa 02             	cmp    $0x2,%edx
  4025a8:	0f 84 c2 00 00 00    	je     402670 <__mingw_TLScallback+0xd0>
  4025ae:	77 28                	ja     4025d8 <__mingw_TLScallback+0x38>
  4025b0:	85 d2                	test   %edx,%edx
  4025b2:	74 4c                	je     402600 <__mingw_TLScallback+0x60>
  4025b4:	8b 05 2e 53 00 00    	mov    0x532e(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  4025ba:	85 c0                	test   %eax,%eax
  4025bc:	74 32                	je     4025f0 <__mingw_TLScallback+0x50>
  4025be:	c7 05 20 53 00 00 01 	movl   $0x1,0x5320(%rip)        # 4078e8 <__mingwthr_cs_init>
  4025c5:	00 00 00 
  4025c8:	b8 01 00 00 00       	mov    $0x1,%eax
  4025cd:	48 83 c4 20          	add    $0x20,%rsp
  4025d1:	5b                   	pop    %rbx
  4025d2:	c3                   	retq   
  4025d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4025d8:	83 fa 03             	cmp    $0x3,%edx
  4025db:	75 eb                	jne    4025c8 <__mingw_TLScallback+0x28>
  4025dd:	8b 05 05 53 00 00    	mov    0x5305(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  4025e3:	85 c0                	test   %eax,%eax
  4025e5:	74 e1                	je     4025c8 <__mingw_TLScallback+0x28>
  4025e7:	e8 34 fe ff ff       	callq  402420 <__mingwthr_run_key_dtors.part.0>
  4025ec:	eb da                	jmp    4025c8 <__mingw_TLScallback+0x28>
  4025ee:	66 90                	xchg   %ax,%ax
  4025f0:	48 8d 0d 09 53 00 00 	lea    0x5309(%rip),%rcx        # 407900 <__mingwthr_cs>
  4025f7:	ff 15 17 5c 00 00    	callq  *0x5c17(%rip)        # 408214 <__imp_InitializeCriticalSection>
  4025fd:	eb bf                	jmp    4025be <__mingw_TLScallback+0x1e>
  4025ff:	90                   	nop
  402600:	8b 05 e2 52 00 00    	mov    0x52e2(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402606:	85 c0                	test   %eax,%eax
  402608:	74 05                	je     40260f <__mingw_TLScallback+0x6f>
  40260a:	e8 11 fe ff ff       	callq  402420 <__mingwthr_run_key_dtors.part.0>
  40260f:	8b 05 d3 52 00 00    	mov    0x52d3(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402615:	83 f8 01             	cmp    $0x1,%eax
  402618:	75 ae                	jne    4025c8 <__mingw_TLScallback+0x28>
  40261a:	48 8b 1d bf 52 00 00 	mov    0x52bf(%rip),%rbx        # 4078e0 <key_dtor_list>
  402621:	48 85 db             	test   %rbx,%rbx
  402624:	74 1b                	je     402641 <__mingw_TLScallback+0xa1>
  402626:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40262d:	00 00 00 
  402630:	48 89 d9             	mov    %rbx,%rcx
  402633:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  402637:	e8 8c 04 00 00       	callq  402ac8 <free>
  40263c:	48 85 db             	test   %rbx,%rbx
  40263f:	75 ef                	jne    402630 <__mingw_TLScallback+0x90>
  402641:	48 8d 0d b8 52 00 00 	lea    0x52b8(%rip),%rcx        # 407900 <__mingwthr_cs>
  402648:	48 c7 05 8d 52 00 00 	movq   $0x0,0x528d(%rip)        # 4078e0 <key_dtor_list>
  40264f:	00 00 00 00 
  402653:	c7 05 8b 52 00 00 00 	movl   $0x0,0x528b(%rip)        # 4078e8 <__mingwthr_cs_init>
  40265a:	00 00 00 
  40265d:	ff 15 69 5b 00 00    	callq  *0x5b69(%rip)        # 4081cc <__IAT_start__>
  402663:	e9 60 ff ff ff       	jmpq   4025c8 <__mingw_TLScallback+0x28>
  402668:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40266f:	00 
  402670:	e8 7b f3 ff ff       	callq  4019f0 <_fpreset>
  402675:	b8 01 00 00 00       	mov    $0x1,%eax
  40267a:	48 83 c4 20          	add    $0x20,%rsp
  40267e:	5b                   	pop    %rbx
  40267f:	c3                   	retq   

0000000000402680 <_ValidateImageBase.part.0>:
  402680:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402684:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
  402688:	31 c0                	xor    %eax,%eax
  40268a:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
  402690:	75 0b                	jne    40269d <_ValidateImageBase.part.0+0x1d>
  402692:	31 c0                	xor    %eax,%eax
  402694:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
  40269a:	0f 94 c0             	sete   %al
  40269d:	c3                   	retq   
  40269e:	66 90                	xchg   %ax,%ax

00000000004026a0 <_ValidateImageBase>:
  4026a0:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  4026a5:	75 09                	jne    4026b0 <_ValidateImageBase+0x10>
  4026a7:	eb d7                	jmp    402680 <_ValidateImageBase.part.0>
  4026a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4026b0:	31 c0                	xor    %eax,%eax
  4026b2:	c3                   	retq   
  4026b3:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4026ba:	00 00 00 00 
  4026be:	66 90                	xchg   %ax,%ax

00000000004026c0 <_FindPESection>:
  4026c0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  4026c4:	48 01 c1             	add    %rax,%rcx
  4026c7:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  4026cb:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  4026d0:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  4026d4:	85 c9                	test   %ecx,%ecx
  4026d6:	74 2d                	je     402705 <_FindPESection+0x45>
  4026d8:	ff c9                	dec    %ecx
  4026da:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  4026de:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
  4026e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4026e8:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  4026ec:	4c 89 c1             	mov    %r8,%rcx
  4026ef:	49 39 d0             	cmp    %rdx,%r8
  4026f2:	77 08                	ja     4026fc <_FindPESection+0x3c>
  4026f4:	03 48 08             	add    0x8(%rax),%ecx
  4026f7:	48 39 d1             	cmp    %rdx,%rcx
  4026fa:	77 0b                	ja     402707 <_FindPESection+0x47>
  4026fc:	48 83 c0 28          	add    $0x28,%rax
  402700:	4c 39 c8             	cmp    %r9,%rax
  402703:	75 e3                	jne    4026e8 <_FindPESection+0x28>
  402705:	31 c0                	xor    %eax,%eax
  402707:	c3                   	retq   
  402708:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40270f:	00 

0000000000402710 <_FindPESectionByName>:
  402710:	41 54                	push   %r12
  402712:	56                   	push   %rsi
  402713:	53                   	push   %rbx
  402714:	48 83 ec 20          	sub    $0x20,%rsp
  402718:	48 89 cb             	mov    %rcx,%rbx
  40271b:	e8 80 03 00 00       	callq  402aa0 <strlen>
  402720:	48 83 f8 08          	cmp    $0x8,%rax
  402724:	77 72                	ja     402798 <_FindPESectionByName+0x88>
  402726:	48 8b 0d 63 1c 00 00 	mov    0x1c63(%rip),%rcx        # 404390 <.refptr.__image_base__>
  40272d:	45 31 e4             	xor    %r12d,%r12d
  402730:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  402735:	75 4f                	jne    402786 <_FindPESectionByName+0x76>
  402737:	e8 44 ff ff ff       	callq  402680 <_ValidateImageBase.part.0>
  40273c:	85 c0                	test   %eax,%eax
  40273e:	74 46                	je     402786 <_FindPESectionByName+0x76>
  402740:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402744:	48 01 c1             	add    %rax,%rcx
  402747:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  40274b:	4c 8d 64 01 18       	lea    0x18(%rcx,%rax,1),%r12
  402750:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
  402754:	85 c0                	test   %eax,%eax
  402756:	74 40                	je     402798 <_FindPESectionByName+0x88>
  402758:	ff c8                	dec    %eax
  40275a:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40275e:	49 8d 74 c4 28       	lea    0x28(%r12,%rax,8),%rsi
  402763:	eb 0c                	jmp    402771 <_FindPESectionByName+0x61>
  402765:	0f 1f 00             	nopl   (%rax)
  402768:	49 83 c4 28          	add    $0x28,%r12
  40276c:	49 39 f4             	cmp    %rsi,%r12
  40276f:	74 27                	je     402798 <_FindPESectionByName+0x88>
  402771:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  402777:	48 89 da             	mov    %rbx,%rdx
  40277a:	4c 89 e1             	mov    %r12,%rcx
  40277d:	e8 16 03 00 00       	callq  402a98 <strncmp>
  402782:	85 c0                	test   %eax,%eax
  402784:	75 e2                	jne    402768 <_FindPESectionByName+0x58>
  402786:	4c 89 e0             	mov    %r12,%rax
  402789:	48 83 c4 20          	add    $0x20,%rsp
  40278d:	5b                   	pop    %rbx
  40278e:	5e                   	pop    %rsi
  40278f:	41 5c                	pop    %r12
  402791:	c3                   	retq   
  402792:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402798:	45 31 e4             	xor    %r12d,%r12d
  40279b:	4c 89 e0             	mov    %r12,%rax
  40279e:	48 83 c4 20          	add    $0x20,%rsp
  4027a2:	5b                   	pop    %rbx
  4027a3:	5e                   	pop    %rsi
  4027a4:	41 5c                	pop    %r12
  4027a6:	c3                   	retq   
  4027a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4027ae:	00 00 

00000000004027b0 <__mingw_GetSectionForAddress>:
  4027b0:	48 83 ec 28          	sub    $0x28,%rsp
  4027b4:	4c 8b 15 d5 1b 00 00 	mov    0x1bd5(%rip),%r10        # 404390 <.refptr.__image_base__>
  4027bb:	45 31 c0             	xor    %r8d,%r8d
  4027be:	66 41 81 3a 4d 5a    	cmpw   $0x5a4d,(%r10)
  4027c4:	49 89 c9             	mov    %rcx,%r9
  4027c7:	75 58                	jne    402821 <__mingw_GetSectionForAddress+0x71>
  4027c9:	4c 89 d1             	mov    %r10,%rcx
  4027cc:	e8 af fe ff ff       	callq  402680 <_ValidateImageBase.part.0>
  4027d1:	85 c0                	test   %eax,%eax
  4027d3:	74 4c                	je     402821 <__mingw_GetSectionForAddress+0x71>
  4027d5:	49 63 42 3c          	movslq 0x3c(%r10),%rax
  4027d9:	4c 89 c9             	mov    %r9,%rcx
  4027dc:	4c 29 d1             	sub    %r10,%rcx
  4027df:	49 01 c2             	add    %rax,%r10
  4027e2:	41 0f b7 42 14       	movzwl 0x14(%r10),%eax
  4027e7:	4d 8d 44 02 18       	lea    0x18(%r10,%rax,1),%r8
  4027ec:	41 0f b7 42 06       	movzwl 0x6(%r10),%eax
  4027f1:	85 c0                	test   %eax,%eax
  4027f3:	74 29                	je     40281e <__mingw_GetSectionForAddress+0x6e>
  4027f5:	ff c8                	dec    %eax
  4027f7:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4027fb:	4d 8d 4c c0 28       	lea    0x28(%r8,%rax,8),%r9
  402800:	41 8b 50 0c          	mov    0xc(%r8),%edx
  402804:	48 89 d0             	mov    %rdx,%rax
  402807:	48 39 d1             	cmp    %rdx,%rcx
  40280a:	72 09                	jb     402815 <__mingw_GetSectionForAddress+0x65>
  40280c:	41 03 40 08          	add    0x8(%r8),%eax
  402810:	48 39 c1             	cmp    %rax,%rcx
  402813:	72 0c                	jb     402821 <__mingw_GetSectionForAddress+0x71>
  402815:	49 83 c0 28          	add    $0x28,%r8
  402819:	4d 39 c8             	cmp    %r9,%r8
  40281c:	75 e2                	jne    402800 <__mingw_GetSectionForAddress+0x50>
  40281e:	45 31 c0             	xor    %r8d,%r8d
  402821:	4c 89 c0             	mov    %r8,%rax
  402824:	48 83 c4 28          	add    $0x28,%rsp
  402828:	c3                   	retq   
  402829:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402830 <__mingw_GetSectionCount>:
  402830:	48 83 ec 28          	sub    $0x28,%rsp
  402834:	48 8b 0d 55 1b 00 00 	mov    0x1b55(%rip),%rcx        # 404390 <.refptr.__image_base__>
  40283b:	31 c0                	xor    %eax,%eax
  40283d:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  402842:	75 12                	jne    402856 <__mingw_GetSectionCount+0x26>
  402844:	e8 37 fe ff ff       	callq  402680 <_ValidateImageBase.part.0>
  402849:	85 c0                	test   %eax,%eax
  40284b:	74 09                	je     402856 <__mingw_GetSectionCount+0x26>
  40284d:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402851:	0f b7 44 08 06       	movzwl 0x6(%rax,%rcx,1),%eax
  402856:	48 83 c4 28          	add    $0x28,%rsp
  40285a:	c3                   	retq   
  40285b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402860 <_FindPESectionExec>:
  402860:	48 83 ec 28          	sub    $0x28,%rsp
  402864:	45 31 c0             	xor    %r8d,%r8d
  402867:	49 89 c9             	mov    %rcx,%r9
  40286a:	48 8b 0d 1f 1b 00 00 	mov    0x1b1f(%rip),%rcx        # 404390 <.refptr.__image_base__>
  402871:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  402876:	75 4b                	jne    4028c3 <_FindPESectionExec+0x63>
  402878:	e8 03 fe ff ff       	callq  402680 <_ValidateImageBase.part.0>
  40287d:	85 c0                	test   %eax,%eax
  40287f:	74 42                	je     4028c3 <_FindPESectionExec+0x63>
  402881:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402885:	48 01 c1             	add    %rax,%rcx
  402888:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  40288c:	4c 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%r8
  402891:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
  402895:	85 c0                	test   %eax,%eax
  402897:	74 27                	je     4028c0 <_FindPESectionExec+0x60>
  402899:	ff c8                	dec    %eax
  40289b:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40289f:	49 8d 44 c0 28       	lea    0x28(%r8,%rax,8),%rax
  4028a4:	0f 1f 40 00          	nopl   0x0(%rax)
  4028a8:	41 f6 40 27 20       	testb  $0x20,0x27(%r8)
  4028ad:	74 08                	je     4028b7 <_FindPESectionExec+0x57>
  4028af:	4d 85 c9             	test   %r9,%r9
  4028b2:	74 0f                	je     4028c3 <_FindPESectionExec+0x63>
  4028b4:	49 ff c9             	dec    %r9
  4028b7:	49 83 c0 28          	add    $0x28,%r8
  4028bb:	49 39 c0             	cmp    %rax,%r8
  4028be:	75 e8                	jne    4028a8 <_FindPESectionExec+0x48>
  4028c0:	45 31 c0             	xor    %r8d,%r8d
  4028c3:	4c 89 c0             	mov    %r8,%rax
  4028c6:	48 83 c4 28          	add    $0x28,%rsp
  4028ca:	c3                   	retq   
  4028cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004028d0 <_GetPEImageBase>:
  4028d0:	48 83 ec 28          	sub    $0x28,%rsp
  4028d4:	48 8b 0d b5 1a 00 00 	mov    0x1ab5(%rip),%rcx        # 404390 <.refptr.__image_base__>
  4028db:	45 31 c0             	xor    %r8d,%r8d
  4028de:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  4028e3:	75 0b                	jne    4028f0 <_GetPEImageBase+0x20>
  4028e5:	e8 96 fd ff ff       	callq  402680 <_ValidateImageBase.part.0>
  4028ea:	85 c0                	test   %eax,%eax
  4028ec:	4c 0f 45 c1          	cmovne %rcx,%r8
  4028f0:	4c 89 c0             	mov    %r8,%rax
  4028f3:	48 83 c4 28          	add    $0x28,%rsp
  4028f7:	c3                   	retq   
  4028f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4028ff:	00 

0000000000402900 <_IsNonwritableInCurrentImage>:
  402900:	48 83 ec 28          	sub    $0x28,%rsp
  402904:	4c 8b 0d 85 1a 00 00 	mov    0x1a85(%rip),%r9        # 404390 <.refptr.__image_base__>
  40290b:	31 c0                	xor    %eax,%eax
  40290d:	66 41 81 39 4d 5a    	cmpw   $0x5a4d,(%r9)
  402913:	49 89 c8             	mov    %rcx,%r8
  402916:	75 57                	jne    40296f <_IsNonwritableInCurrentImage+0x6f>
  402918:	4c 89 c9             	mov    %r9,%rcx
  40291b:	e8 60 fd ff ff       	callq  402680 <_ValidateImageBase.part.0>
  402920:	85 c0                	test   %eax,%eax
  402922:	74 4b                	je     40296f <_IsNonwritableInCurrentImage+0x6f>
  402924:	49 63 41 3c          	movslq 0x3c(%r9),%rax
  402928:	4c 89 c1             	mov    %r8,%rcx
  40292b:	4c 29 c9             	sub    %r9,%rcx
  40292e:	49 01 c1             	add    %rax,%r9
  402931:	41 0f b7 41 14       	movzwl 0x14(%r9),%eax
  402936:	41 0f b7 51 06       	movzwl 0x6(%r9),%edx
  40293b:	49 8d 44 01 18       	lea    0x18(%r9,%rax,1),%rax
  402940:	85 d2                	test   %edx,%edx
  402942:	74 29                	je     40296d <_IsNonwritableInCurrentImage+0x6d>
  402944:	ff ca                	dec    %edx
  402946:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  40294a:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  40294f:	90                   	nop
  402950:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  402954:	4c 89 c2             	mov    %r8,%rdx
  402957:	4c 39 c1             	cmp    %r8,%rcx
  40295a:	72 08                	jb     402964 <_IsNonwritableInCurrentImage+0x64>
  40295c:	03 50 08             	add    0x8(%rax),%edx
  40295f:	48 39 d1             	cmp    %rdx,%rcx
  402962:	72 14                	jb     402978 <_IsNonwritableInCurrentImage+0x78>
  402964:	48 83 c0 28          	add    $0x28,%rax
  402968:	4c 39 c8             	cmp    %r9,%rax
  40296b:	75 e3                	jne    402950 <_IsNonwritableInCurrentImage+0x50>
  40296d:	31 c0                	xor    %eax,%eax
  40296f:	48 83 c4 28          	add    $0x28,%rsp
  402973:	c3                   	retq   
  402974:	0f 1f 40 00          	nopl   0x0(%rax)
  402978:	8b 40 24             	mov    0x24(%rax),%eax
  40297b:	f7 d0                	not    %eax
  40297d:	c1 e8 1f             	shr    $0x1f,%eax
  402980:	48 83 c4 28          	add    $0x28,%rsp
  402984:	c3                   	retq   
  402985:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40298c:	00 00 00 00 

0000000000402990 <__mingw_enum_import_library_names>:
  402990:	48 83 ec 28          	sub    $0x28,%rsp
  402994:	4c 8b 1d f5 19 00 00 	mov    0x19f5(%rip),%r11        # 404390 <.refptr.__image_base__>
  40299b:	45 31 c9             	xor    %r9d,%r9d
  40299e:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
  4029a4:	41 89 c8             	mov    %ecx,%r8d
  4029a7:	75 5f                	jne    402a08 <__mingw_enum_import_library_names+0x78>
  4029a9:	4c 89 d9             	mov    %r11,%rcx
  4029ac:	e8 cf fc ff ff       	callq  402680 <_ValidateImageBase.part.0>
  4029b1:	85 c0                	test   %eax,%eax
  4029b3:	74 53                	je     402a08 <__mingw_enum_import_library_names+0x78>
  4029b5:	49 63 4b 3c          	movslq 0x3c(%r11),%rcx
  4029b9:	4c 01 d9             	add    %r11,%rcx
  4029bc:	8b 81 90 00 00 00    	mov    0x90(%rcx),%eax
  4029c2:	85 c0                	test   %eax,%eax
  4029c4:	74 42                	je     402a08 <__mingw_enum_import_library_names+0x78>
  4029c6:	0f b7 51 14          	movzwl 0x14(%rcx),%edx
  4029ca:	48 8d 54 11 18       	lea    0x18(%rcx,%rdx,1),%rdx
  4029cf:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  4029d3:	85 c9                	test   %ecx,%ecx
  4029d5:	74 31                	je     402a08 <__mingw_enum_import_library_names+0x78>
  4029d7:	ff c9                	dec    %ecx
  4029d9:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  4029dd:	4c 8d 54 ca 28       	lea    0x28(%rdx,%rcx,8),%r10
  4029e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4029e8:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
  4029ec:	4c 89 c9             	mov    %r9,%rcx
  4029ef:	4c 39 c8             	cmp    %r9,%rax
  4029f2:	72 08                	jb     4029fc <__mingw_enum_import_library_names+0x6c>
  4029f4:	03 4a 08             	add    0x8(%rdx),%ecx
  4029f7:	48 39 c8             	cmp    %rcx,%rax
  4029fa:	72 14                	jb     402a10 <__mingw_enum_import_library_names+0x80>
  4029fc:	48 83 c2 28          	add    $0x28,%rdx
  402a00:	4c 39 d2             	cmp    %r10,%rdx
  402a03:	75 e3                	jne    4029e8 <__mingw_enum_import_library_names+0x58>
  402a05:	45 31 c9             	xor    %r9d,%r9d
  402a08:	4c 89 c8             	mov    %r9,%rax
  402a0b:	48 83 c4 28          	add    $0x28,%rsp
  402a0f:	c3                   	retq   
  402a10:	4c 01 d8             	add    %r11,%rax
  402a13:	eb 0a                	jmp    402a1f <__mingw_enum_import_library_names+0x8f>
  402a15:	0f 1f 00             	nopl   (%rax)
  402a18:	41 ff c8             	dec    %r8d
  402a1b:	48 83 c0 14          	add    $0x14,%rax
  402a1f:	8b 48 04             	mov    0x4(%rax),%ecx
  402a22:	85 c9                	test   %ecx,%ecx
  402a24:	75 07                	jne    402a2d <__mingw_enum_import_library_names+0x9d>
  402a26:	8b 50 0c             	mov    0xc(%rax),%edx
  402a29:	85 d2                	test   %edx,%edx
  402a2b:	74 d8                	je     402a05 <__mingw_enum_import_library_names+0x75>
  402a2d:	45 85 c0             	test   %r8d,%r8d
  402a30:	7f e6                	jg     402a18 <__mingw_enum_import_library_names+0x88>
  402a32:	44 8b 48 0c          	mov    0xc(%rax),%r9d
  402a36:	4d 01 d9             	add    %r11,%r9
  402a39:	4c 89 c8             	mov    %r9,%rax
  402a3c:	48 83 c4 28          	add    $0x28,%rsp
  402a40:	c3                   	retq   
  402a41:	90                   	nop
  402a42:	90                   	nop
  402a43:	90                   	nop
  402a44:	90                   	nop
  402a45:	90                   	nop
  402a46:	90                   	nop
  402a47:	90                   	nop
  402a48:	90                   	nop
  402a49:	90                   	nop
  402a4a:	90                   	nop
  402a4b:	90                   	nop
  402a4c:	90                   	nop
  402a4d:	90                   	nop
  402a4e:	90                   	nop
  402a4f:	90                   	nop

0000000000402a50 <___chkstk_ms>:
  402a50:	51                   	push   %rcx
  402a51:	50                   	push   %rax
  402a52:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402a58:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
  402a5d:	72 19                	jb     402a78 <___chkstk_ms+0x28>
  402a5f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
  402a66:	48 83 09 00          	orq    $0x0,(%rcx)
  402a6a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
  402a70:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402a76:	77 e7                	ja     402a5f <___chkstk_ms+0xf>
  402a78:	48 29 c1             	sub    %rax,%rcx
  402a7b:	48 83 09 00          	orq    $0x0,(%rcx)
  402a7f:	58                   	pop    %rax
  402a80:	59                   	pop    %rcx
  402a81:	c3                   	retq   
  402a82:	90                   	nop
  402a83:	90                   	nop
  402a84:	90                   	nop
  402a85:	90                   	nop
  402a86:	90                   	nop
  402a87:	90                   	nop
  402a88:	90                   	nop
  402a89:	90                   	nop
  402a8a:	90                   	nop
  402a8b:	90                   	nop
  402a8c:	90                   	nop
  402a8d:	90                   	nop
  402a8e:	90                   	nop
  402a8f:	90                   	nop

0000000000402a90 <vfprintf>:
  402a90:	ff 25 b6 58 00 00    	jmpq   *0x58b6(%rip)        # 40834c <__imp_vfprintf>
  402a96:	90                   	nop
  402a97:	90                   	nop

0000000000402a98 <strncmp>:
  402a98:	ff 25 a6 58 00 00    	jmpq   *0x58a6(%rip)        # 408344 <__imp_strncmp>
  402a9e:	90                   	nop
  402a9f:	90                   	nop

0000000000402aa0 <strlen>:
  402aa0:	ff 25 96 58 00 00    	jmpq   *0x5896(%rip)        # 40833c <__imp_strlen>
  402aa6:	90                   	nop
  402aa7:	90                   	nop

0000000000402aa8 <signal>:
  402aa8:	ff 25 86 58 00 00    	jmpq   *0x5886(%rip)        # 408334 <__imp_signal>
  402aae:	90                   	nop
  402aaf:	90                   	nop

0000000000402ab0 <memcpy>:
  402ab0:	ff 25 76 58 00 00    	jmpq   *0x5876(%rip)        # 40832c <__imp_memcpy>
  402ab6:	90                   	nop
  402ab7:	90                   	nop

0000000000402ab8 <malloc>:
  402ab8:	ff 25 66 58 00 00    	jmpq   *0x5866(%rip)        # 408324 <__imp_malloc>
  402abe:	90                   	nop
  402abf:	90                   	nop

0000000000402ac0 <fwrite>:
  402ac0:	ff 25 56 58 00 00    	jmpq   *0x5856(%rip)        # 40831c <__imp_fwrite>
  402ac6:	90                   	nop
  402ac7:	90                   	nop

0000000000402ac8 <free>:
  402ac8:	ff 25 46 58 00 00    	jmpq   *0x5846(%rip)        # 408314 <__imp_free>
  402ace:	90                   	nop
  402acf:	90                   	nop

0000000000402ad0 <fprintf>:
  402ad0:	ff 25 36 58 00 00    	jmpq   *0x5836(%rip)        # 40830c <__imp_fprintf>
  402ad6:	90                   	nop
  402ad7:	90                   	nop

0000000000402ad8 <exit>:
  402ad8:	ff 25 26 58 00 00    	jmpq   *0x5826(%rip)        # 408304 <__imp_exit>
  402ade:	90                   	nop
  402adf:	90                   	nop

0000000000402ae0 <calloc>:
  402ae0:	ff 25 16 58 00 00    	jmpq   *0x5816(%rip)        # 4082fc <__imp_calloc>
  402ae6:	90                   	nop
  402ae7:	90                   	nop

0000000000402ae8 <abort>:
  402ae8:	ff 25 06 58 00 00    	jmpq   *0x5806(%rip)        # 4082f4 <__imp_abort>
  402aee:	90                   	nop
  402aef:	90                   	nop

0000000000402af0 <_onexit>:
  402af0:	ff 25 f6 57 00 00    	jmpq   *0x57f6(%rip)        # 4082ec <__imp__onexit>
  402af6:	90                   	nop
  402af7:	90                   	nop

0000000000402af8 <_initterm>:
  402af8:	ff 25 e6 57 00 00    	jmpq   *0x57e6(%rip)        # 4082e4 <__imp__initterm>
  402afe:	90                   	nop
  402aff:	90                   	nop

0000000000402b00 <_cexit>:
  402b00:	ff 25 ce 57 00 00    	jmpq   *0x57ce(%rip)        # 4082d4 <__imp__cexit>
  402b06:	90                   	nop
  402b07:	90                   	nop

0000000000402b08 <_amsg_exit>:
  402b08:	ff 25 be 57 00 00    	jmpq   *0x57be(%rip)        # 4082cc <__imp__amsg_exit>
  402b0e:	90                   	nop
  402b0f:	90                   	nop

0000000000402b10 <__setusermatherr>:
  402b10:	ff 25 a6 57 00 00    	jmpq   *0x57a6(%rip)        # 4082bc <__imp___setusermatherr>
  402b16:	90                   	nop
  402b17:	90                   	nop

0000000000402b18 <__set_app_type>:
  402b18:	ff 25 96 57 00 00    	jmpq   *0x5796(%rip)        # 4082b4 <__imp___set_app_type>
  402b1e:	90                   	nop
  402b1f:	90                   	nop

0000000000402b20 <__lconv_init>:
  402b20:	ff 25 86 57 00 00    	jmpq   *0x5786(%rip)        # 4082ac <__imp___lconv_init>
  402b26:	90                   	nop
  402b27:	90                   	nop

0000000000402b28 <__getmainargs>:
  402b28:	ff 25 66 57 00 00    	jmpq   *0x5766(%rip)        # 408294 <__imp___getmainargs>
  402b2e:	90                   	nop
  402b2f:	90                   	nop

0000000000402b30 <__C_specific_handler>:
  402b30:	ff 25 56 57 00 00    	jmpq   *0x5756(%rip)        # 40828c <__imp___C_specific_handler>
  402b36:	90                   	nop
  402b37:	90                   	nop
  402b38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402b3f:	00 

0000000000402b40 <__acrt_iob_func>:
  402b40:	53                   	push   %rbx
  402b41:	48 83 ec 20          	sub    $0x20,%rsp
  402b45:	89 cb                	mov    %ecx,%ebx
  402b47:	e8 54 00 00 00       	callq  402ba0 <__iob_func>
  402b4c:	89 d9                	mov    %ebx,%ecx
  402b4e:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
  402b52:	48 c1 e2 04          	shl    $0x4,%rdx
  402b56:	48 01 d0             	add    %rdx,%rax
  402b59:	48 83 c4 20          	add    $0x20,%rsp
  402b5d:	5b                   	pop    %rbx
  402b5e:	c3                   	retq   
  402b5f:	90                   	nop

0000000000402b60 <_get_invalid_parameter_handler>:
  402b60:	48 8b 05 e9 4d 00 00 	mov    0x4de9(%rip),%rax        # 407950 <handler>
  402b67:	c3                   	retq   
  402b68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402b6f:	00 

0000000000402b70 <_set_invalid_parameter_handler>:
  402b70:	48 89 c8             	mov    %rcx,%rax
  402b73:	48 87 05 d6 4d 00 00 	xchg   %rax,0x4dd6(%rip)        # 407950 <handler>
  402b7a:	c3                   	retq   
  402b7b:	90                   	nop
  402b7c:	90                   	nop
  402b7d:	90                   	nop
  402b7e:	90                   	nop
  402b7f:	90                   	nop

0000000000402b80 <__p__acmdln>:
  402b80:	48 8b 05 29 18 00 00 	mov    0x1829(%rip),%rax        # 4043b0 <.refptr.__imp__acmdln>
  402b87:	48 8b 00             	mov    (%rax),%rax
  402b8a:	c3                   	retq   
  402b8b:	90                   	nop
  402b8c:	90                   	nop
  402b8d:	90                   	nop
  402b8e:	90                   	nop
  402b8f:	90                   	nop

0000000000402b90 <__p__fmode>:
  402b90:	48 8b 05 29 18 00 00 	mov    0x1829(%rip),%rax        # 4043c0 <.refptr.__imp__fmode>
  402b97:	48 8b 00             	mov    (%rax),%rax
  402b9a:	c3                   	retq   
  402b9b:	90                   	nop
  402b9c:	90                   	nop
  402b9d:	90                   	nop
  402b9e:	90                   	nop
  402b9f:	90                   	nop

0000000000402ba0 <__iob_func>:
  402ba0:	ff 25 fe 56 00 00    	jmpq   *0x56fe(%rip)        # 4082a4 <__imp___iob_func>
  402ba6:	90                   	nop
  402ba7:	90                   	nop
  402ba8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402baf:	00 

0000000000402bb0 <VirtualQuery>:
  402bb0:	ff 25 c6 56 00 00    	jmpq   *0x56c6(%rip)        # 40827c <__imp_VirtualQuery>
  402bb6:	90                   	nop
  402bb7:	90                   	nop

0000000000402bb8 <VirtualProtect>:
  402bb8:	ff 25 b6 56 00 00    	jmpq   *0x56b6(%rip)        # 408274 <__imp_VirtualProtect>
  402bbe:	90                   	nop
  402bbf:	90                   	nop

0000000000402bc0 <UnhandledExceptionFilter>:
  402bc0:	ff 25 a6 56 00 00    	jmpq   *0x56a6(%rip)        # 40826c <__imp_UnhandledExceptionFilter>
  402bc6:	90                   	nop
  402bc7:	90                   	nop

0000000000402bc8 <TlsGetValue>:
  402bc8:	ff 25 96 56 00 00    	jmpq   *0x5696(%rip)        # 408264 <__imp_TlsGetValue>
  402bce:	90                   	nop
  402bcf:	90                   	nop

0000000000402bd0 <TerminateProcess>:
  402bd0:	ff 25 86 56 00 00    	jmpq   *0x5686(%rip)        # 40825c <__imp_TerminateProcess>
  402bd6:	90                   	nop
  402bd7:	90                   	nop

0000000000402bd8 <Sleep>:
  402bd8:	ff 25 76 56 00 00    	jmpq   *0x5676(%rip)        # 408254 <__imp_Sleep>
  402bde:	90                   	nop
  402bdf:	90                   	nop

0000000000402be0 <SetUnhandledExceptionFilter>:
  402be0:	ff 25 66 56 00 00    	jmpq   *0x5666(%rip)        # 40824c <__imp_SetUnhandledExceptionFilter>
  402be6:	90                   	nop
  402be7:	90                   	nop

0000000000402be8 <RtlVirtualUnwind>:
  402be8:	ff 25 56 56 00 00    	jmpq   *0x5656(%rip)        # 408244 <__imp_RtlVirtualUnwind>
  402bee:	90                   	nop
  402bef:	90                   	nop

0000000000402bf0 <RtlLookupFunctionEntry>:
  402bf0:	ff 25 46 56 00 00    	jmpq   *0x5646(%rip)        # 40823c <__imp_RtlLookupFunctionEntry>
  402bf6:	90                   	nop
  402bf7:	90                   	nop

0000000000402bf8 <RtlCaptureContext>:
  402bf8:	ff 25 36 56 00 00    	jmpq   *0x5636(%rip)        # 408234 <__imp_RtlCaptureContext>
  402bfe:	90                   	nop
  402bff:	90                   	nop

0000000000402c00 <RtlAddFunctionTable>:
  402c00:	ff 25 26 56 00 00    	jmpq   *0x5626(%rip)        # 40822c <__imp_RtlAddFunctionTable>
  402c06:	90                   	nop
  402c07:	90                   	nop

0000000000402c08 <QueryPerformanceCounter>:
  402c08:	ff 25 16 56 00 00    	jmpq   *0x5616(%rip)        # 408224 <__imp_QueryPerformanceCounter>
  402c0e:	90                   	nop
  402c0f:	90                   	nop

0000000000402c10 <LeaveCriticalSection>:
  402c10:	ff 25 06 56 00 00    	jmpq   *0x5606(%rip)        # 40821c <__imp_LeaveCriticalSection>
  402c16:	90                   	nop
  402c17:	90                   	nop

0000000000402c18 <InitializeCriticalSection>:
  402c18:	ff 25 f6 55 00 00    	jmpq   *0x55f6(%rip)        # 408214 <__imp_InitializeCriticalSection>
  402c1e:	90                   	nop
  402c1f:	90                   	nop

0000000000402c20 <GetTickCount>:
  402c20:	ff 25 e6 55 00 00    	jmpq   *0x55e6(%rip)        # 40820c <__imp_GetTickCount>
  402c26:	90                   	nop
  402c27:	90                   	nop

0000000000402c28 <GetSystemTimeAsFileTime>:
  402c28:	ff 25 d6 55 00 00    	jmpq   *0x55d6(%rip)        # 408204 <__imp_GetSystemTimeAsFileTime>
  402c2e:	90                   	nop
  402c2f:	90                   	nop

0000000000402c30 <GetStartupInfoA>:
  402c30:	ff 25 c6 55 00 00    	jmpq   *0x55c6(%rip)        # 4081fc <__imp_GetStartupInfoA>
  402c36:	90                   	nop
  402c37:	90                   	nop

0000000000402c38 <GetLastError>:
  402c38:	ff 25 b6 55 00 00    	jmpq   *0x55b6(%rip)        # 4081f4 <__imp_GetLastError>
  402c3e:	90                   	nop
  402c3f:	90                   	nop

0000000000402c40 <GetCurrentThreadId>:
  402c40:	ff 25 a6 55 00 00    	jmpq   *0x55a6(%rip)        # 4081ec <__imp_GetCurrentThreadId>
  402c46:	90                   	nop
  402c47:	90                   	nop

0000000000402c48 <GetCurrentProcessId>:
  402c48:	ff 25 96 55 00 00    	jmpq   *0x5596(%rip)        # 4081e4 <__imp_GetCurrentProcessId>
  402c4e:	90                   	nop
  402c4f:	90                   	nop

0000000000402c50 <GetCurrentProcess>:
  402c50:	ff 25 86 55 00 00    	jmpq   *0x5586(%rip)        # 4081dc <__imp_GetCurrentProcess>
  402c56:	90                   	nop
  402c57:	90                   	nop

0000000000402c58 <EnterCriticalSection>:
  402c58:	ff 25 76 55 00 00    	jmpq   *0x5576(%rip)        # 4081d4 <__imp_EnterCriticalSection>
  402c5e:	90                   	nop
  402c5f:	90                   	nop

0000000000402c60 <DeleteCriticalSection>:
  402c60:	ff 25 66 55 00 00    	jmpq   *0x5566(%rip)        # 4081cc <__IAT_start__>
  402c66:	90                   	nop
  402c67:	90                   	nop
  402c68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402c6f:	00 

0000000000402c70 <main>:

// }
int pass = 1;

int main()
{
  402c70:	48 83 ec 28          	sub    $0x28,%rsp
  402c74:	e8 87 e9 ff ff       	callq  401600 <__main>
    while(pass)
  402c79:	8b 05 91 03 00 00    	mov    0x391(%rip),%eax        # 403010 <pass>
  402c7f:	90                   	nop
  402c80:	85 c0                	test   %eax,%eax
  402c82:	75 fc                	jne    402c80 <main+0x10>
    {

    }
    return 0;
  402c84:	48 83 c4 28          	add    $0x28,%rsp
  402c88:	c3                   	retq   
  402c89:	90                   	nop
  402c8a:	90                   	nop
  402c8b:	90                   	nop
  402c8c:	90                   	nop
  402c8d:	90                   	nop
  402c8e:	90                   	nop
  402c8f:	90                   	nop

0000000000402c90 <register_frame_ctor>:
  402c90:	e9 9b e8 ff ff       	jmpq   401530 <__gcc_register_frame>
  402c95:	90                   	nop
  402c96:	90                   	nop
  402c97:	90                   	nop
  402c98:	90                   	nop
  402c99:	90                   	nop
  402c9a:	90                   	nop
  402c9b:	90                   	nop
  402c9c:	90                   	nop
  402c9d:	90                   	nop
  402c9e:	90                   	nop
  402c9f:	90                   	nop

0000000000402ca0 <__CTOR_LIST__>:
  402ca0:	ff                   	(bad)  
  402ca1:	ff                   	(bad)  
  402ca2:	ff                   	(bad)  
  402ca3:	ff                   	(bad)  
  402ca4:	ff                   	(bad)  
  402ca5:	ff                   	(bad)  
  402ca6:	ff                   	(bad)  
  402ca7:	ff                   	.byte 0xff

0000000000402ca8 <.ctors.65535>:
  402ca8:	90                   	nop
  402ca9:	2c 40                	sub    $0x40,%al
	...

0000000000402cb8 <__DTOR_LIST__>:
  402cb8:	ff                   	(bad)  
  402cb9:	ff                   	(bad)  
  402cba:	ff                   	(bad)  
  402cbb:	ff                   	(bad)  
  402cbc:	ff                   	(bad)  
  402cbd:	ff                   	(bad)  
  402cbe:	ff                   	(bad)  
  402cbf:	ff 00                	incl   (%rax)
  402cc1:	00 00                	add    %al,(%rax)
  402cc3:	00 00                	add    %al,(%rax)
  402cc5:	00 00                	add    %al,(%rax)
	...
