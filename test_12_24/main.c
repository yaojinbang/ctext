#include "head.h"
/*
��C������ �κα���ȡ��ַ������͵�ַ��ʼ
(������ͬ)��ָ����н����ã�ָ����ָ���Ŀ��

const int *p = &a pָ��ı������ɱ�ֱ���޸�
int const *p = &a
p = 100;  ����
*p = 100; ����



int* const p = &a p�����ݲ���ֱ�ӱ��޸� pָ���ܸ� ֻ��ָ��a
p = 100;  ����
*p = 100; ����

const int * const p = &a

const int *p = &a;
int *q = p;
��ʱ������ǽ�Լ����ĸ�ֵ��Լ��С��
������Ҫ���Ⱥ����ߵ����͸ĳ�һ�� int *p = (int *)q;

int *p = &a;
const int *q = p;
��ʱ������ǽ�Լ��С�ĸ�ֵ��Լ�����
����Ͳ���Ҫ���иı�

c�� �κκ���������һ��Ҫ�γ���ʱ����������ָ�����

volatile ���������ñ������������Ż� ÿ�ζ����ݶ����ڴ��ж�ȡ
��Ȼvolatile�����ױ�ؼ��֣���������������������εı������ܻ�仯��Ҫ������ע�⣬��������Ҫ���Ӧ��������仯

*/
// void show(const int* p)
// {
//     printf("%d\n", *p);
//     printf("%p\n", &p);

//     // *q = 100;
// }
// int main()
// {
//     int a = 10;
//     int* p = &a;
//     printf("%p\n", &p);
//     show(p); 
//     return 0;
// }
// const int *GetVal()
// {
//     static int a = 10;
//     printf("%d ",a);
//     return &a;
// }

// int main()
// {
//     int *p = (int *)GetVal();
//     *p = 20;
//     GetVal();
//     return 0;

// }
// int pass = 1;

// int main()
// {
//     while(pass)
//     {

//     }
//     return 0;
// }

// int main()
// {
//     printf("%d\n",x);
//     show();
//     return 0;
// }
// #define NUM 64
// struct stu
// {
//     char name[NUM/2];
//     int age;
//     char sex;
//     char addr[NUM];
// };

// int main()
// {
//     struct stu x = {"����",18,'m',"����"};
//     struct stu *px = &x;
//     strcpy(x.name,"�仨");
//     x.sex = 'w';
//     printf("%s\n", x.name);
//     printf("%c\n", px->sex);
//     printf("%d\n", (*px).age);
//     printf("%s\n", px->addr);
//     return 0;
// }

// struct S
// {
//     int id;
//     char name[0];
// };
// int main()
// {
//     struct S* p = (struct S*)malloc(sizeof(struct S)+20*sizeof(char));
//     p->id = 10086;
//     strcpy(p->name,"zhangsan");
//     printf("id = %d\tname = %s\n", p->id, p->name);
//     free(p);
//     p = NULL;
//     return 0;
// }

// struct S
// {
//     int id;
//     char *n;
// };

// int main()
// {
//     struct S *p = (struct S*)malloc(sizeof(struct S));
//     p->n = (char *)malloc(sizeof(char)*20);
//     p->id = 10010;
//     strcpy(p->n,"zhangsan");
//     printf("id = %d\tname = %s\n", p->id, p->n);
//     free(p->n);
//     free(p);
//     p->n = NULL;
//     p = NULL;
//     return 0;
// }
// struct S
// {};

// int main()
// {
//     struct S x;
//     printf("%d\n", sizeof(x));
//     printf("%d\n", sizeof(void));
//     return 0;
// }
// int 4 <= long 4/8 < long long 8
// union U
// {
//     int a;
//     char c;
// };
// int main()
// {
//     union U un;
//     un.a = 100;
//     printf("%p\n",&un);
    
//     printf("%p\n",&(un.a));

//     printf("%p\n",&(un.c));

//     return 0;
// }
//�������С�˵��ж�
// union Un
// {
//     int a;
//     char c;
// };

// int main()
// {
//     union Un u;
//     u.a = 1;
//     if(u.c)//���c��ֵ��1��˵����С�˷�֮�Ǵ��
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
//     int a[5] = {1,2,3,4,5};
//     int *ptr1 = (int*)(&a+1);
//     int *ptr2 = (int*)(a+1);
//     printf("%x,%x\n", ptr1[-1], *ptr2);
//     return 0;
// }

union Un
{
    int a;//4
    char c[5];//5
};

struct S
{
    int a;
    char c[5];
};
enum Color
{
    RED,
    BULE,
    GREEN,
    YELLOW,
    BLACK
};//ö�ٳ��� ���� ����֮��������� �� �������� ������������������﷨���
//�궨�� ���� ������
int main()
{
    int a = RED;
    enum Color c = BULE;
    printf("%d\n", c);
    printf("%d\n", a);
    printf("%d\n", sizeof(enum Color));
    printf("%d\n", sizeof(union Un));
    printf("%d\n", sizeof(struct S));
    return 0;
}