#include<stdio.h>
#include<string.h>
#define MAX_DIGITS 10

/*
#___##
|###|#
#___##
|###|#
#___##

this is where the segments will be.

# 1 #
2###3
# 4 #
5###6
# 7 #
 */

void encode_to_seven_seg(int enc_arr[][7], int arr[], int len) {
	for(int i=0;i<len;i++) {
		switch(arr[i]) {
			case 0: int sty_0[7]={1,1,1,0,1,1,1}; memcpy(enc_arr[i],sty_0,sizeof(sty_0)); break;
			case 1: int sty_1[7]={0,0,1,0,0,1,0}; memcpy(enc_arr[i],sty_1,sizeof(sty_1)); break;
			case 2: int sty_2[7]={1,0,1,1,1,0,1}; memcpy(enc_arr[i],sty_2,sizeof(sty_2)); break;
			case 3: int sty_3[7]={1,0,1,1,0,1,1}; memcpy(enc_arr[i],sty_3,sizeof(sty_3)); break;
			case 4: int sty_4[7]={0,1,1,1,0,1,0}; memcpy(enc_arr[i],sty_4,sizeof(sty_4)); break;
			case 5: int sty_5[7]={1,1,0,1,0,1,1}; memcpy(enc_arr[i],sty_5,sizeof(sty_5)); break;
			case 6: int sty_6[7]={1,0,1,1,1,1,1}; memcpy(enc_arr[i],sty_6,sizeof(sty_6)); break;
			case 7: int sty_7[7]={1,0,1,0,0,1,0}; memcpy(enc_arr[i],sty_7,sizeof(sty_7)); break;
			case 8: int sty_8[7]={1,1,1,1,1,1,1}; memcpy(enc_arr[i],sty_8,sizeof(sty_8)); break;
			case 9: int sty_9[7]={1,1,1,1,0,1,1}; memcpy(enc_arr[i],sty_9,sizeof(sty_9)); break;
		};
	}
	printf("\n[+]encoded succesfully. 7 segment matrix displayed below:");
	for(int i=0;i<len;i++) {
		printf("\n");
		for(int j=0;j<7;j++) printf("%d ",enc_arr[i][j]);
	}
}

void print_seven_seg(int enc_arr[][7], int len) {
	int i;
	printf("\n");
	//printing the 1st layer	
	for(i=0;i<len;i++) {
		if(enc_arr[i][0]==1) printf(" ___ \t");
		else printf("     \t");
	}
	printf("\n");
	for(i=0;i<len;i++) {
		if(enc_arr[i][1]==0 && enc_arr[i][2]==0) printf("     \t");
		else if(enc_arr[i][1]==0 && enc_arr[i][2]==1) printf("    |\t");
		else if(enc_arr[i][1]==1 && enc_arr[i][2]==0) printf("|    \t");
		else printf("|   |\t");
	}
	printf("\n");
	//printing the 3rd layer
	for(i=0;i<len;i++) {
		if(enc_arr[i][3]==1) printf(" ___ \t");
		else printf("     \t");
	}
	printf("\n");
	//printing the 4th layer	
	for(i=0;i<len;i++) {
		if(enc_arr[i][4]==0 && enc_arr[i][5]==0) printf("     \t");
		else if(enc_arr[i][4]==0 && enc_arr[i][5]==1) printf("    |\t");
		else if(enc_arr[i][4]==1 && enc_arr[i][5]==0) printf("|    \t");
		else printf("|   |\t");
	}
	printf("\n");
	//printing the 5th layer
	for(i=0;i<len;i++) {
		if(enc_arr[i][6]==1) printf(" ___ \t");
		else printf("     \t");
	}
	printf("\n[+]printed succesfully.\n");
}

int main(void) {
	char num[64];
	int arr[MAX_DIGITS], enc_arr[MAX_DIGITS][7],n=0;
	printf("\n[>]input the string(characters will be ignored.) : ");scanf(" %s",num);
	printf("[/]pruning input to extract integers");
	for(int i=0;num[i]!='\0';i++) {
		if(n>MAX_DIGITS) break;
		if(num[i]<='9' && num[i]>='0'){
			arr[n] = num[i] - '0';
			n++;
		}
	}
	printf("\n[+]integers extracted succesfully : ");
	for(int i=0;i<n;i++) {printf("%d ",arr[i]);}
	printf("\n[/]encoding array as seven segment matrix.");
	encode_to_seven_seg(enc_arr,arr,n);
	printf("\n[/]printing using seven segment matrix.");
	print_seven_seg(enc_arr,n);
	return 0;
}
