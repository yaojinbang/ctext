#include "test.h"
/*
数组传参，发生降维，降维成指针
不降维，就要进行数组拷贝，函数调用效率降低，降维成指针
在c中，任何函数调用，只要有形参实例化，必定形成临时拷贝
所用数组，传参都会降维成指针，降维成为指向其内部元素类型的指针
*/
// void ShowArray(int arr[], int num)
// {
//     printf("%d\n", sizeof((int*)arr));
//     for(int i = 0; i<num; i++)
//     {
//         printf("%d ", arr[i]);
//     }
//     printf("\n");
// }

// int main()
// {
//     int arr[] = {1, 2, 3, 4, 5};
//     int num = sizeof(arr) / sizeof(arr[0]);
//     printf("%d\n", sizeof(arr));
//     ShowArray(arr, num);
//     return 0;
// }
// void ShowArray(int **arr, int num)
// {
//     for(int i = 0; i<num; i++)
//     {
//         printf("%d ", *(arr[i]));
//     }
//     printf("\n");
// }
// int main()
// {
//     int a = 10;
//     int b = 20;
//     int c = 30;
//     int d = 40;
//     int e = 50;
//     int *arr[] = {&a, &b, &c, &d, &e};
//     int num = sizeof(arr)/sizeof(arr[0]);
//     ShowArray(arr, num);
//     return 0;
// }

// int main()
// {
//     int arr[5] = {1, 2, 3, 4, 5};
//     int *ptr = (int *)(&arr+1);
//     printf("%d, %d\n", *(arr+1), *(ptr-1));
//     return 0;
// }
/*
int *p1[10]; 整形指针数组，数组内部，后面可以放置任何类型(内置，*，struct，union，数组)的内容
int (*p2)[5]; 整形数组指针，指针可以指向任何合法的类型变量
数组的元素个数，是数组类型的一部分
数组名相当于是一个字面常量，不能对其进行++ -- 操作
++ -- 操作需要是变量才能进行
*/

// int main()
// {
//     int a[10] = {0};
//     int (*p)[10] = &a;
//     return 0;
// }
// char* GetWelcome(void)
// {
//     char *pcWelcome;
//     char *pcNewWelcome;
//     pcWelcome = "Welcome to Huawei Test.";
//     pcNewWelcome = (char *)malloc(strlen(pcWelcome));
//     // printf("len of pcWelcome = %d\n", strlen(pcWelcome));
//     if(NULL == pcNewWelcome)
//     {
//         return NULL;
//     }
//     strcpy(pcNewWelcome, pcWelcome);
//     // free(pcNewWelcome);
//     // pcNewWelcome = NULL;
//     return pcNewWelcome;
// }
// int main()
// {
//     char *str = GetWelcome();
//     *str = "You are welcome";
//     printf("%s\n", GetWelcome());
//     printf("%s\n", str);
//     return 0;
// }

/*
强制类型转化，改变的是对待特定内容的看待方式，在c中，就是只改变其类型

*/
/*
这边要注意的是 指针+1 才是加上指针所指向的类型
而其他的类型+1 就是单纯的数学上的+1
*/
// struct Test
// {
//     int Num;
//     char *pcName;
//     short sDate;
//     char cha[2];
//     short sBa[4];
// }*p = (struct Test*)0x100000;
// int main()
// {
//     printf("%p\n", p + 0x1);
//     printf("%p\n", (unsigned long)p + 0x1);
//     printf("%p\n", (unsigned int*)p + 0x1);
//     return 0;
// }

// int main()
// {
//     int a[4] = {1, 2, 3, 4};
//     // 01 00 00 00 02 00 00 00
//     // *ptr2 = 02000000 
//     int *ptr1 = (int *)(&a+1);
//     int *ptr2 = (int *)((int)a+1);
//     printf("%x, %x\n", ptr1[-1], *ptr2);
//     return 0;
// }
// int main()
// {
//     int a[4][3] = {0};
//     for(int i = 0; i<4; i++)
//     {
//         for(int j = 0; j<3; j++)
//         {
//             printf("&a[%d][%d] = %p\n", i, j, &a[i][j]);
//         }
//     }
//     return 0;
// }
/*
数组的定义是：具有相同数据元素类型的集合，特征是，数组中可以保存任意类型
那么数组中可以保存数组 可以将所有的数组当成“一维数组”
*/
// int main()
// {
//     char a[4][3] = {0};
//     char *p = &a[0][0];
//     printf("%p\n", p);
//     printf("%p\n", a);
//     return 0;

// }
// int main()
// {
//     char a[4][3] = {
//         {1,2,3},
//         {4,5,6},
//         {7,8,9},
//         {10,11,12}
//     };
//     char *p = (char*)a;
//     for(int i = 0; i<4*3; i++)
//     {
//         printf("%d ", *(p+i));
//     }
//     return 0;
// }