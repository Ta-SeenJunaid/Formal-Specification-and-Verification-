chan c = [10] of {byte, byte};
byte v1, v2;

active proctype Sender1 () {
    c ! 1,2; c ! 1,1; c ! 1,3; c ! 0,1;
}

active proctype Rceiver2 () {
    do
    :: c ?? v1, 1 -> printf("%d, %d\n", v1, 1)
    od
}