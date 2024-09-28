./setlev:     file format elf32-i386


Disassembly of section .init:

08049000 <_init>:
 8049000:       53                      push   ebx
 8049001:       83 ec 08                sub    esp,0x8
 8049004:       e8 b7 00 00 00          call   80490c0 <__x86.get_pc_thunk.bx>
 8049009:       81 c3 f7 2f 00 00       add    ebx,0x2ff7
 804900f:       8b 83 fc ff ff ff       mov    eax,DWORD PTR [ebx-0x4]
 8049015:       85 c0                   test   eax,eax
 8049017:       74 02                   je     804901b <_init+0x1b>
 8049019:       ff d0                   call   eax
 804901b:       83 c4 08                add    esp,0x8
 804901e:       5b                      pop    ebx
 804901f:       c3                      ret    

Disassembly of section .plt:

08049020 <.plt>:
 8049020:       ff 35 04 c0 04 08       push   DWORD PTR ds:0x804c004
 8049026:       ff 25 08 c0 04 08       jmp    DWORD PTR ds:0x804c008
 804902c:       00 00                   add    BYTE PTR [eax],al
        ...

08049030 <strcmp@plt>:
 8049030:       ff 25 0c c0 04 08       jmp    DWORD PTR ds:0x804c00c
 8049036:       68 00 00 00 00          push   0x0
 804903b:       e9 e0 ff ff ff          jmp    8049020 <.plt>

08049040 <printf@plt>:
 8049040:       ff 25 10 c0 04 08       jmp    DWORD PTR ds:0x804c010
 8049046:       68 08 00 00 00          push   0x8
 804904b:       e9 d0 ff ff ff          jmp    8049020 <.plt>

08049050 <__libc_start_main@plt>:
 8049050:       ff 25 14 c0 04 08       jmp    DWORD PTR ds:0x804c014
 8049056:       68 10 00 00 00          push   0x10
 804905b:       e9 c0 ff ff ff          jmp    8049020 <.plt>

08049060 <strncmp@plt>:
 8049060:       ff 25 18 c0 04 08       jmp    DWORD PTR ds:0x804c018
 8049066:       68 18 00 00 00          push   0x18
 804906b:       e9 b0 ff ff ff          jmp    8049020 <.plt>

Disassembly of section .text:

08049070 <_start>:
 8049070:       31 ed                   xor    ebp,ebp
 8049072:       5e                      pop    esi
 8049073:       89 e1                   mov    ecx,esp
 8049075:       83 e4 f0                and    esp,0xfffffff0
 8049078:       50                      push   eax
 8049079:       54                      push   esp
 804907a:       52                      push   edx
 804907b:       e8 23 00 00 00          call   80490a3 <_start+0x33>
 8049080:       81 c3 80 2f 00 00       add    ebx,0x2f80
 8049086:       8d 83 e0 d2 ff ff       lea    eax,[ebx-0x2d20]
 804908c:       50                      push   eax
 804908d:       8d 83 80 d2 ff ff       lea    eax,[ebx-0x2d80]
 8049093:       50                      push   eax
 8049094:       51                      push   ecx
 8049095:       56                      push   esi
 8049096:       c7 c0 33 92 04 08       mov    eax,0x8049233
 804909c:       50                      push   eax
 804909d:       e8 ae ff ff ff          call   8049050 <__libc_start_main@plt>
 80490a2:       f4                      hlt    
 80490a3:       8b 1c 24                mov    ebx,DWORD PTR [esp]
 80490a6:       c3                      ret    
 80490a7:       66 90                   xchg   ax,ax
 80490a9:       66 90                   xchg   ax,ax
 80490ab:       66 90                   xchg   ax,ax
 80490ad:       66 90                   xchg   ax,ax
 80490af:       90                      nop

080490b0 <_dl_relocate_static_pie>:
 80490b0:       c3                      ret    
 80490b1:       66 90                   xchg   ax,ax
 80490b3:       66 90                   xchg   ax,ax
 80490b5:       66 90                   xchg   ax,ax
 80490b7:       66 90                   xchg   ax,ax
 80490b9:       66 90                   xchg   ax,ax
 80490bb:       66 90                   xchg   ax,ax
 80490bd:       66 90                   xchg   ax,ax
 80490bf:       90                      nop

080490c0 <__x86.get_pc_thunk.bx>:
 80490c0:       8b 1c 24                mov    ebx,DWORD PTR [esp]
 80490c3:       c3                      ret    
 80490c4:       66 90                   xchg   ax,ax
 80490c6:       66 90                   xchg   ax,ax
 80490c8:       66 90                   xchg   ax,ax
 80490ca:       66 90                   xchg   ax,ax
 80490cc:       66 90                   xchg   ax,ax
 80490ce:       66 90                   xchg   ax,ax

