#include "test.h"
// #define OFFSETOF(type, n) (int) (&((type*)0)->n)
// // 先把0强制转换为struct S类型的指针 指向该类型的成员变量 再进行取地址 这样得到的就是该成员变量的偏移量(需要进行强制转换)
// struct S
// {
//     char c1;
//     int a;
//     char c2;
// };
// int main()
// {
//     // int a = 1;
//     // printf("%p\n", &a);
//     printf("%d\n", OFFSETOF(struct S, a));
//     return 0;
// }
// #define M 100
// int main()
// {
//     printf("hello bit\n");
//     printf("M = %d\n", M);
//     return 0;
// }
/*
1.预处理：头文件展开，去注释，宏替换，条件编译 -E
2.编译：  C语言翻译成汇编语言 -S
3.汇编：  将汇编语言转化称为可重定向目标文件(可被链接) -c
4.链接：  将自身程序和库文件进行关联(静态链接和动态链接)，形成可执行程序 -o

库：1.提高效率 2.健壮性or鲁棒性

*/
//这边是先去注释，在去宏替换
// #define BSC //
// int main()
// {
//     BSC printf("hello bit\n");
//     printf("you can see me!\n");
//     return 0;
// }
// #define INIT_VAL(x, y)\
// x = 0;\
// y = 0;
// int main()
// {
//     int a = 10;
//     int b = 20;
//     int flag = 0;
//     scanf("%d", &flag);
//     if(flag)
//     {
//         INIT_VAL(a, b);
//         printf("a = %d, b = %d\n", a, b);

//     }
//     else
//     {
//         a = 100;
//         b = 200;
//         printf("a = %d, b = %d\n", a, b);
    
//     }
//     // INIT_VAL(a, b);
//     // printf("a = %d, b = %d\n", a, b);
//     // a = 100;
//     // b = 200;
//     // printf("a = %d, b = %d\n", a, b);
//     return 0;
// }
//如果宏函数的内容比较多的话 可以使用do{}whlie()的结构
// #define INIT_VAL(x, y) \
// do{ printf("a = %d, b = %d\n",x, y);\
// a = 0;\
// b = 0;}while(0)
// int main()
// {
//     int a = 10;
//     int b = 10;
//     int flag = 0;
//     scanf("%d", &flag);
//     if(flag)
//     INIT_VAL(a, b);
//     else
//     a = 100, b = 200;
//     printf("%d, %d\n", a, b);
//     return 0;
// }
//宏函数名和参数之间不能加空格
/*
源文件的任何地方，宏都可以定义，与是否在函数内外，无关
宏的作用范围:从定义处开始。往后都是有效的
*/
// #define INIT_VAL(x ,y) x = 0,y = 0 
// int main()
// {
//     int a = 10;
//     int b = 20;
//     printf("before:> a = %d, b = %d\n", a, b);
//     INIT_VAL(a, b);
//     printf("after:> a = %d, b = %d\n", a, b);
//     return 0;
// }
/*宏定义的有效范围是默认是从定义开始到程序结束 
  如果遇到undef就结束
  宏定义是在函数调用之前的
*/
// #define M 10
// void show()
// {
//     printf("%d\n", M);
// }
// int main()
// {
// #undef M
//     show();
//     return 0;
// }

// #define M 10
// int main()
// {
//     printf("before: %d\n", M);
// #undef M
//     printf("after: %d\n", M);
// }
//第一个定义X的有效范围是在undef之前 而在进行替换的Y的时候已经过了有效范围了 到第二个X的范围之内了 所以是2*2 = 4
// #define X 3
// #define Y X*2
// #undef X
// #define X 2
// int main()
// {
//   int z = Y;
//   printf("%d\n", z);
//   return 0;
// }

// int main()
// {
// #if DEBUG
// printf("hello DEBUG\n");
// #elif RELEASE
// printf("hello RELEASE\n");
// #else
// printf("hello unknow\n");
// #endif
//  return 0;

// }
// int main()
// {
// #if defined(DEBUG)
// printf("hehe\n");
// #else
// printf("haha\n");
// #endif
//   return 0;
// }

// int main()
// {
//   int e = 0;
//   while(e == 0)
//   {
//     printf("haha\n");
//     e++;
//   }
//   return 0;
// }

// union uti
// {
//   int n;
//   double g;
//   char ch[9];
// };
// int main()
// {
//   union uti u;
//   printf("%d\n",sizeof(u));
//   return 0;
// }

// int main()
// {
//   int a = 10;
//   int b = 20;
//   int *pa = &a;
//   int *pb = &b;
//   int *t;
//   *t = *pa;
//   *pa = *pb;
//   *pb = *t;
//   printf("a = %d, b = %d\n", a, b);
//   return 0; 
  
// }
//使用fork函数开辟进程 会创建出一个与父进程一样的程序出来 也就说循环几次就开辟2^n个进程
// int add(int x, int y)
// {
//   return x+y;
// }
// int dev(int x, int y)
// {
//   return x-y;
// }
// int mul(int x, int y)
// {
//   return x*y;
// }
// int main()
// {
//   int (*fun[3])(int, int) = {add,dev,mul};
//   int (*p) (int, int) = *fun;
//   printf("%d\n", p(4,3));
//   for(int i = 0; i<3; i++)
//   {
//     printf("%d\n", fun[i](5,4));
//   }
//   // printf("%d", p(4,5));
//   // int (*(*pp)[3])(int , int) = p;
//   // printf("%d", pp(5,4));
//   return 0;
// }
