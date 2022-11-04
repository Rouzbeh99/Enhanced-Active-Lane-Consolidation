#include <stdio.h>
#include <stdbool.h>

#define __START_TRACE() { asm volatile (".inst 0x2520e020"); }
#define __STOP_TRACE() { asm volatile (".inst 0x2520e040"); }

void foo(int *__restrict__ a, int *__restrict__ b, int *__restrict__ c, bool *__restrict__ cond, int n) {

//     __asm__ volatile("dmb sy\n\torr x3,x3,x3\n":: :"memory");
    __START_TRACE();
    for (int i = 0; i < n; ++i) {
        if (cond[i]) {
            c[i] = a[i] * b[i];
        }
    }
    __STOP_TRACE();
//    __asm__ volatile("dmb sy\n\torr x4,x4,x4\n":: :"memory");
}


int main() {

    int n = 8192;

    int a[n];
    int b[n];
    int c[n];
    bool cond[n];

    for (int i = 0; i < n; ++i) {
        a[i] = i;
        b[i] = 2;
        c[i] = 0;
        cond[i] = (i == 0 ? 0 : (i % 10 == 0));
    }


    foo(a, b, c, cond, n);

    int sum = 0;

    for (int i = 0; i < n; ++i) {
        sum += c[i];
    }

    printf("%d \n", sum);


    return 0;
}
