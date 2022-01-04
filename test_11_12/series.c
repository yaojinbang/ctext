#include "head.h"

int series(int x)
{
    if(x<=2)
    {
        return 1;
    }
    else if(x>2)
    {
        return series(x-1)+series(x-2);
    }


}

int fib(int x)
{
    int first = 1;
    int second = 1;
    int third = 1;
    // printf("%d\n",first);
    // printf("%d\n",second);
    while(x>2)
    {
        third = first+second;
        first = second;
        second = third;
        // printf("%d\n",third);
        x--;
    }
    return third;
}
/*****************************************/
/******青蛙跳台阶，一次可以跳1 也可跳2******/
/*  1 = 1
    2 = 1+1 2
    3 = 1+1+1 2+1 1+2
    4 = 1+1+1+1 2+1+1 1+2+1 1+1+2 2+2
    5 = 1+1+1+1+1 2+1+1+1 1+2+1+1 1+1+2+1 1+1+1+2 2+2+1 1+2+2 2+1+2
    即是斐波那切数列
*/ 
/*****************************************/


