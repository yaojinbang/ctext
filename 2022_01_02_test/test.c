#include "test.h"

// int main()
// {
//     const char* src = "hello world";
//     int len = strlen(src);
//     char des[20] = {0};

//     strncpy(des,src,len);
    
//     // printf("len = %d\n", len);
//     printf("%s\n", des);
    
//     return 0;
// }
// void ShowArray(const int *arr, int num)
// {
//     for(int i = 0; i<num; i++)
//     {
//         printf("%d ", arr[i]);
//     }
//     printf("\n");


// }

// int main()
// {
//     int arr[] = {1,2,3,4,5,6,7,8,9,10};
//     int num = sizeof(arr)/sizeof(arr[0]);
    
//     ShowArray(arr, num);
//     return 0;
// }

/*
临时变量的形成是在函数正式调用之前就形成的
形参实例化的顺序是从右向左的

call:函数调用
1.压入返回地址 2.转入目标函数
*/
// int MyAdd(int a, int b)
// {
//     int c = 0;
//     c = a + b;

//     return c;
// }
// int main()
// {
//     int x = 0xA;
//     int y = 0xB;
//     int z = 0;

//     z = MyAdd(x, y);

//     printf("%d\n", z);
//     return 0;
// }

/*
1.调用函数，需要先形成临时拷贝，形成过程是从右向左的
2.临时空间的开辟，是在对应函数栈帧内部开辟的
3.函数调用完毕，栈帧结构被释放掉
4.临时变量具有临时性的本质：栈帧具有临时性
5.调用函数是具有成本的，成本体现在时间和空间上，本质是形成和释放栈帧有成本
6.函数调用，因拷贝所形成的临时变量，变量和变量之间的位置关系是具有规律的

临时拷贝的数据在不同平台下会有差异 在vs平台下 临时拷贝的数据是连续紧挨着放的 在gcc平台下 临时拷贝的数据是连续但间隔一个相应的数据类型放的
*/
// int GetMax(int x, int y)
// {
//     return (x-y);
// }
// int main()
// {
//     int x = 0;
//     int y = 0;
//     scanf("%d,%d", &x, &y);
//     int ret = GetMax(x, y);
//     if(ret > 0)
//     {
//         printf("x\n");
//     }
//     else
//     {
//         printf("y\n");
//     }

//     return 0;
// }
// int FindMax(int num, ...)
// {
//     int max = 0;
//     for(int i = 2; i<=num*2; i += 2)
//     {
//         if(max < (int)*(&num+i))
//         {
//             max = (int)*(&num+i);
//         }
//     }
//     return max;
// }
// int main()
// {
//     int max = FindMax(6, 10,5,4,8,12,52);
//     printf("%d\n", max);
//     return 0;
// }

/*
可变参数列表至少要有一个明确参数
*/

int FindMax(int num, ...)
{
    va_list arg;
    va_start(arg, num);//定义一个指针指向num
    int max = 0;
    max = va_arg(arg, int);//指针加一 指向下一个元素
    for(int i = 0; i<num-1; i++)
    {
        int tmp = va_arg(arg, int);
        if(max < tmp)
        {
            max = tmp;
        }
    }
    va_end(arg);
    return max;
}

int main()
{
    int max = FindMax(5, 1,5,9,7,3);
    printf("max = %d\n", max);
    return 0;
}