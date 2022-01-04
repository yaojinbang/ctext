#include "head.h"

// int main()
// {
//     //数组名是首元素地址
//     //1.sizeof(数组名) - 数组名表示整个数组
//     //2.&数组名 - 数组名表示整个数组
//     int a[] = {1,2,3,4};//4*4 = 16
//     printf("%d\n",sizeof(a));//sizeof(数组名)-计算的是数组总大小-单位是字节- 16
//     printf("%d\n",sizeof(a+0));//4/8 - 数组名这里表示首元素的值 a+0还是首元素的地址 地址的大小就是4/8个字节
//     printf("%d\n",sizeof(*a));//4 - 数组名表示首元素地址，*a就是首元素，sizeof(*a)就是4
//     printf("%d\n",sizeof(a+1));//4/8 - 数组名这里表示首元素的值 a+1是第二个元素的地址 地址的大小就是4/8个字节
//     printf("%d\n",sizeof(a[1]));//4 - 第二个元素的大小
//     printf("%d\n",sizeof(&a));//4/8 &a取出的是数组的地址，但是数组的地址那也是地址，地址的大小就是4/8个字节
//     printf("%d\n",sizeof(*&a));//16 -&a数组的地址，数组的地址解引用访问的数组 sizeof计算的就是数组的大小单位是字节
//     printf("%d\n",sizeof(&a+1));//4/8 &a是数组的地址，&a+1虽然是地址跳过整个数组，但还是地址，所以是4/8个字节
//     printf("%d\n",sizeof(&a[0]));//4/8 第一个元素的地址
//     printf("%d\n",sizeof(&a[0]+1));//4/8 第二个元素的地址

//     return 0; 
// }

// int main()
// {
//     char arr[] = {'a','b','c','d','e','f'};
//     printf("%d\n",sizeof(arr));
//     printf("%d\n",sizeof(arr+0));
//     printf("%d\n",sizeof(*arr));
//     printf("%d\n",sizeof(arr[1]));
//     printf("%d\n",sizeof(&arr));
//     printf("%d\n",sizeof(&arr+1));
//     printf("%d\n",sizeof(&arr[0]+1));
//     return 0;



// }
// int main()
// {
//     char arr[] = {'a','b','c','d','e','f'};
//     printf("%d\n",strlen(arr));//随机值
//     printf("%d\n",strlen(arr+0));//随机值
//     // printf("%d\n",strlen(*arr));//err
//     // printf("%d\n",strlen(arr[1]));//err
//     printf("%d\n",strlen(&arr));//随机值
//     printf("%d\n",strlen(&arr+1));//随机值-6
//     printf("%d\n",strlen(&arr[0]+1));//随机值-1
//     return 0;
// }

// int main()
// {
//     char arr[] = "abcdef";
//     printf("%d\n",sizeof(arr));
//     printf("%d\n",sizeof(arr+0));
//     printf("%d\n",sizeof(*arr));
//     printf("%d\n",sizeof(arr[1]));
//     printf("%d\n",sizeof(&arr));
//     printf("%d\n",sizeof(&arr+1));
//     printf("%d\n",sizeof(&arr[0]+1));
//     return 0;
// }

// int main()
// {
//     char arr[] = "abcdef";
//     printf("%d\n",strlen(arr));
//     printf("%d\n",strlen(arr+0));
//     // printf("%d\n",strlen(*arr));err
//     // printf("%d\n",strlen(arr[1]));err
//     printf("%d\n",strlen(&arr));
//     printf("%d\n",strlen(&arr+1));
//     printf("%d\n",strlen(&arr[0]+1));
//     return 0;
// }

// int main()
// {
//     char *p = "abcdef";
//     printf("%d\n",sizeof(p));
//     printf("%d\n",sizeof(p+1));
//     printf("%d\n",sizeof(*p));
//     printf("%d\n",sizeof(p[0]));
//     printf("%d\n",sizeof(&p));
//     printf("%d\n",sizeof(&p+1));
//     printf("%d\n",sizeof(&p[0]+1));
//     return 0;
// }

// int main()
// {
//     char* p = "abcdef";
//     printf("%d\n",strlen(p));
//     printf("%d\n",strlen(p+1));
//     printf("%d\n",strlen(*p));
//     printf("%d\n",strlen(p[0]));
//     printf("%d\n",strlen(&p));
//     printf("%d\n",strlen(&p+1));
//     printf("%d\n",strlen(&p[0]+1));
// }

