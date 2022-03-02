int foo(float* __restrict__ a, float* __restrict__ b, float* __restrict__ c, int n) {
    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < n; ++j) {
            if(n == 1){
                a[i] += b[j] + c[j];
            }
            if (n > 5){
                a[i] += b[j] - c[j];
            }
            if(n){
                a[i] += b[j] * c[j];
            }

        }
    }
    return 0;
}

int bar(float* a, float* b, float* c, int n) {
    for (int i = 0; i < n; ++i) {
      a[i] = a[i] * b[i];
    }
    for (int i = 0; i < n; ++i) {
      a[i] = 0;
      int d = b[i] + c[i];

    }
    return 0;
}


int bar2(float* a, float* b, float* c, int n) {

     for (int i = 0; i < n; ++i) {
      a[i] = a[i - 1] * c[i];

//      if(n){
//        c[i] = a[i-1];
//      }
    }

    return 0;
}
//
//int test(int* number, float* a, float* b, float* c, int n){
//   for (int i = 0; i < 10; ++i){
//    bar2(a, b, c, n);
//
//    if(*number){
//        *number= 1;
//    }else{
//        *number = 0;
//    }
//   }
//    return 0;
//}
