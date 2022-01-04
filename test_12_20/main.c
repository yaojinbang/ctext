#include "head.h"


// #define OFFSETOF(TPYE,VAL) (int)(&((TPYE*)0)->VAL)
// struct S
// {
//     char c1;
//     int a;
//     char c2;
// };

// int main()
// {
//     printf("%d", OFFSETOF(struct S,a));  
//     return 0;
// }

// int main()
// {
//     //sizeof：确定一种类型对应在开辟空间的时候的大小
//     /*
//     c中为何要有类型：本质对内存进行合理划分，按需索取
//     类型为什么要在c中有这么多种：应用场景不同，解决应用场景对应的计算方式不同，需要空间的大小也是不同的。
//     本质：用最小成本，解决各种多样化的场景问题
    
    
//     */
//     printf("%d\n", sizeof(short));
//     printf("%d\n", sizeof(char));
//     printf("%d\n", sizeof(int));
//     printf("%d\n", sizeof(float));
//     printf("%d\n", sizeof(double));
//     printf("%d\n", sizeof(long));
//     printf("%d\n", sizeof(long long));
//     return 0;
// }
// 局部变量，不做初始化，内容是随机值
// int main()
// {
//     int a;
//     srand((unsigned int)time(NULL));
//     while(1)
//     {
//         a = rand()%10+1;
//         printf("%d\n", a);
//         if(a == 5)
//         {
//             break;
//         }
//     }
//     return 0;

// }

// int main()
// {
//     int b = -20;
//     //1000 0000 0000 0000 0000 0000 0001 0100 原码
//     //1111 1111 1111 1111 1111 1111 1110 1011 反码
//     //1111 1111 1111 1111 1111 1111 1110 1100 补码
//     /*
//     补码转原码有两种方法 ： 一种是上面方法的逆操作 另一种是上面的方法再操作
//     */
//     int a = 10;
//     float c = 10;
//     unsigned int d = -10;
//     //存整形的时候不关心数据类型，只需要将数据转换成二进制补码的形式放到空间里即可
//     //数据类型只在读取的时候有用到 先看自身类型决定（先看符号位，确定原反补）
//     printf("%d", d);
//     return 0;
// }

/*
-128
1 1000 0000
1 0111 1111
1 1000 0000
在存数据的时候是软硬件共同参与的 因为CPU的寄存器是不只有8位 因此允许有第九位的出现
因为char类型可以存8个bit 而-128有9位 所以存数据的时候会发生截断 

signed char  -2^7 2^7-1
signed float -2^15 2^15-1
signed int   -2^31 2^31-1

*/
int main()
{
    char a[1000] = {0};
    for(int i = 0; i<1000; i++)
    {
        a[i] = -1 - i;
    }
    /*
    -127  1111 1111
          1000 0000
          1000 1001
        + 1111 1111
        1 1000 0000
        1 0111 1111
        1 1000 0000 -128        
    */
    printf("%d", strlen(a));
    return 0;
}