// int main()
// {
//     int a[3][4] = {0};
//     printf("%d\n", sizeof(a));
//     printf("%d\n", sizeof(a[0][0]));
//     printf("%d\n", sizeof(a[0]));
//     printf("%d\n", sizeof(a[0]+1));
//     printf("%d\n", sizeof(*(a[0]+1)));
//     printf("%d\n", sizeof(a+1));
//     printf("%d\n", sizeof(*(a+1)));
//     printf("%d\n", sizeof(&a[0]+1));
//     printf("%d\n", sizeof(*(&a[0]+1)));
//     printf("%d\n", sizeof(*a));
//     printf("%d\n", sizeof(a[3]));
//    //sizeof(数组名),这里的数组名表示整个数组，计算的是整个数组的大小
//    //&数组名，这里的数组名表示整个数组，取出的是整个数组的地址
//    //除此之外所有的数组名表示的都是首元素地址
//     return 0;
// }
// int main()
// {
//     int a[5] = {1,2,3,4,5};
//     int *ptr = (int *)(&a+1);
//     printf("%d,%d\n",*(a+1),*(ptr-1));
// }
// struct Test
// {
//     int Num;//4
//     char *pcName;//4
//     short sDate;//2
//     char cha[2];//2
//     short sBa[4];//8
// }*p;
// //假设p的值为0x100000，已知结构体test类型的变量大小为20个字节
// int main()
// {
//      指针加减整数取决于指针类型
//    p = (struct Test*)0x100000;
//    printf("%p\n",p + 0x1);//这边的1要按照p的类型大小进行加 也就是说要+20
//    printf("%p\n",(unsigned long)p + 0x1);//+1
//    printf("%p\n",(unsigned int*)p + 0x1);//+4
//    return 0;
// }

// int main()
// {
//     int a[4] = {1,2,3,4};
//     int* ptr1 = (int*)(&a+1);
//     //取的整个数组的地址+1取决于int类型,也就是说指针指向4的后一位
//     int* ptr2 = (int*)((int)a+1);
//     //a取的是数组的首元素地址，强制转换为整形再加1，就是向后偏移一个字节。
//     //01 00 00 00 02 00 00 00 03 00 00 00 04 00 00 00
//     //低地址->高地址
//     //00 00 00 02 -> 0x02 00 00 00
//     printf("%x,%x\n",ptr1[-1],*ptr2);
//     // char c = 'a';
//     // char* b = &c;
//     // printf("%p\n",b);
//     // printf("%p\n",b+1);

//     return 0;
// }

// int main()
// {
//     int a[3][2] = {(0,1),(2,3),(4,5)};
//     int *p;
//     //int p[2] = {0,1};
//     p = a[0];
//     printf("%p\n",a);
//     printf("%p\n",p);
//     printf("%d\n",p[0]);
//     return 0;
// }

// int main()
// {
//     int a[5][5];
//     int (*p)[4];
//     p = a;
//     printf("%p,%d\n",&p[4][2]-&a[4][2],&p[4][2]-&a[4][2]);
//     return 0;
// }

// int main()
// {
//     int aa[2][5] = {1,2,3,4,5,6,7,8,9,10};
//     int *ptr1 = (int*)(&aa+1);
//     int *ptr2 = (int*)(*(aa+1));
//     printf("%d,%d",*(ptr1-1),*(ptr2-1));
//     return 0;
// }
// int main()
// {
//     char *a[] = {"work","at","alibaba"};
//     char** pa = a;
//     // char *p = "abcdef";
//     // printf("%c\n",p[2]);
//     pa++;
//     printf("%s\n",*pa);
//     return 0;
// }

// int main()
// {
//     char *c[] = {"ENTER","NEW","POINT","FIRST"};
//     char** cp[] = {c+3,c+2,c+1,c};
//     char*** cpp = cp;

//     printf("%s\n",**++cpp);
//     printf("%s\n",*--*++cpp+3);
//     printf("%s\n",*cpp[-2]+3);
//     printf("%s\n",cpp[-1][-1]+1);
//     return 0;


// }