#include <stdio.h>
#include <stdlib.h>

#define STACK_SIZE 100

int stack[STACK_SIZE];
int top = 0;

void push(int n) {
    if (top >= STACK_SIZE) {
        printf("Expression is too complex\n");
        exit(1);
    }
    stack[top++] = n;
}

int pop() {
    if (top <= 0) {
        printf("Not enough operands in expression\n");
        exit(1);
    }
    return stack[--top];
}

int main() {
    char c;
    int op1, op2;

    printf("RPN Calculator. Enter a letter to quit.\n");

    for (;;) {
        printf("Enter an RPN expression: ");
        
        while (scanf(" %c", &c) == 1 && c != '=') {
            if (c >= '0' && c <= '9') {
                push(c - '0');
            } else if (c == '+') {
                push(pop() + pop());
            } else if (c == '-') {
                op2 = pop();
                op1 = pop();
                push(op1 - op2);
            } else if (c == '*') {
                push(pop() * pop());
            } else if (c == '/') {
                op2 = pop();
                op1 = pop();
                if (op2 == 0) {
                    printf("Error: Division by zero.\n");
                    exit(1);
                }
                push(op1 / op2);
            } else {
                return 0;
            }
        }

        printf("Value of expression: %d\n", pop());
        top = 0;
    }
    return 0;
}
