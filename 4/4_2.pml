int revisited = 0;

proctype HelloWorld(){
    run Revisited();
    revisited == 1;
    printf("Hello World!!!");
}

proctype Revisited(){
    printf("Revisited!!!!!!");
    revisited=1;
}

init {
    run HelloWorld();
}