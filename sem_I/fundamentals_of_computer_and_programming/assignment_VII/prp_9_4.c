#include<stdio.h>
#include<ctype.h>
void read_word(int *counts) {
    char c;
    while((c=toupper(getc(stdin)))!='\n') {
        counts[c-65]++;
    }
}
int equal_array(int *a1,int *a2) {
    int i;
    for(i=0;i<26;i++) {
        if(a1[i]!=a2[i]) return 0;
        return 1;
    }
}
void main(void) {
    int flag=1,w1[26]={0},w2[26]={0};
    printf("\nEnter first word: ");
    read_word(w1);
    printf("\nEnter second word: ");
    read_word(w2);
    flag=equal_array(w1,w2);
    if(flag==1) {printf("\nThe words are anagrams.\n");}
    else printf("\nThe words are not anagrams.\n");
}