#include<stdio.h>
void main(void) {
    int a,b,c,d,l,s;
    scanf("%d %d %d %d",&a,&b,&c,&d);
    l=a;s=a;
    if(a>b) {l=a,s=b;}
    else {l=b;s=a;}
    if(c>l) l=c;
    else if(c<s) s=c;
    if(d>l) l=d;
    else if(d<s) s=d;
    printf("\nLargest:\t%d\nSmallest:\t%d\n",l,s); 
}