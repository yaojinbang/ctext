#include "head.h"

// int main()
// {
//     int i = -20;
//     unsigned int j = 10;
//     printf("%d\n", i + j);
//     printf("%u\n", i + j);

//     return 0;
// }

// int main()
// {
//     unsigned int i = 0;
//     for(i = 9; (int)i>=0; i--)
//     {
//         printf("%d", i);
//         Sleep(1000);
//     }
//     return 0;
// }

// int main()
// {

//     unsigned int a = -10u;
//     printf("%d", a);
    
//     return 0;
// }

// int main()
// {
//     bool x = true;
//     x = false;
//     if(!x)
//     {
//         printf("yes!\n");
//     }
//     else
//     {
//         printf("no!\n");
//     }

//     return 0;
// }
//c89 和 c90 是不支持bool类型的 微软有提供一套布尔类型（不推荐，因为可移植性较差）
//c99 是已经支持bool类型的 但需要包含头文件<stdbool.h> 
//float类型不能直接进行比较 因为会存在精度缺失 精度缺失不代表一定是减少也可能是增大
//如要要进行比较需要将要比较的两个数相减 得出的数值在给定的标准误差范围之内就 认定为两数相等
//DBL_EPSILON 这个是double的 最小精度
//FLT_EPSILON 这个是float的 最小精度


// int main()
// {
//     double a = 0.1;
//     printf("%.50f\n", a);
//     printf("%.50lf\n", a);

//     return 0;
// }

// int main()
// {
//     double a = 0.1;
//     double b = 1.0;
//     double c = 0.0;
//     printf("%.50f\n", b-0.9);
//     printf("%.50f\n", a);
//     //此时两个数直接比较是不相等的
//     if(a == b-0.9)
//     {
//         printf("yes\n");
//     }
//     if(fabs((b-0.9)-a) < DBL_EPSILON)
//     {
//         printf("相等\n");
//     }
//     //这个是一个数与0进行比较
//     if(fabs(c) < DBL_EPSILON)
//     {
//         printf("相等\n");
//     }

// }

// int main()
// {
//     double x = 0.000000000000000000000000001;
//     if(fabs(x) < DBL_EPSILON)
//     {
//         printf("you can see me x == 0.0\n");
//     }
//     else
//     {
//         printf("oops!\n");
//     }

//     return 0;
// }

/*
1.浮点数存储的时候是有精度缺失的
2.浮点数是不能进行 == 比较的
3.if(fabs(x-y) < DBL_EPSILON){}
4.要不要<= ,结论是不要 因为DBL_EPSILON是能引起浮点数发生变化的最小数值
  如果数值都发生变化了 那何来的相等之说
*/

// int main()
// {
//     char buf[7] = "123456";
//     int arr[6] = {0};
//     for(int i = 0; i<6; i++)
//     {
//         arr[i] = buf[i] - '0';
//         printf("%d ", arr[i]);
//     }
//     return 0;
// }

// int main()
// {
//     char buf[7] = "123456";
//     int a = 0;
//     a = atoi(buf);
//     printf("%d", a);
//     return 0;
// }

// int main()
// {
//     int a = 0xffffffff;
//     int x = 3.14;
//     printf("%d\n", x);
//     printf("%d\n", a);
//     printf("%u\n", a);
//     return 0;
// }
// int fun(int x, int y)
// {
//     return (x+y);
// }
// int fun1(int x, int y)
// {
//   return (x-y);
// }

// int main()
// {
//   int (*p) (int,int) = fun;
//   int (*pp[2]) (int, int) = {fun,fun1};
//   //函数指针数组  一个数组可以存放两个函数指针  函数指针是 一个指向函数地址的指针
//   int ret = p(5,6);
//   ret = (pp[0])(7,8);
//   printf("%d\n", ret);

//   return 0;
// }