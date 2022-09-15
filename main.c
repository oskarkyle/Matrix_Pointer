#include <stdio.h>

int main(){
    int *p;
    int a[3][3] = { {0, 1, 2},
                    {3, 4, 5},
                    {6, 7, 8}};
    p = &a[0][0];
    for(int i = 0; i < 3; i++){
        printf("\n");
        for(int j = 0; j < 3; j++){
            printf("%d\t", p[i * 3 + j]);
        }
    }

    printf("\n");
    return 0;
}