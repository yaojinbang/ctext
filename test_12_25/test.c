#include "test.h"

// typedef unsigned int u_int;
// typedef int * ptr_int;
// typedef struct Stu
// {
//     char name[16];
//     int age;
//     char sex;

// }Stu;
// typedef int arr[10];//��һ��������10������Ԫ�ص�����������Ϊarr Ҫ�þ�ֱ��arr+�������ּ���
//ע�����Ҫ�ӷֺ�
/*
  ע�⣺
  typedef int* ptr_int; 
  #define int_p int*

  int *a, b;    ��ʱ��a��int* b��int
  ptr_int a, b; ��ʱ��a��int* b��int*
  int_p a,b;    ��ʱ��a��int* b��int


typedef int int32��
#define INT32 int

unsigned int32 a; �����ǲ��еģ���Ϊint32�Ǳ������������ͣ��������ؼ�����Ͽ��ܻ�������� �ͺñ��� int char a;
unsigned INT32 b; �����ǿ��Եģ���Ϊdefine�Ƕ����ֵ��滻 ���ͱ������ǲ������ı��

�洢�ؼ��ֲ���ͬʱ����ͬһ������ typedef static int s_int
*/


// int main()
// {
//     u_int x = 1;
//     ptr_int p = &x;
//     Stu s = {"����", 16, 'm'};
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
//     printf("����\n");
// #elif a<10
//     printf("С��\n");
// #else
//     printf("����\n");
// #endif
//     return 0;
// }
/*
��б��\ �����й��� ���з�֮���ܴ��������ţ�����֮ǰ�ǿ��Ե�
        ��ת�幦�� ����ת����(\n) ����ת����(\")

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
�س�\r  ���ص���ǰ�е��ʼ
����\n  ����ƶ�����һ��
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
//     int second = 0;//����
//     for(second = 10; second >= 0; second--)
//     {
//         printf("[%02d]\r", second);
//         Sleep(1000);
//     }
//     return 0;
// }
// int main()
// {
//     //д�������Ƽ�
//     char ch = 'abcd';//������ֻ�ܰ���4���ַ� �����ĸ��ַ��ͻᱨ�� С���ĸ��ַ�����������ֽڵ��ַ�����
//     printf("%s\n", ch);
//     return 0;
// }

// int main()
// {
//     printf("%d\n", sizeof(1));
//     printf("%d\n", sizeof("1"));
//     //c99��׼�Ĺ涨����ߵ��ַ�1���������ַ���������������int��
//     printf("%d\n", sizeof('1'));
//     //��C�����У������ǳ����˽ض� �����ε�4���ֽڱ��1���ֽ�
//     char c = '1';
//     //'abcd' �����ַ�����
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
//         printf("С��\n");
//     }
//     else
//     {
//         printf("���\n");
//     }
//     return 0;
// } 
// int main()
// {
//     printf("%d", '0');
//     return 0;
// }
//ASCII ���ڵļ�ֵ�Ƕ���������ͨ��ӳ�� ��ʾ�����Թ����ǽ����Ķ��ۿ�
// int main()
// {
//     printf("%d", '��');
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
//     if((++i > 0) || (++j > 0)) // ��·
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
//     // flag && show(); ������൱����if
//     // flag || show(); ������൱����if no
//     // printf("%p", 0x11223344);
   
//     printf("%x\n", &flag);//��ӡ�����и�����ʮ�����������ȿ��Դ�ӡʮ�����ƣ�Ҳ���Դ�ӡ��ַ
//     printf("%p\n", &flag);//��ӡ����û�и�����ʮ����������ͨ��������ӡ��ַ

//     return 0;
// }

// int main()
// {
//     printf("%d\n", 2 | 3);
//     printf("%d\n", 2 & 3);
//     printf("%d\n", 2 ^ 3);
//     printf("%d\n", ~0); ����İ�λȡ�� ����λҲҪ��������
//     return 0;
// }