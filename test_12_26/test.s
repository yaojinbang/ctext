
test.exe:     file format pei-x86-64


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
  40107f:	e8 ec 1a 00 00       	callq  402b70 <__set_app_type>
  401084:	e8 57 1b 00 00       	callq  402be0 <__p__fmode>
  401089:	48 8b 15 c0 33 00 00 	mov    0x33c0(%rip),%rdx        # 404450 <.refptr._fmode>
  401090:	8b 12                	mov    (%rdx),%edx
  401092:	89 10                	mov    %edx,(%rax)
  401094:	e8 e7 05 00 00       	callq  401680 <_setargv>
  401099:	48 8b 05 a0 32 00 00 	mov    0x32a0(%rip),%rax        # 404340 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
  4010a0:	83 38 01             	cmpl   $0x1,(%rax)
  4010a3:	74 4b                	je     4010f0 <pre_c_init+0xe0>
  4010a5:	31 c0                	xor    %eax,%eax
  4010a7:	48 83 c4 28          	add    $0x28,%rsp
  4010ab:	c3                   	retq   
  4010ac:	0f 1f 40 00          	nopl   0x0(%rax)
  4010b0:	b9 02 00 00 00       	mov    $0x2,%ecx
  4010b5:	e8 b6 1a 00 00       	callq  402b70 <__set_app_type>
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
  4010f0:	48 8d 0d 49 08 00 00 	lea    0x849(%rip),%rcx        # 401940 <_matherr>
  4010f7:	e8 f4 0e 00 00       	callq  401ff0 <__mingw_setusermatherr>
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
  40116e:	e8 0d 1a 00 00       	callq  402b80 <__getmainargs>
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
  4011ca:	4c 8b 25 8b 70 00 00 	mov    0x708b(%rip),%r12        # 40825c <__imp_Sleep>
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
  40124c:	e8 5f 0a 00 00       	callq  401cb0 <_pei386_runtime_relocator>
  401251:	48 8d 0d 68 10 00 00 	lea    0x1068(%rip),%rcx        # 4022c0 <_gnu_exception_handler>
  401258:	ff 15 f6 6f 00 00    	callq  *0x6ff6(%rip)        # 408254 <__imp_SetUnhandledExceptionFilter>
  40125e:	48 8b 15 6b 31 00 00 	mov    0x316b(%rip),%rdx        # 4043d0 <.refptr.__mingw_oldexcpt_handler>
  401265:	48 89 02             	mov    %rax,(%rdx)
  401268:	e8 53 0f 00 00       	callq  4021c0 <__mingw_init_ehandler>
  40126d:	48 8d 0d 8c fd ff ff 	lea    -0x274(%rip),%rcx        # 401000 <__mingw_invalidParameterHandler>
  401274:	e8 47 19 00 00       	callq  402bc0 <_set_invalid_parameter_handler>
  401279:	e8 c2 07 00 00       	callq  401a40 <_fpreset>
  40127e:	48 8b 05 0b 31 00 00 	mov    0x310b(%rip),%rax        # 404390 <.refptr.__image_base__>
  401285:	48 89 05 dc 66 00 00 	mov    %rax,0x66dc(%rip)        # 407968 <__mingw_winmain_hInstance>
  40128c:	e8 3f 19 00 00       	callq  402bd0 <__p__acmdln>
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
  401321:	e8 ea 17 00 00       	callq  402b10 <malloc>
  401326:	48 8b 3d f3 5c 00 00 	mov    0x5cf3(%rip),%rdi        # 407020 <argv>
  40132d:	48 89 c5             	mov    %rax,%rbp
  401330:	85 db                	test   %ebx,%ebx
  401332:	7e 45                	jle    401379 <__tmainCRTStartup+0x1f9>
  401334:	44 8d 63 ff          	lea    -0x1(%rbx),%r12d
  401338:	31 db                	xor    %ebx,%ebx
  40133a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401340:	48 8b 0c df          	mov    (%rdi,%rbx,8),%rcx
  401344:	e8 a7 17 00 00       	callq  402af0 <strlen>
  401349:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40134d:	48 89 f1             	mov    %rsi,%rcx
  401350:	e8 bb 17 00 00       	callq  402b10 <malloc>
  401355:	49 89 f0             	mov    %rsi,%r8
  401358:	48 89 44 dd 00       	mov    %rax,0x0(%rbp,%rbx,8)
  40135d:	48 8b 14 df          	mov    (%rdi,%rbx,8),%rdx
  401361:	48 89 c1             	mov    %rax,%rcx
  401364:	e8 9f 17 00 00       	callq  402b08 <memcpy>
  401369:	48 89 d8             	mov    %rbx,%rax
  40136c:	48 ff c3             	inc    %rbx
  40136f:	49 39 c4             	cmp    %rax,%r12
  401372:	75 cc                	jne    401340 <__tmainCRTStartup+0x1c0>
  401374:	4a 8d 44 2d f8       	lea    -0x8(%rbp,%r13,1),%rax
  401379:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  401380:	48 89 2d 99 5c 00 00 	mov    %rbp,0x5c99(%rip)        # 407020 <argv>
  401387:	e8 c4 02 00 00       	callq  401650 <__main>
  40138c:	48 8b 05 0d 30 00 00 	mov    0x300d(%rip),%rax        # 4043a0 <.refptr.__imp___initenv>
  401393:	4c 8b 05 7e 5c 00 00 	mov    0x5c7e(%rip),%r8        # 407018 <envp>
  40139a:	8b 0d 88 5c 00 00    	mov    0x5c88(%rip),%ecx        # 407028 <argc>
  4013a0:	48 8b 00             	mov    (%rax),%rax
  4013a3:	4c 89 00             	mov    %r8,(%rax)
  4013a6:	48 8b 15 73 5c 00 00 	mov    0x5c73(%rip),%rdx        # 407020 <argv>
  4013ad:	e8 9e 01 00 00       	callq  401550 <main>
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
  401414:	e8 47 17 00 00       	callq  402b60 <_amsg_exit>
  401419:	8b 06                	mov    (%rsi),%eax
  40141b:	83 f8 01             	cmp    $0x1,%eax
  40141e:	0f 85 05 fe ff ff    	jne    401229 <__tmainCRTStartup+0xa9>
  401424:	48 8b 15 e5 2f 00 00 	mov    0x2fe5(%rip),%rdx        # 404410 <.refptr.__xc_z>
  40142b:	48 8b 0d ce 2f 00 00 	mov    0x2fce(%rip),%rcx        # 404400 <.refptr.__xc_a>
  401432:	e8 19 17 00 00       	callq  402b50 <_initterm>
  401437:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
  40143d:	85 ed                	test   %ebp,%ebp
  40143f:	0f 85 ec fd ff ff    	jne    401231 <__tmainCRTStartup+0xb1>
  401445:	31 c0                	xor    %eax,%eax
  401447:	48 87 03             	xchg   %rax,(%rbx)
  40144a:	e9 e2 fd ff ff       	jmpq   401231 <__tmainCRTStartup+0xb1>
  40144f:	90                   	nop
  401450:	4c 89 c1             	mov    %r8,%rcx
  401453:	ff 15 ab 6d 00 00    	callq  *0x6dab(%rip)        # 408204 <__imp_GetStartupInfoA>
  401459:	e9 56 fd ff ff       	jmpq   4011b4 <__tmainCRTStartup+0x34>
  40145e:	66 90                	xchg   %ax,%ax
  401460:	e8 f3 16 00 00       	callq  402b58 <_cexit>
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
  401494:	e8 b7 16 00 00       	callq  402b50 <_initterm>
  401499:	e9 80 fd ff ff       	jmpq   40121e <__tmainCRTStartup+0x9e>
  40149e:	89 c1                	mov    %eax,%ecx
  4014a0:	e8 8b 16 00 00       	callq  402b30 <exit>
  4014a5:	90                   	nop
  4014a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014ad:	00 00 00 

00000000004014b0 <WinMainCRTStartup>:
  4014b0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014b4 <.l_startw>:
  4014b4:	48 8b 05 d5 2f 00 00 	mov    0x2fd5(%rip),%rax        # 404490 <.refptr.mingw_app_type>
  4014bb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  4014c1:	e8 ca 01 00 00       	callq  401690 <__security_init_cookie>
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
  4014f1:	e8 9a 01 00 00       	callq  401690 <__security_init_cookie>
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
  401514:	e8 2f 16 00 00       	callq  402b48 <_onexit>
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
//     printf("%d\n", 0x01<<2+3);
//     return 0;
// }

