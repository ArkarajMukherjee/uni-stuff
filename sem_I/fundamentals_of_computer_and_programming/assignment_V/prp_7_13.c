#include<stdio.h>
int main(void) {
    int l=0, w=1;
    char c;
    while((c=getc(stdin))!='\n') {//why does getch not work????
        if(c!=' ') l++;
        else w++;
    }
    printf("\nAverage word length: %.1f\n",(float)l/w);
}
