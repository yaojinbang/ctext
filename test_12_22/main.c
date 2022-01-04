#include "head.h"

// int main()
// {
//     int day = 0;
//     do
//     {
//         printf("Please Enter Your Day # ");
//         scanf("%d", &day);
//         switch(day)//作用 就是拿 整型 || 整型 和case进行比较
//         {
//             case 1://作用 起到判定的作用  case 后面只能跟常量   不能跟const修饰的常变量
//             //如果在case下要执行多条语句的话 可以使用代码块进行解决(不建议) 或者 使用函数的形式进行解决(建议)
//                 // printf("星期1\n");
//                 // break;//作用 起到分支的作用
//             case 2:
//                 // printf("星期2\n");
//                 // break;
//             case 3:
//                 // printf("星期3\n");
//                 // break;
//             case 4:
//                 // printf("星期4\n");
//                 // break;
//             case 5:
//                 printf("工作日\n");
//                 break;
//             case 6:
//                 // printf("星期6\n");
//                 // break;
//             case 7:
//                 printf("休息日\n");
//                 break;
//             case 0:
//                 break;
//             default:
//                 printf("您输入的日期有误，请重新输入!\n");
//                 break;
//         }
//     }while(day);
//     return 0;
// }

// #define PRINT(x) printf("the value of "#x" is %d", x)

// int main()
// {
//     int x = 5;
//     PRINT(x);
//     return 0;
// }
// #define VAL(class, val) printf("%d",class##val)
// int main()
// {
//     int class = 0;
//     int val = 0;
//     int classval = 55;
//     VAL(class,val);
//     return 0;
// }

// int main()
// {
//     int count = 10;
//     do
//     {
//         printf("%d\n", count);
//         count--;
//     }while(count);
//     return 0;
// }

// int main()
// {
//     int ch = 0;
//     while((ch = getchar()) != '#')
//     {
//         fprintf(stdout,"%c\n", ch);
//         getchar();
//         printf("%s\n", strerror(1));
//     }

//     // strerror(errno);
//     // perror("open");
//     return 0;
// }
/*
switch && case && break && default
1.switch 语法结构中，case 完成的判定功能，break完成的是分支功能
2.case：执行语句 == 1：n ，case多条语句(不能定义变量，如果需要 可以使用代码块或者函数) break
3.case：执行语句 == n：1， 多条case后续不写break
4.default：可以出现在任何地方，但推荐放在末尾
5.case：不能：const ，普通变量，建议要有好的布局case的方式

任何c程序，在默认编译好之后，运行时，都会打开三个输入输出流
stdin：标准输入， FILE* stdin, 键盘
stdout：标准输出， FILE* stdiout, 显示器
stderr：标准错误， FILE* stderr,  显示器

键盘输入的内容，或者是往显示器中打印的内容，全部都是字符
这就使得格式化输入/格式化输出(scanf/printf)有了意义

键盘 显示器 都称之为字符设备
*/

// int main()
// {
//     while(1)
//     {
//         int ch = getchar();
//         if(ch == '#')
//         {
//             // break;跳出循环
//             continue;//结束本轮循环
//         }
//         putchar(ch);
//     }
//     printf("\nBreak Out!\n");
//     return 0;
// }

// int main()
// {
//     char IPaddr[] = "192.168.192.162";
//     const char* Delim = ".";
//     int arr[4] = {0};
//     int i = 0;
//     for(char* buf = strtok(IPaddr,Delim); buf != NULL; buf = strtok(NULL,Delim))
//     {
//         arr[i++] = atoi(buf);
//     }
//     for(i = 0; i<4; i++)
//     {
//         printf("%d ", arr[i]);
//     }
    
//     return 0;
// }

// int main()
// {
//     int a = 0x11223344;
//     printf("%x\n", a >> 8);
//     char* pa = (char*)&a;
//     printf("%x\n", *pa);
//     return 0;
// }
// void test()
// {
//     printf("bit\n");
// }
// void fun()
// {
//     printf("hello ");
// goto end;
//     printf("world\n");
// end:
//     test();
// }

// int main()
// {

//     fun();
//     return 0;
// }
//goto 不能跨函数(不能跨代码块)

// int main()
// {
//     int i = 0;
// start:
//     printf("[%d] goto running...\n", i);
//     i++;
//     if(i < 10)
//     {
//         goto start;
//     }
//     printf("goto ending ...\n");
//     printf("%d", sizeof(void));
// }
//在vs的平台下 void是0字节 但在gcc的平台下 void是1字节
//void 本身就是被编译器解释为空类型，强制的不允许定义变量
// void test()
// {
//     printf("hello world\n");
//     return 1;
// }
// int main()
// {
//     int ret = test();
//     printf("%d", ret);
// }
/*
c中函数可以不带返回值，默认的返回值是:int
void修饰函数返回值，1.占位符，让用户明确不需要返回值 2. 告知编译器，这个返回值无法接收
void充当函数的形参列表：告知用户or编译器，该函数不需要传参
*/
// int test1()
// {
//     return 1;
// }
// int test2(void)
// {
//     return 1;
// }
// int main()
// {
//     test2(1);
//     return 0;
// }
/*
void* 可以被任何类型的指针接收，void*可以接受任意指针类型(常用)

*/
// int main()
// {
//     void* p = NULL;
//     char* pp = (char *)p;
//     pp++;

//     return 0;
// }
// char* show()
// {
//     char* str = "hello bit";
//     return str;
// }
// int main()
// {
//     char* s = show();
//     printf("%s", s);
//     return 0;
// }