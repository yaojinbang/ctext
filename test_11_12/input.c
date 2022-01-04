#include "head.h"

void input(int x)
{
    printf("%d ",x);
    x++;
    if(x <= 4)
    {
        input(x);
    }
}