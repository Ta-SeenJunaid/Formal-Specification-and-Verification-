active proctype P(){
    int value;
    do
    ::  select( value: 0..2 )
        printf("value is: %d\n", value)
        break
    od
}
