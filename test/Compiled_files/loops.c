//int foo(float* __restrict__ a, float* __restrict__ b, float* __restrict__ c, int n) {
//    for (int i = 0; i < n; ++i) {
//        for (int j = 0; j < n; ++j) {
//            if(a[j] > 0){
//                a[j] += b[j] + c[j];
//            }
//            if (a[j] > 5){
//                a[j] += b[j] - c[j];
//            }
//            if( a[j] > 7){
//                a[j] += b[j] * c[j];
//            }
//
//        }
//    }
//    return 0;
//}

void foo2(int* __restrict__ a, int n){
   for (int i = 0; i < n; ++i){
//       a[i] = i;
      if(i > 3){
          a[i] *= 5;
      }else{
          a[i] += 2;
      }
   }
}


//struct City {
//    int population;
//    int* people;
//};
//
//struct Country {
//    int numberOfCities;
//    struct City *cities;
//};
//
//
//void foo3(struct Country *country) {
//    for (int i = 0; i < country->numberOfCities; ++i) {
//        struct City *cityPointer = &country->cities[i];
////        *cityPointer->people = i;
//        cityPointer->population = i;
//    }
//}
//
// int bar(float* a, float* b, float* c, int n) {
//
//     // for (int i = 0; i < n; ++i) {
//     //   a[i] = a[i] * b[i];
//     // }
//
//     int d = 0;
//
//     for (int i = 0; i < n; ++i) {
//        d += b[i] + c[i];
//
//     }
//
//     return d;
// }
//
//
// int bar2(float* a, float* b, float* c, int n) {
//
//      for (int i = 0; i < n; ++i) {
//       a[i] = a[i - 1] * c[i];
//     }
//
//     return 0;
// }
