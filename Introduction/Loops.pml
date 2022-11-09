int count = 0;
active proctype counter() {
do
:: count++
:: count--
:: break
od
printf("count=%d\n", count)
}