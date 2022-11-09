active proctype jumps() {
    int x = 0;
    loop:
        if
            :: x++
            :: x--
            :: goto end
        fi
        goto loop
    end:
    printf("%d\n", x)
}