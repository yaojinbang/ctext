#include "head.h"

// int main(int argc,char *argv[])
// {
//     int n = 9;
//     float* pn = (float*)&n;
//     printf("%d\n",n);
//     printf("%f\n",*pn);

//     *pn = 9.0;
//     printf("%d\n",n);
//     printf("%f\n",*pn);
//     return 0;

//     //(-1)^S * M * 2^E;
//     //(-1)^s表示符号位，当s=0,V为正数;当s=1,V为负数
//     //M表示有效数字，大于等于1,小于2.
//     //2^E表示指数位
//     //1001.0
//     //(-1)^0 * 1.001 * 2^3

//     //0 10000010 00100000000000000000000
//     //01000001 00010000 00000000 00000000
//     //
//     //s 0
//     //m 1.001
//     //e 3
//     //0.5 二进制表示为 0.1
//     //0.1 = 1*2^-1
//     //(-1)^0 * 1 * 2^-1

//     //5.5 101.1
//     //(-1)^0 * 1.011 * 2^2
//     //s=0  m=1.011 e=2
//     //0 0011 2+127=129
//     //01000000101100000000000000000000
// }
// void test(int arr[])
// {
//     int sz = sizeof(arr)/sizeof(arr[0]);
//     printf("%d\n",sz);
// }
// int main()
// {
//     int arr[10] = {0};
//     test(arr);
//     return 0;
// }

// int main()
// {
//     char arr[] = "abcdef";
//     char *pc = arr;
//     printf("%s\n",arr);
//     printf("%s\n",pc);
// }

// int main()
// {
//     char *p = "abcdef";
//     printf("%s\n",p);
//     return 0;
// }

// int main()
// {
//     int arr1[] = {1, 2, 3, 4, 5};
//     int arr2[] = {2, 3, 4, 5, 6};
//     int arr3[] = {3, 4, 5, 6, 7};
//     int *parr[] = {arr1, arr2, arr3};
//     for (int i = 0; i < 3; i++)
//     {
//         for (int j = 0; j < 5; j++)
//         {
//             printf("%d ", *parr[i] + j);
//         }
//         printf("\n");
//     }
// }
