#include "head.h"
// struct S3
// {
//     double d;
//     char c;
//     int i;
// };
// struct S4
// {
//     char c1;
//     struct S3 s3;
//     double d;
// };
// /*
// 为什么存在内存对齐
// 1.平台原因（移植原因）
// 2.性能原因
// 总的来说：结构体的内存对齐是拿空间来换取时间的做法
// */
// int main()
// {
//     struct S3 s3 = {0};
//     struct S4 s4 = {0};

//     printf("%d",sizeof(s3));
//     printf("%d",sizeof(s4));
    
//     return 0;
// }
//vs 编译器底下默认的对齐数是8
//设置默认对齐数为4
// #pragma pack(4)
// struct S
// {
//     char c;
//     double b;
// };
// //取消设置的默认对齐数
// #pragma pack()
// int main()
// {
//     struct S s = {0};
//     printf("%d",sizeof(s));
//     return 0;
// }

//offsetof 计算结构体中某变量相对于首地址的偏移

// struct S
// {
//     char c;
//     int a;
//     double b;
// };
// int main()
// {
//     printf("%d\n",offsetof(struct S,c));
//     printf("%d\n",offsetof(struct S,a));
//     printf("%d\n",offsetof(struct S,b));

// }

// struct S
// {
//     int a;
//     char c;
//     double d;
// };
// void Init(struct S* ps)
// {
//     ps->a = 100;
//     ps->c = 'w';
//     ps->d = 3.14;
// }
// void Print(struct S s)
// {
//     printf("%d\n",s.a);
//     printf("%d\n",s.c);
//     printf("%lf\n",s.d);
// }
// void Print2(const struct S* ps)//可以防止结构体值被改变
// {
//     printf("%d\n",ps->a);
//     printf("%d\n",ps->c);
//     printf("%lf\n",ps->d);
// }
// int main()
// {
//     struct S s = {0}; // s是变量如果要用函数的形式初始化它的内容应该要取地址才对
//     Init(&s);
//     Print(s);
//     Print2(&s);
// }

/*
    位段的成员必须是int、unsigned int、signed int
    位段的成员名后边有一个冒号和一个数字
*/
// struct S
// {
//     int _a:2;//冒号后面的数值是代表占了几个比特位
//     int _b:5;
//     int _c:10;
//     int _d:30;
// };
// int main()
// {
//     struct S s;
//     printf("%d\n",sizeof(s));
//     return 0;

// }
// struct S
// {
//     char a:3;
//     char b:4;
//     char c:5;
//     char d:4;
// };
// int main()
// {
//     struct S s;
//     s.a = 10; //可能存在溢出的现象 1010 只会存第三位的数值 每次存放都是从低到高
//     s.b = 20;
//     s.c = 3;
//     s.d = 4;
//     printf("%d",sizeof(s));
// }

//对于数据包的封装常用位段 TCP头部的封装
//#define RED 0 这里的定义是无类型的

//枚举类型
// enum Sex
// {
//     MALE,
//     FEMALE,
//     SECRET
//     //枚举可能取的值
// };
// enum RGB
// {
//     RED = 1,
//     GREEN = 2,
//     BLUE = 3
// //枚举常量 可以被赋初始值 如果不赋值就从0开始
// };

// int main()
// {
//     enum Sex s = MALE;
//     enum RGB color = RED;
//     printf("%d %d %d",RED,GREEN,BLUE);
//     return 0;
// }

// //联合 联合体 共用体
// union Un
// {
//     char c;
//     int a;
// };//空间至少是最大成员的大小，且不可同时存在 在用c的时候就不能用a
// int main()
// {
//     union Un u = {0};
//     printf("%d\n",sizeof(u));
//     printf("%p\n",&(u.c));
//     printf("%p\n",&(u.a));
//     printf("%p\n",&u);
//     //此时c和a共用同一块空间
// }

// int main()
// {
//     int a = 0x11223344;
//     // char* pa = (char*)&a;
//     // if(*pa == 0x11)
//     // {
//     //     printf("大端\n");
//     // }
//     // else if(*pa = 0x44)
//     // {
//     //     printf("小端\n");
//     // }
//     int b = a>>8;
//     printf("%x\n",b);
// }

