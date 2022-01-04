#include "head.h"
// void printf_num(int x)
// {
   
//     if(x>9)
//     {
//         printf_num(x/10);
//     }
//     printf("%d ",x%10);
// }
// int series(int x)
// {
//     if(x<=2)
//     {
//         return 1;
//     }
//     else if(x>2)
//     {
//         return series(x-1)+series(x-2);
//     }


// }
// int fib(int x)
// {
//     int first = 1;
//     int second = 1;
//     int third = 0;
//     printf("%d\n",first);
//     printf("%d\n",second);
//     while(x>2)
//     {
//         third = first+second;
//         first = second;
//         second = third;
//         printf("%d\n",third);
//         x--;
//     }
//     return third;
// }

int main()
{
    // printf("%d\n",add(4,8));
    // int ret = 0;
    // int num[] = {1,2,3,4,5,6,7,8,9,10};
    // int sz = sizeof(num)/sizeof(num[0]);
    // int x;
    // printf("锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷要锟斤拷锟揭碉拷锟斤拷\n");
    // scanf("%d",&x);
    // ret = get_num(num,sz,x);
    // if(ret == -1)
    // {
    //     printf("锟揭诧拷锟斤拷锟斤拷锟斤拷锟斤拷锟铰憋拷\n");
    // }
    // else
    // {
    //     printf("锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟铰憋拷为%d\n",ret);
    // }
    // int year = 1000;
    // int ret = 0;
    // int cnt = 0;
    // for(year = 1000; year<=2000; year++)
    // {
    //     ret = get_leap_year(year);
    //     if(ret == year)
    //     {
    //         printf("%d ",ret);
    //         cnt++;
    //     }
    //     if(cnt % 10 == 0)
    //     {
    //         printf("\n");
    //     }
    // }
    // printf("\n%d",cnt);

    // int a = 0;
    // for(int i = 0;i<10;i++)
    // {
    //     add1(&a);
    //     printf("a = %d\n",a);
    // }
    // int i = 1;
    // input(i);
    // unsigned int num = 0;
    // scanf("%d",&num);
    // printf_num(num);
    // char str[] ="bit";
    // int sz = sizeof(str)/sizeof(str[0]);
    // int len = strlength(str);
    // printf("len = %d",len);
    //求n的阶乘
//     int n = 10;
//     int sum = 1;
//     int sum1 = 0;
//     int ret = stratum(n);
//     printf("ret = %d\n",ret);
//     int ret1 = facl(n);
//     printf("ret1 = %d\n",ret1);
//    //求1到10的阶层和
//     int ret2 = facl1(n);
//     printf("ret2 = %d\n",ret2);
//     int ret3 = stratum_sum(n);
//     printf("ret3 = %d\n",ret3);


    // int x = 0;
    // scanf("%d",&x);
    // int ret = fib(x);
    // printf("ret = %d",ret);
    // int x = 0;
    // scanf("%d",&x);
    // int ret = series(x);
    // printf("ret = %d\n",ret);
    // char arr[] = "abcdef";
    // printf("%d\n",strlen(arr));//字符个数
    // printf("%d\n",sizeof(arr)/sizeof(arr[0]));//包含'/0'


    // char arr1[] = "abc";
    // char arr2[] = {'a', 'b', 'c'};
    // printf("%d\n", sizeof(arr1));
    // printf("%d\n", sizeof(arr2));
    // printf("%d\n", strlen(arr1));
    // printf("%d\n", strlen(arr2));

    // char arr[] = "abcdef";
    // int sz = strlen(arr);
    // for(int i=0; i<sz; i++)
    // {
    //     printf("%c ",arr[i]);
    // }

    // int num[] = {1,2,3,4,5,6,7,8,9,10};
    // int sz = sizeof(num)/sizeof(num[0]);
    // for(int i=0; i<sz; i++)
    // {
    //     printf("&num[%d] = %p\n", i, &num[i]);
    // }

    // int num[3][4] = {{1,2,3},{4,5}};
    // for(int i=0; i<3; i++)
    // {
    //     for(int j=0; j<4; j++)
    //     {
    //         printf("&num[%d][%d] = %p\n", i, j, &num[i][j]);
    //     }
    //     // printf("\n");
    // }
    
    // int num[] = {10,100,30,60,20,40,50,70,90,80};
    // int sz = sizeof(num)/sizeof(num[0]);
    // int tmp = 0;
    // bubble_sort(num,sz);
    // // sort(num,sz);
    // for(int i=0; i<sz; i++)//遍历数组
    // {
    //     printf("%d\n", num[i]);
    // }
    
    int num[] = {1,2,3,4,5,6};
    int sz = sizeof(num)/sizeof(num[0]);//这里的num取的是整个数组的大小并非是数组首元素的大小
    printf("%p\n",num);//取的是数组首元素的地址
    printf("%p\n",num+1);
    printf("%p\n",&num[0]);//取的是数组首元素的地址
    printf("%p\n",&num[0]+1);
    printf("%p\n",&num);//取的是数组的地址
    printf("%p\n",&num+1);


    return 0;
}

