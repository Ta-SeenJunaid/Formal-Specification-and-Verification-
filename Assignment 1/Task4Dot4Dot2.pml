#define N 10

active proctype P() {
    int value [N];
    int product = 1;
    int i = 0
    for (i : 1 .. N){
        if
        ::  value[i-1] = 1
        ::  value[i-1] = 2
        fi
        product = product * value[i-1]
    }
    printf("Product is %d\n", product)
}