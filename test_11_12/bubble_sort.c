#include "head.h"

void bubble_sort(int num[], int sz)
{
    for(int i=0; i<sz-1; i++)//冒泡排序 趟数9
    {
        int flag = 1;
        for(int j=0,tmp = 0; j<sz-1-i; j++)//每次换9-i次
        {
            if(num[j] > num[j+1])
            {
                tmp = num[j];
                num[j] = num[j+1];
                num[j+1] = tmp;
                flag = 0;
            }
        }
        if(flag == 1)
        {
            break;
        }
    }
}

void sort(int num[], int sz)
{
    for(int i=0; i<sz; i++)
    {
        for(int j=i+1,tmp=0; j<sz; j++)
        {
            
            if(num[i] > num[j])
            {
                tmp = num[i];
                num[i] = num[j];
                num[j] = tmp;
                tmp = 0;
            }
        }
         printf("%d\n",num[i]);
    }
}