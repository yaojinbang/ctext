#include "test.h"
/*
具有指向性的数字 称为指针
32位机器，32根地址线
CPU寻址按照字节寻址，但内存很大，所以内存可以看做众多字节的集合
所谓的编址(地址)体现在地址总线的排列组合上
2^32个地址*1字节 = 2^10 * 2^10 * 2^10 * 2^2 = 4GB
cpu把想要访问的地址 通过地址总线传送给内存 内存找到相应地址 把地址的数据内容再通过数据总线传给cpu 


*/
// int main()
// {
//     int a = 0x11223344;
//     char *left = (char *)&a;
//     char *right =  ((char *)&a)+3;
//     while(left < right)
//     {
//         int tmp = *left;
//         *left = *right;
//         *right = tmp;
//         left++;
//         right--;
//     }
//     printf("%x", a);

//     return 0;
// }

/*
在同类型的情况下，对指针解引用，代表指针所指向的目标
*/

// int main()
// {
//     int *p = NULL;
//     p = (int *)&p;//一级指针的地址需要用二级指针变量接收
//     return 0;
// }

// int main()
// {
//     int x = 0;
//     int y = 2;   
//     int z = 3;
//     int a = ++x || ++y && z++;
//     printf("x = %d y = %d z = %d\n", x, y, z);
//     return 0;
// }
// #define NUM 10
// int main()
// {
//     int a = 10;
//     int b = 10;
//     int c = 10;//按照定义的顺序 地址依次减小
//     printf("%p\n", &a);
//     printf("%p\n", &b);
//     printf("%p\n", &c);


//     int arr[NUM] = {1,2,3};
//     for(int i = 0; i<NUM; i++)
//     {
//         printf("%p\n", &*(arr+i));
//     }//地址依次增大的
//     // printf("\n");
//     return 0;
// }

/*
数组是线性连续且递增的 在开辟空间的角度，不应该把数组认为成一个个独立的元素， 应该整体开辟空间，整体释放
*/

// int main()
// {
//     char *a = NULL;
//     short *b = NULL;
//     int *c = NULL;
//     double *d = NULL;
//     printf("%d\n", a);
//     // *(a+1) = 2;
//     // printf("%d\n", *(a+1));
//     // printf("%s\n",strerror(errno));
//     printf("%d\n", a+1);
//     printf("%d\n", b);
//     printf("%d\n", b+1);
//     printf("%d\n", c);
//     printf("%d\n", c+1);
//     printf("%d\n", d);
//     printf("%d\n", d+1);
// /*
// 对指针+1，其实是+上其指向类型的大小
// */



//     return 0;
// }

// int main()
// {
//     *(int*)(0x112233) = 1;
//     printf("%d\n", *(int*)(0x112233));
//     return 0;
// }

/*
数组名使用的时候，代表整个数组
1.&arr:数组的地址
3.sizeof(arr):单独使用数组名

首元素的地址和数组的地址，在地址对应的字节是重叠的！所以，地址数据值相等
*/

// int main()
// {
//     char arr[10] = {0};
//     char *p = arr;
//     char (*q)[10] = &arr;
//     return 0;
// }

int main()
{
    const char *str = "hello bit";
    char buf[] = "hello world";
    int len = strlen(str);
    for(int i = 0; i<len; i++)
    {
        // printf("%c ", *(str+i));
        printf("%c ", str[i]);
    }
    printf("\n");
    len = strlen(buf);
    for(int i = 0 ; i<len; i++)
    {
        // printf("%c ", buf[i]);
        printf("%c ", *(buf+i));
    }
    
    return 0;
}


/*
数组名在大部分表达式中，代表的是首元素的地址

指针与数组，在访问多个连续元素的时候，可以指针解引用的方案，也可以[]方案

指针和数组是两种概念 并不一样 只是他们的操作方式是一样的
*/