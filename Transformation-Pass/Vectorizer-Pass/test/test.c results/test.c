#include <stdlib.h>
#include <stdbool.h>
#include <stdio.h>

#include <gem5/m5ops.h>

#define __START_TRACE()                                                        \
  { asm volatile(".inst 0x2520e020"); }
#define __STOP_TRACE()                                                         \
  { asm volatile(".inst 0x2520e040"); }

void foo(int *__restrict__ a, int *__restrict__ b, int *__restrict__ c,
         bool *__restrict__ cond, int n) {

  //  __asm__ volatile("dmb sy\n\torr x3,x3,x3\n":: :"memory");
  //  __START_TRACE();
  m5_reset_stats(0, 0);
//#pragma unroll 2
  for (int i = 0; i < n; ++i) {
    if (cond[i]) {
      a[i] = (18 * a[i] + 2 * c[i]) - (b[i] - 4 * a[i]);
      b[i] = 5 * b[i] * a[i];
      c[i] = 2 * b[i] - 3 * a[i];
    }
  }
  m5_dump_stats(0, 0);
  //  __STOP_TRACE();
  //  __asm__ volatile("dmb sy\n\torr x4,x4,x4\n":: :"memory");
}

int *a;
int *b;
int *c;
bool *cond;

int *checked_malloc_int_array(int n) {
  int *ptr = (int*)malloc(sizeof(int)*n);
  if (ptr == NULL) {
    printf("error: failed to allocate memory\n");
    exit(1);
  }
  return ptr;
}

bool *checked_malloc_bool_array(int n) {
  bool *ptr = (bool*)malloc(sizeof(bool)*n);
  if (ptr == NULL) {
    printf("error: failed to allocate memory\n");
    exit(1);
  }
  return ptr;
}

int main() {

  int n = 200000;

  a = checked_malloc_int_array(n);
  b = checked_malloc_int_array(n);
  c = checked_malloc_int_array(n);
  cond = checked_malloc_bool_array(n);

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