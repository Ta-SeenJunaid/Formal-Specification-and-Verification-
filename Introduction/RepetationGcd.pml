active proctype P(){
    byte x = 15, y = 20;
    byte a = x, b = y;
    do
        :: a > b -> a = a - b
        :: b > a -> b = b - a
        :: a == b -> break
    od;
    printf("The GCD of %d and %d = %d\n", x, y, a);
}