#include<stdio.h>
int main() {
    double n, sum=0;
    printf("\nThis programme sums a series of numbers.\n");
    scanf("%lf",&n);
    while(n!=0) {
        sum+=n;
        scanf("%lf",&n);
    }
    printf("\nthe sum is : %lf\n", sum);
    return 0;
}
