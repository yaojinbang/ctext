#include "test.h"

// typedef unsigned int u_int;
// typedef int * ptr_int;
// typedef struct Stu
// {
//     char name[16];
//     int age;
//     char sex;

// }Stu;
// typedef int arr[10];//把一个包含有10个整型元素的数组重命名为arr 要用就直接arr+变量名字即可
//注意后面要加分号
/*
  注意：
  typedef int* ptr_int; 
  #define int_p int*

  int *a, b;    此时的a是int* b是int
  ptr_int a, b; 此时的a是int* b是int*
  int_p a,b;    此时的a是int* b是int


typedef int int32；
#define INT32 int

unsigned int32 a; 这里是不行的，因为int32是被重命名的类型，与其它关键字组合可能会产生问题 就好比如 int char a;
unsigned INT32 b; 这里是可以的，因为define是对名字的替换 类型本质上是不发生改变的

存储关键字不能同时修饰同一个变量 typedef static int s_int
*/


// int main()
// {
//     u_int x = 1;
//     ptr_int p = &x;
//     Stu s = {"张三", 16, 'm'};
//     arr a = {0};
//     for(int i = 0; i<10; i++)
//     {
//         a[i] = i;
//         printf("%d\t", a[i]);
//     }
//     printf("\n");
//     return 0;
// }
// int add(int x, int y)
// {
//     return (x+y);
// }
// typedef int fun(int, int);
// int main()
// {
//     fun add;
//     printf("%d\n", add(5,6));
//     int /*  */ i;
//     char *s = "ABCD  //xyz";
//     //this is a\
//     valid comment?
// #ifndef DEBUG
//     int j = 1;
//     printf("%d\n", j);
// #endif
// #if 0
//     int z = 0;
//     printf("z = %d\n", z);
//  #endif
//     int a = 5;
// #if a>10
//     printf("大于\n");
// #elif a<10
//     printf("小于\n");
// #else
//     printf("等于\n");
// #endif
//     return 0;
// }
/*
反斜杠\ 有续行功能 续行符之后不能带其他符号，在其之前是可以的
        有转义功能 字面转特殊(\n) 特殊转字面(\")

*/
// int main()
// {
//     char ch[20] = "123";
//     //char *p = ch;
//     printf("%s", strcat(ch,"555"));
//     return 0;
// }

// int main()
// {
//     char ch[20] = "\"";
//     strcat(ch,"\n555\n");
//     printf(ch);
//     return 0;
// }
/*
回车\r  光标回到当前行的最开始
换行\n  光标移动至下一行
*/
// int main()
// {
//     int index = 0;
//     const char *p = "|/-\\";
//     while(1)
//     {
//         index %= 4; 
//         printf("%c\r", *(p+index));
//         index++;
//         // if(index == 4)
//         // {
//         //     index = 0;
//         // }
//         Sleep(100);
//     }
//     return 0;
// }

// int main()
// {
//     int second = 0;//秒数
//     for(second = 10; second >= 0; second--)
//     {
//         printf("[%02d]\r", second);
//         Sleep(1000);
//     }
//     return 0;
// }
// int main()
// {
//     //写法极不推荐
//     char ch = 'abcd';//这个最大只能包含4个字符 大于四个字符就会报错 小于四个字符则会输出最低字节的字符数据
//     printf("%s\n", ch);
//     return 0;
// }

// int main()
// {
//     printf("%d\n", sizeof(1));
//     printf("%d\n", sizeof("1"));
//     //c99标准的规定，这边的字符1叫做整形字符常量，被看成是int型
//     printf("%d\n", sizeof('1'));
//     //在C语言中，这里是出现了截断 将整形的4个字节变成1个字节
//     char c = '1';
//     //'abcd' 整型字符常量
//     printf("%d\n", sizeof(c));
//     // int a = 'abcd';
//     // printf("%c", a);
//     return 0;
// }
// union Un
// {
//     int a;
//     char c;
// };
// int main()
// {
//     union Un u;
//     u.a = 1;
//     if(u.c == 1)
//     {
//         printf("小端\n");
//     }
//     else
//     {
//         printf("大端\n");
//     }
//     return 0;
// } 
// int main()
// {
//     printf("%d", '0');
//     return 0;
// }
//ASCII 存在的价值是二进制数据通过映射 显示数据以供人们进行阅读观看
// int main()
// {
//     printf("%d", '你');
//     return 0;
// }

// int main()
// {
//     int i = 0;
//     int j = 0;
//     if((++i > 0) && (++j > 0))
//     {
//         printf("enter if\n");
//     }
//     printf("i = %d, j = %d\n", i, j);
//     return 0;
// }
// int main()
// {
//     int i = 0;
//     int j = 0;
//     if((++i > 0) || (++j > 0)) // 短路
//     {
//         printf("enter if\n");
//     }
//     printf("i = %d, j = %d\n", i, j);
//     return 0;
// }
// int show()
// {
//     printf("you can see me!\n");
//     return 1;
// }
// int main()
// {
//     int flag = 0;
//     printf("please enter:>");
//     scanf("%d", &flag);
//     // flag && show(); 这个就相当于是if
//     // flag || show(); 这个就相当于是if no
//     // printf("%p", 0x11223344);
   
//     printf("%x\n", &flag);//打印的是有负数的十六进制数，既可以打印十六进制，也可以打印地址
//     printf("%p\n", &flag);//打印的是没有负数的十六进制数，通常用来打印地址

//     return 0;
// }

// int main()
// {
//     printf("%d\n", 2 | 3);
//     printf("%d\n", 2 & 3);
//     printf("%d\n", 2 ^ 3);
//     printf("%d\n", ~0); 这里的按位取反 符号位也要参与运算
//     return 0;
// }