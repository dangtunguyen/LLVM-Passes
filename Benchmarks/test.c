#include <stdio.h>

int multiply(int a, int x)
{
    return a*x;
}

int add(int a, int x)
{
    return a+x;
}

int foo(int a, int x)
{
    a += 10;
    return add(a,x);
}


int main() {
    int a = 10;
    
    for(int i = 0; i < 5; i++) {
        if (i%2 == 0)
            a = multiply(a,i+1);
        else
            a = foo(a,i+1);
    }
    
    multiply(5,10);
    
    return 0;
}
