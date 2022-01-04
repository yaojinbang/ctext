#include "head.h"
//一只单身狗
// int main()
// {
//     int arr[] = {1,2,3,4,5,1,2,3,4};
//     int sz = sizeof(arr)/sizeof(arr[0]);
//     int n = arr[0];
//     for(int i = 1; i<sz; i++)
//     {
//         n = n ^ arr[i];
//     }
//     printf("%d",n);
//     return 0;
// }

//两只单身狗
// int main()
// {
//     int arr[] = {1,2,3,4,5,1,2,3,4,6};
//     int sz = sizeof(arr)/sizeof(arr[0]);
//     int arr1[5] = {0};
//     int arr0[5] = {0};
//     int n = arr1[0];
//     int m = arr0[0];
//     for(int i = 0,j = 0,k = 0; i<sz; i++)
//     {
//         if(arr[i] & 1)
//         {
//             arr1[j] = arr[i];
//             j++;
//         }
//         else
//         {
//             arr0[k] = arr[i];
//             k++;
//         }
//     }
//     for(int i = 0; i<5;i++)
//     {
//         n = n ^ arr1[i];
//         m = m ^ arr0[i];
//     }
//     printf("%d,%d",n,m);
//     return 0;
// }
// v   v 
//  v v  
//   v   
// int main()
// {
//     printf("Practice makes perfect!\n");
//     return 0;
// }
/*
      *
     ***
    *****
   *******
  *********
 ***********
*************
 ***********
  *********
   *******
    *****
     ***
      *
*/
// #define FUN(n) printf("the value of "#n" is %d",n)
// int main()
// {
//     int a = 1234;
//     printf("%#o\n",a);
//     printf("%#X\n",a);
//     FUN(a);
//     return 0;
// }
// int main()
// {
//     printf("The size of short is %d bytes.\n",sizeof(short));
//     printf("The size of int is %d bytes.\n",sizeof(int));
//     printf("The size of long is %d bytes.\n",sizeof(long));
//     printf("The size of long long is %d bytes.\n",sizeof(long long));
    
//     return 0;
// }

// int main()
// {
//     int n = 0;
//     scanf("%d",&n);
//     while(n>0)
//     {
//         printf("%d",n%10);
//         n = n/10;
//     }
//     return 0;
// }
// void fun1(int n)
// {
//         if(n>9)
//         {
//             fun1(n/10);
//         }
//         printf("%d ",n%10);
// }
// void fun2(int n)
// {
//     if(n>0)
//     {
//         printf("%d ",n%10);
//         fun2(n/10);
//     }
// }
// int main()
// {
//     int n = 0;
//     scanf("%d",&n);
//     fun1(n);
//     fun2(n);
//     return 0;
// }

// int main()
// {
//     int n = 7;
//     int i = 0;
//     int j = 0;
//     for(i = 0; i<n; i++)
//     {
//         for(j = 0; j<n-1-i; j++)
//         {
//             printf(" ");
//         }
//         for(j = 0; j<=2*i; j++)
//         {
//             printf("*");
//         }
//         printf("\n");
//     }
//     for(i = 0; i<n-1; i++)
//     {
//         for(j = 0; j<=i; j++)
//         {
//             printf(" ");
//         }
//         for(j = 0; j<(2*(n-1-i))-1; j++)
//         {
//             printf("*");
//         }
//         printf("\n");
//     }
// }

// int main()
// {
//       int ch = getchar();
//       if(ch >= 'A' && ch<= 'Z')
//       {
//             ch = ch + 32;
//             putchar(ch);
//       }
//       else
//       {
//             printf("输入错误\n");
//       }
//       return 0;
// }


// int main()
// {
//       char buf[30] = {0};
//       char* p = gets(buf);
//       while(*p != '\0')
//       {
//             if(*p >= 'A' && *p <= 'Z')
//             {
//                   printf("%c", (*p)+32);
//             }
//             p++;
//       }
      
//       return 0;
// }

// int main()
// {
//       int ch = 0;
//       while((ch = getchar()) != '\n')
//       {
//             if(ch >= 'A' && ch <= 'Z')
//             {
//                   putchar(ch + 32);
//             }
//       }
//       return 0;
// }

