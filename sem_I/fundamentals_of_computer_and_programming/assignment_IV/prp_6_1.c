#include<stdio.h>
void main(void) {
    float comp,large=0;
    while(1) {
        printf("\nEnter a number: ");scanf("%f",&comp);
        if(comp<=0) break;
        else if (comp>large) large=comp;
    }
    printf("\nThe largest number entered was %f\n",large);
}