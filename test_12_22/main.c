#include "head.h"

// int main()
// {
//     int day = 0;
//     do
//     {
//         printf("Please Enter Your Day # ");
//         scanf("%d", &day);
//         switch(day)//���� ������ ���� || ���� ��case���бȽ�
//         {
//             case 1://���� ���ж�������  case ����ֻ�ܸ�����   ���ܸ�const���εĳ�����
//             //�����case��Ҫִ�ж������Ļ� ����ʹ�ô������н��(������) ���� ʹ�ú�������ʽ���н��(����)
//                 // printf("����1\n");
//                 // break;//���� �𵽷�֧������
//             case 2:
//                 // printf("����2\n");
//                 // break;
//             case 3:
//                 // printf("����3\n");
//                 // break;
//             case 4:
//                 // printf("����4\n");
//                 // break;
//             case 5:
//                 printf("������\n");
//                 break;
//             case 6:
//                 // printf("����6\n");
//                 // break;
//             case 7:
//                 printf("��Ϣ��\n");
//                 break;
//             case 0:
//                 break;
//             default:
//                 printf("�������������������������!\n");
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
1.switch �﷨�ṹ�У�case ��ɵ��ж����ܣ�break��ɵ��Ƿ�֧����
2.case��ִ����� == 1��n ��case�������(���ܶ�������������Ҫ ����ʹ�ô������ߺ���) break
3.case��ִ����� == n��1�� ����case������дbreak
4.default�����Գ������κεط������Ƽ�����ĩβ
5.case�����ܣ�const ����ͨ����������Ҫ�кõĲ���case�ķ�ʽ

�κ�c������Ĭ�ϱ����֮������ʱ��������������������
stdin����׼���룬 FILE* stdin, ����
stdout����׼����� FILE* stdiout, ��ʾ��
stderr����׼���� FILE* stderr,  ��ʾ��

������������ݣ�����������ʾ���д�ӡ�����ݣ�ȫ�������ַ�
���ʹ�ø�ʽ������/��ʽ�����(scanf/printf)��������

���� ��ʾ�� ����֮Ϊ�ַ��豸
*/

// int main()
// {
//     while(1)
//     {
//         int ch = getchar();
//         if(ch == '#')
//         {
//             // break;����ѭ��
//             continue;//��������ѭ��
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
//goto ���ܿ纯��(���ܿ�����)

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
//��vs��ƽ̨�� void��0�ֽ� ����gcc��ƽ̨�� void��1�ֽ�
//void ������Ǳ�����������Ϊ�����ͣ�ǿ�ƵĲ����������
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
c�к������Բ�������ֵ��Ĭ�ϵķ���ֵ��:int
void���κ�������ֵ��1.ռλ�������û���ȷ����Ҫ����ֵ 2. ��֪���������������ֵ�޷�����
void�䵱�������β��б���֪�û�or���������ú�������Ҫ����
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
void* ���Ա��κ����͵�ָ����գ�void*���Խ�������ָ������(����)

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