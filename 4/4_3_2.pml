active proctype P(){
    int value;
    do
    ::  if
        :: value = 0;
        :: value = 1;
        :: value = 2;
        fi
        printf("value is: %d\n", value);
        break;
    od
}