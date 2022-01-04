#include "head.h"

/* 匿名结构体类型 只能在创建类型后创建变量
struct 
{
    int a;
    char c;
}sa;

struct
[
    int a;
    char c;
]* psa;

struct 
{
    int a;
    char b;
}a[20], *P;
*/


/*
    声明一个结构体类型
    声明一个学生类型，是想通过学生类型来创建学生变量（对象）
    描述学生:属性-名字+电话+性别+年龄
*/
// struct Stu //struct 关键字  Stu 标签
// {
//     //结构体的成员变量
//     char name[20];//名字
//     char tele[12];//电话
//     char sex[10];//性别
//     int age;
// }s4,s5,s6;//创建的变量的变量名 此时为全局变量

// struct Stu s3;//此时该变量为全局变量

// int main()
// {
//     //c语言的内置数据类型
//     //char short int float double long
//     //复杂对象 复杂类型 可采用自定义类型 结构体 枚举 联合体
//     //创建的是结构体变量
//     struct Stu s1;
//     struct Stu s2;
    
    
//     return 0;
// }
struct Node
{
    int data;
    struct Node* next;//结构体的成员变量不可包含自己 无法计算大小
};
//链表 一个节点中包含两部分 一个是数据，一个是下个节点的地址

/*
typedef struct Node
{
    int data;
    struct Node* next;
}Node;
*/
// struct T
// {
//     double weight;
//     short age;
// };
// struct S
// {
//     char c;
//     struct T st;
//     int a;
//     double d;
//     char arr[20];
// };
// int main()
// {
//     //结构体初始化
//     struct S s = {'c',{55.6,30},100,3.14,"hello bit"};
//     printf("%c %lf %d %d %lf %s",s.c,s.st.weight,s.st.age,s.a,s.d,s.arr);
//     return 0;
// }


// struct S1
// {
//     char c1;
//     int a;
//     char c2;
// };
// struct S2
// {
//     char c1;
//     char c2;
//     int a;
// };
// int main()
// {
//     struct S1 s1 = {0};
//     struct S2 s2 = {0};
//     printf("%d\n",sizeof(s1));
//     printf("%d\n",sizeof(s2));

// }