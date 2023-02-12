// Task 3.1:
// Use len to implement the functions full, nfull, empty and nempty

chan my_channel = [1] of {int}

proctype producer(){
    byte data;
    do
    :: len(my_channel) == 1 ->
        printf("Channel is full, waiting for a receiver\n");
    :: len(my_channel) != 1 ->
        //generating data
        select(data: 0..10)
        my_channel ! data
    od

}

proctype consumer() {
    byte data;
    do
    :: len(my_channel) != 0 ->
        my_channel ? data;
        printf("Data received: %d\n", data);
    :: len(my_channel) == 0 ->
        printf("Channel is empty, waiting for the producer\n");
    od

}

init {
    atomic{
        run producer();
        run consumer();
    };

}