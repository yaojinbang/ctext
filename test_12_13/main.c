#include "head.h"


// int main()
// {
//     FILE* pf = fopen("test.txt","w");
//     if(pf == NULL)
//     {
//         printf("%s\n",strerror(errno));
//         return 0;
//     }
//     fprintf(pf,"abcdef");
//     fclose(pf);
//     pf == NULL;
//     return 0;
// }

// int main()
// {
//     FILE* pf = fopen("test.txt","r");
//     if(pf == NULL)
//     {
//         printf("%s\n",strerror(errno));
//         return 0;
//     }
//     fseek(pf,2,SEEK_CUR);
//     // int ch = fgetc(pf);
//     // printf("%c\n",ch);
//     long int ret = ftell(pf);
//     rewind(pf);
//     ret = ftell(pf);
//     printf("%ld\n",ret);
//     fclose(pf);
//     pf == NULL;
//     return 0;
// }

// int main()
// {
//     FILE* pf = fopen("test.txt","r");
//     if(pf == NULL)
//     {
//         perror("fopen");
//         return -1;
//     }
//     int ch;
//     while((ch = fgetc(pf)) != EOF)
//     {
//         putc(ch,stdout);
//     }
//     if(ferror(pf))
//     {
//         puts("I/O error when read");
//     }
//     else if(feof(pf))
//     {
//         puts("file reads successfully");
//     }
//     fclose(pf);
//     pf == NULL;
//     return 0;
// }


// struct S
// {
//     int id;
//     char name[20];
// };
// int main()
// {
//     struct S stu[2] = {{1,"zhangsan"},{2,"wangwu"}};
//     FILE* pf = fopen("test.txt","ab");
//     if(pf == NULL)
//     {
//         perror("fopen");
//         return -1;
//     }
//     fwrite(&stu[0],sizeof(struct S),1,pf);
//     fwrite(&stu[1],sizeof(struct S),1,pf);

//     fclose(pf);
//     pf == NULL;
//     return 0;
// }

// int main()
// {
//     struct S tmp = {0};
//     FILE* pf = fopen("test.txt","rb");
//     if(pf == NULL)
//     {
//         perror("fopen");
//         return -1;
//     }
//     while((fread(&tmp,sizeof(struct S),1,pf)) >= 1)
//     {
//         printf("%d\t%-20s\n",tmp.id,tmp.name);
//     }
//     if(ferror(pf))
//     {
//         printf("error\n");
//     }
//     else if(feof(pf))
//     {
//         printf("success\n");
//     }
//     fclose(pf);
//     pf == NULL;
//     return 0;
// }

/*
test.c -> test.exe
翻译环境 编译器 连接器

编译器 源文件    预编译 编译 汇编
连接器 目标文件

运行环境 可执行文件
Linux环境下
gcc -E test.c 预编译/预处理
gcc -S test.i
gcc -C test.o
预处理(文本操作):  1.#include 完成头文件的包含 
        2.注释删除 使用空格替换注释
        3.处理#define
编译： 将C语言代码翻译成汇编代码
        1.语法分析
        2.词法分析
        3.语义分析
        4.符号汇总（全局变量 函数名）
汇编：把汇编指令转换成二进制指令 形成符号表
链接：生成可执行文件 1.合并段表 2合并符号表和重定位
*/
// int main()
// {
//     int arr[10] = {0};
//     for(int i = 0; i<10; i++)
//     {
//         arr[i] = i;
//         printf("%d ",arr[i]);
//     }
//     printf("\n");
//     return 0;
// }

// int main()
// {
//     printf("%s\n",__FILE__);//文件名称
//     printf("%d\n",__LINE__);//当前行号
//     printf("%s\n",__DATE__);//当前日期
//     printf("%s\n",__TIME__);//当前时间
//     return 0;
// }

// int main()
// {
//     FILE* pf = fopen("log.txt","w");
//     if(pf == NULL)
//     {
//         perror("fopen");
//         return -1;
//     }
//     int arr[10] = {0};
//     for(int i = 0; i<10; i++)
//     {
//         arr[i] = i;
//         fprintf(pf,"file:%s\tline:%d\ndata:%s\ttime:%s\tarr[i]=%d\n",
//         __FILE__,
//         __LINE__,
//         __DATE__,
//         __TIME__,
//         arr[i]);
//     }
//     for(int i = 0;i<10; i++)
//     {
//         printf("%d ",arr[i]);
//     }
//     printf("\n");
//     fclose(pf);
//     pf == NULL;
//     return 0;
// }

