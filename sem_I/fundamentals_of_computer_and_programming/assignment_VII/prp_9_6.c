#include<stdio.h>
float pol(float x) {return(x*(x*(x*(x*(3*x+2)-5)-1)+7)-6);}
void main(void) {
    float x;
    printf("\nEnter value to evaluate the polynomial on : ");scanf("%f",&x);
    printf("\nThe value is : %f\n",pol(x));
}