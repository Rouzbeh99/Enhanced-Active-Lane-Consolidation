int foo(float* a, float* b, float* c, int n) {
    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < n; ++j) {
            if(a[i]){
                a[i] = 1;
            }else if(b[j]){
                b[j] = 1;
            }else{
                c[i] = 1;
            }
        }
    }
    return 0;
}

int bar(float* a, float* b, float* c, int n) {
    for (int i = 0; i < n; ++i) {
      a[i] += c[i] * b[i];
    }
    return 0;
}
