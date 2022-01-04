#include "head.h"

// int main()
// {
//     int arr[10] = {0,1,2,3,4,5,6,7,8,9};
//     int arr1[10] = {1,2,3,4,5,6,7,8,9,10};
//     int *p[2] = {arr,arr1};
//     printf("%p\n",p[0]+1);
//     printf("%p\n",p[1]);

//     return 0;
// }

// int main()
// {
//     char* arr[5];
//     char* (*p)[5]=&arr;
//     char arr1[5];
//     char (*pa)[5] = &arr1;
//     int arr2[10] = {0};
//     int (*parr2)[10] = &arr2;
//     return 0;
// }

// int main()
// {
//     int arr[10] = {0,1,2,3,4,5,6,7,8,9};
//     int (*pa)[10] = &arr;
//     int i = 0;
//     // for(i = 0; i<10; i++)
//     // {
//     //     printf("%d\n",(*pa)[i]);
//     // }
//     for(i = 0; i<10; i++)
//     {
//         printf("%d ",*(*pa+i));//pa = &arr; *pa = *(&arr) = arr *pa+i = arr+i; *(*pa+i) = arr[i];
//     }
//     return 0;
// }
// void print1(int arr[3][5],int x,int y)
// {
//     for(int i = 0; i<x; i++)
//     {
//         for(int j = 0; j<y; j++)
//         {

//             printf("%d ", *(*(arr+i)+j));
//         }
//         printf("\n");
//     }
// }
// int main()
// {
//     int arr[3][5] = {{0,1,2,3,4},{1,2,3,4,5},{2,3,4,5,6}};
//     int (*p)[5] = arr;
//     int i= 0,j = 0;
//     for(i = 0; i<3; i++)
//     {
//         for(j = 0; j<5; j++)
//         {
//             printf("%d ",*(*(p+i)+j));
//         }
//         printf("\n");
//     }

//     // print1(arr,3,5);
//     // int (*pa)[5] = arr;
//     // int (*p)[5] = arr;//首元素的地址也就是{0,1,2,3,4}int arr[0][5]
//     // for(int i = 0; i<3; i++)
//     // {
//     //     for(int j=0; j<5; j++)
//     //     {
//     //         printf("%d ",*(*(p+i)+j));
//     //     }
//     //     printf("\n");
//     // }// (*(p+i))[j] = *(*(p+i)+j)

//     // int arr[5] = {0,1,2,3,4};
//     // // int *pa = arr;
//     // for(int i = 0;i<5;i++)
//     // {
//     //     printf("%d ",*(arr+i));
//     // }

//     return 0;
// }

// void test(int (*p)[3], int x, int y)
// {
//     for(int i = 0; i<x; i++)
//     {
//         for(int j = 0; j<y; j++)
//         {
//             printf("%d ", *(*(p+i)+j));
//         }
//         printf("\n");
//     }
// }

// int main()
// {
//     int arr[3][3] = {{0,1,2},{1,2,3},{2,3,4}};
//     int (*p)[3] = arr;
//     test(p,3,3);
//     return 0;
// }
// int Add(int a, int b)
// {
//     return a+b;
// }
// int main()
// {
//     // int a = 10;
//     // int b = 20;
//     // printf("%d\n", Add(a, b));
//     // printf("%p\n", &Add);
//     // printf("%p\n", Add);
//    int (*p)(int a, int b) = Add;
//    printf("%d ",(*p)(2,3));//函数指针
//     return 0;
// }
// void Print(char* str)
// {
//     printf("%s", str);
// }

// int main()
// {
//     void (*p)(char*) = Print;
//     (*p)("abcdef");
// }

//(*         (void (*)()) 0        )();

//typedef void(*pfun_t)(int);
//void(* signal(int, void(*)(int)) )(int);
//pfun_t signal(int ,pfun_t);
//signal�?一�?函数声明
//signal函数的参数有2�?，�??一�?是int，�??二个�?函数指针，�?�函数指针指向的函数的参数是int，返回类型是void
//signal函数的返回类型也�?一�?函数指针：�?�函数指针指向的函数的参数是int，返回类型是void

//  int main()
//  {
//      printf("************************\n");
//      printf("\n");
//      printf("\n");
//      printf("      very  good!!!     \n");
//      printf("\n");
//      printf("\n");
//      printf("************************\n");
//      return 0;
//  }

