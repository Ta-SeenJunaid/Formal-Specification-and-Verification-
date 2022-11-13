chan request = [0] of {byte, chan};

active [2] proctype Server () {
    byte client; chan c;
    end:
        do
        :: request ? client, c -> printf("Client %d\n", client);
                                c ! client
        od
}

active proctype Client0 () {
    byte msg; chan reply = [0] of { byte };
    request ! 0, reply;
    reply ? msg;
    printf("Client O msg: %d\n", msg);
}

active proctype Client1 () {
    byte msg; chan reply = [0] of { byte };
    request ! 1, reply;
    reply ? msg;
    printf("Client 1 msg: %d\n", msg);
}