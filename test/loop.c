#define INPUT_SIZE 512

// int foo(float *__restrict__ a, float *__restrict__ b, float *__restrict__ c, int n) {
//     for (int i = 0; i < n; ++i) {
//         for (int j = 0; j < n; ++j) {

//             if (a[j] > 0) {
//                 a[j] += b[j] + c[j];
//             }
//             if (a[j] > 5) {
//                 a[j] += b[j] - c[j];
//             }
//             if (a[j] > 7) {
//                 a[j] += b[j] * c[j];
//             }
//         }
//     }
//     return 0;
// }


int dijkstra(int n, int s, int e[][INPUT_SIZE]) {
    int vis[INPUT_SIZE] = {0};
    int dis[INPUT_SIZE] = {0};
    int max = 1000000;
    vis[s] = 1;
    for (int i = 0; i < n; ++i) {
        if (e[s][i] == 0) {
            dis[i] = 1000000;
        } else {
            dis[i] = e[s][i];
        }
    }
    return dis[n-1];
}

int main(){
 
 // float* a, *b, *c;
 // int n;
 // foo(a, b, c, n);

}
