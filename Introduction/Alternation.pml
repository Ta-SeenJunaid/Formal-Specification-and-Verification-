active proctype p(){
    byte a = 1, b = 4, c = 4;
    byte disc;
    disc = b * b - 4 * a *c;
    if
        :: disc < 0 -> printf("disc = %d: no real roots\n", disc)
        :: disc == 0 -> printf("disc = %d: duplicate real roots\n", disc)
        :: disc > 0 -> printf("disc = %d: two real roots\n", disc)
    fi
}