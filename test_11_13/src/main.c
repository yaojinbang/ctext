#include "head.h"
typedef struct student
{
    int id;
    char name[20];
    int sex;
} stu;

void test1(int arr1[])
{
    printf("%d\n", sizeof(*arr1));
}
void test2(char arr2[])
{
    printf("%d\n", sizeof(*arr2));
}

// int *test()
// {
//     int a = 10;
//     return &a;
// }
int my_strlen(char str[])
{
    // if(*str++ != 0)
    // {
    //     return 1+my_strlen(str);
    // }
    char* p = str;
    while(*str != 0)
    {  
        str++;
    }
    return str - p;
}
void init(int num[],int sz)
{
    for(int i=0; i<sz; i++)
    {
        num[i] = 0;
    }
}
void print(int num[],int sz)
{
    for(int i = 0; i<sz; i++)
    {
        printf("%d ",num[i]);
    }
    printf("\n");
}
void get_num(int num[],int sz)
{
    for(int i = 0; i<sz; i++)
    {
        num[i] = i+1;
    }
}
void reverse(int num[],int sz)
{
    int tmp = 0;
    for(int i=0; i<sz-1; i++)
    {
        for(int j = 0; j<sz-1-i; j++)
        {
            tmp = num[j];
            num[j] = num[j+1];
            num[j+1] = tmp;
        }
    }
}
void Reverse(int num[],int sz)
{
    int* left = &num[0];
    int* right = &num[sz-1];
    int tmp = 0;
    while (right > left)
    {

        tmp = *left;
        *left = *right;
        *right = tmp;
        left++;
        right--;
        
    }
}

void Change_arr(char des[],char src[],int sz)
{
    for(int i = 0; i<sz; i++)
    {
        des[i] = src[i];
        src[i] = 0;
    }
    
}

int get_one(int m)
{
    int j = 0;
    int count = 0;
    while (j<32)
    {
        if((m >> j)&1)
        {
            count++;
        }
        j++;
    }
    return count;
    
}

