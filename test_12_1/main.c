#include "head.h"

// int main()
// {
//    for(int x = 0, y = 0; (y = 123)&&(x<4); x++)
//    {
//        printf("%d ",x);
//    }
//     return 0;
// }

// int main()
// {
//     char a = 'a';
//     char b = 0;
//     printf("%c ",++a);
//     printf("%c ",b = a++);
//     return 0;
// }
// int fun(int x, int y)
// {
//     return x+y;
// }
// int* fun1(int* x)
// {
    
//     return ++x;

// }
// int main()
// {
//     int t =  0;
//     while(printf("*"))
//     {
//         t++;
//         if(t<3)
//         break;
//     }
//     printf("\n%d",printf("**"));
//     //其中printf返回值是打印内容的相应位数
//     return 0;
// }
// int main()
// {
//     int (*pf)(int,int) = fun;
//     int ret = (*pf)(1,2);
//     printf("%d\n",ret);
//     int a = 1;
//     printf("%p\n",&a);
//     printf("%p\n", fun1(&a));
//     return 0;
// }

// int main()
// {
//     int a = 24;
//     printf("%o",a);
//     printf("%6.9s","helloworld");
//     //6.9%s意思是输出字符串的长度范围为大于等于6小于等于9
//     return 0;
// }

// int main()
// {
//     int a[3] = {};
//     for(int i = 0; i<3; i++)
//     {
//         printf("%d ",a[i]);
//     }
//     printf("\n");
//     printf("%c",'\101');
//     return 0;
// }
// int find_same(int* a,int n)
// {
//     int* pa = a;
//     int cnt = 0;
//     int tmp = 0;
//     for(int i = 0;i<n-1;i++)
//     {
//         for(int j = i+1; j<n; j++)
//         {
//             if(*(pa+i) > *(pa+j))
//             {
//                 tmp = *(pa+i);
//                 *(pa+i) = *(pa+j);
//                 *(pa+j) = tmp;
//             }
//         }
//     }
//     for(int i = 0;i<n; i++)
//     {
//         if(*(pa+i) == *(pa+i+1))
//         {
//             cnt++;
//             printf("%d ",*(pa+i));
//         }
//     }
//     printf("\n");
//     return cnt;
// }
// int main()
// {
//     int a[7] = {2,3,1,0,2,5,3};
//     int ret = find_same(a,7);
//     printf("ret = %d\n",ret);
//     return 0;
// }
// void instand(char* str,int n)
// {
//     char s_cpy[50] = {0};
//     for(int i = 0,j=0; i<n;i++,j++)
//     {
//             if(*(str+i) == ' ')
//             {
//                 *(s_cpy+(j++)) = '%';
//                 *(s_cpy+(j++)) = '2';
//                 *(s_cpy+(j++)) = '0';
//                 i++;
//             }
//             *(s_cpy+j) = *(str+i);
//     }
//     printf("%s",s_cpy);
// }
// int main()
// {
//    char str[] = "We Are Happy";
//     instand(str,strlen(str));
//     return 0;
// }

// int main()
// {
//     int n = 0;
//     int num[4][4] = {0};
//     int flag = 0;
//     printf("请输入要寻找的数:");
//     scanf("%d",&n);
//     for(int i = 0 ; i<4; i++)
//     {
//         for(int j = 0; j<4; j++)
//         {
//             scanf("%d",&num[i][j]);
//         }
        
//     }
//     for(int i = 0 ; i<4; i++)
//     {
//         for(int j = 0; j<4; j++)
//         {
//             printf("%d",num[i][j]);
//             if(j == 3)
//             {
//                 printf("\n");
//             }
//             else
//             {
//                 printf(",");
//             }   
//             if(num[i][j] == n)
//             {
//                flag = 1;
//                 break;
//             }
//         }
//     }
//     if(flag == 1)
//     {
//         printf("true\n");
//     }
//     else
//     {
//         printf("false\n");
//     }
// }

