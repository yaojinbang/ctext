#include "head.h"
/*
在C语言中 任何变量取地址都是最低地址开始
(类型相同)对指针进行解引用，指针所指向的目标

const int *p = &a p指向的变量不可被直接修改
int const *p = &a
p = 100;  可以
*p = 100; 不行



int* const p = &a p的内容不可直接被修改 p指向不能改 只能指向a
p = 100;  不行
*p = 100; 可以

const int * const p = &a

const int *p = &a;
int *q = p;
此时这里的是将约束大的赋值给约束小的
这里需要将等号两边的类型改成一致 int *p = (int *)q;

int *p = &a;
const int *q = p;
此时这里的是将约束小的赋值给约束大的
这里就不需要进行改变

c中 任何函数参数都一定要形成临时变量，包括指针变量

volatile 的作用是让编译器不进行优化 每次读数据都从内存中读取
虽然volatile叫做易变关键字，但这里仅仅是描述它修饰的变量可能会变化，要编译器注意，并不是它要求对应变量必须变化

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
//     struct stu x = {"张三",18,'m',"西安"};
//     struct stu *px = &x;
//     strcpy(x.name,"翠花");
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
//计算机大小端的判断
// union Un
// {
//     int a;
//     char c;
// };

// int main()
// {
//     union Un u;
//     u.a = 1;
//     if(u.c)//如果c的值是1就说明是小端反之是大端
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
};//枚举常量 具有 常量之间有相关性 和 自描述性 编译器还会对它进行语法检查
//宏定义 具有 独立性
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