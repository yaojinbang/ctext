#include "test.h"
/*
ջ��

����

δ��ʼ��ȫ��������

�ѳ�ʼ��ȫ��������

�ַ�������

������


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
//     �Ϸ����ܹ����û�ֱ��ʹ�õģ�Ӧ�ò�������
//     ָ������о����ָ��(����Ұָ��) ������ �ǲ���Ұָ�������޷�������֤��ֻ�ܽ��ɲ���ϵͳ��֤
//     ����ֻ����ָ֤���Ƿ�Ϊ��ָ��
//     ��Ӧ�ĺϷ����������޷���֤�ģ�ȷ��ָ�����ֵ�ĺϷ��ԣ������û������õ�
//     ���е�ָ�룬���û�б�ֱ��ʹ�ã���������ΪNULL(��̹淶����)
//     �ں����ڲ���Ҫ��ָ֤��ĺϷ��ԣ���������ָ֤�� ��= NULL
//     */
//     assert(stu != NULL);//������������ն����� ���Դ����ʱ����
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
//��̬�ڴ�����Ŀռ�ʵ�����Ǳ�������Ŀռ�Ҫ��� ���Խ����ʱ�������һ���ᱨ�� ������Խ��Ŀռ����д�붼��һ���ᱨ��
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
//     }//��Ҫ���׳��� ���Ի�����
//      �ڴ�й©�ˣ������˳���ϵͳ��ǿ�ư���������ڴ�ռ��û�
        //��פ����
//      //���µ���������Զ���������˳��ĳ���(����ϵͳ��ɱ�����������������)
        //  return 0;
// }
/*
malloc && free
�ͷŵ��ֽ�ʵ����Ҫ��������ֽ�����ö࣬���ʵ��������ֽ���Ҫ��������ֽ�����
������Ĳ��֣���¼�������ĸ���ϸ����Ϣ: �����˶��Ŀռ�(cookie)

ջ�Ͽ���С�ռ�
���Ͽ��ٴ�ռ�
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
//         exit(1);//�˳�����
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
//     printf("�������...\n");
//     for(int i = 1; i<=N; i++)
//     {
//         InsertNode(head, i);
//         ShowList(head);
//         Sleep(1000);//ͷ��
//     }
//     printf("ɾ������...\n");
//     for(int i = 1; i<=N; i++)
//     {
//         DeleteNode(head);
//         ShowList(head);
//         Sleep(1000);//ͷɾ
//     }
//     return 0;
// }