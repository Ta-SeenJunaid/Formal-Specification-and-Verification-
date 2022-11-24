#define N 10
#define M 0
mtype = {number, eof}
chan ourchannel = [M] of {mtype, int }

active proctype P() {
    /* code to be added */

    int i=0;
    do
    ::i<N -> i++; ourchannel!number(i);
    ::i>=N -> ourchannel!eof(0);break
    od
}

active proctype Q() {
    /* code to be added */

    int i=0
    int n

    do
    ::ourchannel?number(n);printf("%d\n",n)
    ::ourchannel?eof(0) -> break
    od
}
