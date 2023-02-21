  proctype Fibo(chan inside; int n){
      chan return_c = [0] of {int};
      int tmp1;
      int tmp2;
      if
      :: (n <= 2) -> inside ! 1;
      :: else ->
         run Fibo(return_c, (n-1));
         return_c ? tmp1;
         run Fibo(return_c, (n-2));
         return_c ? tmp2;
         inside ! (tmp1 + tmp2);
      fi
  }

  init {
      chan return_c = [0] of {int};
      int result;
      run Fibo(return_c, 14);
      return_c ? result; printf("Fibonacci number = %d\n", result);
  }