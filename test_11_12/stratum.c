#include "head.h"

int stratum(int x)
{
    if(x>0)
    {
        return x*stratum(x-1);
    }
    else
    {
        return 1;
    }
}
int stratum_sum(int x)
{
    if(x>1)
    {
        return stratum(x)+stratum_sum(x-1);
    }
    else
    {
        return 0;
    }

}
int facl(int x)
{
    int sum = 1;
    for(int i = 1;i<=x;i++)
    {
        sum = sum * i;
    }
    return sum;
}

int facl1(int x)
{
    int sum1 = 0;
    int sum = 1;
      for(int j = 1;j<=x;j++,sum = 1)
   {
        for(int i = 1;i<=j;i++)
        {
            sum = sum * i;
        }
        sum1 = sum1 + sum;
   }
   return sum1;
}