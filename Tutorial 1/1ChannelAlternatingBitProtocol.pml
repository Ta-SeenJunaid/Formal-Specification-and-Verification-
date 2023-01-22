mtype {MSG, ACK};

chan toS = [2] of {mtype, bit};
chan toR = [2] of {mtype, bit};

// out ! MSG, sendbit is same as MSG(sendbit)

proctype Sender(chan in, out)
{
    bit sendbit, recvbit;
    do
    :: out ! MSG, sendbit ->
        in  ? ACK, recvbit;
        if 
        :: recvbit == sendbit -> 
            sendbit = 1 - sendbit
        :: else 
        fi
    od
}

proctype Receiver(chan in, out)
{
    bit recvbit;
    do
    :: in ? MSG(recvbit) ->
        out ! ACK(recvbit);
    od
}

init
{
    run Sender(toS, toR);
    run Receiver(toR, toS);
}