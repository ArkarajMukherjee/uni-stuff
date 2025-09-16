#include<stdio.h>
#define STACK_SIZE 10
char stack[STACK_SIZE];
int index=0;
char turn(char c) {
	 if(c=='(') return')';
	 else if(c=='{') return '}';
	 else return ']';
	 
}
char pop() {
	return stack[--index];
}
void push(char c) {
	stack[index++]=c;
}
int main() {
	char c;
	printf("\nenter parentheses and/or braces: ");
	while((c=getchar())!='\n') {
		if(index==STACK_SIZE) {printf("\nStack Overflow\n");return 0;}
		else if(c=='(' || c=='{' || c=='[') push(c);
		else {if(index==0 || c!=turn(pop())){printf("\nparenthese/braces are not nested properly\n");return 0;}}
	}
	if(index!=0){printf("\nparentheses/braces are not nested properly\n");return 0;}
	printf("\nparentheses/braces are nested properly.\n");
}
