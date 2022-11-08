#define N 10

active proctype P(){
    byte sum = 0;
    byte i = 1;
 
    for (i : 1 .. N){
        sum = sum + i
    }
    printf("The sum of the first %d numbers = %d\n", N, sum);
}