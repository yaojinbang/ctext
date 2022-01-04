#include "test.h"
// int main()
// {
//     int a[4][3] = {
//         {1,2,3},
//         {4,5,6},
//         {7,8,9},
//         {-1,-2,-3}
//     };//数组名代表的是四行中的第一行整行元素
//     // printf("%p\n", *(a+1)+1);
//     // printf("%p\n", &a[1][1]);
//     // printf("%d\n", *(*(a+1)+1));
//     // printf("%d\n",**a);// *(*(a+0)+0)
//     printf("%p\n",*a);
//     printf("%p\n",&a[0][0]);
//     // int *p = (int *)a;
//     // for(int i = 0; i<4*3; i++)
//     // {
//     //     printf("%d ", p[i]);
//     // }
//     // printf("\n");
//     return 0;
// }
// int main()
// {
//     int a[3][4] = {0};
//     printf("%d\n", sizeof(a)); // 整个数组的大小 12*4=48         48
//     printf("%d\n", sizeof(a[0][0]));      // *(*(a+0)+0)        4    
//     printf("%d\n", sizeof(a[0]));         // *(a+0)             16
//     printf("%d\n", sizeof(a[0] + 1));     // *(a+0)+1           4
//     printf("%d\n", sizeof(*(a[0] + 1)));  //*(*(a+0)+1)         4
//     printf("%d\n", sizeof(a + 1));        // a+1                4
//     printf("%d\n", sizeof(*(a + 1)));     // *(a+1)             16
//     printf("%d\n", sizeof(&a[0] + 1));    // &*(a+0)+1 = a+1    4
//     printf("%d\n", sizeof(*(&a[0] + 1))); // *(a+1)             16
//     printf("%d\n", sizeof(*a));           // *a                 16
//     printf("%d\n", sizeof(a[3]));         // *(a+3)(验证不影响)  16
//     return 0;

// }
/*
指针相减，代表指针之间所经历的元素的个数
*/
// int main()
// {
//     int a[5][5] = {0}; //int (*a) [5]
//     int (*p)[4];
//     p = a;
//     printf("a = %p, p = %p\n", &a[4][2], &p[4][2]);
//     printf("a = %p, p = %d\n", &p[4][2]-&a[4][2], &p[4][2]-&a[4][2]); 
//     return 0;
// }
// void show(int *p)//这里的p是指针变量，临时拷贝，形参实例化
// {
//     printf("%d\n",sizeof(p));
//     printf("%p\n", p);
//     printf("%p\n", &p);

// }
// int main()
// {
//     int a[10] = {0};
//     show(a);
//     printf("%d\n",sizeof(a));
//     printf("%p\n", a);
//     return 0;
// }
/*
数组的下标也是类型的一部分，在第二个数组下标之后的元素个数不能被省略，
如果省略了，指针类型就不明确了

*/
// #define N 10
// void GetStr(char **pp)
// {
//     *pp = (char*)malloc(sizeof(char)*N);
//     if(NULL != *pp)
//     {
//         strcpy(*pp, "Hello");
//         // free(*pp);
//         // *pp = NULL;
//     }
//     else
//     {
//         return ;
//     }
// }
// int main()
// {
//     char *p = NULL;
//     GetStr(&p);
//     printf("%s", p);
//     free(p);
//     p = NULL;
//     return 0;
// }
// void ShowArr(int (*p)[5], int row, int col)
// {
//     int *pp = (int *)p;
//     for(int i = 0; i<row*col; i++)
//     {
//         printf("%d ", *(pp+i));
//     }
// }
// int main()
// {
//     int a[5][5] = {0};
//     ShowArr(a,5,5);
//     return 0;
// }
// //
// void show(int *p)
// {
//     printf("%d\n",*p);
//     *p = 100;
// }
// int main()
// {
//     int a = 10;
//     int *p = &a;
//     show(p);
//     printf("%d\n",a);

//     return 0;
// }
// void show(char **pp)
// {
//     *pp = "hehe";
//     printf("%s\n", *pp);
// }
// int main()
// {
//     char *p = "hello world";
//     show(&p);
//     printf("%s\n", p);
//     return 0;
// }
// void fun()
// {
//     printf("Hello World\n");
// }
// int main()
// {
//     void (*p)() = fun;
//     p();
//     return 0;
// }

// cpu 取指令 分析指令 执行指令
//函数是代码的一部分，程序运行的时候，也要加载进内存，以供CPU后续寻址访问
//代码也有地址
// void GetGame()
// {
//     char name[20] = {0};
//     char passward[20] = {0};
//     printf("please enter your name:>");
//     scanf("%s", name);
//     printf("please enter your password:>");
//     scanf("%s", passward);
//     const char* pname = "yao";
//     const char* pps = "123456";
//     if((strcmp(name,pname) == 0) && (strcmp(passward,pps) == 0))
//     {
//         printf("sign in\n");
//     }
//     else
//     {
//         printf("error\n");
//     }
// }
// void Menu()
// {
//     printf("-------------------------------\n");
//     printf("---- 1.begin        2.exit ----\n");
//     printf("-------------------------------\n");

// }
// void game(void (*Menu)(),void (*GetGame)())
// {
//     Menu();
//     GetGame();
// }

// int main()
// {
//     game(Menu,GetGame);
//     return 0;
// }

// int main()
// {
// #define N 10
//     int *p = (int *)malloc(sizeof(int)*N);
//     if(p == NULL)
//     {
//         perror("malloc");
//         exit(1);
//     }
//     for(int i = 0; i<N; i++)
//     {
//         *(p+i) = 10*i;
//     }
//     for(int i = 0; i<N; i++)
//     {
//         printf("%d ", *(p+i));
//     }
//     printf("\n");
//     int *pp = (int *)realloc(p,sizeof(int)*(N+10));
//     if(pp == NULL)
//     {
//         perror("malloc");
//         exit(1);
//     }
//     p = pp;
//     for(int i = 0; i<N+10; i++)
//     {
//         *(p+i) = 10*i;
//     }
//     for(int i = 0; i<N+10; i++)
//     {
//         printf("%d ", *(p+i));
//     }
//     free(p);
//     p = NULL;
//     pp = NULL;
//     return 0;
// }