080490d0 <deregister_tm_clones>:
 80490d0:       b8 24 c0 04 08          mov    eax,0x804c024
 80490d5:       3d 24 c0 04 08          cmp    eax,0x804c024
 80490da:       74 24                   je     8049100 <deregister_tm_clones+0x30>
 80490dc:       b8 00 00 00 00          mov    eax,0x0
 80490e1:       85 c0                   test   eax,eax
 80490e3:       74 1b                   je     8049100 <deregister_tm_clones+0x30>
 80490e5:       55                      push   ebp
 80490e6:       89 e5                   mov    ebp,esp
 80490e8:       83 ec 14                sub    esp,0x14
 80490eb:       68 24 c0 04 08          push   0x804c024
 80490f0:       ff d0                   call   eax
 80490f2:       83 c4 10                add    esp,0x10
 80490f5:       c9                      leave  
 80490f6:       c3                      ret    
 80490f7:       8d b4 26 00 00 00 00    lea    esi,[esi+eiz*1+0x0]
 80490fe:       66 90                   xchg   ax,ax
 8049100:       c3                      ret    
 8049101:       8d b4 26 00 00 00 00    lea    esi,[esi+eiz*1+0x0]
 8049108:       8d b4 26 00 00 00 00    lea    esi,[esi+eiz*1+0x0]
 804910f:       90                      nop

08049110 <register_tm_clones>:
 8049110:       b8 24 c0 04 08          mov    eax,0x804c024
 8049115:       2d 24 c0 04 08          sub    eax,0x804c024
 804911a:       c1 f8 02                sar    eax,0x2
 804911d:       89 c2                   mov    edx,eax
 804911f:       c1 ea 1f                shr    edx,0x1f
 8049122:       01 d0                   add    eax,edx
 8049124:       d1 f8                   sar    eax,1
 8049126:       74 20                   je     8049148 <register_tm_clones+0x38>
 8049128:       ba 00 00 00 00          mov    edx,0x0
 804912d:       85 d2                   test   edx,edx
 804912f:       74 17                   je     8049148 <register_tm_clones+0x38>
 8049131:       55                      push   ebp
 8049132:       89 e5                   mov    ebp,esp
 8049134:       83 ec 10                sub    esp,0x10
 8049137:       50                      push   eax
 8049138:       68 24 c0 04 08          push   0x804c024
 804913d:       ff d2                   call   edx
 804913f:       83 c4 10                add    esp,0x10
 8049142:       c9                      leave  
 8049143:       c3                      ret    
 8049144:       8d 74 26 00             lea    esi,[esi+eiz*1+0x0]
 8049148:       c3                      ret    
 8049149:       8d b4 26 00 00 00 00    lea    esi,[esi+eiz*1+0x0]

08049150 <__do_global_dtors_aux>:
 8049150:       80 3d 24 c0 04 08 00    cmp    BYTE PTR ds:0x804c024,0x0
 8049157:       75 17                   jne    8049170 <__do_global_dtors_aux+0x20>
 8049159:       55                      push   ebp
 804915a:       89 e5                   mov    ebp,esp
 804915c:       83 ec 08                sub    esp,0x8
 804915f:       e8 6c ff ff ff          call   80490d0 <deregister_tm_clones>
 8049164:       c6 05 24 c0 04 08 01    mov    BYTE PTR ds:0x804c024,0x1
 804916b:       c9                      leave  
 804916c:       c3                      ret    
 804916d:       8d 76 00                lea    esi,[esi+0x0]
 8049170:       c3                      ret    
 8049171:       8d b4 26 00 00 00 00    lea    esi,[esi+eiz*1+0x0]
 8049178:       8d b4 26 00 00 00 00    lea    esi,[esi+eiz*1+0x0]
 804917f:       90                      nop

08049180 <frame_dummy>:
 8049180:       eb 8e                   jmp    8049110 <register_tm_clones>

