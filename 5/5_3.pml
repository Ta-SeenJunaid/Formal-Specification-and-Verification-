mtype = {confess, deny, sentence};
chan messageChannel1 = [0] of {mtype, int }
chan messageChannel2 = [0] of {mtype, int }

active proctype prisoner1(){
    if
        :: messageChannel1!confess
        :: messageChannel1!deny
    fi
    int result;
    messageChannel1?sentence,result ->
        printf("Sentence for prisoner1 in year is %d\n", result); 
}

active proctype prisoner2(){
    if
        :: messageChannel2!confess
        :: messageChannel2!deny
    fi
    int result;
    messageChannel2?sentence,result ->
        printf("Sentence for prisoner2 in year is %d\n", result); 
}

active proctype police(){
    int prisoner1Confess;
    int prisoner2Confess;

    do
        :: messageChannel1?confess ->
            printf("Prisoner1 confessed \n");
            prisoner1Confess = 1;
            break;
        :: messageChannel1?deny ->
            printf("Prisoner1 denied \n");
            prisoner1Confess = 0;
            break;
    od

    do
        :: messageChannel2?confess ->
            printf("Prisoner2 confessed \n");
            prisoner2Confess = 1;
            break;
        :: messageChannel2?deny ->
            printf("Prisoner2 denied \n");
            prisoner2Confess = 0;
            break;
    od

    if
        :: prisoner1Confess == 1 && prisoner2Confess == 1 ->
            messageChannel1 ! sentence, 5;
            messageChannel2 ! sentence, 5;
        :: prisoner1Confess == 1 && prisoner2Confess == 0 ->
            messageChannel1 ! sentence, 0;
            messageChannel2 ! sentence, 20;
        :: prisoner1Confess == 0 && prisoner2Confess == 1 ->
            messageChannel1 ! sentence, 20;
            messageChannel2 ! sentence, 0;
        :: else -> 
            messageChannel1 ! sentence, 1;
            messageChannel2 ! sentence, 1;
    fi
}