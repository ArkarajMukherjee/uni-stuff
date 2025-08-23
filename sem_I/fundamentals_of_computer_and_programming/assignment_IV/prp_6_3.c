#include<stdio.h>
void main(void){
    int p,q,a,b,r;
    printf("\nEnter a fraction : ");scanf("%d/%d",&p,&q);
    a=p;b=q;
    while(q>0) {
        r=p-(p/q)*q;
        p=q;
        q=r;
    }
    printf("\nIn lowest terms: %d/%d\n",a/p,b/p);
}