#include "head.h"
// int main()
// {
//     int a[5] = {1,6,3,4,5};
//     int* pa = a;
//     for(int i = 0;i<5;i++)
//     {
//         printf("%d ",(*pa)++);
//     }
//     return 0;
// }
// int main()
// {
//     FILE *fp = fopen("head.h","r");
//     if(fp == NULL)
//     {
//         printf("%s\n",strerror(errno));
//     }
//     char buf[1024] = {0};
//     fread(buf,1,1024,fp);
//     printf("buf = %s",buf);
//     fclose(fp);
//     fp = NULL;
// }

// int main()
// {

//     int a = 10000;
//     FILE* pf = fopen("test1.txt","wb");//对文件进行写操作 二进制文件的形式
//     if(pf == NULL)
//     {
//         printf("%s\n",strerror(errno));
//     }
//     fwrite(&a,4,1,pf);
//     fclose(pf);
//     pf = NULL;
//     return 0;
// }

// int main()
// {
//     FILE *pf = fopen("test.txt","rb");
//     if(pf == NULL)
//     {
//         printf("%s\n",strerror(errno));
//     }
//     char buf[1024] =  {0};
//     fread(buf,32,1,pf);
//     printf("%s\n",buf);
//     fclose(pf);
//     pf = NULL;
//     return 0;
// }

/*
    打开文件test.txt
    相对路径
    .. 表示上一级路径
    .  表示当前路径
*/

// int main()
// {
//     FILE *pf = fopen("test.txt","r");
//     if(pf == NULL)
//     {
//         printf("%s",strerror(errno));
//     }
//     fclose(pf);
//     pf = NULL;
//     return 0;
// }

// int main()
// {
//     FILE* pfWrite = fopen("test.txt","w");
//     if(pfWrite == NULL)
//     {
//         printf("%s\n", strerror(errno));
//         return 0;
//     }
//     fputc('b',pfWrite);
//     fputc('i',pfWrite);
//     fputc('t',pfWrite);
//     fclose(pfWrite);
//     pfWrite = NULL;
//     return 0;
// }

// int main()
// {
//     FILE* pfRead = fopen("test.txt","r");
//     if(pfRead == NULL)
//     {
//         printf("%s\n", strerror(errno));
//         return 0;
//     }
//     printf("%c", fgetc(pfRead));
//     printf("%c", fgetc(pfRead));
//     printf("%c", fgetc(pfRead));
//     fclose(pfRead);
//     pfRead = NULL;
//     return 0;
// }
/*
控制器
运算器
存储器
输入设备
输出设备
计算机的五大组成部分

键盘是标准输入设备 - stdin
屏幕是标准输出设备 - stdout

是一个程序默认打开的两个流设备

文件分为两种一种是程序文件 数据文件
数据文件有分 文本文件 二进制文件


*/

// int main()
// {
//     int ch  = fgetc(stdin);
    
//     fputc(ch,stdout);
//     return 0;
// }
// int main()
// {
//     FILE* pf = fopen("test.txt","w");
//     if(pf == NULL)
//     {
//         return 0;
//     }
//     char* buf = "10000";
//     fputs(buf,pf);
//     fclose(pf);
//     pf = NULL;
//     return 0;
// }


// int main()
// {
//     FILE* pf = fopen("test.txt","r+");
//     if(pf == NULL)
//     {
//         printf("%s\n", strerror(errno));
//         return 0;
//     }
//     char buf[20] = "hello bit";
//     char buf1[20] = {0};
//     // fputs(buf,pf);
//     fgets(buf1,20,pf);//fgets读取一行
//     printf(buf1);
//     fclose(pf);
//     pf = NULL;
//     return 0;
// }


// int main()
// {
//     FILE* pf = fopen("test.txt","w");
//     if(pf == NULL)
//     {
//         printf("%s\n", strerror(errno));
//         return 0;
//     }
//     char* buf = "hello world";
//     fputs(buf,pf);//文本行输出函数
//     fclose(pf);
//     pf = NULL;
//     return 0;
// }
//  int main()
//  {
//      char buf[1024] = {0};
//     fgets(buf,1024,stdin);
//     fputs(buf,stdout);
//     return 0;
//  }

// struct S
// {
//     int n;
//     float score;
//     char arr[20];
// };

// int main()
// {
//     struct S s1 = {100, 3.14f, "bit"};
//     struct S s2 = {0};
//     FILE* pf = fopen("test.txt","r");
//     if(pf == NULL)
//     {
//         printf("%s\n",strerror(errno));
//         return 0;
//     }
//     // fprintf(pf,"%d %f %s", s1.n, s1.score, s1.arr);
//     fscanf(pf,"%d %f %s", &s2.n, &s2.score, s2.arr);
//     fclose(pf);
//     pf = NULL;
//     printf("%d %f %s", s2.n, s2.score, s2.arr);
//     return 0;
// }

/*
scanf/printf 是针对标准输入流/标准输出流的 格式化输入/输出语句
fscanf/fprintf 是针对所有输入流/标准输出流的 格式化输入/输出语句
sscanf/sprintf 是从字符串中读取格式化的数据/把格式化数据输出成（存储到）字符串
*/
// int main()
// {
//     struct S s = {100,3.14,"abcdef"};
//     struct S s1 = {0};
//     char buf[1024] = {0};
//     sprintf(buf,"%d %.2f %s", s.n, s.score, s.arr);
//     printf("%s",buf);
//     sscanf(buf,"%d %f %s",&s1.n, &s1.score, s1.arr);
//     printf("%d %f %s\n",s1.n,s1.score,s1.arr);
//     return 0;
// }
// struct S
// {
//     int id;
//     char name[10];
// };

// int main()
// {
//     struct S s = {10086,"张三"};
//     struct S s1 = {0};
//     FILE* pf = fopen("test.txt","rb");
//     if(pf == NULL)
//     {
//         printf("%s\n",strerror(errno));
//         return 0;
//     }
//     //fwrite(&s,sizeof(struct S),1,pf);
//     int i = (int)fread(&s1,sizeof(struct S),1,pf);
//     printf("i = %d\n",i);
//     printf("%d %s\n",s1.id,s1.name);
//     fclose(pf);
//     pf = NULL;

//     return 0;
// }

// int main()
// {
//     FILE *pf = fopen("test.txt","w");
//     if(pf == NULL)
//     {
//         return 0;
//     }
//     fputs("abcdef",pf);
//     fclose(pf);
//     pf = NULL;
//     return 0;
// }

int main()
{
    //abcdef
    FILE *pf = fopen("test.txt","r");
    if(pf == NULL)
    {
        return 0;
    }
    fseek(pf,-2,SEEK_END);
    printf("%c\n",fgetc(pf));
    fclose(pf);
    pf = NULL;
    return 0;
}