// int main()
// {
//     int a = 0;
//     int b = 0;
//     scanf("%d%d",&a,&b);
//     int c = a*b;
//     printf("��Ʒ�ĵ���aΪ%d,��������bΪ%d,�����ܶ�cΪ%d\n",a,b,c);
//     return 0;
// }

// int main()
// {
//     char c1 = 'C';
//     char c2 = 'h';
//     char c3 = 'i';
//     char c4 = 'n';
//     char c5 = 'a';
//     c1 = c1 + 4;
//     c2 = c2 + 4;
//     c3 = c3 + 4;
//     c4 = c4 + 4;
//     c5 = c5 + 4;
//     printf("%c%c%c%c%c\n",c1,c2,c3,c4,c5);
//     return 0;

// }

// int main()
// {
//     float f = 3.14;
//     float r = 0.0;
//     float h = 0.0;
//     scanf("%f%f",&r,&h);
//     float cl = 2*f*r;
//     float cs = f*r*r;
//     float cvz = cs*h;
//     printf("cl = %f, cs = %f, cvz = %f\n",cl, cs, cvz);
//     return 0;
// }

// int main()
// {
//     char i = 0;
//     scanf("%c",&i);
//     printf("%d\n",i);
//     return 0;
// }

// int main()
// {
//     int i = 0;
//     scanf("%d",&i);
//     printf("%d",i%10);
//     printf("%d",i/10);

//     return 0;
// }
// void get_o(int i)
// {

//     if(i > 0)
//     {
//         get_o(i/8);
//     }
//     printf("%d ",i%8);

// }
// int main()
// {
//     int i = 0;
//     scanf("%d",&i);
//     get_o(i);
//     return 0;
// }

// int main()
// {
//     int i = 0;
//     scanf("%d",&i);
//     if(i>=0 && i%2 == 0)
//     {
//         printf("%d is a positive even.\n",i);
//     }
//     if(i>0 && i%2!=0)
//     {
//         printf("%d is a positive odd.\n",i);

//     }
//     if(i<0 && i%2 == 0)
//     {
//         printf("%d is a negative even.\n",i);

//     }
//     if(i<0 && i%2 != 0)
//     {
//         printf("%d is a negative odd.\n",i);
//     }
//     return 0;
// }

// int main()
// {
//     int c = 0;
//     float p = 0,w = 0, s = 0, d = 0,f = 0;
//     scanf("%f%f%f",&p,&w,&s);
//     c = (int)(s/250);
//     switch(c)
//     {
//         case 0:
//             d = 0;
//             break;
//         case 1:
//             d = 0.02;
//             break;
//         case 2:
//         case 3:
//             d = 0.05;
//             break;
//         case 4:
//         case 5:
//         case 6:
//         case 7:
//             d = 0.08;
//             break;
//         case 8:
//         case 9:
//         case 10:
//         case 11:
//             d = 0.1;
//             break;
//         case 12:
//             d = 0.15;
//             break;
//     }
//     f = p*w*s*(1-d);
//     printf("%f",f);
//     return 0;
// }

// int main()
// {
//     char str;
//     int letter = 0;
//     int space = 0;
//     int digit = 0;
//     int other = 0;
//     while((str=getchar()) != '\n')
//     {
//         if(str >= 'a' && str <= 'z' || str >= 'A' && str<= 'Z')
//         {
//             letter++;
//         }
//         else if(str == ' ')
//         {
//             space++;
//         }
//         else if(str >= '0' && str <= '9')
//         {
//             digit++;
//         }
//         else
//         {
//             other++;
//         }
//     }
//     printf("letter:%d,space:%d,digit:%d,other:%d",letter,space,digit,other);

// }
// int main()
// {
//     int i,j;
//     for(i=3;i>=-3;i--)
//     {
//         for(j=1;j<=abs(i);j++)
//         printf(" ");
//         for(j=1;j<=7-abs(i)*2;j++)
//         printf("*");
//         printf("\n");
//     }
//     return 0;
// }

// int main()
// {
//     int i = 1020;
//     int day = 0;
//     while(1)
//     {
//         if(i == 0)
//         {
//             break;
//         }
//         day++;
//         i = i/2-2;
//     }
//     printf("%d\n",day);
//     return 0;
// }

