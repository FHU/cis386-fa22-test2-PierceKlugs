//tribonacci sequence using iteration given three inputs
#include <stdio.h>

int main(void) {
    int n, a, b, c, d;
    printf("Enter tribonacci(0): ");
    scanf("%d", &a);
    printf("Enter tribonacci(1): ");
    scanf("%d", &b);
    printf("Enter tribonacci(2): ");
    scanf("%d", &c);
    printf("Enter n: ");
    scanf("%d", &n);
    if(n==0){
        return 0;
    }
    if(n==1){
        return 0;
    }
    if(n==2){
        return 0;
    }
    n = n + 1;
    int i;
    for (i = 0; i < n - 3; i++) {
        d = a + b + c;
        a = b;
        b = c;
        c = d;
    }
    
    printf("tribonacci(%d) = %d", n - 1, d);
    return 0;
}