08049182 <something>:
 8049182:       55                      push   ebp
 8049183:       89 e5                   mov    ebp,esp
 8049185:       83 ec 04                sub    esp,0x4
 8049188:       c7 45 fc 00 00 00 00    mov    DWORD PTR [ebp-0x4],0x0
 804918f:       8b 55 0c                mov    edx,DWORD PTR [ebp+0xc]
 8049192:       8b 45 fc                mov    eax,DWORD PTR [ebp-0x4]
 8049195:       01 d0                   add    eax,edx
 8049197:       0f b6 00                movzx  eax,BYTE PTR [eax]
 804919a:       84 c0                   test   al,al
 804919c:       74 1b                   je     80491b9 <something+0x37>
 804919e:       8b 55 0c                mov    edx,DWORD PTR [ebp+0xc]
 80491a1:       8b 45 fc                mov    eax,DWORD PTR [ebp-0x4]
 80491a4:       01 d0                   add    eax,edx
 80491a6:       8b 4d 08                mov    ecx,DWORD PTR [ebp+0x8]
 80491a9:       8b 55 fc                mov    edx,DWORD PTR [ebp-0x4]
 80491ac:       01 ca                   add    edx,ecx
 80491ae:       0f b6 00                movzx  eax,BYTE PTR [eax]
 80491b1:       88 02                   mov    BYTE PTR [edx],al
 80491b3:       83 45 fc 01             add    DWORD PTR [ebp-0x4],0x1
 80491b7:       eb d6                   jmp    804918f <something+0xd>
 80491b9:       90                      nop
 80491ba:       8b 55 08                mov    edx,DWORD PTR [ebp+0x8]
 80491bd:       8b 45 fc                mov    eax,DWORD PTR [ebp-0x4]
 80491c0:       01 d0                   add    eax,edx
 80491c2:       c6 00 00                mov    BYTE PTR [eax],0x0
 80491c5:       8b 45 08                mov    eax,DWORD PTR [ebp+0x8]
 80491c8:       c9                      leave  
 80491c9:       c3                      ret    

# parseAndSet(argv[0], &argv[1]+2)
080491ca <parseAndSet>:
 80491ca:       55                      push   ebp                      #
 80491cb:       89 e5                   mov    ebp,esp
 80491cd:       83 ec 08                sub    esp,0x8                  # allocate 8 byte local variable
 80491d0:       68 08 a0 04 08          push   0x804a008                # & to where "help" is
 80491d5:       ff 75 0c                push   DWORD PTR [ebp+0xc]      # push argv[1]
 80491d8:       e8 53 fe ff ff          call   8049030 <strcmp@plt>
 80491dd:       83 c4 08                add    esp,0x8                  # deallocate 8 bytes
 80491e0:       85 c0                   test   eax,eax                  # cmp strcmp results
 80491e2:       75 12                   jne    80491f6 <parseAndSet+0x2c> # cmp argv[1] == "help"
 80491e4:       ff 75 08                push   DWORD PTR [ebp+0x8]       # push argv[0]
 80491e7:       68 0d a0 04 08          push   0x804a00d                # string format
 80491ec:       e8 4f fe ff ff          call   8049040 <printf@plt>     # print
 80491f1:       83 c4 08                add    esp,0x8                  # deallocate 8 bytes
 80491f4:       eb 3b                   jmp    8049231 <parseAndSet+0x67> # and exit
 80491f6:       6a 06                   push   0x6                      # == False compare 6 characters
 80491f8:       68 22 a0 04 08          push   0x804a022                # "level="
 80491fd:       ff 75 0c                push   DWORD PTR [ebp+0xc]      # push argv[1]
 8049200:       e8 5b fe ff ff          call   8049060 <strncmp@plt>
 8049205:       83 c4 0c                add    esp,0xc                  #  add esp+12 (cuz 3 pushes)
 8049208:       85 c0                   test   eax,eax
 804920a:       75 25                   jne    8049231 <parseAndSet+0x67>       # and exit
 804920c:       8b 45 0c                mov    eax,DWORD PTR [ebp+0xc]  # push argv[1]+2
 804920f:       83 c0 06                add    eax,0x6                  # push argv[1]+2+6 == after "--level="
 8049212:       50                      push   eax
 8049213:       8d 45 f8                lea    eax,[ebp-0x8]
 8049216:       50                      push   eax
 8049217:       e8 66 ff ff ff          call   8049182 <something>
 804921c:       83 c4 08                add    esp,0x8
 804921f:       8d 45 f8                lea    eax,[ebp-0x8]
 8049222:       50                      push   eax
 8049223:       68 29 a0 04 08          push   0x804a029
 8049228:       e8 13 fe ff ff          call   8049040 <printf@plt>
 804922d:       83 c4 08                add    esp,0x8
 8049230:       90                      nop
 8049231:       c9                      leave  
 8049232:       c3                      ret    

