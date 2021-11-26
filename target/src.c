#include <stdio.h>
#include <stdlib.h>

#define MAX 0x100

char input[MAX];


void BUG() {

    puts("Reach bug1");
    strtok("QAQ", "A"); // booom

}


void BUG2() {

    puts("Reach bug2");
    input[MAX + 1] = 0;

}


void BUG3() {

    puts("Reach bug3");
    int n = read(0, input, MAX);
    input[n - 1] = '\0';
    printf(input);

}

int main() {

    puts("Mediatek Fuzzing Workshop in HITCON 2021!");

    if (read(0, input, MAX) < 7)
        return -1;

    // if (!strcmp(input, "MTK"))
    //     BUG();

    if (input[0] == 'M') {

        if (input[1] == 'T') {

            if (input[2] == 'K') {

                if (*(int*)(&input[3]) == 0xdeadbeef) {

                    BUG();

                }

            }

        }

    }

    // BUG2();

    // BUG3();

    return 0;
}