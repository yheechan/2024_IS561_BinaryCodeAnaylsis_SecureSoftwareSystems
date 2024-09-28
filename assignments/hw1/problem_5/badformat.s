badformat:     file format elf32-i386


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

08049030 <fgets@plt>:
 8049030:       ff 25 0c c0 04 08       jmp    DWORD PTR ds:0x804c00c
 8049036:       68 00 00 00 00          push   0x0
 804903b:       e9 e0 ff ff ff          jmp    8049020 <.plt>

08049040 <__libc_start_main@plt>:
 8049040:       ff 25 10 c0 04 08       jmp    DWORD PTR ds:0x804c010
 8049046:       68 08 00 00 00          push   0x8
 804904b:       e9 d0 ff ff ff          jmp    8049020 <.plt>

08049050 <fprintf@plt>:
 8049050:       ff 25 14 c0 04 08       jmp    DWORD PTR ds:0x804c014
 8049056:       68 10 00 00 00          push   0x10
 804905b:       e9 c0 ff ff ff          jmp    8049020 <.plt>

08049060 <snprintf@plt>:
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
 8049086:       8d 83 60 d2 ff ff       lea    eax,[ebx-0x2da0]
 804908c:       50                      push   eax
 804908d:       8d 83 00 d2 ff ff       lea    eax,[ebx-0x2e00]
 8049093:       50                      push   eax
 8049094:       51                      push   ecx
 8049095:       56                      push   esi
 8049096:       c7 c0 dd 91 04 08       mov    eax,0x80491dd
 804909c:       50                      push   eax
 804909d:       e8 9e ff ff ff          call   8049040 <__libc_start_main@plt>
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
 8049150:       80 3d 48 c0 04 08 00    cmp    BYTE PTR ds:0x804c048,0x0
 8049157:       75 17                   jne    8049170 <__do_global_dtors_aux+0x20>
 8049159:       55                      push   ebp
 804915a:       89 e5                   mov    ebp,esp
 804915c:       83 ec 08                sub    esp,0x8
 804915f:       e8 6c ff ff ff          call   80490d0 <deregister_tm_clones>
 8049164:       c6 05 48 c0 04 08 01    mov    BYTE PTR ds:0x804c048,0x1
 804916b:       c9                      leave  
 804916c:       c3                      ret    
 804916d:       8d 76 00                lea    esi,[esi+0x0]
 8049170:       c3                      ret    
 8049171:       8d b4 26 00 00 00 00    lea    esi,[esi+eiz*1+0x0]
 8049178:       8d b4 26 00 00 00 00    lea    esi,[esi+eiz*1+0x0]
 804917f:       90                      nop

08049180 <frame_dummy>:
 8049180:       eb 8e                   jmp    8049110 <register_tm_clones>

# ds == data segment
# --------------------
# return address
# ---------------------
# 4 bytes ebp
# -------------------- ebp
# 256 bytes (std_input)
#
# -------------------- ebp - 0x100 0xffffdb00
# 512 bytes (output_string)
# ~
# 4bytes: AAAA         evb - 0x200 0xffffda00  16  : 55808 or (16+55792) : 65535 or (55808+9727)
# 4bytes: 1: A
# 4bytes: IS56          ebp - 0x300 + 40 0xffffd928  55592 or (16 + 55576) : 65535 or (55592+9943)
#                                0xffffd920
# -------------------- ebp - 0x300 0xffffd900
# ebp-0x300
# --------------------
# stdout
# --------------------
# return address after fprintf()
# -------------------- 0xffffd8f4


# 0xffff = 65535
# 0xda00 = 55808

08049182 <printer>:
 8049182:       55                      push   ebp
 8049183:       89 e5                   mov    ebp,esp
 8049185:       81 ec 00 03 00 00       sub    esp,0x300                # 0x300=(3x16^2) + (0x16^1) (0x16^0) = 768
 804918b:       a1 40 c0 04 08          mov    eax,ds:0x804c040         # address to stdin
 8049190:       50                      push   eax
 8049191:       68 ff 00 00 00          push   0xff                     # 0xff == 255
 8049196:       8d 85 00 ff ff ff       lea    eax,[ebp-0x100]          # 0x100=256 # std_input[256]
 804919c:       50                      push   eax
 804919d:       e8 8e fe ff ff          call   8049030 <fgets@plt>      # fgets(std_input, 255, stdin)
 80491a2:       83 c4 0c                add    esp,0xc                  # cleans stack (3 args pushed from calling fgets)
 80491a5:       8d 85 00 ff ff ff       lea    eax,[ebp-0x100]
 80491ab:       50                      push   eax                      # push std_input
 80491ac:       68 08 a0 04 08          push   0x804a008                # address to "IS561L %s"
 80491b1:       68 ff 01 00 00          push   0x1ff                    # 511
 80491b6:       8d 85 00 fd ff ff       lea    eax,[ebp-0x300]
 80491bc:       50                      push   eax                      # output_string
 80491bd:       e8 9e fe ff ff          call   8049060 <snprintf@plt>
 80491c2:       83 c4 10                add    esp,0x10                 # clean stack (4 args = 16 bytes from calling snprintf)
 80491c5:       a1 44 c0 04 08          mov    eax,ds:0x804c044         # 0x804c044 = stdout
 80491ca:       8d 95 00 fd ff ff       lea    edx,[ebp-0x300]
 80491d0:       52                      push   edx
 80491d1:       50                      push   eax
 80491d2:       e8 79 fe ff ff          call   8049050 <fprintf@plt>    # fprintf(stdout, output_string)
 80491d7:       83 c4 08                add    esp,0x8                  # clean stack (2 args called from fprintf)
 80491da:       90                      nop
 80491db:       c9                      leave  
 80491dc:       c3                      ret    
