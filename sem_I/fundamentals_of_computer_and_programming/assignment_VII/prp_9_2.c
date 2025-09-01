#include<stdio.h>
float tax(float a) {
    float t;
    if(a<=750) t=0.01*a;
    else if(a<=2250) t=7.50+0.02*(a-750.0);
    else if(a<=3750) t=37.50+0.03*(a-2250.0);
    else if(a<=5250) t=82.50+0.04*(a-3750.0);
    else if(a<=7000) t=142.50+0.05*(a-5250.0);
    else t=230.00+0.06*(a-7000.0);
    return t;
}
void main(void) {
    float a;
    printf("\nEnter the taxable amount:\t");scanf("%f",&a);
    printf("\nThe taxable amount is:\t$%f\nThe tax due:\t\t$%f\n",a,tax(a));
}