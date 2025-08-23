#include <stdio.h>

void main(void) {
    int n, i;
    double e = 1.0, rf = 1.0;
    printf("The number of terms you want to sum up to: ");scanf("%d", &n);
    for (i = 1; i <= n; i++) {
        rf*=1.0/i; 
        e+=rf;
    }
    printf("e is approx. (upto %d terms) = %.31f\n", n, e);
}
