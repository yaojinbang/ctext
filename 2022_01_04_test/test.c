#include "test.h"

// int FindMax(int num, ...)
// {
//     va_list arg;
//     va_start(arg, num);
//     int max = va_arg(arg, int);//��ת��num����һ����;
    
//     for(int i = 0; i<num-1; i++)//����ѭ������
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
//�ɱ�����У�����Ƕ����ͣ�һ�㶼Ҫ����int��������
// void ShowNum(int num, ...)
// {
//     va_list arg; // �����ָ��char*
//     va_start(arg,num); // ָ��ɱ�����б� (sizeof(n) + sizeof(int) -1) & ~(sizeof(int) - 1)
//     for(int i = 0; i<num; i++)
//     {
//         printf("%.2lf ", va_arg(arg, double));//va_arg(arg, double)  *(t *)((ap += INTSIZEOF(t)) - INTSIZEOF(t))
//         //1.�ѡ���ǰԪ�ء���ȡ���� 2. arg ָ����һ��������Ԫ��
//     }
//     va_end(arg);//char*  = NULL ��ָ����ΪNULL����ֹҰָ��
// }
// int main()
// {
//     ShowNum(3,3.14,2.18,5.69);
//     return 0;
// }

/*
1.�������û����ʽ���������Ը��������ݲ���
2.��C�����У�ֻҪ�����˺������ò��Ҵ����˲������ض��γ���ʱ����
3.��ν����ʱ�������ʾ�����ջ֡�ڲ��γɵģ��������������γ���ʱ����(����)
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
//     //�ж��Ƿ��������в���  argv[]Ĭ�ϴ�Ÿ�ִ���ļ���·��
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
//��������Ĭ�ϻ�������һ��NULLָ��
// int main(int argc, char *argv[], char *env[])
// {
//     for(int i = 0; env[i]; i++)
//     {
//         printf("%s\n", env[i]);
//     }
//     return 0;
// }
//���ַ����ĳ���
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
//1.���ż������ı�󣬵ݹ�ɱ�Խ��Խ��
//2.���壺���νṹԽ��Խ�ߣ�����������ڴ������ظ�����
/*
�����������гɱ��ģ��ݹ鲻һ���ʺ����г����������Ƕ�Ч�ʻ�����Դ��������ĳ���
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
//     printf("��%d����%d\n", n ,sum);
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