0x080491d7
0x080491d7

0xffffd8d4: return address of fprintf
0xf7e39c90: fprintf beginning
0xf7e39ca3: before call of fprintf

# --------------------
# argv[1]    ebp+0xc
# argv[0]    ebp+0xc
# argc       ebp+0x8
# --------------------
# return address
# --------------------
# ebp (0)
# --------------------
#
#
#
# ---------------------
080491dd <main>:
 80491dd:       55                      push   ebp
 80491de:       89 e5                   mov    ebp,esp
 80491e0:       83 7d 08 01             cmp    DWORD PTR [ebp+0x8],0x1
 80491e4:       7e 07                   jle    80491ed <main+0x10>              # cmp argc<=1
 80491e6:       b8 ff ff ff ff          mov    eax,0xffffffff
 80491eb:       eb 0a                   jmp    80491f7 <main+0x1a>              # at cond==false
 80491ed:       e8 90 ff ff ff          call   8049182 <printer>                # call printer
 80491f2:       b8 00 00 00 00          mov    eax,0x0
 80491f7:       5d                      pop    ebp                              # exit if argc<=1 is false
 80491f8:       c3                      ret    cl
 80491f9:       66 90                   xchg   ax,ax
 80491fb:       66 90                   xchg   ax,ax
 80491fd:       66 90                   xchg   ax,ax
 80491ff:       90                      nop

08049200 <__libc_csu_init>:
 8049200:       55                      push   ebp
 8049201:       57                      push   edi
 8049202:       56                      push   esi
 8049203:       53                      push   ebx
 8049204:       e8 b7 fe ff ff          call   80490c0 <__x86.get_pc_thunk.bx>
 8049209:       81 c3 f7 2d 00 00       add    ebx,0x2df7
 804920f:       83 ec 0c                sub    esp,0xc
 8049212:       8b 6c 24 28             mov    ebp,DWORD PTR [esp+0x28]
 8049216:       e8 e5 fd ff ff          call   8049000 <_init>
 804921b:       8d b3 10 ff ff ff       lea    esi,[ebx-0xf0]
 8049221:       8d 83 0c ff ff ff       lea    eax,[ebx-0xf4]
 8049227:       29 c6                   sub    esi,eax
 8049229:       c1 fe 02                sar    esi,0x2
 804922c:       74 1f                   je     804924d <__libc_csu_init+0x4d>
 804922e:       31 ff                   xor    edi,edi
 8049230:       83 ec 04                sub    esp,0x4
 8049233:       55                      push   ebp
 8049234:       ff 74 24 2c             push   DWORD PTR [esp+0x2c]
 8049238:       ff 74 24 2c             push   DWORD PTR [esp+0x2c]
 804923c:       ff 94 bb 0c ff ff ff    call   DWORD PTR [ebx+edi*4-0xf4]
 8049243:       83 c7 01                add    edi,0x1
 8049246:       83 c4 10                add    esp,0x10
 8049249:       39 fe                   cmp    esi,edi
 804924b:       75 e3                   jne    8049230 <__libc_csu_init+0x30>
 804924d:       83 c4 0c                add    esp,0xc
 8049250:       5b                      pop    ebx
 8049251:       5e                      pop    esi
 8049252:       5f                      pop    edi
 8049253:       5d                      pop    ebp
 8049254:       c3                      ret    
 8049255:       8d b4 26 00 00 00 00    lea    esi,[esi+eiz*1+0x0]
 804925c:       8d 74 26 00             lea    esi,[esi+eiz*1+0x0]

08049260 <__libc_csu_fini>:
 8049260:       c3                      ret    

Disassembly of section .fini:

08049264 <_fini>:
 8049264:       53                      push   ebx
 8049265:       83 ec 08                sub    esp,0x8
 8049268:       e8 53 fe ff ff          call   80490c0 <__x86.get_pc_thunk.bx>
 804926d:       81 c3 93 2d 00 00       add    ebx,0x2d93
 8049273:       83 c4 08                add    esp,0x8
 8049276:       5b                      pop    ebx
 8049277:       c3                      ret