// int main()
// {
//     printf("%d\n",__STDC__);
//     return 0;
// }

// #define MAX 1000;
// //#define 后面不建议加分号，
// int main()
// {
//     int a = MAX
//     printf("%d",a);
//     return 0;
// }

// #define SQUARE(x) x*x //宏定义
// int main()
// {
//     int ret = SQUARE((5+1));
//     printf("%d ",ret);
//     return 0;
// }
// #define DOUBLE(x) ((x)+(x))
// int main()
// {
//     int a = 5;
//     printf("%d",10*DOUBLE(a));
//     return 0;
// }
// #define PRINT(x) printf("the value of "#x" is %d\n",x)
//#x -> "x"
//x##y ->xy
// int main()
// {
//     int a = 10;
//     int b = 20;
//     PRINT(a);
//     PRINT(b);
//     return 0;
// }

// #define CAT(X, Y) X##Y
// int main()
// {
//     int class84 = 2020;
//     printf("%d",CAT(class,84));
//     return 0;
// }

// #define COMPARE(X, Y) ((X)>(Y)?(X):(Y))

// int main()
// {
//     int a = 10;
//     int b = 11;
//     int ret = COMPARE(a++, b++);
//     printf("%d",ret);
//     printf("a = %d, b = %d",a,b);
//     return 0;
// }
// #define ADD(X,Y) (X)+(Y)
// int add(int x, int y)
// {
//     return (x+y);
// }
// int main()
// {
//     int a = 10;
//     int b = 20;
//     int ret = ADD(a, b);
//     printf("ret = %d\n",ret);
//     ret = add(a,b);
//     printf("ret = %d\n",ret);
//     return 0;
// }

// #define MALLOC(N,TYPE) (TYPE*)malloc(N*sizeof(TYPE))
// int main()
// {
//     int* p = MALLOC(10,int);
//     if(p == NULL)
//     {
//         perror("malloc");
//     }
//     for(int i = 0;i<10;i++)
//     {
//         *(p+i) = i;
//         printf("%d ",*(p+i));
//     }
//     return 0;
// }
//gcc main.c -o main -D SZ=10 命令行定义
// int main()
// {
//     int arr[SZ] = {0};
//     for(int i = 0; i<SZ; i++)
//     {
//         arr[i] = i;
//         printf("%d ",arr[i]);
//     }
//     return 0;
// }
// #define DEBUG
// int main()
// {
//     int arr[10] = {0};
//     for(int i = 0; i<10; i++)
//     {
//         arr[i] = i;
// // #ifdef DEBUG
// //         printf("%d ",arr[i]);
// // #endif
// #if 0
//         printf("%d ",arr[i]);
// #endif
//     }
//     return 0;
// }
// #define DEBUG
// int main()
// {
//     #if !defined(DEBUG)
//     printf("hello world\n");
//     #endif
//     return 0;
// }
/*
#include "" 现在源文件中进行查找 如果找不到 到标准位置下找 /usr/include 下查找
#include <> 去标准位置下找


/*
#ifndef __HEAD_H__
#define __HEAD_H__
#endif
->
#pragma once
*/
// int main()
// {
//     printf("hello world\n");
//     return 0;

// }
// #define OFFSETOF(type_name,member_name) (int)&(((type_name*)0)->member_name) 
// struct S
// {
//     char c1;
//     int a;
//     char c2;
// };
// int main()
// {
    
//     printf("%d\n",OFFSETOF(struct S,c1));
//     printf("%d\n",OFFSETOF(struct S,a));
//     printf("%d\n",OFFSETOF(struct S,c2));
//     return 0;

// }

int main()
{
    int i = 0;
    int arr[] = {1,2,3,4,5,1,2,3,4};
    int sz = sizeof(arr)/sizeof(arr[0]);
    //排序
    for(int i = 0; i<sz-1; i++)
    {
        for(int j = 0; j<sz-1-i; j++)
        {
            
            if(arr[j]>arr[j+1])
            {
                int tmp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = tmp;
            }
        }
    }
    //找单身狗
    for(i = 0; i<sz; i++)
    {
        if(i == sz-1)
        {
            printf("%d ", arr[i]);
            break;
        }
        if(arr[i] == arr[i+1])
        {
            i++;
        }
        else
        {
            printf("%d ", arr[i]);
        }
    }
    return 0;
}