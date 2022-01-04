#include "test.h"

// int FindMax(int num, ...)
// {
//     va_list arg;
//     va_start(arg, num);
//     int max = va_arg(arg, int);//跳转到num的下一个数;
    
//     for(int i = 0; i<num-1; i++)//定义循环次数
//     {
//         int tmp = va_arg(arg, int);
//         if(max < tmp)
//         {
//             max = tmp;
//         }
//     }
        // va_end(arg);
//     return max;
// }
// int main()
// {
//     int max = 0;
//     max = FindMax(2,5,2);
//     printf("%d\n", max);
//     return 0;
// }

// void ShowArray(int num, ...)
// {
//     va_list arg;
//     va_start(arg, num);
//     for(int i = 0; i<num; i++)
//     {
//         printf("%d ", va_arg(arg, int));
//     }
//     va_end(arg);
// }
// void ShowArray(int num, ...)
// {
//     for(int i = 0; i<=num*2; i = i + 2)
//     {
//         int tmp = (int)*(&num+i);
//         printf("%d ", tmp);
//     }
// }
//可变参数中，如果是短整型，一般都要进行int类型提升
// void ShowNum(int num, ...)
// {
//     va_list arg; // 定义个指针char*
//     va_start(arg,num); // 指向可变参数列表 (sizeof(n) + sizeof(int) -1) & ~(sizeof(int) - 1)
//     for(int i = 0; i<num; i++)
//     {
//         printf("%.2lf ", va_arg(arg, double));//va_arg(arg, double)  *(t *)((ap += INTSIZEOF(t)) - INTSIZEOF(t))
//         //1.把“当前元素”提取出来 2. arg 指向下一个待访问元素
//     }
//     va_end(arg);//char*  = NULL 将指针置为NULL，防止野指针
// }
// int main()
// {
//     ShowNum(3,3.14,2.18,5.69);
//     return 0;
// }

/*
1.如果函数没有形式参数，可以给函数传递参数
2.在C语言中，只要发生了函数调用并且传递了参数，必定形成临时拷贝
3.所谓的临时拷贝本质就是在栈帧内部形成的，从右向左依次形成临时拷贝(变量)
*/

// int main(int argc, char *argv[])
// {
//     for(int i = 0; i<argc; i++)
//     {
//         printf("%s\n", argv[i]);
//     }
// }

// int main(int argc, char *argv[])
// {
//     //判断是否有命令行参数  argv[]默认存放该执行文件的路径
//     if(argc == 1)
//     {
//         return 1;
//     }
//     if(strcmp(argv[1], "-a") == 0)
//     {
//         printf("hello world\n");
//     }
//     else if(strcmp(argv[1], "-b") == 0)
//     {
//         printf("hello bit\n");
//     }
//     else
//     {
//         printf("none\n");
//     }
//     return 0;
// }
//环境变量默认会在最后放一个NULL指针
// int main(int argc, char *argv[], char *env[])
// {
//     for(int i = 0; env[i]; i++)
//     {
//         printf("%s\n", env[i]);
//     }
//     return 0;
// }
//求字符串的长度
// int MyStrLen(const char *str)
// {
//     if(*str)
//     {
//         return MyStrLen(++str)+1;
//     }
// }

// int main()
// {
//     const char *str = "hello bit";
//     int len = MyStrLen(str);
//     printf("%d\n", len);
//     return 0;
// }
// int shulie(int n)
// {
//     int left = 1;
//     int right = 1;
//     int sum = 0;
//     if(n <= 2)
//     {
//         sum = right;
//     }
//     else
//     {
//         for(int i = 3; i<=n; i++)
//         {
//             sum = left + right;
//             left = right;
//             right = sum;
//         }
//     }
//     return sum;
// }
int cnt = 0;
//1.随着计算量的变大，递归成本越来越高
//2.具体：树形结构越来越高，并且里面存在大量的重复计算
/*
函数调用是有成本的！递归不一定适合所有场景，尤其是对效率或者资源需求量大的场景
*/
// int shulie_digui(int n)
// {
//     if( n == 3)
//     {
//         cnt++;
//     }
//     if(n>2)
//     {
//         return shulie_digui(n-1)+shulie_digui(n-2);
//     }
//     else
//     {
//         return 1;
//     }
// }

// int main()
// {
//     int n = 0;
//     scanf("%d", &n);
//     double start = GetTickCount();
//     int sum = shulie_digui(n);
//     double end = GetTickCount();
//     printf("第%d个是%d\n", n ,sum);
//     printf("count: %.lf S\n", (end-start)/1000);
//     printf("%d\n", cnt);
//     return 0;
// }

int fib(int n)
{
    int *p = (int*)malloc(sizeof(int)*(n+1));
    p[1] = 1;
    p[2] = 1;
    int i = 3;
    while(i <= n)
    {
        p[i] = p[i-1]+p[i-2];
        i++;
    }
    free(p);
    return p[n];
}

int main()
{
    int n = 0;
    scanf("%d", &n);
    int x = fib(n);
    printf("%d\n", x);
    return 0;
}