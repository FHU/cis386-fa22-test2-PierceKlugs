#include <stdio.h>

int trib(int a, int b, int c, int n) {
    if (n == 0) {
        return a;
    }
    if (n == 1) {
        return b;
    }
    if (n == 2) {
        return c;
    }
    return trib(b, c, a + b + c, n - 1);
}

int main(void) {
    int n, a, b, c;
    printf("Enter tribonacci(0): ");
    scanf("%d", &a);
    printf("Enter tribonacci(1): ");
    scanf("%d", &b);
    printf("Enter tribonacci(2): ");
    scanf("%d", &c);
    printf("Enter n: ");
    scanf("%d", &n);
    printf("tribonacci(%d) = %d", n, trib(a, b, c, n));
    return 0;
}