int main()
{
  40154f:	90                   	nop

0000000000401550 <main>:
  401550:	55                   	push   %rbp
  401551:	48 89 e5             	mov    %rsp,%rbp
  401554:	48 83 ec 30          	sub    $0x30,%rsp
  401558:	e8 f3 00 00 00       	callq  401650 <__main>
    int i = 1;
  40155d:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
    // 2 
    int j = (++i) + (++i) + (++i);
  401564:	ff 45 fc             	incl   -0x4(%rbp)
  401567:	ff 45 fc             	incl   -0x4(%rbp)
  40156a:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40156d:	8d 14 00             	lea    (%rax,%rax,1),%edx
  401570:	ff 45 fc             	incl   -0x4(%rbp)
  401573:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401576:	01 d0                	add    %edx,%eax
  401578:	89 45 f8             	mov    %eax,-0x8(%rbp)
    printf("%d\n", j);
  40157b:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40157e:	89 c2                	mov    %eax,%edx
  401580:	48 8d 0d 79 2a 00 00 	lea    0x2a79(%rip),%rcx        # 404000 <.rdata>
  401587:	e8 74 15 00 00       	callq  402b00 <printf>
    return 0;
  40158c:	b8 00 00 00 00       	mov    $0x0,%eax
  401591:	48 83 c4 30          	add    $0x30,%rsp
  401595:	5d                   	pop    %rbp
  401596:	c3                   	retq   
  401597:	90                   	nop
  401598:	90                   	nop
  401599:	90                   	nop
  40159a:	90                   	nop
  40159b:	90                   	nop
  40159c:	90                   	nop
  40159d:	90                   	nop
  40159e:	90                   	nop
  40159f:	90                   	nop

00000000004015a0 <__do_global_dtors>:
  4015a0:	48 83 ec 28          	sub    $0x28,%rsp
  4015a4:	48 8b 05 65 1a 00 00 	mov    0x1a65(%rip),%rax        # 403010 <p.92473>
  4015ab:	48 8b 00             	mov    (%rax),%rax
  4015ae:	48 85 c0             	test   %rax,%rax
  4015b1:	74 22                	je     4015d5 <__do_global_dtors+0x35>
  4015b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4015b8:	ff d0                	callq  *%rax
  4015ba:	48 8b 05 4f 1a 00 00 	mov    0x1a4f(%rip),%rax        # 403010 <p.92473>
  4015c1:	48 8d 50 08          	lea    0x8(%rax),%rdx
  4015c5:	48 8b 40 08          	mov    0x8(%rax),%rax
  4015c9:	48 89 15 40 1a 00 00 	mov    %rdx,0x1a40(%rip)        # 403010 <p.92473>
  4015d0:	48 85 c0             	test   %rax,%rax
  4015d3:	75 e3                	jne    4015b8 <__do_global_dtors+0x18>
  4015d5:	48 83 c4 28          	add    $0x28,%rsp
  4015d9:	c3                   	retq   
  4015da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004015e0 <__do_global_ctors>:
  4015e0:	56                   	push   %rsi
  4015e1:	53                   	push   %rbx
  4015e2:	48 83 ec 28          	sub    $0x28,%rsp
  4015e6:	48 8b 15 63 2d 00 00 	mov    0x2d63(%rip),%rdx        # 404350 <.refptr.__CTOR_LIST__>
  4015ed:	48 8b 02             	mov    (%rdx),%rax
  4015f0:	89 c1                	mov    %eax,%ecx
  4015f2:	83 f8 ff             	cmp    $0xffffffff,%eax
  4015f5:	74 39                	je     401630 <__do_global_ctors+0x50>
  4015f7:	85 c9                	test   %ecx,%ecx
  4015f9:	74 20                	je     40161b <__do_global_ctors+0x3b>
  4015fb:	89 c8                	mov    %ecx,%eax
  4015fd:	ff c9                	dec    %ecx
  4015ff:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
  401603:	48 29 c8             	sub    %rcx,%rax
  401606:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
  40160b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401610:	ff 13                	callq  *(%rbx)
  401612:	48 83 eb 08          	sub    $0x8,%rbx
  401616:	48 39 f3             	cmp    %rsi,%rbx
  401619:	75 f5                	jne    401610 <__do_global_ctors+0x30>
  40161b:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 4015a0 <__do_global_dtors>
  401622:	48 83 c4 28          	add    $0x28,%rsp
  401626:	5b                   	pop    %rbx
  401627:	5e                   	pop    %rsi
  401628:	e9 e3 fe ff ff       	jmpq   401510 <atexit>
  40162d:	0f 1f 00             	nopl   (%rax)
  401630:	31 c0                	xor    %eax,%eax
  401632:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401638:	44 8d 40 01          	lea    0x1(%rax),%r8d
  40163c:	89 c1                	mov    %eax,%ecx
  40163e:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
  401643:	4c 89 c0             	mov    %r8,%rax
  401646:	75 f0                	jne    401638 <__do_global_ctors+0x58>
  401648:	eb ad                	jmp    4015f7 <__do_global_ctors+0x17>
  40164a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401650 <__main>:
  401650:	8b 05 da 59 00 00    	mov    0x59da(%rip),%eax        # 407030 <initialized>
  401656:	85 c0                	test   %eax,%eax
  401658:	74 06                	je     401660 <__main+0x10>
  40165a:	c3                   	retq   
  40165b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401660:	c7 05 c6 59 00 00 01 	movl   $0x1,0x59c6(%rip)        # 407030 <initialized>
  401667:	00 00 00 
  40166a:	e9 71 ff ff ff       	jmpq   4015e0 <__do_global_ctors>
  40166f:	90                   	nop

0000000000401670 <my_lconv_init>:
  401670:	48 ff 25 3d 6c 00 00 	rex.W jmpq *0x6c3d(%rip)        # 4082b4 <__imp___lconv_init>
  401677:	90                   	nop
  401678:	90                   	nop
  401679:	90                   	nop
  40167a:	90                   	nop
  40167b:	90                   	nop
  40167c:	90                   	nop
  40167d:	90                   	nop
  40167e:	90                   	nop
  40167f:	90                   	nop

0000000000401680 <_setargv>:
  401680:	31 c0                	xor    %eax,%eax
  401682:	c3                   	retq   
  401683:	90                   	nop
  401684:	90                   	nop
  401685:	90                   	nop
  401686:	90                   	nop
  401687:	90                   	nop
  401688:	90                   	nop
  401689:	90                   	nop
  40168a:	90                   	nop
  40168b:	90                   	nop
  40168c:	90                   	nop
  40168d:	90                   	nop
  40168e:	90                   	nop
  40168f:	90                   	nop

0000000000401690 <__security_init_cookie>:
  401690:	41 54                	push   %r12
  401692:	55                   	push   %rbp
  401693:	57                   	push   %rdi
  401694:	56                   	push   %rsi
  401695:	53                   	push   %rbx
  401696:	48 83 ec 30          	sub    $0x30,%rsp
  40169a:	48 8b 1d 0f 1a 00 00 	mov    0x1a0f(%rip),%rbx        # 4030b0 <__security_cookie>
  4016a1:	48 b8 32 a2 df 2d 99 	movabs $0x2b992ddfa232,%rax
  4016a8:	2b 00 00 
  4016ab:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  4016b2:	00 00 
  4016b4:	48 39 c3             	cmp    %rax,%rbx
  4016b7:	74 17                	je     4016d0 <__security_init_cookie+0x40>
  4016b9:	48 f7 d3             	not    %rbx
  4016bc:	48 89 1d fd 19 00 00 	mov    %rbx,0x19fd(%rip)        # 4030c0 <__security_cookie_complement>
  4016c3:	48 83 c4 30          	add    $0x30,%rsp
  4016c7:	5b                   	pop    %rbx
  4016c8:	5e                   	pop    %rsi
  4016c9:	5f                   	pop    %rdi
  4016ca:	5d                   	pop    %rbp
  4016cb:	41 5c                	pop    %r12
  4016cd:	c3                   	retq   
  4016ce:	66 90                	xchg   %ax,%ax
  4016d0:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  4016d5:	ff 15 31 6b 00 00    	callq  *0x6b31(%rip)        # 40820c <__imp_GetSystemTimeAsFileTime>
  4016db:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  4016e0:	ff 15 06 6b 00 00    	callq  *0x6b06(%rip)        # 4081ec <__imp_GetCurrentProcessId>
  4016e6:	89 c5                	mov    %eax,%ebp
  4016e8:	ff 15 06 6b 00 00    	callq  *0x6b06(%rip)        # 4081f4 <__imp_GetCurrentThreadId>
  4016ee:	89 c7                	mov    %eax,%edi
  4016f0:	ff 15 1e 6b 00 00    	callq  *0x6b1e(%rip)        # 408214 <__imp_GetTickCount>
  4016f6:	48 8d 4c 24 28       	lea    0x28(%rsp),%rcx
  4016fb:	41 89 c4             	mov    %eax,%r12d
  4016fe:	ff 15 28 6b 00 00    	callq  *0x6b28(%rip)        # 40822c <__imp_QueryPerformanceCounter>
  401704:	48 33 74 24 28       	xor    0x28(%rsp),%rsi
  401709:	89 e8                	mov    %ebp,%eax
  40170b:	48 ba ff ff ff ff ff 	movabs $0xffffffffffff,%rdx
  401712:	ff 00 00 
  401715:	48 31 f0             	xor    %rsi,%rax
  401718:	89 fe                	mov    %edi,%esi
  40171a:	48 31 c6             	xor    %rax,%rsi
  40171d:	44 89 e0             	mov    %r12d,%eax
  401720:	48 31 f0             	xor    %rsi,%rax
  401723:	48 21 d0             	and    %rdx,%rax
  401726:	48 39 d8             	cmp    %rbx,%rax
  401729:	74 25                	je     401750 <__security_init_cookie+0xc0>
  40172b:	48 89 c2             	mov    %rax,%rdx
  40172e:	48 f7 d2             	not    %rdx
  401731:	48 89 05 78 19 00 00 	mov    %rax,0x1978(%rip)        # 4030b0 <__security_cookie>
  401738:	48 89 15 81 19 00 00 	mov    %rdx,0x1981(%rip)        # 4030c0 <__security_cookie_complement>
  40173f:	48 83 c4 30          	add    $0x30,%rsp
  401743:	5b                   	pop    %rbx
  401744:	5e                   	pop    %rsi
  401745:	5f                   	pop    %rdi
  401746:	5d                   	pop    %rbp
  401747:	41 5c                	pop    %r12
  401749:	c3                   	retq   
  40174a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401750:	48 ba cc 5d 20 d2 66 	movabs $0xffffd466d2205dcc,%rdx
  401757:	d4 ff ff 
  40175a:	48 b8 33 a2 df 2d 99 	movabs $0x2b992ddfa233,%rax
  401761:	2b 00 00 
  401764:	eb cb                	jmp    401731 <__security_init_cookie+0xa1>
  401766:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40176d:	00 00 00 

0000000000401770 <__report_gsfailure>:
  401770:	55                   	push   %rbp
  401771:	56                   	push   %rsi
  401772:	53                   	push   %rbx
  401773:	48 89 e5             	mov    %rsp,%rbp
  401776:	48 83 ec 70          	sub    $0x70,%rsp
  40177a:	48 89 cb             	mov    %rcx,%rbx
  40177d:	48 8d 0d dc 58 00 00 	lea    0x58dc(%rip),%rcx        # 407060 <GS_ContextRecord>
  401784:	ff 15 b2 6a 00 00    	callq  *0x6ab2(%rip)        # 40823c <__imp_RtlCaptureContext>
  40178a:	48 8b 35 c7 59 00 00 	mov    0x59c7(%rip),%rsi        # 407158 <GS_ContextRecord+0xf8>
  401791:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
  401795:	45 31 c0             	xor    %r8d,%r8d
  401798:	48 89 f1             	mov    %rsi,%rcx
  40179b:	ff 15 a3 6a 00 00    	callq  *0x6aa3(%rip)        # 408244 <__imp_RtlLookupFunctionEntry>
  4017a1:	49 89 c1             	mov    %rax,%r9
  4017a4:	48 85 c0             	test   %rax,%rax
  4017a7:	0f 84 a0 00 00 00    	je     40184d <__report_gsfailure+0xdd>
  4017ad:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  4017b1:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4017b5:	49 89 f0             	mov    %rsi,%r8
  4017b8:	31 c9                	xor    %ecx,%ecx
  4017ba:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  4017bf:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
  4017c3:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  4017c8:	48 8d 05 91 58 00 00 	lea    0x5891(%rip),%rax        # 407060 <GS_ContextRecord>
  4017cf:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  4017d6:	00 00 
  4017d8:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  4017dd:	ff 15 69 6a 00 00    	callq  *0x6a69(%rip)        # 40824c <__imp_RtlVirtualUnwind>
  4017e3:	48 8b 05 6e 59 00 00 	mov    0x596e(%rip),%rax        # 407158 <GS_ContextRecord+0xf8>
  4017ea:	31 c9                	xor    %ecx,%ecx
  4017ec:	48 89 1d ed 58 00 00 	mov    %rbx,0x58ed(%rip)        # 4070e0 <GS_ContextRecord+0x80>
  4017f3:	48 89 05 56 5d 00 00 	mov    %rax,0x5d56(%rip)        # 407550 <GS_ExceptionRecord+0x10>
  4017fa:	48 b8 09 04 00 c0 01 	movabs $0x1c0000409,%rax
  401801:	00 00 00 
  401804:	48 89 05 35 5d 00 00 	mov    %rax,0x5d35(%rip)        # 407540 <GS_ExceptionRecord>
  40180b:	48 8b 05 9e 18 00 00 	mov    0x189e(%rip),%rax        # 4030b0 <__security_cookie>
  401812:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401816:	48 8b 05 a3 18 00 00 	mov    0x18a3(%rip),%rax        # 4030c0 <__security_cookie_complement>
  40181d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401821:	ff 15 2d 6a 00 00    	callq  *0x6a2d(%rip)        # 408254 <__imp_SetUnhandledExceptionFilter>
  401827:	48 8d 0d e2 27 00 00 	lea    0x27e2(%rip),%rcx        # 404010 <GS_ExceptionPointers>
  40182e:	ff 15 40 6a 00 00    	callq  *0x6a40(%rip)        # 408274 <__imp_UnhandledExceptionFilter>
  401834:	ff 15 aa 69 00 00    	callq  *0x69aa(%rip)        # 4081e4 <__imp_GetCurrentProcess>
  40183a:	ba 09 04 00 c0       	mov    $0xc0000409,%edx
  40183f:	48 89 c1             	mov    %rax,%rcx
  401842:	ff 15 1c 6a 00 00    	callq  *0x6a1c(%rip)        # 408264 <__imp_TerminateProcess>
  401848:	e8 f3 12 00 00       	callq  402b40 <abort>
  40184d:	48 8b 45 18          	mov    0x18(%rbp),%rax
  401851:	48 89 05 00 59 00 00 	mov    %rax,0x5900(%rip)        # 407158 <GS_ContextRecord+0xf8>
  401858:	48 8d 45 08          	lea    0x8(%rbp),%rax
  40185c:	48 89 05 95 58 00 00 	mov    %rax,0x5895(%rip)        # 4070f8 <GS_ContextRecord+0x98>
  401863:	e9 7b ff ff ff       	jmpq   4017e3 <__report_gsfailure+0x73>
  401868:	90                   	nop
  401869:	90                   	nop
  40186a:	90                   	nop
  40186b:	90                   	nop
  40186c:	90                   	nop
  40186d:	90                   	nop
  40186e:	90                   	nop
  40186f:	90                   	nop

0000000000401870 <__dyn_tls_dtor>:
  401870:	48 83 ec 28          	sub    $0x28,%rsp
  401874:	83 fa 03             	cmp    $0x3,%edx
  401877:	74 17                	je     401890 <__dyn_tls_dtor+0x20>
  401879:	85 d2                	test   %edx,%edx
  40187b:	74 13                	je     401890 <__dyn_tls_dtor+0x20>
  40187d:	b8 01 00 00 00       	mov    $0x1,%eax
  401882:	48 83 c4 28          	add    $0x28,%rsp
  401886:	c3                   	retq   
  401887:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40188e:	00 00 
  401890:	e8 5b 0d 00 00       	callq  4025f0 <__mingw_TLScallback>
  401895:	b8 01 00 00 00       	mov    $0x1,%eax
  40189a:	48 83 c4 28          	add    $0x28,%rsp
  40189e:	c3                   	retq   
  40189f:	90                   	nop

00000000004018a0 <__dyn_tls_init>:
  4018a0:	56                   	push   %rsi
  4018a1:	53                   	push   %rbx
  4018a2:	48 83 ec 28          	sub    $0x28,%rsp
  4018a6:	48 8b 05 83 2a 00 00 	mov    0x2a83(%rip),%rax        # 404330 <.refptr._CRT_MT>
  4018ad:	83 38 02             	cmpl   $0x2,(%rax)
  4018b0:	74 06                	je     4018b8 <__dyn_tls_init+0x18>
  4018b2:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
  4018b8:	83 fa 02             	cmp    $0x2,%edx
  4018bb:	74 13                	je     4018d0 <__dyn_tls_init+0x30>
  4018bd:	83 fa 01             	cmp    $0x1,%edx
  4018c0:	74 4e                	je     401910 <__dyn_tls_init+0x70>
  4018c2:	b8 01 00 00 00       	mov    $0x1,%eax
  4018c7:	48 83 c4 28          	add    $0x28,%rsp
  4018cb:	5b                   	pop    %rbx
  4018cc:	5e                   	pop    %rsi
  4018cd:	c3                   	retq   
  4018ce:	66 90                	xchg   %ax,%ax
  4018d0:	48 8d 1d 89 77 00 00 	lea    0x7789(%rip),%rbx        # 409060 <__xd_z>
  4018d7:	48 8d 35 82 77 00 00 	lea    0x7782(%rip),%rsi        # 409060 <__xd_z>
  4018de:	48 39 de             	cmp    %rbx,%rsi
  4018e1:	74 df                	je     4018c2 <__dyn_tls_init+0x22>
  4018e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4018e8:	48 8b 03             	mov    (%rbx),%rax
  4018eb:	48 85 c0             	test   %rax,%rax
  4018ee:	74 02                	je     4018f2 <__dyn_tls_init+0x52>
  4018f0:	ff d0                	callq  *%rax
  4018f2:	48 83 c3 08          	add    $0x8,%rbx
  4018f6:	48 39 de             	cmp    %rbx,%rsi
  4018f9:	75 ed                	jne    4018e8 <__dyn_tls_init+0x48>
  4018fb:	b8 01 00 00 00       	mov    $0x1,%eax
  401900:	48 83 c4 28          	add    $0x28,%rsp
  401904:	5b                   	pop    %rbx
  401905:	5e                   	pop    %rsi
  401906:	c3                   	retq   
  401907:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40190e:	00 00 
  401910:	e8 db 0c 00 00       	callq  4025f0 <__mingw_TLScallback>
  401915:	b8 01 00 00 00       	mov    $0x1,%eax
  40191a:	48 83 c4 28          	add    $0x28,%rsp
  40191e:	5b                   	pop    %rbx
  40191f:	5e                   	pop    %rsi
  401920:	c3                   	retq   
  401921:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401928:	00 00 00 00 
  40192c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401930 <__tlregdtor>:
  401930:	31 c0                	xor    %eax,%eax
  401932:	c3                   	retq   
  401933:	90                   	nop
  401934:	90                   	nop
  401935:	90                   	nop
  401936:	90                   	nop
  401937:	90                   	nop
  401938:	90                   	nop
  401939:	90                   	nop
  40193a:	90                   	nop
  40193b:	90                   	nop
  40193c:	90                   	nop
  40193d:	90                   	nop
  40193e:	90                   	nop
  40193f:	90                   	nop

0000000000401940 <_matherr>:
  401940:	56                   	push   %rsi
  401941:	53                   	push   %rbx
  401942:	48 83 ec 78          	sub    $0x78,%rsp
  401946:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
  40194b:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
  401950:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
  401956:	83 39 06             	cmpl   $0x6,(%rcx)
  401959:	0f 87 cd 00 00 00    	ja     401a2c <_matherr+0xec>
  40195f:	8b 01                	mov    (%rcx),%eax
  401961:	48 8d 15 3c 28 00 00 	lea    0x283c(%rip),%rdx        # 4041a4 <.rdata+0x124>
  401968:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  40196c:	48 01 d0             	add    %rdx,%rax
  40196f:	ff e0                	jmpq   *%rax
  401971:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401978:	48 8d 1d d7 27 00 00 	lea    0x27d7(%rip),%rbx        # 404156 <.rdata+0xd6>
  40197f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
  401985:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
  40198a:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
  40198f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
  401993:	b9 02 00 00 00       	mov    $0x2,%ecx
  401998:	e8 f3 11 00 00       	callq  402b90 <__acrt_iob_func>
  40199d:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
  4019a4:	49 89 d8             	mov    %rbx,%r8
  4019a7:	48 8d 15 ca 27 00 00 	lea    0x27ca(%rip),%rdx        # 404178 <.rdata+0xf8>
  4019ae:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
  4019b4:	48 89 c1             	mov    %rax,%rcx
  4019b7:	49 89 f1             	mov    %rsi,%r9
  4019ba:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
  4019c0:	e8 63 11 00 00       	callq  402b28 <fprintf>
  4019c5:	90                   	nop
  4019c6:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
  4019cb:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
  4019d0:	31 c0                	xor    %eax,%eax
  4019d2:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
  4019d8:	48 83 c4 78          	add    $0x78,%rsp
  4019dc:	5b                   	pop    %rbx
  4019dd:	5e                   	pop    %rsi
  4019de:	c3                   	retq   
  4019df:	90                   	nop
  4019e0:	48 8d 1d a9 26 00 00 	lea    0x26a9(%rip),%rbx        # 404090 <.rdata+0x10>
  4019e7:	eb 96                	jmp    40197f <_matherr+0x3f>
  4019e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4019f0:	48 8d 1d d9 26 00 00 	lea    0x26d9(%rip),%rbx        # 4040d0 <.rdata+0x50>
  4019f7:	eb 86                	jmp    40197f <_matherr+0x3f>
  4019f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401a00:	48 8d 1d a9 26 00 00 	lea    0x26a9(%rip),%rbx        # 4040b0 <.rdata+0x30>
  401a07:	e9 73 ff ff ff       	jmpq   40197f <_matherr+0x3f>
  401a0c:	0f 1f 40 00          	nopl   0x0(%rax)
  401a10:	48 8d 1d 09 27 00 00 	lea    0x2709(%rip),%rbx        # 404120 <.rdata+0xa0>
  401a17:	e9 63 ff ff ff       	jmpq   40197f <_matherr+0x3f>
  401a1c:	0f 1f 40 00          	nopl   0x0(%rax)
  401a20:	48 8d 1d d1 26 00 00 	lea    0x26d1(%rip),%rbx        # 4040f8 <.rdata+0x78>
  401a27:	e9 53 ff ff ff       	jmpq   40197f <_matherr+0x3f>
  401a2c:	48 8d 1d 4d 26 00 00 	lea    0x264d(%rip),%rbx        # 404080 <.rdata>
  401a33:	e9 47 ff ff ff       	jmpq   40197f <_matherr+0x3f>
  401a38:	90                   	nop
  401a39:	90                   	nop
  401a3a:	90                   	nop
  401a3b:	90                   	nop
  401a3c:	90                   	nop
  401a3d:	90                   	nop
  401a3e:	90                   	nop
  401a3f:	90                   	nop

0000000000401a40 <_fpreset>:
  401a40:	db e3                	fninit 
  401a42:	c3                   	retq   
  401a43:	90                   	nop
  401a44:	90                   	nop
  401a45:	90                   	nop
  401a46:	90                   	nop
  401a47:	90                   	nop
  401a48:	90                   	nop
  401a49:	90                   	nop
  401a4a:	90                   	nop
  401a4b:	90                   	nop
  401a4c:	90                   	nop
  401a4d:	90                   	nop
  401a4e:	90                   	nop
  401a4f:	90                   	nop

0000000000401a50 <__report_error>:
  401a50:	41 54                	push   %r12
  401a52:	53                   	push   %rbx
  401a53:	48 83 ec 38          	sub    $0x38,%rsp
  401a57:	49 89 cc             	mov    %rcx,%r12
  401a5a:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
  401a5f:	b9 02 00 00 00       	mov    $0x2,%ecx
  401a64:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
  401a69:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
  401a6e:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
  401a73:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401a78:	e8 13 11 00 00       	callq  402b90 <__acrt_iob_func>
  401a7d:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
  401a83:	ba 01 00 00 00       	mov    $0x1,%edx
  401a88:	48 8d 0d 31 27 00 00 	lea    0x2731(%rip),%rcx        # 4041c0 <.rdata>
  401a8f:	49 89 c1             	mov    %rax,%r9
  401a92:	e8 81 10 00 00       	callq  402b18 <fwrite>
  401a97:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
  401a9c:	b9 02 00 00 00       	mov    $0x2,%ecx
  401aa1:	e8 ea 10 00 00       	callq  402b90 <__acrt_iob_func>
  401aa6:	4c 89 e2             	mov    %r12,%rdx
  401aa9:	48 89 c1             	mov    %rax,%rcx
  401aac:	49 89 d8             	mov    %rbx,%r8
  401aaf:	e8 2c 10 00 00       	callq  402ae0 <vfprintf>
  401ab4:	e8 87 10 00 00       	callq  402b40 <abort>
  401ab9:	90                   	nop
  401aba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401ac0 <__write_memory.part.0>:
  401ac0:	41 54                	push   %r12
  401ac2:	55                   	push   %rbp
  401ac3:	57                   	push   %rdi
  401ac4:	56                   	push   %rsi
  401ac5:	53                   	push   %rbx
  401ac6:	48 83 ec 50          	sub    $0x50,%rsp
  401aca:	48 63 35 43 5b 00 00 	movslq 0x5b43(%rip),%rsi        # 407614 <maxSections>
  401ad1:	49 89 cc             	mov    %rcx,%r12
  401ad4:	48 89 d7             	mov    %rdx,%rdi
  401ad7:	4c 89 c3             	mov    %r8,%rbx
  401ada:	85 f6                	test   %esi,%esi
  401adc:	0f 8e 5e 01 00 00    	jle    401c40 <__write_memory.part.0+0x180>
  401ae2:	48 8b 05 2f 5b 00 00 	mov    0x5b2f(%rip),%rax        # 407618 <the_secs>
  401ae9:	31 c9                	xor    %ecx,%ecx
  401aeb:	48 83 c0 18          	add    $0x18,%rax
  401aef:	90                   	nop
  401af0:	48 8b 10             	mov    (%rax),%rdx
  401af3:	49 39 d4             	cmp    %rdx,%r12
  401af6:	72 14                	jb     401b0c <__write_memory.part.0+0x4c>
  401af8:	4c 8b 40 08          	mov    0x8(%rax),%r8
  401afc:	45 8b 40 08          	mov    0x8(%r8),%r8d
  401b00:	4c 01 c2             	add    %r8,%rdx
  401b03:	49 39 d4             	cmp    %rdx,%r12
  401b06:	0f 82 85 00 00 00    	jb     401b91 <__write_memory.part.0+0xd1>
  401b0c:	ff c1                	inc    %ecx
  401b0e:	48 83 c0 28          	add    $0x28,%rax
  401b12:	39 f1                	cmp    %esi,%ecx
  401b14:	75 da                	jne    401af0 <__write_memory.part.0+0x30>
  401b16:	4c 89 e1             	mov    %r12,%rcx
  401b19:	e8 e2 0c 00 00       	callq  402800 <__mingw_GetSectionForAddress>
  401b1e:	48 89 c5             	mov    %rax,%rbp
  401b21:	48 85 c0             	test   %rax,%rax
  401b24:	0f 84 58 01 00 00    	je     401c82 <__write_memory.part.0+0x1c2>
  401b2a:	48 8b 05 e7 5a 00 00 	mov    0x5ae7(%rip),%rax        # 407618 <the_secs>
  401b31:	48 8d 34 b6          	lea    (%rsi,%rsi,4),%rsi
  401b35:	48 c1 e6 03          	shl    $0x3,%rsi
  401b39:	48 01 f0             	add    %rsi,%rax
  401b3c:	48 89 68 20          	mov    %rbp,0x20(%rax)
  401b40:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  401b46:	e8 d5 0d 00 00       	callq  402920 <_GetPEImageBase>
  401b4b:	8b 4d 0c             	mov    0xc(%rbp),%ecx
  401b4e:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  401b53:	41 b8 30 00 00 00    	mov    $0x30,%r8d
  401b59:	48 01 c1             	add    %rax,%rcx
  401b5c:	48 8b 05 b5 5a 00 00 	mov    0x5ab5(%rip),%rax        # 407618 <the_secs>
  401b63:	48 89 4c 30 18       	mov    %rcx,0x18(%rax,%rsi,1)
  401b68:	ff 15 16 67 00 00    	callq  *0x6716(%rip)        # 408284 <__imp_VirtualQuery>
  401b6e:	48 85 c0             	test   %rax,%rax
  401b71:	0f 84 1a 01 00 00    	je     401c91 <__write_memory.part.0+0x1d1>
  401b77:	8b 44 24 44          	mov    0x44(%rsp),%eax
  401b7b:	8d 50 c0             	lea    -0x40(%rax),%edx
  401b7e:	83 e2 bf             	and    $0xffffffbf,%edx
  401b81:	74 08                	je     401b8b <__write_memory.part.0+0xcb>
  401b83:	83 e8 04             	sub    $0x4,%eax
  401b86:	83 e0 fb             	and    $0xfffffffb,%eax
  401b89:	75 6d                	jne    401bf8 <__write_memory.part.0+0x138>
  401b8b:	ff 05 83 5a 00 00    	incl   0x5a83(%rip)        # 407614 <maxSections>
  401b91:	83 fb 08             	cmp    $0x8,%ebx
  401b94:	73 2a                	jae    401bc0 <__write_memory.part.0+0x100>
  401b96:	f6 c3 04             	test   $0x4,%bl
  401b99:	0f 85 b1 00 00 00    	jne    401c50 <__write_memory.part.0+0x190>
  401b9f:	85 db                	test   %ebx,%ebx
  401ba1:	74 10                	je     401bb3 <__write_memory.part.0+0xf3>
  401ba3:	0f b6 07             	movzbl (%rdi),%eax
  401ba6:	41 88 04 24          	mov    %al,(%r12)
  401baa:	f6 c3 02             	test   $0x2,%bl
  401bad:	0f 85 bd 00 00 00    	jne    401c70 <__write_memory.part.0+0x1b0>
  401bb3:	48 83 c4 50          	add    $0x50,%rsp
  401bb7:	5b                   	pop    %rbx
  401bb8:	5e                   	pop    %rsi
  401bb9:	5f                   	pop    %rdi
  401bba:	5d                   	pop    %rbp
  401bbb:	41 5c                	pop    %r12
  401bbd:	c3                   	retq   
  401bbe:	66 90                	xchg   %ax,%ax
  401bc0:	89 d8                	mov    %ebx,%eax
  401bc2:	ff cb                	dec    %ebx
  401bc4:	48 8b 54 07 f8       	mov    -0x8(%rdi,%rax,1),%rdx
  401bc9:	49 89 54 04 f8       	mov    %rdx,-0x8(%r12,%rax,1)
  401bce:	83 fb 08             	cmp    $0x8,%ebx
  401bd1:	72 e0                	jb     401bb3 <__write_memory.part.0+0xf3>
  401bd3:	83 e3 f8             	and    $0xfffffff8,%ebx
  401bd6:	31 c0                	xor    %eax,%eax
  401bd8:	89 c2                	mov    %eax,%edx
  401bda:	83 c0 08             	add    $0x8,%eax
  401bdd:	48 8b 0c 17          	mov    (%rdi,%rdx,1),%rcx
  401be1:	49 89 0c 14          	mov    %rcx,(%r12,%rdx,1)
  401be5:	39 d8                	cmp    %ebx,%eax
  401be7:	72 ef                	jb     401bd8 <__write_memory.part.0+0x118>
  401be9:	48 83 c4 50          	add    $0x50,%rsp
  401bed:	5b                   	pop    %rbx
  401bee:	5e                   	pop    %rsi
  401bef:	5f                   	pop    %rdi
  401bf0:	5d                   	pop    %rbp
  401bf1:	41 5c                	pop    %r12
  401bf3:	c3                   	retq   
  401bf4:	0f 1f 40 00          	nopl   0x0(%rax)
  401bf8:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  401bfd:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  401c02:	41 b8 40 00 00 00    	mov    $0x40,%r8d
  401c08:	48 03 35 09 5a 00 00 	add    0x5a09(%rip),%rsi        # 407618 <the_secs>
  401c0f:	48 89 4e 08          	mov    %rcx,0x8(%rsi)
  401c13:	49 89 f1             	mov    %rsi,%r9
  401c16:	48 89 56 10          	mov    %rdx,0x10(%rsi)
  401c1a:	ff 15 5c 66 00 00    	callq  *0x665c(%rip)        # 40827c <__imp_VirtualProtect>
  401c20:	85 c0                	test   %eax,%eax
  401c22:	0f 85 63 ff ff ff    	jne    401b8b <__write_memory.part.0+0xcb>
  401c28:	ff 15 ce 65 00 00    	callq  *0x65ce(%rip)        # 4081fc <__imp_GetLastError>
  401c2e:	48 8d 0d 03 26 00 00 	lea    0x2603(%rip),%rcx        # 404238 <.rdata+0x78>
  401c35:	89 c2                	mov    %eax,%edx
  401c37:	e8 14 fe ff ff       	callq  401a50 <__report_error>
  401c3c:	0f 1f 40 00          	nopl   0x0(%rax)
  401c40:	31 f6                	xor    %esi,%esi
  401c42:	e9 cf fe ff ff       	jmpq   401b16 <__write_memory.part.0+0x56>
  401c47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401c4e:	00 00 
  401c50:	8b 07                	mov    (%rdi),%eax
  401c52:	89 db                	mov    %ebx,%ebx
  401c54:	41 89 04 24          	mov    %eax,(%r12)
  401c58:	8b 44 1f fc          	mov    -0x4(%rdi,%rbx,1),%eax
  401c5c:	41 89 44 1c fc       	mov    %eax,-0x4(%r12,%rbx,1)
  401c61:	e9 4d ff ff ff       	jmpq   401bb3 <__write_memory.part.0+0xf3>
  401c66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401c6d:	00 00 00 
  401c70:	89 db                	mov    %ebx,%ebx
  401c72:	0f b7 44 1f fe       	movzwl -0x2(%rdi,%rbx,1),%eax
  401c77:	66 41 89 44 1c fe    	mov    %ax,-0x2(%r12,%rbx,1)
  401c7d:	e9 31 ff ff ff       	jmpq   401bb3 <__write_memory.part.0+0xf3>
  401c82:	4c 89 e2             	mov    %r12,%rdx
  401c85:	48 8d 0d 54 25 00 00 	lea    0x2554(%rip),%rcx        # 4041e0 <.rdata+0x20>
  401c8c:	e8 bf fd ff ff       	callq  401a50 <__report_error>
  401c91:	48 8b 05 80 59 00 00 	mov    0x5980(%rip),%rax        # 407618 <the_secs>
  401c98:	8b 55 08             	mov    0x8(%rbp),%edx
  401c9b:	48 8d 0d 5e 25 00 00 	lea    0x255e(%rip),%rcx        # 404200 <.rdata+0x40>
  401ca2:	4c 8b 44 30 18       	mov    0x18(%rax,%rsi,1),%r8
  401ca7:	e8 a4 fd ff ff       	callq  401a50 <__report_error>
  401cac:	90                   	nop
  401cad:	0f 1f 00             	nopl   (%rax)

0000000000401cb0 <_pei386_runtime_relocator>:
  401cb0:	55                   	push   %rbp
  401cb1:	41 57                	push   %r15
  401cb3:	41 56                	push   %r14
  401cb5:	41 55                	push   %r13
  401cb7:	41 54                	push   %r12
  401cb9:	57                   	push   %rdi
  401cba:	56                   	push   %rsi
  401cbb:	53                   	push   %rbx
  401cbc:	48 83 ec 38          	sub    $0x38,%rsp
  401cc0:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  401cc7:	00 
  401cc8:	8b 35 42 59 00 00    	mov    0x5942(%rip),%esi        # 407610 <was_init.93799>
  401cce:	85 f6                	test   %esi,%esi
  401cd0:	74 16                	je     401ce8 <_pei386_runtime_relocator+0x38>
  401cd2:	48 8d 65 b8          	lea    -0x48(%rbp),%rsp
  401cd6:	5b                   	pop    %rbx
  401cd7:	5e                   	pop    %rsi
  401cd8:	5f                   	pop    %rdi
  401cd9:	41 5c                	pop    %r12
  401cdb:	41 5d                	pop    %r13
  401cdd:	41 5e                	pop    %r14
  401cdf:	41 5f                	pop    %r15
  401ce1:	5d                   	pop    %rbp
  401ce2:	c3                   	retq   
  401ce3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401ce8:	c7 05 1e 59 00 00 01 	movl   $0x1,0x591e(%rip)        # 407610 <was_init.93799>
  401cef:	00 00 00 
  401cf2:	e8 89 0b 00 00       	callq  402880 <__mingw_GetSectionCount>
  401cf7:	48 98                	cltq   
  401cf9:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401cfd:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
  401d04:	00 
  401d05:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401d09:	e8 92 0d 00 00       	callq  402aa0 <___chkstk_ms>
  401d0e:	4c 8b 2d 4b 26 00 00 	mov    0x264b(%rip),%r13        # 404360 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
  401d15:	48 8b 1d 54 26 00 00 	mov    0x2654(%rip),%rbx        # 404370 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
  401d1c:	c7 05 ee 58 00 00 00 	movl   $0x0,0x58ee(%rip)        # 407614 <maxSections>
  401d23:	00 00 00 
  401d26:	48 29 c4             	sub    %rax,%rsp
  401d29:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  401d2e:	48 89 05 e3 58 00 00 	mov    %rax,0x58e3(%rip)        # 407618 <the_secs>
  401d35:	4c 89 e8             	mov    %r13,%rax
  401d38:	48 29 d8             	sub    %rbx,%rax
  401d3b:	48 83 f8 07          	cmp    $0x7,%rax
  401d3f:	7e 91                	jle    401cd2 <_pei386_runtime_relocator+0x22>
  401d41:	8b 13                	mov    (%rbx),%edx
  401d43:	48 83 f8 0b          	cmp    $0xb,%rax
  401d47:	0f 8f 4b 01 00 00    	jg     401e98 <_pei386_runtime_relocator+0x1e8>
  401d4d:	85 d2                	test   %edx,%edx
  401d4f:	0f 85 cb 01 00 00    	jne    401f20 <_pei386_runtime_relocator+0x270>
  401d55:	8b 43 04             	mov    0x4(%rbx),%eax
  401d58:	85 c0                	test   %eax,%eax
  401d5a:	0f 85 c0 01 00 00    	jne    401f20 <_pei386_runtime_relocator+0x270>
  401d60:	8b 53 08             	mov    0x8(%rbx),%edx
  401d63:	83 fa 01             	cmp    $0x1,%edx
  401d66:	0f 85 1c 02 00 00    	jne    401f88 <_pei386_runtime_relocator+0x2d8>
  401d6c:	48 83 c3 0c          	add    $0xc,%rbx
  401d70:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  401d74:	4c 8b 35 15 26 00 00 	mov    0x2615(%rip),%r14        # 404390 <.refptr.__image_base__>
  401d7b:	49 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%r15
  401d82:	ff ff ff 
  401d85:	4c 39 eb             	cmp    %r13,%rbx
  401d88:	72 3f                	jb     401dc9 <_pei386_runtime_relocator+0x119>
  401d8a:	e9 43 ff ff ff       	jmpq   401cd2 <_pei386_runtime_relocator+0x22>
  401d8f:	90                   	nop
  401d90:	44 0f b6 01          	movzbl (%rcx),%r8d
  401d94:	49 89 fc             	mov    %rdi,%r12
  401d97:	4d 89 c2             	mov    %r8,%r10
  401d9a:	49 81 ca 00 ff ff ff 	or     $0xffffffffffffff00,%r10
  401da1:	45 84 c0             	test   %r8b,%r8b
  401da4:	4d 0f 48 c2          	cmovs  %r10,%r8
  401da8:	49 29 d0             	sub    %rdx,%r8
  401dab:	48 89 fa             	mov    %rdi,%rdx
  401dae:	4d 01 c8             	add    %r9,%r8
  401db1:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  401db5:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  401dbb:	e8 00 fd ff ff       	callq  401ac0 <__write_memory.part.0>
  401dc0:	48 83 c3 0c          	add    $0xc,%rbx
  401dc4:	4c 39 eb             	cmp    %r13,%rbx
  401dc7:	73 77                	jae    401e40 <_pei386_runtime_relocator+0x190>
  401dc9:	8b 13                	mov    (%rbx),%edx
  401dcb:	8b 4b 04             	mov    0x4(%rbx),%ecx
  401dce:	44 0f b6 43 08       	movzbl 0x8(%rbx),%r8d
  401dd3:	4c 01 f2             	add    %r14,%rdx
  401dd6:	4c 01 f1             	add    %r14,%rcx
  401dd9:	4c 8b 0a             	mov    (%rdx),%r9
  401ddc:	41 83 f8 20          	cmp    $0x20,%r8d
  401de0:	0f 84 0a 01 00 00    	je     401ef0 <_pei386_runtime_relocator+0x240>
  401de6:	0f 87 d4 00 00 00    	ja     401ec0 <_pei386_runtime_relocator+0x210>
  401dec:	41 83 f8 08          	cmp    $0x8,%r8d
  401df0:	74 9e                	je     401d90 <_pei386_runtime_relocator+0xe0>
  401df2:	41 83 f8 10          	cmp    $0x10,%r8d
  401df6:	0f 85 75 01 00 00    	jne    401f71 <_pei386_runtime_relocator+0x2c1>
  401dfc:	44 0f b7 01          	movzwl (%rcx),%r8d
  401e00:	49 89 fc             	mov    %rdi,%r12
  401e03:	4d 89 c2             	mov    %r8,%r10
  401e06:	49 81 ca 00 00 ff ff 	or     $0xffffffffffff0000,%r10
  401e0d:	66 45 85 c0          	test   %r8w,%r8w
  401e11:	4d 0f 48 c2          	cmovs  %r10,%r8
  401e15:	48 83 c3 0c          	add    $0xc,%rbx
  401e19:	49 29 d0             	sub    %rdx,%r8
  401e1c:	48 89 fa             	mov    %rdi,%rdx
  401e1f:	4d 01 c8             	add    %r9,%r8
  401e22:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  401e26:	41 b8 02 00 00 00    	mov    $0x2,%r8d
  401e2c:	e8 8f fc ff ff       	callq  401ac0 <__write_memory.part.0>
  401e31:	4c 39 eb             	cmp    %r13,%rbx
  401e34:	72 93                	jb     401dc9 <_pei386_runtime_relocator+0x119>
  401e36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401e3d:	00 00 00 
  401e40:	8b 05 ce 57 00 00    	mov    0x57ce(%rip),%eax        # 407614 <maxSections>
  401e46:	85 c0                	test   %eax,%eax
  401e48:	0f 8e 84 fe ff ff    	jle    401cd2 <_pei386_runtime_relocator+0x22>
  401e4e:	48 8b 3d 27 64 00 00 	mov    0x6427(%rip),%rdi        # 40827c <__imp_VirtualProtect>
  401e55:	31 db                	xor    %ebx,%ebx
  401e57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401e5e:	00 00 
  401e60:	48 8b 05 b1 57 00 00 	mov    0x57b1(%rip),%rax        # 407618 <the_secs>
  401e67:	48 01 d8             	add    %rbx,%rax
  401e6a:	44 8b 00             	mov    (%rax),%r8d
  401e6d:	45 85 c0             	test   %r8d,%r8d
  401e70:	74 0d                	je     401e7f <_pei386_runtime_relocator+0x1cf>
  401e72:	48 8b 50 10          	mov    0x10(%rax),%rdx
  401e76:	48 8b 48 08          	mov    0x8(%rax),%rcx
  401e7a:	4d 89 e1             	mov    %r12,%r9
  401e7d:	ff d7                	callq  *%rdi
  401e7f:	ff c6                	inc    %esi
  401e81:	48 83 c3 28          	add    $0x28,%rbx
  401e85:	3b 35 89 57 00 00    	cmp    0x5789(%rip),%esi        # 407614 <maxSections>
  401e8b:	7c d3                	jl     401e60 <_pei386_runtime_relocator+0x1b0>
  401e8d:	e9 40 fe ff ff       	jmpq   401cd2 <_pei386_runtime_relocator+0x22>
  401e92:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401e98:	85 d2                	test   %edx,%edx
  401e9a:	0f 85 80 00 00 00    	jne    401f20 <_pei386_runtime_relocator+0x270>
  401ea0:	8b 43 04             	mov    0x4(%rbx),%eax
  401ea3:	89 c7                	mov    %eax,%edi
  401ea5:	0b 7b 08             	or     0x8(%rbx),%edi
  401ea8:	0f 85 aa fe ff ff    	jne    401d58 <_pei386_runtime_relocator+0xa8>
  401eae:	8b 53 0c             	mov    0xc(%rbx),%edx
  401eb1:	48 83 c3 0c          	add    $0xc,%rbx
  401eb5:	e9 93 fe ff ff       	jmpq   401d4d <_pei386_runtime_relocator+0x9d>
  401eba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401ec0:	41 83 f8 40          	cmp    $0x40,%r8d
  401ec4:	0f 85 a7 00 00 00    	jne    401f71 <_pei386_runtime_relocator+0x2c1>
  401eca:	48 8b 01             	mov    (%rcx),%rax
  401ecd:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  401ed3:	49 89 fc             	mov    %rdi,%r12
  401ed6:	48 29 d0             	sub    %rdx,%rax
  401ed9:	48 89 fa             	mov    %rdi,%rdx
  401edc:	4c 01 c8             	add    %r9,%rax
  401edf:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  401ee3:	e8 d8 fb ff ff       	callq  401ac0 <__write_memory.part.0>
  401ee8:	e9 d3 fe ff ff       	jmpq   401dc0 <_pei386_runtime_relocator+0x110>
  401eed:	0f 1f 00             	nopl   (%rax)
  401ef0:	8b 01                	mov    (%rcx),%eax
  401ef2:	49 89 fc             	mov    %rdi,%r12
  401ef5:	49 89 c0             	mov    %rax,%r8
  401ef8:	4c 09 f8             	or     %r15,%rax
  401efb:	45 85 c0             	test   %r8d,%r8d
  401efe:	49 0f 49 c0          	cmovns %r8,%rax
  401f02:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  401f08:	48 29 d0             	sub    %rdx,%rax
  401f0b:	48 89 fa             	mov    %rdi,%rdx
  401f0e:	4c 01 c8             	add    %r9,%rax
  401f11:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  401f15:	e8 a6 fb ff ff       	callq  401ac0 <__write_memory.part.0>
  401f1a:	e9 a1 fe ff ff       	jmpq   401dc0 <_pei386_runtime_relocator+0x110>
  401f1f:	90                   	nop
  401f20:	4c 39 eb             	cmp    %r13,%rbx
  401f23:	0f 83 a9 fd ff ff    	jae    401cd2 <_pei386_runtime_relocator+0x22>
  401f29:	49 ff cd             	dec    %r13
  401f2c:	48 8b 3d 5d 24 00 00 	mov    0x245d(%rip),%rdi        # 404390 <.refptr.__image_base__>
  401f33:	4c 8d 65 a8          	lea    -0x58(%rbp),%r12
  401f37:	49 29 dd             	sub    %rbx,%r13
  401f3a:	49 c1 ed 03          	shr    $0x3,%r13
  401f3e:	4e 8d 6c eb 08       	lea    0x8(%rbx,%r13,8),%r13
  401f43:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401f48:	8b 4b 04             	mov    0x4(%rbx),%ecx
  401f4b:	8b 03                	mov    (%rbx),%eax
  401f4d:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  401f53:	4c 89 e2             	mov    %r12,%rdx
  401f56:	48 83 c3 08          	add    $0x8,%rbx
  401f5a:	48 01 f9             	add    %rdi,%rcx
  401f5d:	03 01                	add    (%rcx),%eax
  401f5f:	89 45 a8             	mov    %eax,-0x58(%rbp)
  401f62:	e8 59 fb ff ff       	callq  401ac0 <__write_memory.part.0>
  401f67:	4c 39 eb             	cmp    %r13,%rbx
  401f6a:	75 dc                	jne    401f48 <_pei386_runtime_relocator+0x298>
  401f6c:	e9 cf fe ff ff       	jmpq   401e40 <_pei386_runtime_relocator+0x190>
  401f71:	44 89 c2             	mov    %r8d,%edx
  401f74:	48 8d 0d 1d 23 00 00 	lea    0x231d(%rip),%rcx        # 404298 <.rdata+0xd8>
  401f7b:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
  401f82:	00 
  401f83:	e8 c8 fa ff ff       	callq  401a50 <__report_error>
  401f88:	48 8d 0d d1 22 00 00 	lea    0x22d1(%rip),%rcx        # 404260 <.rdata+0xa0>
  401f8f:	e8 bc fa ff ff       	callq  401a50 <__report_error>
  401f94:	90                   	nop
  401f95:	90                   	nop
  401f96:	90                   	nop
  401f97:	90                   	nop
  401f98:	90                   	nop
  401f99:	90                   	nop
  401f9a:	90                   	nop
  401f9b:	90                   	nop
  401f9c:	90                   	nop
  401f9d:	90                   	nop
  401f9e:	90                   	nop
  401f9f:	90                   	nop

0000000000401fa0 <__mingw_raise_matherr>:
  401fa0:	48 83 ec 58          	sub    $0x58,%rsp
  401fa4:	48 8b 05 75 56 00 00 	mov    0x5675(%rip),%rax        # 407620 <stUserMathErr>
  401fab:	48 85 c0             	test   %rax,%rax
  401fae:	74 2c                	je     401fdc <__mingw_raise_matherr+0x3c>
  401fb0:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
  401fb7:	00 00 
  401fb9:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
  401fbd:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  401fc2:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  401fc7:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
  401fcd:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
  401fd3:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
  401fd9:	ff d0                	callq  *%rax
  401fdb:	90                   	nop
  401fdc:	48 83 c4 58          	add    $0x58,%rsp
  401fe0:	c3                   	retq   
  401fe1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401fe8:	00 00 00 00 
  401fec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401ff0 <__mingw_setusermatherr>:
  401ff0:	48 89 0d 29 56 00 00 	mov    %rcx,0x5629(%rip)        # 407620 <stUserMathErr>
  401ff7:	e9 6c 0b 00 00       	jmpq   402b68 <__setusermatherr>
  401ffc:	90                   	nop
  401ffd:	90                   	nop
  401ffe:	90                   	nop
  401fff:	90                   	nop

0000000000402000 <__mingw_SEH_error_handler>:
  402000:	48 83 ec 28          	sub    $0x28,%rsp
  402004:	8b 01                	mov    (%rcx),%eax
  402006:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  40200b:	0f 87 2f 01 00 00    	ja     402140 <__mingw_SEH_error_handler+0x140>
  402011:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
  402016:	76 58                	jbe    402070 <__mingw_SEH_error_handler+0x70>
  402018:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
  40201d:	83 f8 09             	cmp    $0x9,%eax
  402020:	77 3a                	ja     40205c <__mingw_SEH_error_handler+0x5c>
  402022:	48 8d 15 a7 22 00 00 	lea    0x22a7(%rip),%rdx        # 4042d0 <.rdata>
  402029:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  40202d:	48 01 d0             	add    %rdx,%rax
  402030:	ff e0                	jmpq   *%rax
  402032:	31 d2                	xor    %edx,%edx
  402034:	b9 08 00 00 00       	mov    $0x8,%ecx
  402039:	e8 ba 0a 00 00       	callq  402af8 <signal>
  40203e:	48 83 f8 01          	cmp    $0x1,%rax
  402042:	0f 85 a5 00 00 00    	jne    4020ed <__mingw_SEH_error_handler+0xed>
  402048:	ba 01 00 00 00       	mov    $0x1,%edx
  40204d:	b9 08 00 00 00       	mov    $0x8,%ecx
  402052:	e8 a1 0a 00 00       	callq  402af8 <signal>
  402057:	e8 e4 f9 ff ff       	callq  401a40 <_fpreset>
  40205c:	45 31 c0             	xor    %r8d,%r8d
  40205f:	44 89 c0             	mov    %r8d,%eax
  402062:	48 83 c4 28          	add    $0x28,%rsp
  402066:	c3                   	retq   
  402067:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40206e:	00 00 
  402070:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  402075:	0f 84 95 00 00 00    	je     402110 <__mingw_SEH_error_handler+0x110>
  40207b:	76 46                	jbe    4020c3 <__mingw_SEH_error_handler+0xc3>
  40207d:	45 31 c0             	xor    %r8d,%r8d
  402080:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  402085:	74 d8                	je     40205f <__mingw_SEH_error_handler+0x5f>
  402087:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  40208c:	0f 85 ae 00 00 00    	jne    402140 <__mingw_SEH_error_handler+0x140>
  402092:	31 d2                	xor    %edx,%edx
  402094:	b9 04 00 00 00       	mov    $0x4,%ecx
  402099:	e8 5a 0a 00 00       	callq  402af8 <signal>
  40209e:	48 83 f8 01          	cmp    $0x1,%rax
  4020a2:	0f 84 b8 00 00 00    	je     402160 <__mingw_SEH_error_handler+0x160>
  4020a8:	48 85 c0             	test   %rax,%rax
  4020ab:	0f 84 9f 00 00 00    	je     402150 <__mingw_SEH_error_handler+0x150>
  4020b1:	b9 04 00 00 00       	mov    $0x4,%ecx
  4020b6:	ff d0                	callq  *%rax
  4020b8:	45 31 c0             	xor    %r8d,%r8d
  4020bb:	44 89 c0             	mov    %r8d,%eax
  4020be:	48 83 c4 28          	add    $0x28,%rsp
  4020c2:	c3                   	retq   
  4020c3:	45 31 c0             	xor    %r8d,%r8d
  4020c6:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  4020cb:	41 0f 95 c0          	setne  %r8b
  4020cf:	44 89 c0             	mov    %r8d,%eax
  4020d2:	48 83 c4 28          	add    $0x28,%rsp
  4020d6:	c3                   	retq   
  4020d7:	31 d2                	xor    %edx,%edx
  4020d9:	b9 08 00 00 00       	mov    $0x8,%ecx
  4020de:	e8 15 0a 00 00       	callq  402af8 <signal>
  4020e3:	48 83 f8 01          	cmp    $0x1,%rax
  4020e7:	0f 84 93 00 00 00    	je     402180 <__mingw_SEH_error_handler+0x180>
  4020ed:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  4020f3:	48 85 c0             	test   %rax,%rax
  4020f6:	0f 84 63 ff ff ff    	je     40205f <__mingw_SEH_error_handler+0x5f>
  4020fc:	b9 08 00 00 00       	mov    $0x8,%ecx
  402101:	ff d0                	callq  *%rax
  402103:	45 31 c0             	xor    %r8d,%r8d
  402106:	e9 54 ff ff ff       	jmpq   40205f <__mingw_SEH_error_handler+0x5f>
  40210b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402110:	31 d2                	xor    %edx,%edx
  402112:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402117:	e8 dc 09 00 00       	callq  402af8 <signal>
  40211c:	48 83 f8 01          	cmp    $0x1,%rax
  402120:	74 7e                	je     4021a0 <__mingw_SEH_error_handler+0x1a0>
  402122:	48 85 c0             	test   %rax,%rax
  402125:	74 29                	je     402150 <__mingw_SEH_error_handler+0x150>
  402127:	b9 0b 00 00 00       	mov    $0xb,%ecx
  40212c:	ff d0                	callq  *%rax
  40212e:	45 31 c0             	xor    %r8d,%r8d
  402131:	e9 29 ff ff ff       	jmpq   40205f <__mingw_SEH_error_handler+0x5f>
  402136:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40213d:	00 00 00 
  402140:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  402146:	e9 14 ff ff ff       	jmpq   40205f <__mingw_SEH_error_handler+0x5f>
  40214b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402150:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  402156:	e9 04 ff ff ff       	jmpq   40205f <__mingw_SEH_error_handler+0x5f>
  40215b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402160:	ba 01 00 00 00       	mov    $0x1,%edx
  402165:	b9 04 00 00 00       	mov    $0x4,%ecx
  40216a:	e8 89 09 00 00       	callq  402af8 <signal>
  40216f:	45 31 c0             	xor    %r8d,%r8d
  402172:	e9 e8 fe ff ff       	jmpq   40205f <__mingw_SEH_error_handler+0x5f>
  402177:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40217e:	00 00 
  402180:	ba 01 00 00 00       	mov    $0x1,%edx
  402185:	b9 08 00 00 00       	mov    $0x8,%ecx
  40218a:	e8 69 09 00 00       	callq  402af8 <signal>
  40218f:	45 31 c0             	xor    %r8d,%r8d
  402192:	e9 c8 fe ff ff       	jmpq   40205f <__mingw_SEH_error_handler+0x5f>
  402197:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40219e:	00 00 
  4021a0:	ba 01 00 00 00       	mov    $0x1,%edx
  4021a5:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4021aa:	e8 49 09 00 00       	callq  402af8 <signal>
  4021af:	45 31 c0             	xor    %r8d,%r8d
  4021b2:	e9 a8 fe ff ff       	jmpq   40205f <__mingw_SEH_error_handler+0x5f>
  4021b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4021be:	00 00 

00000000004021c0 <__mingw_init_ehandler>:
  4021c0:	41 54                	push   %r12
  4021c2:	55                   	push   %rbp
  4021c3:	57                   	push   %rdi
  4021c4:	56                   	push   %rsi
  4021c5:	53                   	push   %rbx
  4021c6:	48 83 ec 20          	sub    $0x20,%rsp
  4021ca:	e8 51 07 00 00       	callq  402920 <_GetPEImageBase>
  4021cf:	48 89 c6             	mov    %rax,%rsi
  4021d2:	8b 05 70 54 00 00    	mov    0x5470(%rip),%eax        # 407648 <was_here.93643>
  4021d8:	85 c0                	test   %eax,%eax
  4021da:	75 25                	jne    402201 <__mingw_init_ehandler+0x41>
  4021dc:	48 85 f6             	test   %rsi,%rsi
  4021df:	74 20                	je     402201 <__mingw_init_ehandler+0x41>
  4021e1:	48 8d 0d 10 21 00 00 	lea    0x2110(%rip),%rcx        # 4042f8 <.rdata+0x28>
  4021e8:	c7 05 56 54 00 00 01 	movl   $0x1,0x5456(%rip)        # 407648 <was_here.93643>
  4021ef:	00 00 00 
  4021f2:	e8 69 05 00 00       	callq  402760 <_FindPESectionByName>
  4021f7:	48 85 c0             	test   %rax,%rax
  4021fa:	74 14                	je     402210 <__mingw_init_ehandler+0x50>
  4021fc:	b8 01 00 00 00       	mov    $0x1,%eax
  402201:	48 83 c4 20          	add    $0x20,%rsp
  402205:	5b                   	pop    %rbx
  402206:	5e                   	pop    %rsi
  402207:	5f                   	pop    %rdi
  402208:	5d                   	pop    %rbp
  402209:	41 5c                	pop    %r12
  40220b:	c3                   	retq   
  40220c:	0f 1f 40 00          	nopl   0x0(%rax)
  402210:	48 8d 1d 49 55 00 00 	lea    0x5549(%rip),%rbx        # 407760 <emu_pdata>
  402217:	b9 30 00 00 00       	mov    $0x30,%ecx
  40221c:	45 31 e4             	xor    %r12d,%r12d
  40221f:	48 8d 15 3a 54 00 00 	lea    0x543a(%rip),%rdx        # 407660 <emu_xdata>
  402226:	48 89 df             	mov    %rbx,%rdi
  402229:	48 8d 2d d0 fd ff ff 	lea    -0x230(%rip),%rbp        # 402000 <__mingw_SEH_error_handler>
  402230:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402233:	b9 20 00 00 00       	mov    $0x20,%ecx
  402238:	48 89 d7             	mov    %rdx,%rdi
  40223b:	48 29 f5             	sub    %rsi,%rbp
  40223e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402241:	48 89 d7             	mov    %rdx,%rdi
  402244:	eb 36                	jmp    40227c <__mingw_init_ehandler+0xbc>
  402246:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40224d:	00 00 00 
  402250:	c6 07 09             	movb   $0x9,(%rdi)
  402253:	49 ff c4             	inc    %r12
  402256:	48 83 c3 0c          	add    $0xc,%rbx
  40225a:	89 6f 04             	mov    %ebp,0x4(%rdi)
  40225d:	8b 50 0c             	mov    0xc(%rax),%edx
  402260:	89 53 f4             	mov    %edx,-0xc(%rbx)
  402263:	03 50 08             	add    0x8(%rax),%edx
  402266:	48 89 f8             	mov    %rdi,%rax
  402269:	48 83 c7 08          	add    $0x8,%rdi
  40226d:	48 29 f0             	sub    %rsi,%rax
  402270:	89 53 f8             	mov    %edx,-0x8(%rbx)
  402273:	89 43 fc             	mov    %eax,-0x4(%rbx)
  402276:	49 83 fc 20          	cmp    $0x20,%r12
  40227a:	74 24                	je     4022a0 <__mingw_init_ehandler+0xe0>
  40227c:	4c 89 e1             	mov    %r12,%rcx
  40227f:	e8 2c 06 00 00       	callq  4028b0 <_FindPESectionExec>
  402284:	48 85 c0             	test   %rax,%rax
  402287:	75 c7                	jne    402250 <__mingw_init_ehandler+0x90>
  402289:	4d 85 e4             	test   %r12,%r12
  40228c:	0f 84 6a ff ff ff    	je     4021fc <__mingw_init_ehandler+0x3c>
  402292:	44 89 e2             	mov    %r12d,%edx
  402295:	eb 0e                	jmp    4022a5 <__mingw_init_ehandler+0xe5>
  402297:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40229e:	00 00 
  4022a0:	ba 20 00 00 00       	mov    $0x20,%edx
  4022a5:	49 89 f0             	mov    %rsi,%r8
  4022a8:	48 8d 0d b1 54 00 00 	lea    0x54b1(%rip),%rcx        # 407760 <emu_pdata>
  4022af:	ff 15 7f 5f 00 00    	callq  *0x5f7f(%rip)        # 408234 <__imp_RtlAddFunctionTable>
  4022b5:	e9 42 ff ff ff       	jmpq   4021fc <__mingw_init_ehandler+0x3c>
  4022ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004022c0 <_gnu_exception_handler>:
  4022c0:	41 54                	push   %r12
  4022c2:	48 83 ec 20          	sub    $0x20,%rsp
  4022c6:	48 8b 11             	mov    (%rcx),%rdx
  4022c9:	8b 02                	mov    (%rdx),%eax
  4022cb:	49 89 cc             	mov    %rcx,%r12
  4022ce:	89 c1                	mov    %eax,%ecx
  4022d0:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
  4022d6:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
  4022dc:	0f 84 ce 00 00 00    	je     4023b0 <_gnu_exception_handler+0xf0>
  4022e2:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  4022e7:	0f 87 aa 00 00 00    	ja     402397 <_gnu_exception_handler+0xd7>
  4022ed:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
  4022f2:	76 54                	jbe    402348 <_gnu_exception_handler+0x88>
  4022f4:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
  4022f9:	83 f8 09             	cmp    $0x9,%eax
  4022fc:	77 3a                	ja     402338 <_gnu_exception_handler+0x78>
  4022fe:	48 8d 15 fb 1f 00 00 	lea    0x1ffb(%rip),%rdx        # 404300 <.rdata+0x30>
  402305:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  402309:	48 01 d0             	add    %rdx,%rax
  40230c:	ff e0                	jmpq   *%rax
  40230e:	31 d2                	xor    %edx,%edx
  402310:	b9 08 00 00 00       	mov    $0x8,%ecx
  402315:	e8 de 07 00 00       	callq  402af8 <signal>
  40231a:	48 83 f8 01          	cmp    $0x1,%rax
  40231e:	0f 85 b7 00 00 00    	jne    4023db <_gnu_exception_handler+0x11b>
  402324:	ba 01 00 00 00       	mov    $0x1,%edx
  402329:	b9 08 00 00 00       	mov    $0x8,%ecx
  40232e:	e8 c5 07 00 00       	callq  402af8 <signal>
  402333:	e8 08 f7 ff ff       	callq  401a40 <_fpreset>
  402338:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40233d:	48 83 c4 20          	add    $0x20,%rsp
  402341:	41 5c                	pop    %r12
  402343:	c3                   	retq   
  402344:	0f 1f 40 00          	nopl   0x0(%rax)
  402348:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  40234d:	0f 84 a5 00 00 00    	je     4023f8 <_gnu_exception_handler+0x138>
  402353:	76 3b                	jbe    402390 <_gnu_exception_handler+0xd0>
  402355:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  40235a:	74 dc                	je     402338 <_gnu_exception_handler+0x78>
  40235c:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  402361:	75 34                	jne    402397 <_gnu_exception_handler+0xd7>
  402363:	31 d2                	xor    %edx,%edx
  402365:	b9 04 00 00 00       	mov    $0x4,%ecx
  40236a:	e8 89 07 00 00       	callq  402af8 <signal>
  40236f:	48 83 f8 01          	cmp    $0x1,%rax
  402373:	0f 84 a7 00 00 00    	je     402420 <_gnu_exception_handler+0x160>
  402379:	48 85 c0             	test   %rax,%rax
  40237c:	74 19                	je     402397 <_gnu_exception_handler+0xd7>
  40237e:	b9 04 00 00 00       	mov    $0x4,%ecx
  402383:	ff d0                	callq  *%rax
  402385:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40238a:	eb b1                	jmp    40233d <_gnu_exception_handler+0x7d>
  40238c:	0f 1f 40 00          	nopl   0x0(%rax)
  402390:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  402395:	74 a1                	je     402338 <_gnu_exception_handler+0x78>
  402397:	48 8b 05 a2 52 00 00 	mov    0x52a2(%rip),%rax        # 407640 <__mingw_oldexcpt_handler>
  40239e:	48 85 c0             	test   %rax,%rax
  4023a1:	74 1d                	je     4023c0 <_gnu_exception_handler+0x100>
  4023a3:	4c 89 e1             	mov    %r12,%rcx
  4023a6:	48 83 c4 20          	add    $0x20,%rsp
  4023aa:	41 5c                	pop    %r12
  4023ac:	48 ff e0             	rex.W jmpq *%rax
  4023af:	90                   	nop
  4023b0:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
  4023b4:	0f 85 28 ff ff ff    	jne    4022e2 <_gnu_exception_handler+0x22>
  4023ba:	e9 79 ff ff ff       	jmpq   402338 <_gnu_exception_handler+0x78>
  4023bf:	90                   	nop
  4023c0:	31 c0                	xor    %eax,%eax
  4023c2:	48 83 c4 20          	add    $0x20,%rsp
  4023c6:	41 5c                	pop    %r12
  4023c8:	c3                   	retq   
  4023c9:	31 d2                	xor    %edx,%edx
  4023cb:	b9 08 00 00 00       	mov    $0x8,%ecx
  4023d0:	e8 23 07 00 00       	callq  402af8 <signal>
  4023d5:	48 83 f8 01          	cmp    $0x1,%rax
  4023d9:	74 65                	je     402440 <_gnu_exception_handler+0x180>
  4023db:	48 85 c0             	test   %rax,%rax
  4023de:	74 b7                	je     402397 <_gnu_exception_handler+0xd7>
  4023e0:	b9 08 00 00 00       	mov    $0x8,%ecx
  4023e5:	ff d0                	callq  *%rax
  4023e7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4023ec:	e9 4c ff ff ff       	jmpq   40233d <_gnu_exception_handler+0x7d>
  4023f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4023f8:	31 d2                	xor    %edx,%edx
  4023fa:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4023ff:	e8 f4 06 00 00       	callq  402af8 <signal>
  402404:	48 83 f8 01          	cmp    $0x1,%rax
  402408:	74 4f                	je     402459 <_gnu_exception_handler+0x199>
  40240a:	48 85 c0             	test   %rax,%rax
  40240d:	74 88                	je     402397 <_gnu_exception_handler+0xd7>
  40240f:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402414:	ff d0                	callq  *%rax
  402416:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40241b:	e9 1d ff ff ff       	jmpq   40233d <_gnu_exception_handler+0x7d>
  402420:	ba 01 00 00 00       	mov    $0x1,%edx
  402425:	b9 04 00 00 00       	mov    $0x4,%ecx
  40242a:	e8 c9 06 00 00       	callq  402af8 <signal>
  40242f:	83 c8 ff             	or     $0xffffffff,%eax
  402432:	e9 06 ff ff ff       	jmpq   40233d <_gnu_exception_handler+0x7d>
  402437:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40243e:	00 00 
  402440:	ba 01 00 00 00       	mov    $0x1,%edx
  402445:	b9 08 00 00 00       	mov    $0x8,%ecx
  40244a:	e8 a9 06 00 00       	callq  402af8 <signal>
  40244f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402454:	e9 e4 fe ff ff       	jmpq   40233d <_gnu_exception_handler+0x7d>
  402459:	ba 01 00 00 00       	mov    $0x1,%edx
  40245e:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402463:	e8 90 06 00 00       	callq  402af8 <signal>
  402468:	83 c8 ff             	or     $0xffffffff,%eax
  40246b:	e9 cd fe ff ff       	jmpq   40233d <_gnu_exception_handler+0x7d>

0000000000402470 <__mingwthr_run_key_dtors.part.0>:
  402470:	41 54                	push   %r12
  402472:	57                   	push   %rdi
  402473:	56                   	push   %rsi
  402474:	53                   	push   %rbx
  402475:	48 83 ec 28          	sub    $0x28,%rsp
  402479:	48 8d 0d 80 54 00 00 	lea    0x5480(%rip),%rcx        # 407900 <__mingwthr_cs>
  402480:	ff 15 56 5d 00 00    	callq  *0x5d56(%rip)        # 4081dc <__imp_EnterCriticalSection>
  402486:	48 8b 1d 53 54 00 00 	mov    0x5453(%rip),%rbx        # 4078e0 <key_dtor_list>
  40248d:	48 85 db             	test   %rbx,%rbx
  402490:	74 32                	je     4024c4 <__mingwthr_run_key_dtors.part.0+0x54>
  402492:	48 8b 3d d3 5d 00 00 	mov    0x5dd3(%rip),%rdi        # 40826c <__imp_TlsGetValue>
  402499:	48 8b 35 5c 5d 00 00 	mov    0x5d5c(%rip),%rsi        # 4081fc <__imp_GetLastError>
  4024a0:	8b 0b                	mov    (%rbx),%ecx
  4024a2:	ff d7                	callq  *%rdi
  4024a4:	49 89 c4             	mov    %rax,%r12
  4024a7:	ff d6                	callq  *%rsi
  4024a9:	85 c0                	test   %eax,%eax
  4024ab:	75 0e                	jne    4024bb <__mingwthr_run_key_dtors.part.0+0x4b>
  4024ad:	4d 85 e4             	test   %r12,%r12
  4024b0:	74 09                	je     4024bb <__mingwthr_run_key_dtors.part.0+0x4b>
  4024b2:	48 8b 43 08          	mov    0x8(%rbx),%rax
  4024b6:	4c 89 e1             	mov    %r12,%rcx
  4024b9:	ff d0                	callq  *%rax
  4024bb:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4024bf:	48 85 db             	test   %rbx,%rbx
  4024c2:	75 dc                	jne    4024a0 <__mingwthr_run_key_dtors.part.0+0x30>
  4024c4:	48 8d 0d 35 54 00 00 	lea    0x5435(%rip),%rcx        # 407900 <__mingwthr_cs>
  4024cb:	48 83 c4 28          	add    $0x28,%rsp
  4024cf:	5b                   	pop    %rbx
  4024d0:	5e                   	pop    %rsi
  4024d1:	5f                   	pop    %rdi
  4024d2:	41 5c                	pop    %r12
  4024d4:	48 ff 25 49 5d 00 00 	rex.W jmpq *0x5d49(%rip)        # 408224 <__imp_LeaveCriticalSection>
  4024db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004024e0 <___w64_mingwthr_add_key_dtor>:
  4024e0:	57                   	push   %rdi
  4024e1:	56                   	push   %rsi
  4024e2:	53                   	push   %rbx
  4024e3:	48 83 ec 20          	sub    $0x20,%rsp
  4024e7:	8b 05 fb 53 00 00    	mov    0x53fb(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  4024ed:	89 cf                	mov    %ecx,%edi
  4024ef:	48 89 d6             	mov    %rdx,%rsi
  4024f2:	85 c0                	test   %eax,%eax
  4024f4:	75 0a                	jne    402500 <___w64_mingwthr_add_key_dtor+0x20>
  4024f6:	48 83 c4 20          	add    $0x20,%rsp
  4024fa:	5b                   	pop    %rbx
  4024fb:	5e                   	pop    %rsi
  4024fc:	5f                   	pop    %rdi
  4024fd:	c3                   	retq   
  4024fe:	66 90                	xchg   %ax,%ax
  402500:	ba 18 00 00 00       	mov    $0x18,%edx
  402505:	b9 01 00 00 00       	mov    $0x1,%ecx
  40250a:	e8 29 06 00 00       	callq  402b38 <calloc>
  40250f:	48 89 c3             	mov    %rax,%rbx
  402512:	48 85 c0             	test   %rax,%rax
  402515:	74 3c                	je     402553 <___w64_mingwthr_add_key_dtor+0x73>
  402517:	89 38                	mov    %edi,(%rax)
  402519:	48 8d 0d e0 53 00 00 	lea    0x53e0(%rip),%rcx        # 407900 <__mingwthr_cs>
  402520:	48 89 70 08          	mov    %rsi,0x8(%rax)
  402524:	ff 15 b2 5c 00 00    	callq  *0x5cb2(%rip)        # 4081dc <__imp_EnterCriticalSection>
  40252a:	48 8b 05 af 53 00 00 	mov    0x53af(%rip),%rax        # 4078e0 <key_dtor_list>
  402531:	48 8d 0d c8 53 00 00 	lea    0x53c8(%rip),%rcx        # 407900 <__mingwthr_cs>
  402538:	48 89 1d a1 53 00 00 	mov    %rbx,0x53a1(%rip)        # 4078e0 <key_dtor_list>
  40253f:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402543:	ff 15 db 5c 00 00    	callq  *0x5cdb(%rip)        # 408224 <__imp_LeaveCriticalSection>
  402549:	31 c0                	xor    %eax,%eax
  40254b:	48 83 c4 20          	add    $0x20,%rsp
  40254f:	5b                   	pop    %rbx
  402550:	5e                   	pop    %rsi
  402551:	5f                   	pop    %rdi
  402552:	c3                   	retq   
  402553:	83 c8 ff             	or     $0xffffffff,%eax
  402556:	eb 9e                	jmp    4024f6 <___w64_mingwthr_add_key_dtor+0x16>
  402558:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40255f:	00 

0000000000402560 <___w64_mingwthr_remove_key_dtor>:
  402560:	53                   	push   %rbx
  402561:	48 83 ec 20          	sub    $0x20,%rsp
  402565:	8b 05 7d 53 00 00    	mov    0x537d(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  40256b:	89 cb                	mov    %ecx,%ebx
  40256d:	85 c0                	test   %eax,%eax
  40256f:	75 0f                	jne    402580 <___w64_mingwthr_remove_key_dtor+0x20>
  402571:	31 c0                	xor    %eax,%eax
  402573:	48 83 c4 20          	add    $0x20,%rsp
  402577:	5b                   	pop    %rbx
  402578:	c3                   	retq   
  402579:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402580:	48 8d 0d 79 53 00 00 	lea    0x5379(%rip),%rcx        # 407900 <__mingwthr_cs>
  402587:	ff 15 4f 5c 00 00    	callq  *0x5c4f(%rip)        # 4081dc <__imp_EnterCriticalSection>
  40258d:	48 8b 0d 4c 53 00 00 	mov    0x534c(%rip),%rcx        # 4078e0 <key_dtor_list>
  402594:	48 85 c9             	test   %rcx,%rcx
  402597:	74 2a                	je     4025c3 <___w64_mingwthr_remove_key_dtor+0x63>
  402599:	31 d2                	xor    %edx,%edx
  40259b:	eb 0e                	jmp    4025ab <___w64_mingwthr_remove_key_dtor+0x4b>
  40259d:	0f 1f 00             	nopl   (%rax)
  4025a0:	48 89 ca             	mov    %rcx,%rdx
  4025a3:	48 85 c0             	test   %rax,%rax
  4025a6:	74 1b                	je     4025c3 <___w64_mingwthr_remove_key_dtor+0x63>
  4025a8:	48 89 c1             	mov    %rax,%rcx
  4025ab:	8b 01                	mov    (%rcx),%eax
  4025ad:	39 d8                	cmp    %ebx,%eax
  4025af:	48 8b 41 10          	mov    0x10(%rcx),%rax
  4025b3:	75 eb                	jne    4025a0 <___w64_mingwthr_remove_key_dtor+0x40>
  4025b5:	48 85 d2             	test   %rdx,%rdx
  4025b8:	74 26                	je     4025e0 <___w64_mingwthr_remove_key_dtor+0x80>
  4025ba:	48 89 42 10          	mov    %rax,0x10(%rdx)
  4025be:	e8 5d 05 00 00       	callq  402b20 <free>
  4025c3:	48 8d 0d 36 53 00 00 	lea    0x5336(%rip),%rcx        # 407900 <__mingwthr_cs>
  4025ca:	ff 15 54 5c 00 00    	callq  *0x5c54(%rip)        # 408224 <__imp_LeaveCriticalSection>
  4025d0:	31 c0                	xor    %eax,%eax
  4025d2:	48 83 c4 20          	add    $0x20,%rsp
  4025d6:	5b                   	pop    %rbx
  4025d7:	c3                   	retq   
  4025d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4025df:	00 
  4025e0:	48 89 05 f9 52 00 00 	mov    %rax,0x52f9(%rip)        # 4078e0 <key_dtor_list>
  4025e7:	eb d5                	jmp    4025be <___w64_mingwthr_remove_key_dtor+0x5e>
  4025e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004025f0 <__mingw_TLScallback>:
  4025f0:	53                   	push   %rbx
  4025f1:	48 83 ec 20          	sub    $0x20,%rsp
  4025f5:	83 fa 02             	cmp    $0x2,%edx
  4025f8:	0f 84 c2 00 00 00    	je     4026c0 <__mingw_TLScallback+0xd0>
  4025fe:	77 28                	ja     402628 <__mingw_TLScallback+0x38>
  402600:	85 d2                	test   %edx,%edx
  402602:	74 4c                	je     402650 <__mingw_TLScallback+0x60>
  402604:	8b 05 de 52 00 00    	mov    0x52de(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  40260a:	85 c0                	test   %eax,%eax
  40260c:	74 32                	je     402640 <__mingw_TLScallback+0x50>
  40260e:	c7 05 d0 52 00 00 01 	movl   $0x1,0x52d0(%rip)        # 4078e8 <__mingwthr_cs_init>
  402615:	00 00 00 
  402618:	b8 01 00 00 00       	mov    $0x1,%eax
  40261d:	48 83 c4 20          	add    $0x20,%rsp
  402621:	5b                   	pop    %rbx
  402622:	c3                   	retq   
  402623:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402628:	83 fa 03             	cmp    $0x3,%edx
  40262b:	75 eb                	jne    402618 <__mingw_TLScallback+0x28>
  40262d:	8b 05 b5 52 00 00    	mov    0x52b5(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402633:	85 c0                	test   %eax,%eax
  402635:	74 e1                	je     402618 <__mingw_TLScallback+0x28>
  402637:	e8 34 fe ff ff       	callq  402470 <__mingwthr_run_key_dtors.part.0>
  40263c:	eb da                	jmp    402618 <__mingw_TLScallback+0x28>
  40263e:	66 90                	xchg   %ax,%ax
  402640:	48 8d 0d b9 52 00 00 	lea    0x52b9(%rip),%rcx        # 407900 <__mingwthr_cs>
  402647:	ff 15 cf 5b 00 00    	callq  *0x5bcf(%rip)        # 40821c <__imp_InitializeCriticalSection>
  40264d:	eb bf                	jmp    40260e <__mingw_TLScallback+0x1e>
  40264f:	90                   	nop
  402650:	8b 05 92 52 00 00    	mov    0x5292(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402656:	85 c0                	test   %eax,%eax
  402658:	74 05                	je     40265f <__mingw_TLScallback+0x6f>
  40265a:	e8 11 fe ff ff       	callq  402470 <__mingwthr_run_key_dtors.part.0>
  40265f:	8b 05 83 52 00 00    	mov    0x5283(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402665:	83 f8 01             	cmp    $0x1,%eax
  402668:	75 ae                	jne    402618 <__mingw_TLScallback+0x28>
  40266a:	48 8b 1d 6f 52 00 00 	mov    0x526f(%rip),%rbx        # 4078e0 <key_dtor_list>
  402671:	48 85 db             	test   %rbx,%rbx
  402674:	74 1b                	je     402691 <__mingw_TLScallback+0xa1>
  402676:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40267d:	00 00 00 
  402680:	48 89 d9             	mov    %rbx,%rcx
  402683:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  402687:	e8 94 04 00 00       	callq  402b20 <free>
  40268c:	48 85 db             	test   %rbx,%rbx
  40268f:	75 ef                	jne    402680 <__mingw_TLScallback+0x90>
  402691:	48 8d 0d 68 52 00 00 	lea    0x5268(%rip),%rcx        # 407900 <__mingwthr_cs>
  402698:	48 c7 05 3d 52 00 00 	movq   $0x0,0x523d(%rip)        # 4078e0 <key_dtor_list>
  40269f:	00 00 00 00 
  4026a3:	c7 05 3b 52 00 00 00 	movl   $0x0,0x523b(%rip)        # 4078e8 <__mingwthr_cs_init>
  4026aa:	00 00 00 
  4026ad:	ff 15 21 5b 00 00    	callq  *0x5b21(%rip)        # 4081d4 <__IAT_start__>
  4026b3:	e9 60 ff ff ff       	jmpq   402618 <__mingw_TLScallback+0x28>
  4026b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4026bf:	00 
  4026c0:	e8 7b f3 ff ff       	callq  401a40 <_fpreset>
  4026c5:	b8 01 00 00 00       	mov    $0x1,%eax
  4026ca:	48 83 c4 20          	add    $0x20,%rsp
  4026ce:	5b                   	pop    %rbx
  4026cf:	c3                   	retq   

00000000004026d0 <_ValidateImageBase.part.0>:
  4026d0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  4026d4:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
  4026d8:	31 c0                	xor    %eax,%eax
  4026da:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
  4026e0:	75 0b                	jne    4026ed <_ValidateImageBase.part.0+0x1d>
  4026e2:	31 c0                	xor    %eax,%eax
  4026e4:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
  4026ea:	0f 94 c0             	sete   %al
  4026ed:	c3                   	retq   
  4026ee:	66 90                	xchg   %ax,%ax

00000000004026f0 <_ValidateImageBase>:
  4026f0:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  4026f5:	75 09                	jne    402700 <_ValidateImageBase+0x10>
  4026f7:	eb d7                	jmp    4026d0 <_ValidateImageBase.part.0>
  4026f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402700:	31 c0                	xor    %eax,%eax
  402702:	c3                   	retq   
  402703:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40270a:	00 00 00 00 
  40270e:	66 90                	xchg   %ax,%ax

0000000000402710 <_FindPESection>:
  402710:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402714:	48 01 c1             	add    %rax,%rcx
  402717:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  40271b:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  402720:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  402724:	85 c9                	test   %ecx,%ecx
  402726:	74 2d                	je     402755 <_FindPESection+0x45>
  402728:	ff c9                	dec    %ecx
  40272a:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  40272e:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
  402733:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402738:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  40273c:	4c 89 c1             	mov    %r8,%rcx
  40273f:	49 39 d0             	cmp    %rdx,%r8
  402742:	77 08                	ja     40274c <_FindPESection+0x3c>
  402744:	03 48 08             	add    0x8(%rax),%ecx
  402747:	48 39 d1             	cmp    %rdx,%rcx
  40274a:	77 0b                	ja     402757 <_FindPESection+0x47>
  40274c:	48 83 c0 28          	add    $0x28,%rax
  402750:	4c 39 c8             	cmp    %r9,%rax
  402753:	75 e3                	jne    402738 <_FindPESection+0x28>
  402755:	31 c0                	xor    %eax,%eax
  402757:	c3                   	retq   
  402758:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40275f:	00 

0000000000402760 <_FindPESectionByName>:
  402760:	41 54                	push   %r12
  402762:	56                   	push   %rsi
  402763:	53                   	push   %rbx
  402764:	48 83 ec 20          	sub    $0x20,%rsp
  402768:	48 89 cb             	mov    %rcx,%rbx
  40276b:	e8 80 03 00 00       	callq  402af0 <strlen>
  402770:	48 83 f8 08          	cmp    $0x8,%rax
  402774:	77 72                	ja     4027e8 <_FindPESectionByName+0x88>
  402776:	48 8b 0d 13 1c 00 00 	mov    0x1c13(%rip),%rcx        # 404390 <.refptr.__image_base__>
  40277d:	45 31 e4             	xor    %r12d,%r12d
  402780:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  402785:	75 4f                	jne    4027d6 <_FindPESectionByName+0x76>
  402787:	e8 44 ff ff ff       	callq  4026d0 <_ValidateImageBase.part.0>
  40278c:	85 c0                	test   %eax,%eax
  40278e:	74 46                	je     4027d6 <_FindPESectionByName+0x76>
  402790:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402794:	48 01 c1             	add    %rax,%rcx
  402797:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  40279b:	4c 8d 64 01 18       	lea    0x18(%rcx,%rax,1),%r12
  4027a0:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
  4027a4:	85 c0                	test   %eax,%eax
  4027a6:	74 40                	je     4027e8 <_FindPESectionByName+0x88>
  4027a8:	ff c8                	dec    %eax
  4027aa:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4027ae:	49 8d 74 c4 28       	lea    0x28(%r12,%rax,8),%rsi
  4027b3:	eb 0c                	jmp    4027c1 <_FindPESectionByName+0x61>
  4027b5:	0f 1f 00             	nopl   (%rax)
  4027b8:	49 83 c4 28          	add    $0x28,%r12
  4027bc:	49 39 f4             	cmp    %rsi,%r12
  4027bf:	74 27                	je     4027e8 <_FindPESectionByName+0x88>
  4027c1:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  4027c7:	48 89 da             	mov    %rbx,%rdx
  4027ca:	4c 89 e1             	mov    %r12,%rcx
  4027cd:	e8 16 03 00 00       	callq  402ae8 <strncmp>
  4027d2:	85 c0                	test   %eax,%eax
  4027d4:	75 e2                	jne    4027b8 <_FindPESectionByName+0x58>
  4027d6:	4c 89 e0             	mov    %r12,%rax
  4027d9:	48 83 c4 20          	add    $0x20,%rsp
  4027dd:	5b                   	pop    %rbx
  4027de:	5e                   	pop    %rsi
  4027df:	41 5c                	pop    %r12
  4027e1:	c3                   	retq   
  4027e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4027e8:	45 31 e4             	xor    %r12d,%r12d
  4027eb:	4c 89 e0             	mov    %r12,%rax
  4027ee:	48 83 c4 20          	add    $0x20,%rsp
  4027f2:	5b                   	pop    %rbx
  4027f3:	5e                   	pop    %rsi
  4027f4:	41 5c                	pop    %r12
  4027f6:	c3                   	retq   
  4027f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4027fe:	00 00 

0000000000402800 <__mingw_GetSectionForAddress>:
  402800:	48 83 ec 28          	sub    $0x28,%rsp
  402804:	4c 8b 15 85 1b 00 00 	mov    0x1b85(%rip),%r10        # 404390 <.refptr.__image_base__>
  40280b:	45 31 c0             	xor    %r8d,%r8d
  40280e:	66 41 81 3a 4d 5a    	cmpw   $0x5a4d,(%r10)
  402814:	49 89 c9             	mov    %rcx,%r9
  402817:	75 58                	jne    402871 <__mingw_GetSectionForAddress+0x71>
  402819:	4c 89 d1             	mov    %r10,%rcx
  40281c:	e8 af fe ff ff       	callq  4026d0 <_ValidateImageBase.part.0>
  402821:	85 c0                	test   %eax,%eax
  402823:	74 4c                	je     402871 <__mingw_GetSectionForAddress+0x71>
  402825:	49 63 42 3c          	movslq 0x3c(%r10),%rax
  402829:	4c 89 c9             	mov    %r9,%rcx
  40282c:	4c 29 d1             	sub    %r10,%rcx
  40282f:	49 01 c2             	add    %rax,%r10
  402832:	41 0f b7 42 14       	movzwl 0x14(%r10),%eax
  402837:	4d 8d 44 02 18       	lea    0x18(%r10,%rax,1),%r8
  40283c:	41 0f b7 42 06       	movzwl 0x6(%r10),%eax
  402841:	85 c0                	test   %eax,%eax
  402843:	74 29                	je     40286e <__mingw_GetSectionForAddress+0x6e>
  402845:	ff c8                	dec    %eax
  402847:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40284b:	4d 8d 4c c0 28       	lea    0x28(%r8,%rax,8),%r9
  402850:	41 8b 50 0c          	mov    0xc(%r8),%edx
  402854:	48 89 d0             	mov    %rdx,%rax
  402857:	48 39 d1             	cmp    %rdx,%rcx
  40285a:	72 09                	jb     402865 <__mingw_GetSectionForAddress+0x65>
  40285c:	41 03 40 08          	add    0x8(%r8),%eax
  402860:	48 39 c1             	cmp    %rax,%rcx
  402863:	72 0c                	jb     402871 <__mingw_GetSectionForAddress+0x71>
  402865:	49 83 c0 28          	add    $0x28,%r8
  402869:	4d 39 c8             	cmp    %r9,%r8
  40286c:	75 e2                	jne    402850 <__mingw_GetSectionForAddress+0x50>
  40286e:	45 31 c0             	xor    %r8d,%r8d
  402871:	4c 89 c0             	mov    %r8,%rax
  402874:	48 83 c4 28          	add    $0x28,%rsp
  402878:	c3                   	retq   
  402879:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402880 <__mingw_GetSectionCount>:
  402880:	48 83 ec 28          	sub    $0x28,%rsp
  402884:	48 8b 0d 05 1b 00 00 	mov    0x1b05(%rip),%rcx        # 404390 <.refptr.__image_base__>
  40288b:	31 c0                	xor    %eax,%eax
  40288d:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  402892:	75 12                	jne    4028a6 <__mingw_GetSectionCount+0x26>
  402894:	e8 37 fe ff ff       	callq  4026d0 <_ValidateImageBase.part.0>
  402899:	85 c0                	test   %eax,%eax
  40289b:	74 09                	je     4028a6 <__mingw_GetSectionCount+0x26>
  40289d:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  4028a1:	0f b7 44 08 06       	movzwl 0x6(%rax,%rcx,1),%eax
  4028a6:	48 83 c4 28          	add    $0x28,%rsp
  4028aa:	c3                   	retq   
  4028ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004028b0 <_FindPESectionExec>:
  4028b0:	48 83 ec 28          	sub    $0x28,%rsp
  4028b4:	45 31 c0             	xor    %r8d,%r8d
  4028b7:	49 89 c9             	mov    %rcx,%r9
  4028ba:	48 8b 0d cf 1a 00 00 	mov    0x1acf(%rip),%rcx        # 404390 <.refptr.__image_base__>
  4028c1:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  4028c6:	75 4b                	jne    402913 <_FindPESectionExec+0x63>
  4028c8:	e8 03 fe ff ff       	callq  4026d0 <_ValidateImageBase.part.0>
  4028cd:	85 c0                	test   %eax,%eax
  4028cf:	74 42                	je     402913 <_FindPESectionExec+0x63>
  4028d1:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  4028d5:	48 01 c1             	add    %rax,%rcx
  4028d8:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  4028dc:	4c 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%r8
  4028e1:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
  4028e5:	85 c0                	test   %eax,%eax
  4028e7:	74 27                	je     402910 <_FindPESectionExec+0x60>
  4028e9:	ff c8                	dec    %eax
  4028eb:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4028ef:	49 8d 44 c0 28       	lea    0x28(%r8,%rax,8),%rax
  4028f4:	0f 1f 40 00          	nopl   0x0(%rax)
  4028f8:	41 f6 40 27 20       	testb  $0x20,0x27(%r8)
  4028fd:	74 08                	je     402907 <_FindPESectionExec+0x57>
  4028ff:	4d 85 c9             	test   %r9,%r9
  402902:	74 0f                	je     402913 <_FindPESectionExec+0x63>
  402904:	49 ff c9             	dec    %r9
  402907:	49 83 c0 28          	add    $0x28,%r8
  40290b:	49 39 c0             	cmp    %rax,%r8
  40290e:	75 e8                	jne    4028f8 <_FindPESectionExec+0x48>
  402910:	45 31 c0             	xor    %r8d,%r8d
  402913:	4c 89 c0             	mov    %r8,%rax
  402916:	48 83 c4 28          	add    $0x28,%rsp
  40291a:	c3                   	retq   
  40291b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402920 <_GetPEImageBase>:
  402920:	48 83 ec 28          	sub    $0x28,%rsp
  402924:	48 8b 0d 65 1a 00 00 	mov    0x1a65(%rip),%rcx        # 404390 <.refptr.__image_base__>
  40292b:	45 31 c0             	xor    %r8d,%r8d
  40292e:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  402933:	75 0b                	jne    402940 <_GetPEImageBase+0x20>
  402935:	e8 96 fd ff ff       	callq  4026d0 <_ValidateImageBase.part.0>
  40293a:	85 c0                	test   %eax,%eax
  40293c:	4c 0f 45 c1          	cmovne %rcx,%r8
  402940:	4c 89 c0             	mov    %r8,%rax
  402943:	48 83 c4 28          	add    $0x28,%rsp
  402947:	c3                   	retq   
  402948:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40294f:	00 

0000000000402950 <_IsNonwritableInCurrentImage>:
  402950:	48 83 ec 28          	sub    $0x28,%rsp
  402954:	4c 8b 0d 35 1a 00 00 	mov    0x1a35(%rip),%r9        # 404390 <.refptr.__image_base__>
  40295b:	31 c0                	xor    %eax,%eax
  40295d:	66 41 81 39 4d 5a    	cmpw   $0x5a4d,(%r9)
  402963:	49 89 c8             	mov    %rcx,%r8
  402966:	75 57                	jne    4029bf <_IsNonwritableInCurrentImage+0x6f>
  402968:	4c 89 c9             	mov    %r9,%rcx
  40296b:	e8 60 fd ff ff       	callq  4026d0 <_ValidateImageBase.part.0>
  402970:	85 c0                	test   %eax,%eax
  402972:	74 4b                	je     4029bf <_IsNonwritableInCurrentImage+0x6f>
  402974:	49 63 41 3c          	movslq 0x3c(%r9),%rax
  402978:	4c 89 c1             	mov    %r8,%rcx
  40297b:	4c 29 c9             	sub    %r9,%rcx
  40297e:	49 01 c1             	add    %rax,%r9
  402981:	41 0f b7 41 14       	movzwl 0x14(%r9),%eax
  402986:	41 0f b7 51 06       	movzwl 0x6(%r9),%edx
  40298b:	49 8d 44 01 18       	lea    0x18(%r9,%rax,1),%rax
  402990:	85 d2                	test   %edx,%edx
  402992:	74 29                	je     4029bd <_IsNonwritableInCurrentImage+0x6d>
  402994:	ff ca                	dec    %edx
  402996:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  40299a:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  40299f:	90                   	nop
  4029a0:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  4029a4:	4c 89 c2             	mov    %r8,%rdx
  4029a7:	4c 39 c1             	cmp    %r8,%rcx
  4029aa:	72 08                	jb     4029b4 <_IsNonwritableInCurrentImage+0x64>
  4029ac:	03 50 08             	add    0x8(%rax),%edx
  4029af:	48 39 d1             	cmp    %rdx,%rcx
  4029b2:	72 14                	jb     4029c8 <_IsNonwritableInCurrentImage+0x78>
  4029b4:	48 83 c0 28          	add    $0x28,%rax
  4029b8:	4c 39 c8             	cmp    %r9,%rax
  4029bb:	75 e3                	jne    4029a0 <_IsNonwritableInCurrentImage+0x50>
  4029bd:	31 c0                	xor    %eax,%eax
  4029bf:	48 83 c4 28          	add    $0x28,%rsp
  4029c3:	c3                   	retq   
  4029c4:	0f 1f 40 00          	nopl   0x0(%rax)
  4029c8:	8b 40 24             	mov    0x24(%rax),%eax
  4029cb:	f7 d0                	not    %eax
  4029cd:	c1 e8 1f             	shr    $0x1f,%eax
  4029d0:	48 83 c4 28          	add    $0x28,%rsp
  4029d4:	c3                   	retq   
  4029d5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4029dc:	00 00 00 00 

00000000004029e0 <__mingw_enum_import_library_names>:
  4029e0:	48 83 ec 28          	sub    $0x28,%rsp
  4029e4:	4c 8b 1d a5 19 00 00 	mov    0x19a5(%rip),%r11        # 404390 <.refptr.__image_base__>
  4029eb:	45 31 c9             	xor    %r9d,%r9d
  4029ee:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
  4029f4:	41 89 c8             	mov    %ecx,%r8d
  4029f7:	75 5f                	jne    402a58 <__mingw_enum_import_library_names+0x78>
  4029f9:	4c 89 d9             	mov    %r11,%rcx
  4029fc:	e8 cf fc ff ff       	callq  4026d0 <_ValidateImageBase.part.0>
  402a01:	85 c0                	test   %eax,%eax
  402a03:	74 53                	je     402a58 <__mingw_enum_import_library_names+0x78>
  402a05:	49 63 4b 3c          	movslq 0x3c(%r11),%rcx
  402a09:	4c 01 d9             	add    %r11,%rcx
  402a0c:	8b 81 90 00 00 00    	mov    0x90(%rcx),%eax
  402a12:	85 c0                	test   %eax,%eax
  402a14:	74 42                	je     402a58 <__mingw_enum_import_library_names+0x78>
  402a16:	0f b7 51 14          	movzwl 0x14(%rcx),%edx
  402a1a:	48 8d 54 11 18       	lea    0x18(%rcx,%rdx,1),%rdx
  402a1f:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  402a23:	85 c9                	test   %ecx,%ecx
  402a25:	74 31                	je     402a58 <__mingw_enum_import_library_names+0x78>
  402a27:	ff c9                	dec    %ecx
  402a29:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  402a2d:	4c 8d 54 ca 28       	lea    0x28(%rdx,%rcx,8),%r10
  402a32:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402a38:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
  402a3c:	4c 89 c9             	mov    %r9,%rcx
  402a3f:	4c 39 c8             	cmp    %r9,%rax
  402a42:	72 08                	jb     402a4c <__mingw_enum_import_library_names+0x6c>
  402a44:	03 4a 08             	add    0x8(%rdx),%ecx
  402a47:	48 39 c8             	cmp    %rcx,%rax
  402a4a:	72 14                	jb     402a60 <__mingw_enum_import_library_names+0x80>
  402a4c:	48 83 c2 28          	add    $0x28,%rdx
  402a50:	4c 39 d2             	cmp    %r10,%rdx
  402a53:	75 e3                	jne    402a38 <__mingw_enum_import_library_names+0x58>
  402a55:	45 31 c9             	xor    %r9d,%r9d
  402a58:	4c 89 c8             	mov    %r9,%rax
  402a5b:	48 83 c4 28          	add    $0x28,%rsp
  402a5f:	c3                   	retq   
  402a60:	4c 01 d8             	add    %r11,%rax
  402a63:	eb 0a                	jmp    402a6f <__mingw_enum_import_library_names+0x8f>
  402a65:	0f 1f 00             	nopl   (%rax)
  402a68:	41 ff c8             	dec    %r8d
  402a6b:	48 83 c0 14          	add    $0x14,%rax
  402a6f:	8b 48 04             	mov    0x4(%rax),%ecx
  402a72:	85 c9                	test   %ecx,%ecx
  402a74:	75 07                	jne    402a7d <__mingw_enum_import_library_names+0x9d>
  402a76:	8b 50 0c             	mov    0xc(%rax),%edx
  402a79:	85 d2                	test   %edx,%edx
  402a7b:	74 d8                	je     402a55 <__mingw_enum_import_library_names+0x75>
  402a7d:	45 85 c0             	test   %r8d,%r8d
  402a80:	7f e6                	jg     402a68 <__mingw_enum_import_library_names+0x88>
  402a82:	44 8b 48 0c          	mov    0xc(%rax),%r9d
  402a86:	4d 01 d9             	add    %r11,%r9
  402a89:	4c 89 c8             	mov    %r9,%rax
  402a8c:	48 83 c4 28          	add    $0x28,%rsp
  402a90:	c3                   	retq   
  402a91:	90                   	nop
  402a92:	90                   	nop
  402a93:	90                   	nop
  402a94:	90                   	nop
  402a95:	90                   	nop
  402a96:	90                   	nop
  402a97:	90                   	nop
  402a98:	90                   	nop
  402a99:	90                   	nop
  402a9a:	90                   	nop
  402a9b:	90                   	nop
  402a9c:	90                   	nop
  402a9d:	90                   	nop
  402a9e:	90                   	nop
  402a9f:	90                   	nop

0000000000402aa0 <___chkstk_ms>:
  402aa0:	51                   	push   %rcx
  402aa1:	50                   	push   %rax
  402aa2:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402aa8:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
  402aad:	72 19                	jb     402ac8 <___chkstk_ms+0x28>
  402aaf:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
  402ab6:	48 83 09 00          	orq    $0x0,(%rcx)
  402aba:	48 2d 00 10 00 00    	sub    $0x1000,%rax
  402ac0:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402ac6:	77 e7                	ja     402aaf <___chkstk_ms+0xf>
  402ac8:	48 29 c1             	sub    %rax,%rcx
  402acb:	48 83 09 00          	orq    $0x0,(%rcx)
  402acf:	58                   	pop    %rax
  402ad0:	59                   	pop    %rcx
  402ad1:	c3                   	retq   
  402ad2:	90                   	nop
  402ad3:	90                   	nop
  402ad4:	90                   	nop
  402ad5:	90                   	nop
  402ad6:	90                   	nop
  402ad7:	90                   	nop
  402ad8:	90                   	nop
  402ad9:	90                   	nop
  402ada:	90                   	nop
  402adb:	90                   	nop
  402adc:	90                   	nop
  402add:	90                   	nop
  402ade:	90                   	nop
  402adf:	90                   	nop

0000000000402ae0 <vfprintf>:
  402ae0:	ff 25 76 58 00 00    	jmpq   *0x5876(%rip)        # 40835c <__imp_vfprintf>
  402ae6:	90                   	nop
  402ae7:	90                   	nop

0000000000402ae8 <strncmp>:
  402ae8:	ff 25 66 58 00 00    	jmpq   *0x5866(%rip)        # 408354 <__imp_strncmp>
  402aee:	90                   	nop
  402aef:	90                   	nop

0000000000402af0 <strlen>:
  402af0:	ff 25 56 58 00 00    	jmpq   *0x5856(%rip)        # 40834c <__imp_strlen>
  402af6:	90                   	nop
  402af7:	90                   	nop

0000000000402af8 <signal>:
  402af8:	ff 25 46 58 00 00    	jmpq   *0x5846(%rip)        # 408344 <__imp_signal>
  402afe:	90                   	nop
  402aff:	90                   	nop

0000000000402b00 <printf>:
  402b00:	ff 25 36 58 00 00    	jmpq   *0x5836(%rip)        # 40833c <__imp_printf>
  402b06:	90                   	nop
  402b07:	90                   	nop

0000000000402b08 <memcpy>:
  402b08:	ff 25 26 58 00 00    	jmpq   *0x5826(%rip)        # 408334 <__imp_memcpy>
  402b0e:	90                   	nop
  402b0f:	90                   	nop

0000000000402b10 <malloc>:
  402b10:	ff 25 16 58 00 00    	jmpq   *0x5816(%rip)        # 40832c <__imp_malloc>
  402b16:	90                   	nop
  402b17:	90                   	nop

0000000000402b18 <fwrite>:
  402b18:	ff 25 06 58 00 00    	jmpq   *0x5806(%rip)        # 408324 <__imp_fwrite>
  402b1e:	90                   	nop
  402b1f:	90                   	nop

0000000000402b20 <free>:
  402b20:	ff 25 f6 57 00 00    	jmpq   *0x57f6(%rip)        # 40831c <__imp_free>
  402b26:	90                   	nop
  402b27:	90                   	nop

0000000000402b28 <fprintf>:
  402b28:	ff 25 e6 57 00 00    	jmpq   *0x57e6(%rip)        # 408314 <__imp_fprintf>
  402b2e:	90                   	nop
  402b2f:	90                   	nop

0000000000402b30 <exit>:
  402b30:	ff 25 d6 57 00 00    	jmpq   *0x57d6(%rip)        # 40830c <__imp_exit>
  402b36:	90                   	nop
  402b37:	90                   	nop

0000000000402b38 <calloc>:
  402b38:	ff 25 c6 57 00 00    	jmpq   *0x57c6(%rip)        # 408304 <__imp_calloc>
  402b3e:	90                   	nop
  402b3f:	90                   	nop

0000000000402b40 <abort>:
  402b40:	ff 25 b6 57 00 00    	jmpq   *0x57b6(%rip)        # 4082fc <__imp_abort>
  402b46:	90                   	nop
  402b47:	90                   	nop

0000000000402b48 <_onexit>:
  402b48:	ff 25 a6 57 00 00    	jmpq   *0x57a6(%rip)        # 4082f4 <__imp__onexit>
  402b4e:	90                   	nop
  402b4f:	90                   	nop

0000000000402b50 <_initterm>:
  402b50:	ff 25 96 57 00 00    	jmpq   *0x5796(%rip)        # 4082ec <__imp__initterm>
  402b56:	90                   	nop
  402b57:	90                   	nop

0000000000402b58 <_cexit>:
  402b58:	ff 25 7e 57 00 00    	jmpq   *0x577e(%rip)        # 4082dc <__imp__cexit>
  402b5e:	90                   	nop
  402b5f:	90                   	nop

0000000000402b60 <_amsg_exit>:
  402b60:	ff 25 6e 57 00 00    	jmpq   *0x576e(%rip)        # 4082d4 <__imp__amsg_exit>
  402b66:	90                   	nop
  402b67:	90                   	nop

0000000000402b68 <__setusermatherr>:
  402b68:	ff 25 56 57 00 00    	jmpq   *0x5756(%rip)        # 4082c4 <__imp___setusermatherr>
  402b6e:	90                   	nop
  402b6f:	90                   	nop

0000000000402b70 <__set_app_type>:
  402b70:	ff 25 46 57 00 00    	jmpq   *0x5746(%rip)        # 4082bc <__imp___set_app_type>
  402b76:	90                   	nop
  402b77:	90                   	nop

0000000000402b78 <__lconv_init>:
  402b78:	ff 25 36 57 00 00    	jmpq   *0x5736(%rip)        # 4082b4 <__imp___lconv_init>
  402b7e:	90                   	nop
  402b7f:	90                   	nop

0000000000402b80 <__getmainargs>:
  402b80:	ff 25 16 57 00 00    	jmpq   *0x5716(%rip)        # 40829c <__imp___getmainargs>
  402b86:	90                   	nop
  402b87:	90                   	nop

0000000000402b88 <__C_specific_handler>:
  402b88:	ff 25 06 57 00 00    	jmpq   *0x5706(%rip)        # 408294 <__imp___C_specific_handler>
  402b8e:	90                   	nop
  402b8f:	90                   	nop

0000000000402b90 <__acrt_iob_func>:
  402b90:	53                   	push   %rbx
  402b91:	48 83 ec 20          	sub    $0x20,%rsp
  402b95:	89 cb                	mov    %ecx,%ebx
  402b97:	e8 54 00 00 00       	callq  402bf0 <__iob_func>
  402b9c:	89 d9                	mov    %ebx,%ecx
  402b9e:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
  402ba2:	48 c1 e2 04          	shl    $0x4,%rdx
  402ba6:	48 01 d0             	add    %rdx,%rax
  402ba9:	48 83 c4 20          	add    $0x20,%rsp
  402bad:	5b                   	pop    %rbx
  402bae:	c3                   	retq   
  402baf:	90                   	nop

0000000000402bb0 <_get_invalid_parameter_handler>:
  402bb0:	48 8b 05 99 4d 00 00 	mov    0x4d99(%rip),%rax        # 407950 <handler>
  402bb7:	c3                   	retq   
  402bb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402bbf:	00 

0000000000402bc0 <_set_invalid_parameter_handler>:
  402bc0:	48 89 c8             	mov    %rcx,%rax
  402bc3:	48 87 05 86 4d 00 00 	xchg   %rax,0x4d86(%rip)        # 407950 <handler>
  402bca:	c3                   	retq   
  402bcb:	90                   	nop
  402bcc:	90                   	nop
  402bcd:	90                   	nop
  402bce:	90                   	nop
  402bcf:	90                   	nop

0000000000402bd0 <__p__acmdln>:
  402bd0:	48 8b 05 d9 17 00 00 	mov    0x17d9(%rip),%rax        # 4043b0 <.refptr.__imp__acmdln>
  402bd7:	48 8b 00             	mov    (%rax),%rax
  402bda:	c3                   	retq   
  402bdb:	90                   	nop
  402bdc:	90                   	nop
  402bdd:	90                   	nop
  402bde:	90                   	nop
  402bdf:	90                   	nop

0000000000402be0 <__p__fmode>:
  402be0:	48 8b 05 d9 17 00 00 	mov    0x17d9(%rip),%rax        # 4043c0 <.refptr.__imp__fmode>
  402be7:	48 8b 00             	mov    (%rax),%rax
  402bea:	c3                   	retq   
  402beb:	90                   	nop
  402bec:	90                   	nop
  402bed:	90                   	nop
  402bee:	90                   	nop
  402bef:	90                   	nop

0000000000402bf0 <__iob_func>:
  402bf0:	ff 25 b6 56 00 00    	jmpq   *0x56b6(%rip)        # 4082ac <__imp___iob_func>
  402bf6:	90                   	nop
  402bf7:	90                   	nop
  402bf8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402bff:	00 

0000000000402c00 <VirtualQuery>:
  402c00:	ff 25 7e 56 00 00    	jmpq   *0x567e(%rip)        # 408284 <__imp_VirtualQuery>
  402c06:	90                   	nop
  402c07:	90                   	nop

0000000000402c08 <VirtualProtect>:
  402c08:	ff 25 6e 56 00 00    	jmpq   *0x566e(%rip)        # 40827c <__imp_VirtualProtect>
  402c0e:	90                   	nop
  402c0f:	90                   	nop

0000000000402c10 <UnhandledExceptionFilter>:
  402c10:	ff 25 5e 56 00 00    	jmpq   *0x565e(%rip)        # 408274 <__imp_UnhandledExceptionFilter>
  402c16:	90                   	nop
  402c17:	90                   	nop

0000000000402c18 <TlsGetValue>:
  402c18:	ff 25 4e 56 00 00    	jmpq   *0x564e(%rip)        # 40826c <__imp_TlsGetValue>
  402c1e:	90                   	nop
  402c1f:	90                   	nop

0000000000402c20 <TerminateProcess>:
  402c20:	ff 25 3e 56 00 00    	jmpq   *0x563e(%rip)        # 408264 <__imp_TerminateProcess>
  402c26:	90                   	nop
  402c27:	90                   	nop

0000000000402c28 <Sleep>:
  402c28:	ff 25 2e 56 00 00    	jmpq   *0x562e(%rip)        # 40825c <__imp_Sleep>
  402c2e:	90                   	nop
  402c2f:	90                   	nop

0000000000402c30 <SetUnhandledExceptionFilter>:
  402c30:	ff 25 1e 56 00 00    	jmpq   *0x561e(%rip)        # 408254 <__imp_SetUnhandledExceptionFilter>
  402c36:	90                   	nop
  402c37:	90                   	nop

0000000000402c38 <RtlVirtualUnwind>:
  402c38:	ff 25 0e 56 00 00    	jmpq   *0x560e(%rip)        # 40824c <__imp_RtlVirtualUnwind>
  402c3e:	90                   	nop
  402c3f:	90                   	nop

0000000000402c40 <RtlLookupFunctionEntry>:
  402c40:	ff 25 fe 55 00 00    	jmpq   *0x55fe(%rip)        # 408244 <__imp_RtlLookupFunctionEntry>
  402c46:	90                   	nop
  402c47:	90                   	nop

0000000000402c48 <RtlCaptureContext>:
  402c48:	ff 25 ee 55 00 00    	jmpq   *0x55ee(%rip)        # 40823c <__imp_RtlCaptureContext>
  402c4e:	90                   	nop
  402c4f:	90                   	nop

0000000000402c50 <RtlAddFunctionTable>:
  402c50:	ff 25 de 55 00 00    	jmpq   *0x55de(%rip)        # 408234 <__imp_RtlAddFunctionTable>
  402c56:	90                   	nop
  402c57:	90                   	nop

0000000000402c58 <QueryPerformanceCounter>:
  402c58:	ff 25 ce 55 00 00    	jmpq   *0x55ce(%rip)        # 40822c <__imp_QueryPerformanceCounter>
  402c5e:	90                   	nop
  402c5f:	90                   	nop

0000000000402c60 <LeaveCriticalSection>:
  402c60:	ff 25 be 55 00 00    	jmpq   *0x55be(%rip)        # 408224 <__imp_LeaveCriticalSection>
  402c66:	90                   	nop
  402c67:	90                   	nop

0000000000402c68 <InitializeCriticalSection>:
  402c68:	ff 25 ae 55 00 00    	jmpq   *0x55ae(%rip)        # 40821c <__imp_InitializeCriticalSection>
  402c6e:	90                   	nop
  402c6f:	90                   	nop

0000000000402c70 <GetTickCount>:
  402c70:	ff 25 9e 55 00 00    	jmpq   *0x559e(%rip)        # 408214 <__imp_GetTickCount>
  402c76:	90                   	nop
  402c77:	90                   	nop

0000000000402c78 <GetSystemTimeAsFileTime>:
  402c78:	ff 25 8e 55 00 00    	jmpq   *0x558e(%rip)        # 40820c <__imp_GetSystemTimeAsFileTime>
  402c7e:	90                   	nop
  402c7f:	90                   	nop

0000000000402c80 <GetStartupInfoA>:
  402c80:	ff 25 7e 55 00 00    	jmpq   *0x557e(%rip)        # 408204 <__imp_GetStartupInfoA>
  402c86:	90                   	nop
  402c87:	90                   	nop

0000000000402c88 <GetLastError>:
  402c88:	ff 25 6e 55 00 00    	jmpq   *0x556e(%rip)        # 4081fc <__imp_GetLastError>
  402c8e:	90                   	nop
  402c8f:	90                   	nop

0000000000402c90 <GetCurrentThreadId>:
  402c90:	ff 25 5e 55 00 00    	jmpq   *0x555e(%rip)        # 4081f4 <__imp_GetCurrentThreadId>
  402c96:	90                   	nop
  402c97:	90                   	nop

0000000000402c98 <GetCurrentProcessId>:
  402c98:	ff 25 4e 55 00 00    	jmpq   *0x554e(%rip)        # 4081ec <__imp_GetCurrentProcessId>
  402c9e:	90                   	nop
  402c9f:	90                   	nop

0000000000402ca0 <GetCurrentProcess>:
  402ca0:	ff 25 3e 55 00 00    	jmpq   *0x553e(%rip)        # 4081e4 <__imp_GetCurrentProcess>
  402ca6:	90                   	nop
  402ca7:	90                   	nop

0000000000402ca8 <EnterCriticalSection>:
  402ca8:	ff 25 2e 55 00 00    	jmpq   *0x552e(%rip)        # 4081dc <__imp_EnterCriticalSection>
  402cae:	90                   	nop
  402caf:	90                   	nop

0000000000402cb0 <DeleteCriticalSection>:
  402cb0:	ff 25 1e 55 00 00    	jmpq   *0x551e(%rip)        # 4081d4 <__IAT_start__>
  402cb6:	90                   	nop
  402cb7:	90                   	nop
  402cb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402cbf:	00 

0000000000402cc0 <register_frame_ctor>:
  402cc0:	e9 6b e8 ff ff       	jmpq   401530 <__gcc_register_frame>
  402cc5:	90                   	nop
  402cc6:	90                   	nop
  402cc7:	90                   	nop
  402cc8:	90                   	nop
  402cc9:	90                   	nop
  402cca:	90                   	nop
  402ccb:	90                   	nop
  402ccc:	90                   	nop
  402ccd:	90                   	nop
  402cce:	90                   	nop
  402ccf:	90                   	nop

0000000000402cd0 <__CTOR_LIST__>:
  402cd0:	ff                   	(bad)  
  402cd1:	ff                   	(bad)  
  402cd2:	ff                   	(bad)  
  402cd3:	ff                   	(bad)  
  402cd4:	ff                   	(bad)  
  402cd5:	ff                   	(bad)  
  402cd6:	ff                   	(bad)  
  402cd7:	ff                   	.byte 0xff

0000000000402cd8 <.ctors.65535>:
  402cd8:	c0 2c 40 00          	shrb   $0x0,(%rax,%rax,2)
	...

0000000000402ce8 <__DTOR_LIST__>:
  402ce8:	ff                   	(bad)  
  402ce9:	ff                   	(bad)  
  402cea:	ff                   	(bad)  
  402ceb:	ff                   	(bad)  
  402cec:	ff                   	(bad)  
  402ced:	ff                   	(bad)  
  402cee:	ff                   	(bad)  
  402cef:	ff 00                	incl   (%rax)
  402cf1:	00 00                	add    %al,(%rax)
  402cf3:	00 00                	add    %al,(%rax)
  402cf5:	00 00                	add    %al,(%rax)
	...
