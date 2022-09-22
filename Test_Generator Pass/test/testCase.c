
#include <stdio.h>

//void foo(int *a, int *b, int *c) {
//    c[0] = a[0] + b[0];
//}

int main() {
    __asm__ volatile("dmb sy\n\torr x3,x3,x3\n":: :"memory");

    __asm__ volatile("\n\torr x1,x1,x1\n":: :"memory");

//    int n = 100;
//
//    int a[n];
//    int b[n];
//    int c[n];
//
//    for (int i = 0; i < n; ++i) {
//        a[i] = i;
//        b[i] = i;
//        c[i] = 0;
//    }
//
//
//    foo(a, b, c);
//    for (int i = 0; i < n; ++i) {
//        printf("%d ", c[i]);
//    }
//    printf("\n");
    __asm__ volatile("dmb sy\n\torr x4,x4,x4\n":: :"memory");

    return 0;
}
