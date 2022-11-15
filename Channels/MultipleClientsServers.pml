chan request = [0] of {byte, chan};

active [2] proctype Server () {
    byte client; chan c;
    end:
        do
        :: request ? client, c -> printf("Client %d\n", client);
                                c ! client
        od
}

active [5] proctype Client() {
    byte msg; 
    chan reply = [0] of { byte };
    request ! _pid, reply;
    reply ? msg;
    printf("Client %d msg: %d\n", _pid, msg);
}