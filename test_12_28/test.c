#include "test.h"


// int main()
// {
//     //条件编译是代码裁剪的工具
// #ifdef C
//     printf("Hello C!\n");
// #else
//     printf("Hello Other\n");
// #endif
//     return 0;
// }
/*
通过裁剪代码，快速实现某种目的(版本维护(free，收费)，功能裁剪，跨平台性)
*/
// #define C 0
// int main()
// {
// #if (C == 0)
//     printf("Hello C\n");
// #else
//     printf("Hello Other\n");
// #endif
//     return 0;
// }

// int main()
// {
// #if !defined(DEBUG)
//     printf("Hello Debug\n");
// #else
//     printf("Hello Other\n");
// #endif
//     return 0;
// }

// #define C
// #define CPP
// int main()
// {
// #if (defined(C) && defined(CPP))
//     printf("Hello World\n");
// #else
//     printf("Hello Other\n");
// #endif
//     return 0;
// }

/*
预处理符号
#error  自定义的报错信息 这个编译是不通过的
#line 60 "hehe.h"  改变__FILE__ __LINE__ 相应的信息
#pragma massage("M已经被定义") 可以用来进行对代码中特定的符号(比如其他宏定义) 进行是否存在进行编译时的消息提醒
这个编译是通过的

*/

// int main()
// {
// #ifndef DEBUG
// #error "你的编译器出错啦!"
// #endif
//     return 0;
// }

// int main()
// {
//     printf("%s,  %d\n", __FILE__, __LINE__);
// #line 60 "hehe.h" 
//     printf("%s,  %d\n", __FILE__, __LINE__);
//     printf("%s,  %d\n", __FILE__, __LINE__);

//     return 0;
// }

// #define M 10

// int main()
// {
// #ifdef M
// #pragma massage("M已经被定义!")
// #endif
//     return 0;
// }

// #define PRINT(x, n) do{printf("The value of "#x" is %d\n", n);}while(0)
// #define PRINTF(x, y) do{printf("%d\n", x##y);}while(0)
// int main()
// {
//     int Class84 = 100;
//     int Class = 10;
//     PRINTF(Class, 84);
//     PRINT(a, 5);
//     return 0;
// }

/*
相邻字符串具有自动连接特性
#s 将参数符号s对应的文本内容，转化成字符串
a##b 双##号是用来连接两个符号， 生成一个新的符号
符号和字符串是有区别的 符号是不带双引号的 而字符串是带双引号的
*/

// int main()
// {
//     printf("hello bit ""hello world\n");
//     //这种表示方法也是正确的
//     const char *str = "hello bit ""hello world\n";
//     printf(str);
//     return 0;
// }

// #define ITOC(x) #x

// int main()
// {
//     const char *str = ITOC(12345);
//     printf(str);
//     return 0;
// }

// #define TOSTRING(x) #x
// int main()
// {
//     char str[10] = {0};
//     strcpy(str,TOSTRING(12345));
//     char *p = str;
//     printf(p);
//     return 0;
// }

// #define XNAME(n) student##n

// int main()
// {
//     XNAME(yao);
//     return 0;
// }

// #define BULID(base,n) base##e##n
// int main()
// {
//     printf("%.lf\n", BULID(3.14,2));
//     return 0;
// }

// #define CONT(n) student##n
// int main()
// {
//     int CONT(1) = 123;
//     printf("%d\n", CONT(1));
//     return 0;
// }