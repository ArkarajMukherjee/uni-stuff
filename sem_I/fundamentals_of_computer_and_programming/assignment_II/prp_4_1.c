#include<stdio.h>
void main(void) {
    int n;
    printf("\nEnter a two-digit number:\t");scanf("%d",&n);
    printf("\nthe reversal is:\t%d\n",10*(n-10*(n/10))+n/10);
}