void Print(int num[],int sz)
{
    int* p = num;
    for(int i = 0;i<sz;i++)
    {
        printf("%d\n",*p+i);
    }
}
int main(int argc, char *argv[])
{
    // int a = 5/2;//除法得到的是商
    // int b = 5%2;//模得到的是余数
    // float c = 5.0/2;
    // printf("a = %d, b=%d, c = %0.1f\n", a, b, c);
    //移位操作符
    //算术右移  右边丢弃，左边补原符号位
    //逻辑右移 右边丢弃，左边补0
    // int a = -1;
    // int b = a >> 1;//算术移位
    // printf("%x", a);
    // 不创建临时变换实现两个数的交换
    // int a = 3;//0011
    // int b = 5;//0101
    // // a = a^6;
    // // b = b^6;
    // a = a+b;
    // b = a-b;
    // a = a-b;
    // printf("a = %d, b = %d\n",a, b);
    // int a = 12;
    // int b = 0;
    // b = a;
    // int count = 0;
    // int i = 0;
    // while(i<32)
    // {
    //     a = a >> i;
    //     if(a & 1 == 1)
    //     {
    //         count++;
    //     }
    //     i++;
    //     a = b;
    // }
    // printf("%d", count);
    //     short s = 0;
    //     int a = 10;
    //     printf("%d\n",sizeof(s = a+5));
    //     printf("%d\n",s);
    //     int b = 0;
    //    // 00000000 00000000 00000000 00000000
    //    // 11111111 11111111 11111111 11111111
    //    // 00000000 00000000 00000000 00000000
    //    // 11111111 11111111 11111111 11111111
    //    // 11111111 11111111 11111111 11111110
    //    // 10000000 00000000 00000000 00000001
    //     printf("%d\n",~b);
    // int a = 11;
    // a = a | (1 << 2);
    // printf("%d\n",a);
    // a = a & ~(1 << 2);
    // printf("%x",~(1<<2));
    // printf("%d\n",a);
    // 00000000 00000000 00000000 00001011
    // 11111111 11111111 11111111 11110100
    // 11111111 11111111 11111111 11110011
    // 10000000 00000000 00000000 00001100

    // int a = 10;
    // // int b = ++a;
    // // int c = a++;
    // // printf("%d\n",b);
    // printf("%d\n",a++);

    // int arr1[10] = {0};
    // char arr2[10] = {0};

    // printf("%d\n",sizeof(arr1));
    // printf("%d\n",sizeof(arr2));
    // test1(arr1);
    // test2(arr2);

    // int a = 0;
    // int b = 0;
    // int c = a || b;
    // printf("%d",c);
    //    int i = 0;
    //    int a = 0;
    //    int b = 2;
    //    int c = 3;
    //    int d = 4;
    //    //i = a++ && ++b && d++;
    //    i = a++ || ++b || d++;
    //    printf(" a = %d\n b = %d\n c = %d\n d = %d\n", a, b, c, d);

    // int a = 10;
    // int b = 20;
    // int max = 0;
    // max = a>b?a:b;
    // printf("max = %d\n",max);

    // int a = 1;
    // int b = 2;
    // int c = (a>b, a = b+10, a, b=a+1);
    // printf("%d", c);

    // stu stu1 = {10086,"xiaoming",1};
    // stu stu2 = {10010,"xiaofang",0};
    // stu* ps = &stu1;
    // printf("%s\n",ps->name);
    // printf("stu1 id = %d\n",stu1.id);
    // printf("stu1 id = %d\n",stu2.id);

    // char a = 3;
    // char b = 127;
    // char c = a+b;
    // printf("%d",c);

    // char a = 0xb6;
    // short b = 0xb600;
    // int c = 0xb6000000;
    // if(a == 0xb6)
    // {
    //     printf("a");
    // }
    // if(b == 0xb600)
    // {
    //     printf("b");
    // }
    // if(c == 0xb6000000)
    // {
    //     printf("c");
    // // }
    // char c = 1;
    // printf("%u\n", sizeof(c));
    // printf("%u\n", sizeof(+c));
    // printf("%u\n", sizeof(!c));

    // float f = 3.14;
    // int a = f;
    // printf("%d",a);
    // int a = 0x11223344;
    // int* pa = &a;
    // char* pc = &a;
    // printf("%p\n", pa);
    // printf("%p\n", pc);
    // printf("%x\n", *pa);
    // printf("%x\n", *pc);

    // int* p = test();
    // printf("%d",*p);

    // int arr[10] = {1, 2, 3, 4, 5, 6, 7, 11, 9, 10};
    // int *p = &arr[0];
    // int *p1 = &arr[10];
    // int sz = p1 - p;
    // printf("%d\n", sz);

    // // int sz = sizeof(arr) / sizeof(arr[0]);

    // for (int i = 0; i < sz; i++)
    // {
    //     printf("%d ", *p++); //就相当于先打印*p的值*号就没用了 然后才是p++ 地址+1
    // }
    // char str[] = "hello bit";
    // int ret = my_strlen(str);
    // printf("length = %d",ret);
    // char str[10] = {0};
    // char* ps = &str[0];
    // for(ps = &str[0]; ps<&str[10];ps++)
    // {
    //     *ps = *ps + '1';
    // }
    // // for(ps = &str[0]; ps<&str[10];ps++)
    // // {
    // //     printf("%c ",*ps);
    // // }
    // printf("%s",str);

    // int num[10] = {0};
    // int* pn = &num[0];
    // int sum = 0;
    // for(pn = &num[0]; pn<&num[10]; pn++)
    // {
    //     sum = sum+1;
    //     *pn = sum;
    // }
    // for(int i = 0; i<10; i++)
    // {
    //     printf("%d\n",num[i]);
    // }
    // printf("%p\n",&num);
    // printf("%p",num);

    // int num[10] = {0};
    // int* p = num;
    // for(int i = 0; i<10; i++)
    // {
    //     *(p+i) = i+1;
    // }
    // for(p = num;p<&num[10];p++)
    // {
    //     printf("%d ",*p);
    // }
    // int a = 10;
    // int* pa = &a;
    // int** ppa = &pa;
    // // int*** pppa = &ppa;
    // **ppa = 20;
    // printf("%d",**ppa);
    // int a = 10;
    // int b = 20;
    // int c = 30;
    // int* num[3] = {&a,&b,&c};
    // int** p = num;
    // for(p = num; p< &num[3]; p++)
    // {
    //     printf("%d\n",**p);
    // }
    // int a[10]={10,9,8,7,6,5,4,3,2,1};
    // int tmp = 0;
    // for(int i = 0; i < 9 ;i++)
    // {
        
    //     for(int j = 0;j<9-i;j++)
    //     {
    //       if(a[j]>a[j+1])
    //       {
    //         tmp = a[j];
    //         a[j] = a[j+1];
    //         a[j+1] = tmp;
    //       }
    //     }
    // }
    // for(int i=0;i<10;i++)
    // {
    //      printf("%d ",a[i]);
    // }
    // int num[10];
    // int sz = sizeof(num)/sizeof(num[0]);
    // init(num,sz);
    // print(num,sz);
    // get_num(num,sz);
    // print(num,sz);
    // reverse(num,sz);
    // print(num,sz);
    // int num[] = {11,10,9,8,7,6,5,4,3,2,1};
    // int sz = sizeof(num)/sizeof(num[0]);
    // Reverse(num,sz);
    // print(num,sz);

    // char arr1[20] = "hello bit";
    // char arr2[20] = "hello world";
    // char arr3[20] = {0};
    // for(int i = 0;i<20;i++)
    // {
    //     arr3[i] = arr1[i];
    //     arr1[i] = 0;
    // }
    // for(int i=0; i<20; i++)
    // {
    //     arr1[i] = arr2[i];
    //     arr2[i] = 0;
    // }
    // for(int i=0;i<20; i++)
    // {
    //     arr2[i] = arr3[i];
    //     arr3[i] = 0;
    // }
    // printf("%s\n",arr1);
    // printf("%s\n",arr2);
    // Change_arr(arr3,arr1,20);
    // Change_arr(arr1,arr2,20);
    // Change_arr(arr2,arr3,20);
    // printf("%s\n",arr1);
    // printf("%s\n",arr2);

    // int num1[10] = {1,2,3,4,5,6,7,8,9,10};
    // int num2[10] = {11,22,33,44,55,66,77,88,99,100};
    // int tmp = 0;
    // print(num1,10);
    //  print(num2,10);
    // for(int i = 0;i<10;i++)
    // {
    //     tmp = num1[i];
    //     num1[i] = num2[i];
    //     num2[i] = tmp;
    //     tmp = 0;
    // }
    //  print(num1,10);
    //  print(num2,10);
    // memcpy(arr3,arr1,20);
    // memcpy(arr1,arr2,20);
    // memcpy(arr2,arr3,20);
    // printf("%s\n",arr1);
    // printf("%s\n",arr2);
    // int a = 0x11223344;
    // char *pc = (char*)&a;
    // *pc = 0;
    // printf("%x\n",a);
    // 10000000 00000000 00000000 00000001
    // 11111111 11111111 11111111 11111110
    // 11111111 11111111 11111111 11111111
    // printf("%x\n",-1);
    // int i = 0;
    // int j =sizeof(i);
    // printf("%x\n",j);
    // int i = 0;
    // (unsigned int)(i--);
    // printf("%d",i);

    // int a = 1999;
    // int b = 2299;
    // int c = a^b;
    // int count = 0;
    // while(c)
    // {
    //     c = c&(c-1);
    //     count++;
    // }
    // printf("count = %d\n",count);
    // int i = 0;
    // int count = 0;
    // while(i < 32)
    // {
        
    //     if(((a >> i) & 1) != ((b >> i) & 1))
    //     {
    //         count++;
    //     }
    //     i++;
    // }
    // printf("%d\n",count);

    // int m = 15;
    // int ret = get_one(m);
    // printf("ret = %d\n",ret);
    // int cnt = 0;
    // while(m)
    // {  
    //     m = m&(m-1);
    //     cnt++;
    // }
    // printf("cnt = %d\n",cnt);
    
    // int num1 = 3;//0011 0110
    // int num2 = 5;//0101
    // num1 = num1 ^ 6;
    // num2 = num2 ^ 6;
    // printf("num1 = %d, num2 =%d\n",num1, num2);

    // int num[] = {1,2,3,4,5,6,7,8,9,10};
    // int sz = sizeof(num)/sizeof(num[0]);
    // Print(num,sz);
    int a = 2299;
    int i = 30;
    while(i>=0)
    {
       printf(" %d",((a>>i)&1));
       i=i-2; 
    }
    printf("\n");
    for(int i = 31; i>=1; i = i-2)
    {
        printf("%d ",((a>>i)&1));
    }
    printf("\n");
    //00000000 00000000 00001000 11111011 
    return 0;
}