08049233 <main>:
 8049233:       55                      push   ebp
 8049234:       89 e5                   mov    ebp,esp
 8049236:       83 7d 08 01             cmp    DWORD PTR [ebp+0x8],0x1          # cmp argc
 804923a:       7f 07                   jg     8049243 <main+0x10>              # if argc > 1
 804923c:       b8 ff ff ff ff          mov    eax,0xffffffff
 8049241:       eb 3b                   jmp    804927e <main+0x4b>              # == False (exit)
 8049243:       8b 45 0c                mov    eax,DWORD PTR [ebp+0xc]          # == True
 8049246:       83 c0 04                add    eax,0x4                          # ebp+12 == arv[0] bug ebp+4 == argv[1]
 8049249:       8b 00                   mov    eax,DWORD PTR [eax]      # eax points to &"argv[1]"
 804924b:       6a 02                   push   0x2                      # strcmp param: cmp first 2 characters
 804924d:       68 45 a0 04 08          push   0x804a045                # strcmp param: "--"
 8049252:       50                      push   eax                      # strcmp param: &"arv[1]"
 8049253:       e8 08 fe ff ff          call   8049060 <strncmp@plt>
 8049258:       83 c4 0c                add    esp,0xc
 804925b:       85 c0                   test   eax,eax
 804925d:       75 1a                   jne    8049279 <main+0x46>      # if <strcmp>
 804925f:       8b 45 0c                mov    eax,DWORD PTR [ebp+0xc]  # == True
 8049262:       83 c0 04                add    eax,0x4          # ebp+12 == arv[0] but ebp+16 == argv[1]
 8049265:       8b 00                   mov    eax,DWORD PTR [eax]  # eax points to &"argv[1]"
 8049267:       8d 50 02                lea    edx,[eax+0x2]            # address to argv[1] without first "--"
 804926a:       8b 45 0c                mov    eax,DWORD PTR [ebp+0xc]
 804926d:       8b 00                   mov    eax,DWORD PTR [eax]      # eax holds &"argv[0]"
 804926f:       52                      push   edx              # parseAndSet(argv[0], &argv[1]+2)
 8049270:       50                      push   eax
 8049271:       e8 54 ff ff ff          call   80491ca <parseAndSet>
 8049276:       83 c4 08                add    esp,0x8
 8049279:       b8 00 00 00 00          mov    eax,0x0                  # False (exit)
 804927e:       c9                      leave  
 804927f:       c3                      ret    

08049280 <__libc_csu_init>:
 8049280:       55                      push   ebp
 8049281:       57                      push   edi
 8049282:       56                      push   esi
 8049283:       53                      push   ebx
 8049284:       e8 37 fe ff ff          call   80490c0 <__x86.get_pc_thunk.bx>
 8049289:       81 c3 77 2d 00 00       add    ebx,0x2d77
 804928f:       83 ec 0c                sub    esp,0xc
 8049292:       8b 6c 24 28             mov    ebp,DWORD PTR [esp+0x28]
 8049296:       e8 65 fd ff ff          call   8049000 <_init>
 804929b:       8d b3 10 ff ff ff       lea    esi,[ebx-0xf0]
 80492a1:       8d 83 0c ff ff ff       lea    eax,[ebx-0xf4]
 80492a7:       29 c6                   sub    esi,eax
 80492a9:       c1 fe 02                sar    esi,0x2
 80492ac:       74 1f                   je     80492cd <__libc_csu_init+0x4d>
 80492ae:       31 ff                   xor    edi,edi
 80492b0:       83 ec 04                sub    esp,0x4
 80492b3:       55                      push   ebp
 80492b4:       ff 74 24 2c             push   DWORD PTR [esp+0x2c]
 80492b8:       ff 74 24 2c             push   DWORD PTR [esp+0x2c]
 80492bc:       ff 94 bb 0c ff ff ff    call   DWORD PTR [ebx+edi*4-0xf4]
 80492c3:       83 c7 01                add    edi,0x1
 80492c6:       83 c4 10                add    esp,0x10
 80492c9:       39 fe                   cmp    esi,edi
 80492cb:       75 e3                   jne    80492b0 <__libc_csu_init+0x30>
 80492cd:       83 c4 0c                add    esp,0xc
 80492d0:       5b                      pop    ebx
 80492d1:       5e                      pop    esi
 80492d2:       5f                      pop    edi
 80492d3:       5d                      pop    ebp
 80492d4:       c3                      ret    
 80492d5:       8d b4 26 00 00 00 00    lea    esi,[esi+eiz*1+0x0]
 80492dc:       8d 74 26 00             lea    esi,[esi+eiz*1+0x0]

080492e0 <__libc_csu_fini>:
 80492e0:       c3                      ret    

Disassembly of section .fini:

080492e4 <_fini>:
 80492e4:       53                      push   ebx
 80492e5:       83 ec 08                sub    esp,0x8
 80492e8:       e8 d3 fd ff ff          call   80490c0 <__x86.get_pc_thunk.bx>
 80492ed:       81 c3 13 2d 00 00       add    ebx,0x2d13
 80492f3:       83 c4 08                add    esp,0x8
 80492f6:       5b                      pop    ebx
 80492f7:       c3                      ret