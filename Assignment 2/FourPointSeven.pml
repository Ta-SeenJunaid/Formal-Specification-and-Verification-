int x = 8;
int y = 6;
int z = 0;

active proctype P(){
    if
    :: x< y -> z = 100
    :: else -> z = 200
    fi
    printf("%d",z)
}

active proctype Q(){
   x =1 
}

active proctype R(){
   z =300 
}