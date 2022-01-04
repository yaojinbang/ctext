#include "head.h"
//找到数组中想要的那个数
int get_num(int arr[],int sz,int a)
{
    int left = 0;
    int right = sz-1;
    int middle = 0;
    while(left <= right)
    {
        middle = (left+right)/2;
        if(a < arr[middle])
        {
            right = middle-1;
        }
        else if(a > arr[middle])
        {
            left = middle+1;
        }
        else
        {
            return middle;
        }
    }
    return -1;
}