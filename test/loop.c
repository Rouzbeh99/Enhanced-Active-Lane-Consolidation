#define INPUT_SIZE 512

 int foo(float *__restrict__ a, float *__restrict__ b, float *__restrict__ c, int n) {
     for (int i = 0; i < n; ++i) {
         for (int j = 0; j < n; ++j) {

             if (a[j] > 10) {
                 a[j] += b[j] + c[j];
             }
             if (a[j] < - 10) {
                 a[j] += b[j] - c[j];
             }
             if (a[j] < 10 && a[j] > -10) {  // calling llvm mul-add function
                 a[j] += b[j] * c[j];
             }
         }
     }
     return 0;
 }



int main(){
 
 // float* a, *b, *c;
 // int n;
 // foo(a, b, c, n);

}