// int main()
// {
//     int a[10] = {89,74,56,99,28,34,47,5,16,61};
//     int tmp = 0;
//     // for(int i = 0;i<9;i++)
//     // {
//     //     for(int j = 0;j<9-i;j++)
//     //     {
//     //         if(a[j]>a[j+1])
//     //         {

//     //             tmp = a[j];
//     //             a[j] = a[j+1];
//     //             a[j+1] = tmp;
//     //         }
//     //     }
//     // }
//     for(int i = 0;i<9;i++)
//     {
//         for(int j = 1+i;j<10;j++)
//         {
//             if(a[i]>a[j])
//             {
//                 tmp = a[i];
//                 a[i] = a[j];
//                 a[j] = tmp;
//                 tmp = 0;
//             }

//         }
//     }
//     for(int i = 0;i<10;i++)
//     {
//         printf("%d ",a[i]);
//     }
//     return 0;
// }

// int main()
// {
//     int a[] = {10,20,30,40,50,60,70,80,90,100};
//     for(int i = 0; i<10; i++)
//     {
//         printf("%d ",a[i]);
//     }
//     printf("\n");
//     int n;
//     scanf("%d",&n);
//     int b[11] = {0};
//     int i = 0,j = 0;
//     while(i<11)
//     {
//         b[i] = a[j];
//         if(n<a[j])
//         {
//             b[i] = n;
//             n = a[9]+1;
//             i++;
//             continue;
//         }
//         i++;
//         j++;
//     }
//     for(int i = 0; i<11; i++)
//     {
//         printf("%d ",b[i]);
//     }
//     return 0;
// }

// int main()
// {
//     int a[11] = {10,20,30,40,50,60,70,80,90,100};
//     scanf("%d", &a[10]);
//     int tmp = 0;
//     for(int i = 0 ;i<10;i++)
//     {
//         for(int j = 1+i; j<11; j++)
//         {
//             if(a[i]>a[j])
//             {
//                 tmp = a[i];
//                 a[i] = a[j];
//                 a[j] = tmp;
//                 tmp = 0;
//             }
//         }
//     }
//     for(int i  =0; i<11; i++)
//     {
//         printf("%d ",a[i]);
//     }
//     return 0;
// }
// int main()
// {
//     srand((unsigned int)time(NULL));
//     int a[4][4] = {0};
//     int b[4][4] = {0};
//     int sum = 0;
//     int max = 0;
//     int maxi = 0,maxj = 0;
//     int min = 0;
//     int mini = 0,minj = 0;
//     for(int i = 0; i<4; i++)
//     {
//         for(int j = 0; j<4; j++)
//         {
//             a[i][j] = rand()%40+10;
//         }
//     }
//     max = a[0][0];
//     min = a[0][0];
//     for(int i = 0;i<4;i++)
//     {
//         for(int j = 0; j<4; j++)
//         {
//             printf("%d ",a[i][j]);
//             if(i == j || i+j == 3)
//             {
//                 sum = sum + a[i][j];
//             }
//             if(max <= a[i][j])
//             {
//                 max = a[i][j];
//                 maxi = i;
//                 maxj = j;
//             }
//             if(min >= a[i][j])
//             {
//                 min = a[i][j];
//                 mini = i;
//                 minj = j;
//             }
//             b[j][i] = a[i][j];
//         }
//         printf("\n");
//     }
//     printf("\n");
//     for(int i = 0;i<4;i++)
//     {
//         for(int j = 0; j<4; j++)
//         {
//             printf("%d ",b[i][j]);
//         }
//         printf("\n");
//     }
//     printf("sum = %d\n",sum);
//     printf("max = %d,maxi = %d,maxj = %d\n",max,maxi,maxj);
//     printf("min = %d,mini = %d,minj = %d\n",min,mini,minj);

//     return 0;
// }
// 00 01 02 03
// 10 11 12 13
// 20 21 22 23
// 30 31 32 33

// typedef struct Tec
// {
//     char name[10];
//     int id;
// }Tec;

// int main()
// {
//     Tec tec[10];
//     int tmp = 0;
//     char str[10] = {0};
//     for(int i = 0; i<10; i++)
//     {
//         printf("请输入%d个职工的姓名和工号\n",i+1);
//         scanf("%s",&tec[i].name);
//         scanf("%d",&tec[i].id);
//     }
//     for(int i = 0; i<10; i++)
//     {
//         printf("%d个职工的姓名是%s,工号是%d\n",i+1,tec[i].name,tec[i].id);

