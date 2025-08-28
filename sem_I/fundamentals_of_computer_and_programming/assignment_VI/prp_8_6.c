#include<stdio.h>
#include<ctype.h>
void main(void) {
    char c,B1FF[128];
    int i=0;
    printf("\nEnter message: ");
    while((c=getc(stdin))!='\n') {
        c=toupper(c);
        if(c=='A') B1FF[i]='4';
        else if(c=='B') B1FF[i]='8';
        else if(c=='E') B1FF[i]='3';
        else if(c=='I') B1FF[i]='1';
        else if(c=='O') B1FF[i]='0';
        else if(c=='S') B1FF[i]='5';
        else B1FF[i]=c;
        i++;
    }
    B1FF[i]='\0';
    i=0;
    printf("\nIn B1FF-speak: ");
    while(B1FF[i]!='\0') {
        printf("%c",B1FF[i]);
        i++;
    }
    printf("!!!!!!!!!!\n");
}