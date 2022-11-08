#define N 10

active proctype p(){
    byte sum = 0;
    byte i = 1;
        do
            :: i > N -> break
            :: else -> sum = sum + i; i++
        od;
    printf("The sum of the first %d numbers = %d\n", N, sum);
}