//     }
//     for(int i = 0;i<9;i++)
//     {
//         for(int j = i+1; j<10;j++)
//         {
//             if(tec[i].id > tec[j].id)
//             {
//                 tmp = tec[i].id;
//                 tec[i].id = tec[j].id;
//                 tec[j].id = tmp;
//                 tmp = 0;
//                 memcpy(str,tec[i].name,10);
//                 memcpy(tec[i].name,tec[j].name,10);
//                 memcpy(tec[j].name,str,10);
//                 memset(str,0,10);
//             }
//         }
//     }
//      for(int i = 0; i<10; i++)
//     {
//         printf("%d个职工的姓名是%s,工号是%d\n",i+1,tec[i].name,tec[i].id);

//     }
//     return 0;
// }
// void get_age(int n)
// {
//     if(n>=1)
//     {
//         get_age(--n);
//         printf("第%d个的年龄是%d\n",n+1,10+2*n);
//     }

// }
// int main()
// {
//     int n = 5;
//     get_age(n);
//     return 0;
// }

// void swap(int *p1, int *p2)
// {
//     int p;
//      p=*p1;
//      *p1=*p2;
//      *p2=p;
// }
// int main( )
// {
//     int a,b;
//     int *pointer_1,*pointer_2;
//     scanf("%d%d",&a,&b);
//     pointer_1=&a;
//     pointer_2=&b;
//     if(a<b)
//     swap(pointer_1,pointer_2);
//     printf("\n%d,%d\n",a,b);
// }
// void swap(int *p1, int *p2)
// {
//      int p;
//      p=*p1;
//      *p1=*p2;
//      *p2=p;
// }
// void input(int *pa,int *pb,int *pc)
// {
//     int tmp = 0;
//     if(*pa < *pb)
//     {
//         swap(pa,pb);
//     }
//     if(*pa < *pc)
//     {
//         swap(pa,pc);
//     }
//     if(*pb<*pc)
//     {
//         swap(pb,pc);
//     }
// }
// int main()
// {
//     int a = 2;
//     int b = 1;
//     int c = 3;
//     int *pa = &a;
//     int *pb = &b;
//     int *pc = &c;
//     input(pa,pb,pc);
//     printf("%d > %d > %d\n",a,b,c);
//     return 0;
// }

// int main()
// {
//     int n = 45210;
//     int *pn = &n;
//     while(*pn>9)
//     {
//         *pn = *pn/10;
//     }
//     printf("%d ",*pn);
// }

// int main()
// {
//     int letter_x = 0;
//     int letter_d = 0;
//     int space = 0;
//     int digit = 0;
//     int other = 0;
//     char str[3][20] = {"hello world", "123 321", "A++ ++A"};
//     for (int i = 0; i < 3; i++)
//     {
//         for (int j = 0; j < 20; j++)
//         {
//             if(str[i][j] == '\0')
//             {
//                 continue;
//             }
//             if (str[i][j] >= 'a' && str[i][j] <= 'z')
//             {
//                 letter_x++;
//             }
//             else if (str[i][j] >= 'A' && str[i][j] <= 'z')
//             {
//                 letter_d++;
//             }
//             else if (str[i][j] >= '1' && str[i][j] <= '9')
//             {
//                 digit++;
//             }
//             else if (str[i][j] == ' ')
//             {
//                 space++;
//             }
//             else
//             {
//                 other++;
//             }
//         }
//     }
//     printf("letter_x = %d, letter_d = %d, digit = %d, space = %d, other = %d\n", letter_x, letter_d, digit, space, other);
//     return 0;
// }

// int main()
// {
//     char str[20];
//     char get[20];
//     gets(str);
//     char del = getchar();
//     int i = 0;
//     int j = 0;
//     while(str[i] != '\0')
//     {
//         get[j] = str[i];
//         if(str[i] == del)
//         {
//             i++;
//             continue;
//         }
//         i++;
//         j++;
//     }
//     printf("%s\n",str);
//     printf("%s\n",get);
//     return 0;
// }

// int main()
// {
//     char str[20];
//     gets(str);
//     int i = 0;
//     int letter = 0;
//     while(str[i] != '\0')
//     {
//         if(str[i]>='a'&& str[i]<='z' || str[i]>='A'&&str[i]<='Z')
//         {
//             letter++;
//         }
//         i++;
//     }
//     printf("%d\n",letter);
//     return 0;
// }