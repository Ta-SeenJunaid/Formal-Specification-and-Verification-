#define N 2
byte interested[N]
byte turn
byte ncrit

proctype P(byte id) {
    byte other
    other = 1 - id;
    do
        ::interested[id]=1;
        turn = id;
        !(turn == id && interested[other]==1);
        //Critical region start
        ncrit++;
        assert(ncrit == 1);
        printf("Current critical process is %d\n", id);
        ncrit--;
        //Critical region end
        interested[id]=0
    od
}

init {
    atomic {
        run P(0);
        run P(1);
    }
}