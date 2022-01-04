#include "head.h"
/*
    栈区 局部变量 函数形参 函数调用
    堆区 动态内存管理 malloc calloc realloc free
    静态区 全局变量 静态变量
*/

// int main()
// {
//     int *p = (int *)malloc(40);
//     if(p == NULL)
//     {
//         printf("%s",strerror(errno));
//         return 0;
//     }
//     int *p1 = (int *)realloc(p,40);
//     if(p1 != NULL)
//     {
//         p = p1;
//     }
//     return 0;
// }
/*
动态内存管理常见的错误
1.对NULL指针解引用操作
int *p = (int *)malloc(INT_MAX);
*p = 10;  malloc开辟空间失败
2.对动态开辟内存的越界访问
3.对非动态开辟内存使用free释放
4.使用free释放动态开辟内存的一部分
5.对同一块动态内存的多次释放
6.动态开辟内存忘记释放（内存泄漏）

*/

// int main()
// {
//     //int *p = (int *)realloc(NULL,40);//等价于(int *)malloc(40);
//     return 0;
// }
// void GetMemory(char *p)
// {
//     p = (char*)malloc(100);
//     if(p == NULL)
//     {
//         printf("%s\n",strerror(errno));
//     }
//     strcpy(p,"hello world!");
//     printf("%s",p);
//     free(p);
//     p = NULL;
// }
// void Test()
// {
//     char* str = NULL;
//     GetMemory(str);
    
// }


// int main()
// {
//     Test();
//     return 0;
// }
// void GetMemory(char** p)
// {
//     *p = (char *)malloc(100);
//     if(*p == NULL)
//     {
//         printf("%s\n",strerror(errno));
//     }
// }
// void Test()
// {
//     char* str = NULL;
//     GetMemory(&str);
//     strcpy(str,"hello world");
//     printf("%s",str);
//     free(str);
//     str = NULL;
// }
// int main()
// {
//     Test();
//     return 0;

// }

// char* GetMemory(char* p)
// {
//     p = (char *)malloc(100);
//     if(p == NULL)
//     {
//         printf("%s\n",strerror(errno));
//     }
//     return p;
// }
// void Test()
// {
//     char* str = NULL;
//     char* ret = GetMemory(str);
//     str = ret;
//     strcpy(str,"hello world");
//     printf("%s",str);
//     free(str);
//     str = NULL;
//     ret = NULL;
// }
// int main()
// {
//     Test();
//     return 0;

// }
// char* GetMemory()
// {
//     char p[] = "hello world";//栈区
//     return p;
// /*
// 返回栈空间地址的问题
// 这边申请的字符数组是属于这个函数内部的，当函数结束后该空间是要归还给系统的，
// 如果你把该空间的地址返回了，并进行操作 就会造成对该空间的非法访问
// */
// }
// void Test()
// {
//     char *str = NULL;
//     str = GetMemory();
//     printf(str);
// }
// int main()
// {
//     Test();
//     return 0;
// }
// int* Test()
// {
//     static int a = 10;//静态区
//     return &a;
// }
// int main()
// {
//     int* ret = Test();
//     *ret = 20;
//     printf("%d\n",*ret);
//     return 0;
// }
// int* Test()
// {
//     int* ptr = (int*)malloc(100);//堆区
//     return ptr;
// }
// int main()
// {
//     int* ret = Test();
//     return 0;
// }
// void GetMemory(char** p,int num)
// {
//     *p = (char*)malloc(num);
// }

// void Test()
// {
//     char* str = NULL;
//     GetMemory(&str,100);
//     strcpy(str,"hello world");
//     printf(str);
//     free(str);
//     str = NULL;
// }
// void Test()
// {
//     char *str = (char*)malloc(100);
//     strcpy(str,"hello");
//     free(str);//free释放str指向的空间后，并不会把str置为NULL
//     str = NULL;
//     if(str != NULL)
//     {
//         strcpy(str,"world");
//         printf(str);
//     }
// }
// int main()
// {
//     Test();
//     return 0;
// }

/*
内核空间（用户代码不能读写）
栈（向下增长）
内存映射段（文件映射、动态库、匿名映射）
堆（向上增长）
静态区：数据段（全局数据、静态数据） 代码段（可执行代码、只读常量）
*/

