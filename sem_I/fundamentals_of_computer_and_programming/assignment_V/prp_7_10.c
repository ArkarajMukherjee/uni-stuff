#include<stdio.h>
int main(void) {
    int v=0;
    char check;
    printf("\nEnter a sentence : ");
    while((check=getc(stdin))!='\n') {
        if((check=='a')||(check=='e')||(check=='i')||(check=='o')||(check=='u')||(check=='A')||(check=='E')||(check=='I')||(check=='O')||(check=='U')) v++;
    }
    printf("\nYour sentence contains %d vowels\n",v);
}
