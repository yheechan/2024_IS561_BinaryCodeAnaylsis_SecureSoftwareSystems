#include <stdio.h>
#include <string.h>

void parseAndSet(char *cmd_filename, char *flag);
void something(char *dest, char *source);

int main (int argc, char *argv[]) {
    if (argc <= 1) {
        return -1;
    }

    if (strncmp(argv[1], "--", 2) == 0) {
        parseAndSet(argv[0], argv[1]+2);
    }
    return 0;
}

void parseAndSet (char *cmd_filename, char *flag) {
    char local_variable[8];

    if (strcmp(flag, "help") == 0) {
        printf("%s [opts] --level=N\n", cmd_filename);
    } else if (strncmp(flag, "level=", 6) == 0) {
        something(local_variable, flag+6);
        printf("setting privilege level %s\n", local_variable);
    }
}

void something (char *dest, char *source) {
    int offset = 0;
    while (source[offset] != '\0') {
        dest[offset] = source[offset];
        offset++;
    }
    dest[offset] = '\0';
}