//柔性数组
// struct S
// {
//     int n;
//     int arr[];
// };
// struct S1
// {
//     int n;
//     int* p;
// };
// int main()
// {
//     struct S* ps = (struct S*)malloc(sizeof(struct S)+5*sizeof(int));
//     // struct S1 s1 = {0,NULL};
//     // printf("%I64d\n",sizeof(s1));
//     if(ps == NULL)
//     {
//        return 0;
//     }
//      ps->n = 100;
//         for(int i = 0;i<5;i++)
//         {
//             ps->arr[i] = i;
//         }
//     struct S* ptr = (struct S*)realloc(ps,sizeof(struct S)+10*sizeof(int));
//     if(ptr != NULL)
//     {
//         ps = ptr;
//     }
//     for(int i = 5;i<10;i++)
//     {
//         ps->arr[i] = i;
//     }
//     for(int i = 0;i<10;i++)
//     {
//         printf("%d ",ps->arr[i]);
//     }
//     printf("\n");
//     return 0;
// }

// struct S
// {
//     int n;
//     int* arr;
// };
// int main()
// {
//     struct S *p = (struct S*)malloc(sizeof(struct S));
//     if(p == NULL)
//     {
//         return 0;
//     }
//     p->arr = malloc(5*sizeof(int));
//     if(p->arr == NULL)
//     {
//         return 0;
//     }
//     for(int i = 0;i<5;i++)
//     {
//         p->arr[i] = i;
//     }
//     for(int i = 0;i<5;i++)
//     {
//         printf("%d ",p->arr[i]);
//     }
//     printf("\n");
//     int* ptr = (int*)realloc(p->arr,10*sizeof(int));
//     if(ptr != NULL)
//     {
//         p->arr = ptr;
//     }
//     for(int i = 5;i<10;i++)
//     {
//         p->arr[i]=i;
//     }
//     for(int i = 0;i<10;i++)
//     {
//         printf("%d ",p->arr[i]);
//     }
//     printf("\n");
//     free(p->arr);
//     free(p);
//     p->arr = NULL;
//     p = NULL;
//     return 0;
// }

// struct S
// {
//     int n;
//     int *p;
// };
// int main()
// {
//     int a = 5;
//     struct S* s1 = (struct S*)malloc(sizeof(struct S));
//     s1->p = &a;
//     if(s1 == NULL)
//     {
//         return 0;
//     }
//     printf("%d",*(s1->p));

//     return 0;
// }

/*
    柔性数组：
    1.结构体中的柔性数组成员前面必须至少一个其他成员
    2.sizeof返回的这种结构大小不包括柔性数组的内存
    可以是int a[0];int a[];
    柔性数组的优点
    1.开辟的动态内存是连续的 减少内存碎片
    2.只需要使用一次malloc函数，减少后面free函数使用的出错率
    3.有利于访问速度 (寄存器  高速缓存 内存 硬盘   速度由快到慢)
    寄存器在取数据的时候遵循局部性原理 就是拿数据是按顺序拿的
    如果要使用的数据并不是在同一块区域 就需要进行多次取数据的操作
*/

// //柔性数组
// struct S
// {
//     int n;
//     int arr[0];
// };

// int main()
// {
//     struct S *s = (struct S*)malloc(sizeof(struct S)+10*sizeof(int));
//     if(s == NULL)
//     {
//         return 0;
//     }
//     s->n = 100;
//     int i = 0;
//     for(i = 0;i<10;i++)
//     {
//         s->arr[i] = i;
//     }
//     for(i = 0;i<10;i++)
//     {
//         printf("%d ",s->arr[i]);
//     }
//     printf("\n");
//     free(s);
//     s = NULL;
//     return 0;
// }

//利用指针的形式对开辟的动态内存进行维护
// struct S
// {
//     int n;
//     int *p;
// };
// int main()
// {
//     struct S* s = (struct S*)malloc(sizeof(struct S));
//     if(s == NULL)
//     {
//         return 0;
//     }
//     s->p = (int*)malloc(10*sizeof(int));
//     if(s->p == NULL)
//     {
//         return 0;
//     }
//     for(int i = 0;i<10;i++)
//     {
//         s->p[i] = i;
//     }
//     for(int i = 0;i<10;i++)
//     {
//         printf("%d ",s->p[i]);
//     }
//     printf("\n");
        // free(s->p);
        // free(s);
        // s->p = NULL;
        // s = NULL;
//     return 0;
// }