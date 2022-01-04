#include "head.h"

int get_leap_year(int x)
{
    if(x%4==0 && x%100!=0 || x%400==0)
    {
        return x;
    }
    return -1;
}