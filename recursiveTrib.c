#include <stdio.h>
    
int trib(int trib0, int trib1, int trib2, int n)
{
    if(n == 0) 
        return trib0;

    if(n == 1)
        return trib1;

    if(n == 2)
        return trib2;

    return trib(trib1, trib2, trib0+trib1+trib2, n-1);
    
    // return trib(trib0, trib1, trib2, n-1) 
    //     + trib(trib0, trib1, trib2, n-2) 
    //     + trib(trib0, trib1, trib2, n-3);    
}

int main()
{
    int trib0, trib1, trib2, n;

    do {
        printf("Enter tribonacci(0): ");
        scanf("%d", &trib0);
    } while( trib0 < 0 );

    do {
        printf("Enter tribonacci(0): ");
        scanf("%d", &trib1);
    } while( trib1 < 0 );

    do {
        printf("Enter tribonacci(0): ");
        scanf("%d", &trib2);
    } while( trib2 < 0 );

    do {
        printf("Enter n: ");
        scanf("%d", &n);
    } while( n < 0 );

    int tribn = trib(trib0, trib1, trib2, n);

    printf("tribonacci(%d) = %d\n", n, tribn);

    return 0;
}
