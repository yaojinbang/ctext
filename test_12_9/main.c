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
// Ϊʲô�����ڴ����
// 1.ƽ̨ԭ����ֲԭ��
// 2.����ԭ��
// �ܵ���˵���ṹ����ڴ�������ÿռ�����ȡʱ�������
// */
// int main()
// {
//     struct S3 s3 = {0};
//     struct S4 s4 = {0};

//     printf("%d",sizeof(s3));
//     printf("%d",sizeof(s4));
    
//     return 0;
// }
//vs ����������Ĭ�ϵĶ�������8
//����Ĭ�϶�����Ϊ4
// #pragma pack(4)
// struct S
// {
//     char c;
//     double b;
// };
// //ȡ�����õ�Ĭ�϶�����
// #pragma pack()
// int main()
// {
//     struct S s = {0};
//     printf("%d",sizeof(s));
//     return 0;
// }

//offsetof ����ṹ����ĳ����������׵�ַ��ƫ��

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
// void Print2(const struct S* ps)//���Է�ֹ�ṹ��ֵ���ı�
// {
//     printf("%d\n",ps->a);
//     printf("%d\n",ps->c);
//     printf("%lf\n",ps->d);
// }
// int main()
// {
//     struct S s = {0}; // s�Ǳ������Ҫ�ú�������ʽ��ʼ����������Ӧ��Ҫȡ��ַ�Ŷ�
//     Init(&s);
//     Print(s);
//     Print2(&s);
// }

/*
    λ�εĳ�Ա������int��unsigned int��signed int
    λ�εĳ�Ա�������һ��ð�ź�һ������
*/
// struct S
// {
//     int _a:2;//ð�ź������ֵ�Ǵ���ռ�˼�������λ
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
//     s.a = 10; //���ܴ������������ 1010 ֻ������λ����ֵ ÿ�δ�Ŷ��Ǵӵ͵���
//     s.b = 20;
//     s.c = 3;
//     s.d = 4;
//     printf("%d",sizeof(s));
// }

//�������ݰ��ķ�װ����λ�� TCPͷ���ķ�װ
//#define RED 0 ����Ķ����������͵�

//ö������
// enum Sex
// {
//     MALE,
//     FEMALE,
//     SECRET
//     //ö�ٿ���ȡ��ֵ
// };
// enum RGB
// {
//     RED = 1,
//     GREEN = 2,
//     BLUE = 3
// //ö�ٳ��� ���Ա�����ʼֵ �������ֵ�ʹ�0��ʼ
// };

// int main()
// {
//     enum Sex s = MALE;
//     enum RGB color = RED;
//     printf("%d %d %d",RED,GREEN,BLUE);
//     return 0;
// }

// //���� ������ ������
// union Un
// {
//     char c;
//     int a;
// };//�ռ�����������Ա�Ĵ�С���Ҳ���ͬʱ���� ����c��ʱ��Ͳ�����a
// int main()
// {
//     union Un u = {0};
//     printf("%d\n",sizeof(u));
//     printf("%p\n",&(u.c));
//     printf("%p\n",&(u.a));
//     printf("%p\n",&u);
//     //��ʱc��a����ͬһ��ռ�
// }

// int main()
// {
//     int a = 0x11223344;
//     // char* pa = (char*)&a;
//     // if(*pa == 0x11)
//     // {
//     //     printf("���\n");
//     // }
//     // else if(*pa = 0x44)
//     // {
//     //     printf("С��\n");
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
//         printf("���\n");
//     }
//     else
//     {
//         printf("С��\n");
//     }
// }


//������Ĵ�С����������Ա�Ĵ�С
//������Ա��С����������������������ʱ�򣬾�Ҫ���뵽����������������
// union Un
// {
//     int a;//4
//     char arr[5];//5 
//     //���������������8 ����Ҫ��8���� ���Ҫ�˷������ֽڵĿռ�
// };
// union Un2
// {
//     short c[7];// 2*7 = 14 8*2 = 16 Ҫ��ʮ�����ֽڿ����Ҫ�˷������ֽڵĿռ�
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
//     printf("�˳�ͨѶ¼\n");
// }
// void addcon(struct contact* ps)
// {
//     if(ps->size == 1000)
//     {
//         printf("ͨѶ¼�Ѿ�����\n");
//     }
//     else
//     {
//         printf("����������:>");
//         scanf("%s",ps->data[ps->size].name);
//         printf("�������Ա�:>");
//         scanf("%s",ps->data[ps->size].sex);
//         printf("����������:>");
//         scanf("%d",&ps->data[ps->size].age);

//         ps->size++;
//         printf("��ӳɹ�\n");
//     }
// }
// void showcon(struct contact* ps)
// {
//     if(ps->size == 0)
//     {
//         printf("ͨѶ¼Ϊ��\n");
//     }
//     else
//     {
//         printf("%-20s\t%-5s\t%-s\t\n","����","�Ա�","����");
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
//         // printf("������:>");
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
//         //         printf("�����������������\n");
//         //         break;
//         // }
        
//     } while (input);
    
//     return 0;
// }