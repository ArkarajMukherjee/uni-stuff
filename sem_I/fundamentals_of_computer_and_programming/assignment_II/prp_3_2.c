#include<stdio.h>
#include<stdlib.h>
int main(void) {
    int item_num,mm,dd,yyyy;float unit_pr;
    printf("\nEnter item number:\t");scanf("%d",&item_num);
    printf("\nEnter unit price:\t");scanf("%f",&unit_pr);
    if(unit_pr>9999.0f){printf("\nNot allowed as per the exercise.\n");return 0;}
    printf("\nEnter purchase date (mm/dd/yyyy):\t");scanf("%d/%d/%d",&mm,&dd,&yyyy);
    printf("\nItem\t\tUnit\t\tPurchase\n\t\tPrice\t\tDate\n%d\t\t$ %6.2f\t%d/%d/%d\n",item_num,unit_pr,mm,dd,yyyy);    
}