// int main()
// {
//       int ch = 0;
//       while((ch = getchar()) != EOF)//EOF 是需要手动输入Ctrl+z才能实现
//       {
//             putchar(ch + 32);
//             printf("\n");
//             getchar();//这边是用来读取\n
//       }
// }

// int main()
// {
//       printf("     **     \n");
//       printf("     **     \n");
//       printf("************\n");
//       printf("************\n");
//       printf("    *  *    \n");
//       printf("    *  *    \n");
//       return 0;
// }

// int main()
// {
//       printf("%15d",0xABCDEF);
//       return 0;
// }

// int main()
// {
//       // int ret = printf("Hello World!");
//       // printf("\n%d", ret);
//       printf("\n%d\n",printf("Hello world!"));
// }

// int main()
// {
//       char id[20] = {0};
//       float score1 = 0;
//       float score2 = 0;
//       float score3 = 0;
//       scanf("%8s;%6f,%5f,%6f", id, &score1, &score2, &score3);
//       printf("The each subject score of No. %s is %5.2f, %5.2f, %6.2f.\n", 
//       id, score1, score2, score3);
//       return 0;

// }

// int main()
// {
//       int ch = 0;
//       while((ch = getchar()) != EOF)
//       {
//             //也可以使用isalpha()函数
//             if((ch >= 'A' && ch <= 'Z') || (ch >= 'a' && ch <= 'z'))
//             {
//                   printf("yes\n");
//             }
//             else
//             {
//                   printf("no\n");
//             }
//             getchar();
//       }
//       return 0;
// }

// int main()
// {
//       short i = 65538;
//       int j = i + 1;
//       printf("i = %d, j = %d\n", i, j);
// }

// union dt
// {
//       int a;
//       char b;
//       double c;
// }data;

// int main()
// {
//       data.a = 5;
//       printf("%f",data.c);
// }

// int main()
// {
//       int n = 5;
//       char num = getchar();
//       int i = 0;
//       int j = 0;
//       for(i = 0; i<n; i++)
//       {
//             for(j = 0; j<n-1-i; j++)
//             {
//                   printf(" ");
//             }
//             for(j = 0; j<=i; j++)
//             {
//                   printf("%c ", num);
//             }
//             printf("\n");
//       }
//       return 0;
// }

// int main()
// {
//       int a = 9;
//       a += a -= a + a;
//       printf("%d", a);
//       return 0;
// }

// int main()
// {
//       int p[7] = {11, 13, 14, 15, 16, 17, 18};
//       int i = 0;
//       int j = 0;
//       while(i < 7 && p[i] % 2 == 1)
//       j += p[i++];
//       printf("%d", j); 
//       return 0;
// }

// int main()
// {
//       // printf("%c,%c,%c,%c,%c,%c,%c,%c,%c,%c,%c,%c\n",
//       // 73,32,99,97,110,32,100,111,32,105,116,33);
//       int arr[] = {73,32,99,97,110,32,100,111,32,105,116,33};
//       int sz = sizeof(arr)/sizeof(arr[0]);
//       for(int i = 0; i<sz; i++)
//       {
//             printf("%c,", arr[i]);
//       }
//       printf("\n");
//       return 0;
// }

// int main()
// {
//       int year = 0;
//       int month = 0;
//       int day = 0;
//       scanf("%4d%2d%2d", &year, &month, &day);
//       printf("year = %4d, month = %02d, day = %02d\n",
//       year, month, day);
// }

// int main()
// {
//       int n = 0;
//       int sum = 0;
//       while(scanf("%d", &n) != EOF)
//       {
//             printf("%d\n", 1<<n);
//       }
// }
//%#11223344 会以十六进制的格式显示 即0x11223344
// int main()
// {
//       int a = 0;
//       int b = 0;
//       int tmp = 0;
//       scanf("a=%d,b=%d", &a, &b);
//       tmp = a;
//       a = b;
//       b = tmp;
//       printf("a=%d,b=%d", a, b);
//       return 0;
// }
// int main()
// {
//       char ch = getchar();
//       printf("%d", ch);
// }

// int main()
// {
//       int a = 40;
//       int c = 212;
//       printf("%d\n",(-8+22)*a-10+c/2);
//       return 0;
// }

int main()
{
      int a = 0;
      int b = 0;
      scanf("%d %d", &a, &b);
      printf("%d %d\n", a/b, a%b);
      return 0;
}