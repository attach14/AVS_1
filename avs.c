#include <stdio.h>
#include <stdlib.h>
int* read(int arr_size){
    int* mas = (int*)malloc(arr_size * sizeof(int));
    for(int i = 0; i < arr_size; i++){
        scanf("%d",&mas[i]);
    }
    return mas;
}
int* compute(int* mas, int arr_size){
    int* ans = (int*)malloc(arr_size * sizeof(int));
    char met = 0;
    for(int i = 0; i < arr_size;i++){
        if(mas[i] > 0){
            met = 1;
        }
        ans[i] = mas[i];
        if(met == 0){
            ans[i] -= 5;
        }
    }
    return ans;
}
void write(int* ans, int arr_size){
    for(int i = 0; i < arr_size; i++){
        printf("%d ", ans[i]);
    }
    printf("\n");
}
int main(void){
    int arr_size = 0;
    scanf("%d", &arr_size);
    if(arr_size < 0 || arr_size > 10000){
        printf("Wrong size!\n");
        return 0;
    }
    int* mas = read(arr_size);
    int* ans = compute(mas, arr_size);
    write(ans, arr_size);
}
