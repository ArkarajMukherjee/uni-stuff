#include<stdio.h>
#include<ctype.h>
void main(void) {
    int i=0,flag=1,w1[26]={0},w2[26]={0};
    char c;
    printf("\nEnter first word: ");
    while((c=toupper(getc(stdin)))!='\n') {
        w1[c-65]++;
    }
    printf("\nEnter second word: ");
    while((c=toupper(getc(stdin)))!='\n') {
        w2[c-65]++;
    }
    for(int i=0;i<26;i++) {if(w1[i]!=w2[i]){flag=0;break;}}
    if(flag==1) {printf("\nThe words are anagrams.\n");}
    else printf("\nThe words are not anagrams.\n");
}