/*
Task 4.5:
Write a Promela model which prints the first 20 natural numbers in random order. “Random” is
synonymous to any permutation of the numbers in the output is possible, likeliness disregarded.
*/
active proctype arbitrary() {
int i = 0
do
:: i < 20 -> 
    i++
    printf("%d\n", i)
:: i < 20 && i > 1 -> 
    i-- 
    printf("%d\n", i)
:: else -> break
od
}