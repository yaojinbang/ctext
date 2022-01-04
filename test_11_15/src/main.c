#include "head.h"

int fun(int n)
{
    if (n == 5)
    {
        return 2;
    }
    else
    {
        return 2 * fun(n + 1);
    }
}

// int main()
// {
//     int n = 2;
//     printf("ret = %d",fun(2));

//     return 0;
// }
void print_table(int n)
{
    int i = 0;
    int j = 0;
    for (i = 1; i <= n; i++)
    {
        for (j = 1; j <= i; j++)
        {
            printf("%d * %d = %d ", j, i, j * i);
        }
        if (j > i)
        {
            printf("\n");
        }
    }
}
// int main()
// {
//     int i = 0;
//     int j = 0;
//     int n = 0;
//     scanf("%d",&n);
//     //涔樻硶琛?
//     print_table(n);
// }
void print(int n)
{
    //1234
    if (n > 9)
    {
        print(n / 10);
    }
    printf("%d ", n % 10);
    /*
        1234 123 4
        123 12 3
        12 1 2
        1

    */
}

// int main()
// {
//     int n = 0;
//     scanf("%d",&n);
//     print(n);
// }
int my_strlen(char *str)
{
    if (*str != 0)
    {
        str++;
        return 1 + my_strlen(str);
    }
}
char *str_end(char *str)
{
    while (*str != 0)
    {
        str++;
    }
    return str - 1;
}
void reverse_string(char str[])
{

    char tmp = str[0];
    int len = my_strlen(str);
    str[0] = str[len - 1];
    str[len - 1] = 0;
    if (my_strlen(str + 1) >= 2)
    {
        reverse_string(str + 1);
    }
    str[len - 1] = tmp;
}
// int main()
// {
//     char str[] = "abcdefg";
//     int sz = my_strlen(str);
//     printf("%d\n",sz);
//     reverse_string(str);
//     // int left = 0;
//     // int right = sz-1;
//     // char tmp = 0;
//     // while(left < right)
//     // {
//     //     tmp = str[left];
//     //     str[left] = str[right];
//     //     str[right] = tmp;
//     //     left++;
//     //     right--;
//     // }
//     printf("%s\n",str);
// }
int Sum(int n)
{
    int sum = 0;
    if (n > 9)
    {
        return n % 10 + Sum(n / 10);
    }
    else
    {
        return n;
    }
}
// int main()
// {
//     //1729
//     int n = 0;
//     scanf("%d",&n);
//     printf("%d\n",Sum(n));
// }
// double cifang(int n, int k)
// {
//     if(k>0)
//     {
//         return n*cifang(n,k-1);
//     }
//     else if(k<0)
//     {
//         return (1.0/(cifang(n,-k)));
//     }
//     else
//     {
//         return 1;
//     }
// }

// int main()
// {
//     int n = 0;
//     int k = 0;
//     scanf("%d%d",&n,&k);
//     printf("%lf\n",cifang(n,k));
//     return 0;
// }

// struct Stu
// {
//     char name[20];
//     short age;
//     char tele[12];
//     char sex[5];
// }s3={"王五",18,"1001011","男"};//尽量少创建全局变量
// void print2(struct Stu s1)
// {
//     printf("%s\n",s1.name);
//     printf("%d\n",s1.age);
//     printf("%s\n",s1.tele);
//     printf("%s\n",s1.sex);
// }
// void print3(struct Stu *s2)
// {
//     printf("%s\n",s2->name);
//     printf("%d\n",s2->age);
//     printf("%s\n",s2->tele);
//     printf("%s\n",s2->sex);
// }
// int main()
// {
//     struct Stu s1 = {"张三",15,"10086","男"};
//     struct Stu s2 = {"李四",16,"10010","男"};
//     struct Stu s3 = {"翠花",17,"10000","男"};
//     print2(s1);
//     print3(&s2);
// }
int da_xiao_duan(int *n)
{
    char *p = (char *)&n;
    if (*p == 1)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}
// int main()
// {
//     int n = 1;
//     int ret = da_xiao_duan(&n);
//     if(ret == 1)
//     {
//         printf("大端\n");
//     }
//     else if(ret == 0)
//     {
//         printf("小端\n");
//     }
// char* p = (char*)&n;
// int i = 0;
// while(i < 4)
// {
//     printf("%x",*p);
//     p++;
//     i++;
// }
// printf("%p\n",*p);
// if(*p == 1)
// {
//     printf("小端\n");
// }
// else
// {
//     printf("大端\n");
// }
//     return 0;
// }

// int main()
// {
//     char a = -1;
    
//     signed char b = -1;11111111
//     unsigned char c = -1;
//     printf("a = %d,b = %d,c = %d\n", a, b, c);
//     return 0;
// }
//1000 0000
//1000 0000 0000 0000 0000 0000 1000 0000
//1111 1111 1111 1111 1111 1111 0111 1111
//1111 1111 1111 1111 1111 1111 1000 0000
//1000 0000
//

// int main()
// {
//     char a = -128;//00000000000000000000000010000000
//     printf("a = %d\n",a);
//     return 0;
// }

// int main()
// {
//     int i = -20;
//     unsigned int j = 10;
//     printf("%d\n",i+j);
// }

//100000000 00000000 00000000 00010100
//11111111 11111111 11111111 11101011
//11111111 11111111 11111111 11101100

//00000000 00000000 00000000 00001010

//11111111 11111111 11111111 11110110
//11111111 11111111 11111111 11110110
//11111111 11111111 11111111 11110101
//10000000 00000000 00000000 00001010 -10

// int main()
// {
//     unsigned int i;
//     for(i = 9;i >= 0;i--)
//     {
//         printf("%u\n",i);
//         break;
//     }
//     return 0;
// }

// int main()
// {
//     char a[1000];
//     int i;
//     for(i = 0; i<1000; i++)
//     {
//         a[i] = -1 - i;
//     }
//     printf("%d",strlen(a));
//     return 0;
// }

//11111111

//00000000 00000000 00000000 00001001
// unsigned char i = 0;
// int main()
// {
//     int cnt = 0;
//     for(i = 0;i<=255;i++)
//     {
//         // printf("hello\n");
//         cnt++;
//     }
//     printf("cnt = %d\n",cnt);
//     return 0;
// }

// int main()
// {
//     double i = 1E10;
//     printf("%lf",i); 
//     return 0;
// }

int main()
{
    int i = 9;
    float *pi = (float*)&i;
    printf("%d\n",i);
    printf("%f\n",*pi);

    *pi = 9.0;
    printf("%d\n",i);
    printf("%f\n",*pi);

    return 0;
}

