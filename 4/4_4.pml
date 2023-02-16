#define N 10

active proctype P(){
    int value [N];
    int product = 1;
    int i = 0;
    do
    :: i < N ->
        if
            :: value[i] = 1
            :: value[i] = 2
        fi
        printf("i= %d, value= %d\n", i, value[i]);
        product = product * value[i];
        i ++;
    :: else -> break;
    od
    printf("Product is= %d\n", product);
}