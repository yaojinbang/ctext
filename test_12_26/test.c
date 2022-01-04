#include "test.h"
/*
1.异或的运算法则 相同为0 相异为1
2.满足交换律和结合律
3.任何数与0异或都是本身

0000 1010
0001 1110
----------
0001 0100

0001 0100
0001 1110
----------
0000 1010

溢出是在CPU进行计算的时候可能产生的
截断是在数据写入的时候因为溢出了，开辟的空间不够存储，而发生截断
*/
// int main()
// {
//     //定义
//     int a = 10;
//     int b = 20;
    
//     //异或交换a,b  异或不会产生进位，所以不会出现溢出情况
//     // a = a ^ 0x1e;
//     // b = b ^ 0x1e;
//     /*0000 1010
//       0001 0100
//       ----------
//       0001 1110
//     */
//     // a = a ^ b;
//     // b = a ^ b;
//     // a = a ^ b;
//     //加减法运算
//     a = a + b;//30
//     b = a - b;//10
//     a = a - b;//20
    
//     //创建临时变量（可能会溢出问题）
//     // int tmp = 0;
//     // tmp = a;
//     // a = b;
//     // b = tmp;
    
//     //输出结果
//     printf("a = %d, b = %d\n", a, b);
//     // printf("%%");
//     return 0;
// }
#define SETBIT(x,n) x = ((x) | (1 << (n-1)))   
 
// void ShowBit(int x)
// {
//     if(x > 1)  
//     {
//         ShowBit(x/2);
//     }
//     printf("%d ", x%2);
// }

// void ShowBit(int x)
// {
//     int num = sizeof(x) * 8 - 1;
//     while(num >= 0)
//     {
//         if((num+1) % 4 == 0)
//         {
//             printf(" ");
//         }
//         if(x & (1 << num))
//         {
//             printf("1");
//         }
//         else
//         {
//             printf("0");
//         }
//         num--;
//     }
//     printf("\n");
// }
// int main()
// {
//     int x = 1;
//     //可以将任意比特位置1
//     //0000 0001  0000 0101
//     SETBIT(x,2);
//     //输出结果
//     //0000  1010
//     ShowBit(x);
//     // printf("%d", x);
//     return 0;
// }
// #define SETZERO(x,n) x = ((x) & (-1 << (n)))
// void ShowBit(int x)
// {
//     int num = sizeof(int) * 8 - 1;
//     while(num >= 0)
//     {
//         if(!((num+1) % 4))
//         {
//             printf(" ");
//         }
//         if(x & (1 << num))
//         {
//             printf("1");
//         }
//         else
//         {
//             printf("0");
//         }
//         num--;
//     }
//     printf("\n");
// }
// int main()
// {
//     // 0000 0001
//     // 1111 1111
//     int x = 3;
//     ShowBit(x);
//     //把任意bit位置0
//     SETZERO(x, 1);
//     //打印结果
//     ShowBit(x);
//     // printf("%d", x);
//     return 0;
// }
/*
整形进行左移 低位补0 即可
有符号整形进行右移 符号位是啥就补啥
无符号整形进行右移 高位补0 即可
*/
// int main()
// {
//     unsigned int x = 0xFFFFFFFF;
//     x = (int)x >> 1;
//     printf("%x", x);
//     return 0;
// }
//这里的 + 的优先级高于 <<
// int main()
// {
//     printf("%d\n", 0x01<<2+3);
//     return 0;
// }
//在vs平台下 是将数据一次性自加完再进行运算  4 + 4 + 4
//在gcc平台下 是将数据分批自加再进行运算 3 + 3 + 4
//取决于编译器
//表达式的匹配是贪心算法
//就是尽可能的从某个符号向后匹配 但最终的结果不保证正确 我们可以用空格对表达式进行划分
// int main()
// {
//     int i = 1;
//     // 2 
//     int j = (++i) + (++i) + (++i);
//     printf("%d\n", j);
//     return 0;
// }

/*
c中默认是向0取整，向着0的方向取整
取商 取余数 要满足以下等式 a = q * d + r (a是被除数 q是商 d是除数 r是余数) 且 0 <= |r| < |d| 
在不同语言中，同一个计算表达式，负数“取模”结果是不同的，分别叫作 正余数 和 负余数
因为满足上述等式即二元一次等式 可能存在多解(但需要满足 0 <= |r| < |d|)
取余 是商尽可能的向0取整
取模 是商尽可能的向-∞取整
*/
// int main()
// {
//     int a = -2.9;
//     int b = 2.9;
//     printf("%d\n", a);
//     printf("%d\n", b);
//     printf("%d\n", (int)trunc(-2.9));//同样采用0向取整
//     printf("%d\n", (int)trunc(-2.1));
//     printf("%d\n", (int)trunc(2.9));
//     printf("%d\n", (int)trunc(2.1));

//     printf("%.lf\n", floor(-2.9));//地板取整，本质是往数值小的方向靠(向-∞取整)
//     printf("%.lf\n", floor(-2.1));
//     printf("%.lf\n", floor(2.9));
//     printf("%.lf\n", floor(2.1));

//     printf("%.lf\n", ceil(-2.9));//本质上是往数值大的取整(向+∞取整)
//     printf("%.lf\n", ceil(-2.1));
//     printf("%.lf\n", ceil(2.9));
//     printf("%.lf\n", ceil(2.1));

//     printf("%.lf\n", round(-2.9));//四舍五入取整
//     printf("%.lf\n", round(-2.1));
//     printf("%.lf\n", round(2.9));
//     printf("%.lf\n", round(2.1));
//     // float c = 2.6f;
//     // printf("%d\n", (int)c);
//     return 0;
// }
// int main()
// {
//     printf("%d\n", -10/3);
//     printf("%d\n", -10%3);

//     printf("%d\n", 10/-3);
//     printf("%d\n", 10%-3);

//     return 0;
// }