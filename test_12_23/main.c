#include "head.h"
/*
计算机中清空数据，只要设置该数据无效即可
调用函数，开辟栈帧
结束函数，释放栈帧
释放栈帧并不代表把数据清空 而是把该函数判定为可覆盖区域(拆房子)
栈帧结构在函数调用完毕，需要被释放
函数的返回值，通过寄存器的方式，返回给函数调用方! eax
*/
// char* show()
// {
//     char str[] = "hello bit!\n";
//     return str;
// }
// int main()
// {
//     //这里是先执行函数show(),执行完后认定该函数可以被释放
//     //调用函数printf()的时候就覆盖该函数了
//     printf("%s",show());
//     return 0;
// }

// int main()
// {
//     int x = 0x11223344;
//     char *left = (char*)(&x);
//     char *right = left + 3;
//     while(left < right)
//     {
//         int tmp = *left;
//         *left = *right;
//         *right = tmp;
//         left++;
//         right--;
//     }
//     printf("%x", x);
    
//     return 0;
// }
/*
被const修饰的变量不可被直接修改 但可以通过指针的形式对其进行间接修改

*/
// int main()
// {
//     const int a = 10;
//     int *pa = (int*)&a;
//     printf("%d\n", *pa);
//     *pa = 20;
//     printf("%d\n", *pa);
//     return 0;
// }
//这个是在GNU标准下可以的 在VS的标准下是不行的
// int main()
// {
//     const int n = 10;
//     int arr[n];
//     for(int i = 0; i<n; i++)
//     {
//         arr[i] = i;
//         printf("%d ", arr[i]);
//     }
//     return 0;
// }
//地址就是指针 地址是数据并且可以被保存
//指针变量是用来存放指针的 

/*
int x;          x的空间，变量的属性，左值
x = 100;        x的内容，数据的属性，右值
int y = x;
任何一个变量名，在不同的应用场景中，代表不同的含义
*/