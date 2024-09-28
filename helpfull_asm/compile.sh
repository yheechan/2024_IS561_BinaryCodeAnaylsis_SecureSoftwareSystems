gcc -nostdlib -g -m32 bin_sh.s -o bin_sh
gcc -nostdlib -g -m32 setregid.s -o setregid
gcc -nostdlib -g -m32 bin_cat.s -o bin_cat

# objdump -d bin_cat | grep '[0-9a-f]:' | grep -oP '\s\K([0-9a-f]{2} )+' | tr -d ' \n' | sed 's/\(..\)/\\x\1/g'
# gcc -o test test.c -z execstack -m32
