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
���뻷�� ������ ������

������ Դ�ļ�    Ԥ���� ���� ���
������ Ŀ���ļ�

���л��� ��ִ���ļ�
Linux������
gcc -E test.c Ԥ����/Ԥ����
gcc -S test.i
gcc -C test.o
Ԥ����(�ı�����):  1.#include ���ͷ�ļ��İ��� 
        2.ע��ɾ�� ʹ�ÿո��滻ע��
        3.����#define
���룺 ��C���Դ��뷭��ɻ�����
        1.�﷨����
        2.�ʷ�����
        3.�������
        4.���Ż��ܣ�ȫ�ֱ��� ��������
��ࣺ�ѻ��ָ��ת���ɶ�����ָ�� �γɷ��ű�
���ӣ����ɿ�ִ���ļ� 1.�ϲ��α� 2�ϲ����ű���ض�λ
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
//     printf("%s\n",__FILE__);//�ļ�����
//     printf("%d\n",__LINE__);//��ǰ�к�
//     printf("%s\n",__DATE__);//��ǰ����
//     printf("%s\n",__TIME__);//��ǰʱ��
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
// //#define ���治����ӷֺţ�
// int main()
// {
//     int a = MAX
//     printf("%d",a);
//     return 0;
// }

// #define SQUARE(x) x*x //�궨��
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
//gcc main.c -o main -D SZ=10 �����ж���
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
#include "" ����Դ�ļ��н��в��� ����Ҳ��� ����׼λ������ /usr/include �²���
#include <> ȥ��׼λ������


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
    //����
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
    //�ҵ���
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