active proctype Hello(){
    printf("Helllo process!!!, my pid is: %d\n", _pid);
}

init {
    int lastpid;
    printf("Init process!!!!, my pid is: %d\n", _pid);
    lastpid = run Hello();
    printf("Last pid was: %d\n", lastpid)
}