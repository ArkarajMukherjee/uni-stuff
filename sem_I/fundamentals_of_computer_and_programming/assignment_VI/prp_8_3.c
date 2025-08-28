#include<stdio.h>
void main(void) {
    long n,i;
    int arr[32]={0};
    printf("\nEnter the number : ");scanf("%d",&n);
    while(n>0) {
        arr[n%10]++;
        n=n/10;
    }
    printf("\nRepeated digit(s) :");
    for(i=0;i<32;i++){if(arr[i]>0) printf(" %d",i);}
    printf("\nno. of occurences :");
    for(i=0;i<32;i++){if(arr[i]>0) printf(" %d", arr[i]);}
    printf("\n");
}