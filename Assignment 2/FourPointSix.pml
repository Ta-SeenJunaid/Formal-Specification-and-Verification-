#define N 2

proctype P(){
    int counter = 0
    do 
    :: counter < N -> printf("P|_|"); counter++
    :: else -> break
    od
}

proctype Q(){
    int counter = 0
    do 
    :: counter < N -> printf("Q|_|"); counter++
    :: else -> break
    od
}

init {
    atomic{
        run P();
        run Q();
    }
}