// union Un
// {
//     char a;
//     int c;
// };
// int main()
// {
//     union Un u = {0};
//     u.c = 1;
//     printf("%d",u.a);
//     return 0;
// }

// int check_sys()
// {
//     union Un
//     {
//         char c;
//         int i;
//     }u;
//     u.i = 1;
//     return u.c;
// }
// int main()
// {
//     int ret = check_sys();
//     if(ret == 0)
//     {
//         printf("大端\n");
//     }
//     else
//     {
//         printf("小端\n");
//     }
// }


//联合体的大小至少是最大成员的大小
//当最大成员大小不是最大对齐数的整数倍的时候，就要对齐到最大对齐数的整数倍
// union Un
// {
//     int a;//4
//     char arr[5];//5 
//     //这里的最大对齐数是8 所以要想8看齐 因此要浪费三个字节的空间
// };
// union Un2
// {
//     short c[7];// 2*7 = 14 8*2 = 16 要向十六个字节看齐就要浪费两个字节的空间
//     int d;//4
// };
// int main()
// {
//     union Un2 u2 = {0};
//     union Un u = {0};
//     printf("%d",sizeof(u2));
//     return 0;
// }
// #define MAX 1000
// #define MAX_NAME 20
// #define MAX_SEX 5
// struct peoinfo
// {
//     char name[MAX_NAME];
//     char sex[MAX_SEX];
//     int age;
// };
// struct contact
// {
//     struct peoinfo data[MAX];
//     int size;
// };


// void menu()
// {
//     printf("0.exit  1.add   2.del   3.motify   4.show\n");
// }
// void initcontact(struct contact* ps)
// {
//     memset(ps->data,0,sizeof(ps->data));
//     ps->size = 0;
// }
// void exitcon(struct contact* ps)
// {
//     printf("退出通讯录\n");
// }
// void addcon(struct contact* ps)
// {
//     if(ps->size == 1000)
//     {
//         printf("通讯录已经满了\n");
//     }
//     else
//     {
//         printf("请输入名字:>");
//         scanf("%s",ps->data[ps->size].name);
//         printf("请输入性别:>");
//         scanf("%s",ps->data[ps->size].sex);
//         printf("请输入年龄:>");
//         scanf("%d",&ps->data[ps->size].age);

//         ps->size++;
//         printf("添加成功\n");
//     }
// }
// void showcon(struct contact* ps)
// {
//     if(ps->size == 0)
//     {
//         printf("通讯录为空\n");
//     }
//     else
//     {
//         printf("%-20s\t%-5s\t%-s\t\n","姓名","性别","年龄");
//         for(int i = 0;i<ps->size;i++)
//         {
//             printf("%-20s\t%-5s\t%-d\t\n",
//             ps->data[i].name,
//             ps->data[i].sex,
//             ps->data[i].age);
//         }
//     }
// }
// void callback(void (*p)(struct contact*),struct contact* ps)
// {
//     p(ps);
// }
// int main()
// {
//     int input = 0;
//     struct contact con;
//     initcontact(&con);
//     void (*fun[5]) (struct contact*) = {exitcon,addcon,NULL,NULL,showcon};
//     do
//     {
//         menu();
//         // printf("请输入:>");
//         // scanf("%d",&input);
//         // (*fun[input])(&con);
//         callback(addcon,&con);
//         callback(showcon,&con);

//         // switch(input)
//         // {
//         //     case 1:
//         //         printf("add\n");
//         //         addcon(&con);
//         //         break;
//         //     case 2:
//         //         printf("del\n");
//         //         break;
//         //     case 3:
//         //         printf("modify\n");
//         //         break;
//         //     case 4:
//         //         printf("show\n");
//         //         showcon(&con);
//         //         break;
//         //     case 0:
//         //         break;
//         //     default:
//         //         printf("输入错误，请重新输入\n");
//         //         break;
//         // }
        
//     } while (input);
    
//     return 0;
// }