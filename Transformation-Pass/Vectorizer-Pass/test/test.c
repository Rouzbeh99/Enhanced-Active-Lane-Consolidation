#include <stdio.h>


void foo(int *__restrict__ a, int *__restrict__ b, int *__restrict__ c, int n) {

   // __asm__ volatile("dmb sy\n\torr x3,x3,x3\n":: :"memory");
    for (int i = 0; i < n; ++i) {
        if (i % 2 == 1) {
            c[i] = a[i] * b[i];
        }
    }
    //__asm__ volatile("dmb sy\n\torr x4,x4,x4\n":: :"memory");
}


int main() {

    int n = 8192;

    int a[n];
    int b[n];
    int c[n];

    for (int i = 0; i < n; ++i) {
        a[i] = i;
        b[i] = 2;
        c[i] = 0;
    }


    foo(a, b, c, n);

    int sum = 0;

    for (int i = 0; i < n; ++i) {
        sum += c[i];
    }
    printf("%d \n", sum);


    return 0;
}
