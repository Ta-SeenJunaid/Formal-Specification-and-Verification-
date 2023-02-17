#define N 10
#define M 0
mtype = {data, eop}

chan ourchannel = [M] of {mtype, int}

active proctype P() {
    int i = 0
    do
        :: i < N -> i++; ourchannel ! data, i;
        :: i >= N -> ourchannel ! eop, 0; break;
    od
}

active proctype Q() {
    int n;
    do
        :: ourchannel ? data, n -> printf("%d\n", n);
        :: ourchannel ? eop, 0 -> break;
    od
}

// Alternative channel representation

// active proctype P() {
//     int i = 0
//     do
//         :: i < N -> i++; ourchannel ! data(i);
//         :: i >= N -> ourchannel ! eop(0); break;
//     od

// }

// active proctype Q() {
//     int n;
//     do
//         :: ourchannel ? data(n) -> printf("%d\n", n);
//         :: ourchannel ? eop(0) -> break;
//     od
// }