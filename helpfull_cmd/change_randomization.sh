echo $1 | sudo tee /proc/sys/kernel/randomize_va_space
echo "changed randomization settings, result:"
cat /proc/sys/kernel/randomize_va_space