// int main()
// {
//     int m = 0,n = 0;
//     scanf("%d%d",&m,&n);
//     while(m!=n)
//     {
//         while(m>n)
//         {
//             m = m - n;
//         }
//         while(n>m)
//         {
//             n = n - m;
//         }
//     }
//     printf("%d",m);
//     short i = 32769;
//     printf("%d",i);
//     return 0;
// }

// int main()
// {
//     printf("%d\n",150/50%5);
//     int a,i = 0;
//     float j = 2.0;
//     if(a == 1)
//     {
//         printf("ha\n");
//     }
//     ++i;
//     ++j;
//     printf("%f\n",j);
//     printf("%d",10%3*2);
//     char *p = NULL;
//     printf("%p",p);
// }
// void fib(int n)
// {
//     int first = 1;
//     int second = 1;
//     int third = 0;
//         if(n == 1 || n == 2)
//         {
//             third = 1;
//         }
//         else
//         {
//             while(n>2)
//             {    
//                 third = first+second;
//                 first = second;
//                 second = third;
//                 n--;
//             }
//         }
//     printf("%d",third);
// }
// int main()
// {
//     int n = 0;
//     scanf("%d",&n); 
//     fib(n);
// }

// int main()
// {
//     int a[5] = {1,2,3,4,5};
//     int b[5] = {0};
//     int left = 0;
//     int right = (sizeof(a)/sizeof(a[0]));
//     int avg = (left+right)/2+1;
//     for(int i = 0,j=0; i<5; i++)
//     {
//         if(a[i]>avg)
//         {
//             b[j] = a[i];
//             j++;
//         }
//         else if(a[i] == avg)
//         {
//             b[j] = a[i];
//             j++;
//         }
//     }
//     for(int i = 0,j = 0; i<5; j++)
//     {
//         if(b[j] == 0)
//         {
//             b[j] = a[i];
//             i++;
//         }
//     }

//     int min = b[0],mini = 0;
//     for (int i = 0; i < 5; i++)
//     {
//         printf("%d ",b[i]);
//         if(b[i]<min)
//         {
//             min = b[i];
//             mini = i;
//         }
//     }
//     printf("\nb[%d]=%d",mini,b[mini]);
    
// }

// int main()
// {
//     int n = 0;
//     int j = 0;
//     scanf("%d",&n);
//     int num = 1;
//     while(n>0)
//     {
//         num = num * 10;
//         n--;
//     }
//     num--;
//     while(j<num)
//     {
//         j++;
//         printf("%d ",j);
//     }
//     return 0;
// }

// struct A
// {
//     int a;//4
//     short b;//2+2
//     int c;//4
//     char d;//1+3
// };

// struct B
// {
//     int a;//4
//     short b;//2
//     char d;//1+1
//     int c;//4
// };

// int main()
// {
//     struct A a = {0};
//     struct B b = {0};
//     printf("%d",sizeof(a));
//     printf("%d",sizeof(b));

// }

// int main()
// {
//     int a[4][3] = {1,2,3,4,5,6,7,8,9,10,11,12};
//     int (*prt)[3] = a;
//     int *p = a[0];
//     printf("%d",a[1][2]);
//     printf("\n%d",*(*(prt+1)+2));
// }

// int main()
// {
//     int a[12] = {1,2,3,4,5,6,7,8,9,10,11,12};
//     int *p[4];
//     int i;
//     for(i = 0; i<4; i++)
//     {
//         p[i] = &a[i*3];
//     }
//     printf("%d\n",p[3][2]);
//     return 0;
// }

// #define SUB(a) (a)-(a)
// int main()
// {
//     int a = 2,b = 3, c = 5,d;
//     d = SUB(a+b)*c;
//     d = (a+b)-(a+b)*c; 5-5*5=-20 
//     printf("%d",d);

// }


void test()
{
    char* str = (char*)malloc(100);
    strcpy(str,"hello");
    free(str);
    if(str != NULL)
    {
        strcpy(str,"world");
        printf("%s",str);
    }
}
int main()
{
    test();
    return 0;
}