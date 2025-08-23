#include<stdio.h>
void main(void) {
    int n,c=0;
    printf("\nEnter a number:\t");
    scanf("%d",&n);
    while(n!=0) {
        n=n/10;
        c++;
    }
    printf("\nThe number has %d digits\n",c);
}