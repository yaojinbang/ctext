#include "test.h"
/*
栈区

堆区

未初始化全局数据区

已初始化全局数据区

字符常量区

代码区


*/

// int g_val1;
// int g_val2 = 10;
// int main()
// {
    
//     printf("code: %p\n", main);

//     char *str = "hello bit";
//     printf("read only: %p\n", str);

//     printf("init g_val: %p\n", &g_val2);
//     printf("g_val: %p\n", &g_val1);
    
//     char *p = (char *)malloc(sizeof(char)*10);
//     if(p == NULL)
//     {
//         perror("malloc");
//     }
//     char *p1 = (char *)malloc(sizeof(char)*10);
//     char *p2 = (char *)malloc(sizeof(char)*10);
//     printf("heap: %p\n", p);
//     printf("heap: %p\n", p1);
//     printf("heap: %p\n", p2);
//     printf("stack: %p\n", &str);
//     printf("stack: %p\n", &p);
//     printf("stack: %p\n", &p1);
//     printf("stack: %p\n", &p2);
//     free(p);
//     free(p1);
//     free(p2);
//     p = NULL;
//     p1 = NULL;
//     p2 = NULL;
//     return 0;
// }
// int main()
// {
//     return 0;
// }

// static int g_val = 10;

// struct student
// {
//     char *name;
//     int score;

// }stu,*pstu;

// int main()
// {
//     pstu = (struct student*)malloc(sizeof(struct student));
//     if(pstu == NULL)
//     {
//         perror("pstu malloc");
//     }
//     pstu->name = (char*)malloc(sizeof(char)*10);
//     if(pstu->name == NULL)
//     {
//         perror("pstu->name malloc");
//     }
//     strcpy(pstu->name,"Jimy");
//     pstu->score = 99;
//     printf("%s, %d", pstu->name, pstu->score);
//     free(pstu->name);
//     free(pstu);
//     pstu->name = NULL;
//     pstu = NULL;
//     return 0;
// }
// struct student
// {
//     char *name;
//     int score;
// };
// void ShowStu(struct student *stu)
// {
//     /*
//     合法：能够被用户直接使用的！应用层面解决的
//     指针如果有具体的指向(包括野指针) ，就是 是不是野指针我们无法进行验证，只能交由操作系统验证
//     我们只能验证指针是否为空指针
//     对应的合法性我们是无法验证的，确定指针具体值的合法性，不是用户能做得到
//     所有的指针，如果没有被直接使用，必须设置为NULL(编程规范问题)
//     在函数内部，要验证指针的合法性，本质是验证指针 ！= NULL
//     */
//     assert(stu != NULL);//条件不满足就终端运行 调试代码的时候用
//     printf("%s:> %d\n",stu->name,stu->score);
// }
// void show(char **pstr)
// {
//     *pstr = (char*)malloc(sizeof(char)*10);
//     if(*pstr == NULL)
//     {
//         perror("malloc");
//     }
//     strcpy(*pstr,"hello bit");
// }
// int main()
// {
//     struct student stu = {NULL, 0};
//     stu.name = (char*)malloc(sizeof(char)*10);
//     strcpy(stu.name,"zhangsan");
//     stu.score = 100;
//     ShowStu(&stu);
//     free(stu.name);
//     stu.name = NULL;
//     char *str = NULL;
//     show(&str);
//     printf("%s\n", str);
//     free(str);
//     str = NULL;
//     return 0;
// }
//动态内存申请的空间实际上是比你申请的空间要大的 如果越界访问编译器不一定会报错 甚至对越界的空间进行写入都不一定会报错
// int main()
// {
//     unsigned int a = 10;
//     for(a = 10; a>=0; a--)
//     {
//         printf("%u ", a);
//         Sleep(1000);
//     }

//     return 0;
// }

/*
    unsigned int 0       2^32-1  2^32
    int          -2^31   2^31-1     
*/

// int main()
// {
//     // int *p = (int *)malloc(sizeof(int));
//     // int i = 1;
//     // while(1)
//     // {
//     //     int *pp = (int *)realloc(p,sizeof(int)*i);
//     //     i = i * 100000;
//     // }
//     while(1)
//     {
//         int *p = (int *)malloc(1024);
//     }//不要轻易尝试 电脑会死机
//      内存泄漏了，程序退出后，系统会强制把其申请的内存空间拿回
        //常驻进程
//      //最怕的是那种永远不会主动退出的程序(操作系统，杀毒软件，服务器程序)
        //  return 0;
// }
/*
malloc && free
释放的字节实际上要比申请的字节数多得多，因此实际申请的字节数要比申请的字节数多
多出来的部分：记录这次申请的更详细的信息: 申请了多大的空间(cookie)

栈上开辟小空间
堆上开辟大空间
*/
// int main()
// {
//     int *p = (int *)malloc(sizeof(int)*5);
//     if(p == NULL)
//     {
//         perror("malloc");
//     }
//     for(int i = 0; i<5; i++)
//     {
//         *(p+i) = i;
//         printf("%d ", p[i]);
//     }
//     return 0;
// }


// Node_t *AllocNode(int x)
// {
//     Node_t *node = (Node_t *)malloc(sizeof(Node_t));
//     if(node == NULL)
//     {
//         perror("malloc");
//         exit(1);//退出程序
//     }
//     node->data = x;
//     node->next = NULL;
//     return node;
// }
// void InsertNode(Node_t *head, int x)
// {
//     assert(head);
//     Node_t *node = AllocNode(x);
//     node->next = head->next;
//     head->next = node;
// }
// void ShowList(Node_t *head)
// {
//     assert(head);
//     head = head->next;
//     while(head)
//     {
//         printf("%d ", head->data);
//         head = head->next;
//     }
//     printf("\n");


// }
// void DeleteNode(Node_t *head)
// {
//     assert(head);
//     Node_t *p = head->next;
//     head->next = p->next;
//     free(p);
//     p = NULL;
//     free(head);
// }
// int main()
// {
//     Node_t *head = AllocNode(0);
//     printf("插入测试...\n");
//     for(int i = 1; i<=N; i++)
//     {
//         InsertNode(head, i);
//         ShowList(head);
//         Sleep(1000);//头插
//     }
//     printf("删除测试...\n");
//     for(int i = 1; i<=N; i++)
//     {
//         DeleteNode(head);
//         ShowList(head);
//         Sleep(1000);//头删
//     }
//     return 0;
// }