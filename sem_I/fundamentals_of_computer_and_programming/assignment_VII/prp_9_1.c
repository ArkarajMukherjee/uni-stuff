#include<stdio.h>
#include<stdlib.h>
void selection_sort(int *arr,int n) {
    int temp,largest_index=0,i;
    if(n<=1) return;
    for(i=0;i<n;i++) 
        if(arr[i]>arr[largest_index]) largest_index=i;
    temp=arr[n-1];
    arr[n-1]=arr[largest_index];
    arr[largest_index]=temp;
    selection_sort(arr,n-1);
}
void main(void) {
    int *arr=NULL,n,i;
    printf("\nHow long will the array be? : ");
    scanf("%d",&n);
    arr=malloc(n * sizeof(int));
    if(!arr) {printf("\nmem_alloc_err.\n");}
    printf("\nEnter the numbers one by one : ");
    for(i=0;i<n;i++) {
        printf("\nenter number %d : ",i+1);
        scanf("%d",&arr[i]);
    }
    selection_sort(arr,n);
    printf("\nHeres the sorted array :");
    for(i=0;i<n;i++) {printf(" %d",arr[i]);}
    printf("\n");
    free(arr);
}