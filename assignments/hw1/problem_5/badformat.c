#include <stdio.h>
#include <string.h>

void printer();

int main (int argc, char *argv[]) {
    if (argc <= 1) {
        printer();
    }
    return 0;
}

void printer () {
    char std_input[256];
    char output_string[512];
    fgets(std_input, 255, stdin);
    snprintf(output_string, 511, "IS561: %s", std_input);
    fprintf(stdout, output_string);
}
