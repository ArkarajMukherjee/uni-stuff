#include <stdio.h>
#include <string.h>
void main(void) {
    int hr, min;
    char mode[3];
    printf("Enter a 12-hour time (hh:mm AM/PM): ");
    scanf("%d:%d %2s", &hr, &min, mode);
    if (strcmp(mode, "AM") == 0) {if(hr==12) hr=0;}
    else if (strcmp(mode, "PM") == 0) {if(hr!=12) hr+=12;}
    printf("Equivalent 24-hour time: %02d:%02d\n", hr, min);
}
