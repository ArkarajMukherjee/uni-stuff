#include<stdio.h>
void main(void) {
    int rev=0,n;
    printf("\nEnter a nunber to reverse : ");scanf("%d",&n);
    while(n>0) {
        rev = 10*rev+n-10*(n/10);
        n=n/10;
    }
    printf("\nThe number reversed is : %d\n",rev);
}