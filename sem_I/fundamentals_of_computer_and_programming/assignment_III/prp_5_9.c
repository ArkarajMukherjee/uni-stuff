#include<stdio.h>
void main(void) {
    int m1,d1,y1,m2,d2,y2;
    printf("\nEnter first date (mm/dd/yyyy) : ");scanf("%d/%d/%d",&m2,&d2,&y2);
    printf("\nEnter the second date (mm/dd/yyyy) : ");scanf("%d/%d/%d",&m1,&d1,&y1);
    if(y1>y2) printf("\nThe first date is earlier\n");
    else if (y1=y2) {
        if(m1>m2) printf("\nThe first date is earlier\n");
        else if (m1=m2) {
            if(d1>d2) printf("\nThe first date is earlier\n");
            else if(d1=d2) printf("\nThey are both the same date\n\n");
            else printf("\nThe second date is earlier");
        }
        else printf("\nThe second date is earlier\n");
    }
    else printf("\nThe second date is earlier\n");
}