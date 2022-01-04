#include "head.h"

// int main()
// {
//     unsigned long pulArray[] = {6,7,8,9,10};
//     unsigned long *pulPtr;
//     pulPtr = pulArray;
//     *(pulPtr+3) += 3;
//     printf("%d,%d",*(pulPtr),*(pulPtr+3));
//     return 0;
// }
// void reverse(char* str)
// {
//     assert(str);
//     int sz = my_strlen(str);
//     int left = 0;
//     int right = sz-1;
//     char tmp = 0;
//     while(left<right)
//     {
//         tmp = str[left];
//         str[left] = str[right];
//         str[right] = tmp;
//         left++;
//         right--;
//     }

// }
// int my_strlen(char* str)
// {
//     assert(str);
//     int cnt = 0;
//     while(*str != '\0')
//     {
//         cnt++;
//         str++;
//     }
//     return cnt;
// }
// void reverse_point(char* str)
// {
//     assert(str);
//     int sz = my_strlen(str);
//     char* left = str;
//     char* right = str+sz-1;
//     char tmp = 0;
//     while(left<right)
//     {
//         tmp = *left;
//         *left = *right;
//         *right = tmp;
//         left++;
//         right--;
//     }

// }
// int main()
// {
//     char str[100] = {0}; 
//     gets(str);//读取一行,当使用该函数时需要str的大小是已知的
//     printf("%s\n",str);
//     reverse_point(str);
//     printf("%s\n",str);
//     return 0;
// }
// void sum(int n,int num)
// {
//     int sn = 0;
//     int sum = 0;
//     int power = 1;
//     int i = 0;
//     while(i<n)
//     {
//         sum = sum + num*power;
//         power = power*10;
//         sn = sn + sum;    
//         i++;
//     }
//     printf("%d\n",sn);
// }
// int main()
// {
//     int n = 0;
//     int num = 0;
//     printf("请输入:>");
//     scanf("%d%d",&n,&num);
//     sum(n,num);
// }
// int count(int i)
// {
//     int cnt = 0;
//     while(i>0)
//     {
//         i = i/10;
//         cnt++;
//     }
//     // printf("%d",cnt);
//     return cnt;
// }
// int get_shuixianhua(int i,int cnt)
// {  
//     int sn = 0;
//     while(i>0)
//     {
//         int j = 1;
//         int sum = 1;
//         while(j<=cnt)
//         {
//             sum = sum * (i%10);
//             j++;
//         }
//         // printf("sum = %d",sum);
//         sn = sn + sum;
//         i = i/10;
//     }
//     // printf("sn = %d",sn);
//     return sn;
// }
// void shuixianhua_num()
// {
//     //求0-100000中的水仙花数
//     for(int i = 1; i<100000; i++)
//     {
//         //首先要知道所求数字的位数
//         int cnt = count(i);
//         // 对所求数字进行取余操作，并求出所有余数的位数次方之和
//         // 判断所求数与求得的数是否相等
//         if(i == get_shuixianhua(i,cnt))
//         {
//             printf("%d ",get_shuixianhua(i,cnt));
//         }
//     }   
// }
// int main()
// {
//     shuixianhua_num();
//     return 0;
// }
/*
      *
     ***
    *****
   *******
  *********
 ***********
************* 
 *********** 
  *********
   *******
    *****
     ***
      *
*/
// int main()
// {
//     //首先要知道用户想要打印的行数
//     int line = 0;
//     scanf("%d",&line);
//     //一行中要打印空格和星号，分成两部分
//     //上半部分，每一行要做的工作
//     for(int i = 0;i<line;i++)
//     {
//         //打印空格
//         for(int j = 0; j<line-1-i; j++)
//         {
//             printf(" ");
//         } 
//          //打印星星
//         for(int j = 0; j<2*i+1; j++)
//         {
//             printf("*");
//         }
//         printf("\n");
//     }
//     //下半部分,每一行要做的工作
//     for(int i = 0;i<line-1;i++)
//     {
//         //打印空格
//         for(int j = 0;/*j<1+i*/j<=i;j++)
//         {
//             printf(" ");
//         }
//         //打印星星
//         for(int j = 0;/*j<(2*(line-1))-(2*i+1)*/j<2*(line-1-i)-1;j++)
//         {
//             printf("*");
//         }
//         printf("\n");
//     }
//     return 0;
// }
// struct S
// {
//     int a;
//     int b;
// };
// int main()
// {
//     struct S a,*p = &a;
//     a.a = 99;
//     printf("%d\n",(*p).a);
//     return 0;
// }
// struct stu
// {
//     int num;
//     char name[10];
//     int age;
// };
// void fun(struct stu* p)
// {
//     printf("%s\n",(*p).name);
//     return ;
// }
// int main()
// {
//     struct stu students[3] = {{9801,"zhang",20},{9802,"wang",19},{9803,"zhao",18}};
//     fun(students+1);
//     return 0;
// }

// int main()
// {
//     //一瓶汽水1元，2个空瓶可以换一瓶汽水，给20元，可以给多少汽水
//     int money = 0;
//     scanf("%d",&money);
//     int total = 0;
//     int empty = 0;
//     //买的汽水
//     total = money;
//     empty = total;
//     //换的汽水
//     while(empty >= 2)
//     {
//         total = total + empty/2;
//         empty = empty/2 + empty%2;
//     }
//     printf("%d\n",total);     
//     return 0;
// }
// void get_arr(int* arr,int arr_sz)
// {
//     int b[10] = {0};
//     int cnt = 0;
//     int b_sz = sizeof(b)/sizeof(b[0]);
//     for(int i = 0,j = 0;i<arr_sz;i++)
//     {
//         if(*(arr+i)%2 != 0)
//         {
//             *(b+j) = *(arr+i);
//             cnt++;
//             j++;    
//         }
//     }
//     for(int i = 0,j = 0; i<arr_sz; i++)
//     {
//         if(*(arr+i)%2 == 0)
//         {
//             *(b+j+cnt) = *(arr+i);
//             j++;
//         }
//     }
//     for(int i = 0 ;i<arr_sz;i++)
//     {
//         printf("%d ",b[i]);
//     }

// }
// int main()
// {
//     int arr[10] = {1,4,7,0,2,5,8,3,6,9};
//     int arr_sz = sizeof(arr)/sizeof(arr[0]);
//     get_arr(arr,arr_sz);
//     return 0;
// }
// void move(int* arr,int sz)
// {
//     int* left = arr;
//     int* right = arr+sz-1;
//     while(left<right)
//     {
//         int tmp = 0;
//         //从左边找偶数
//         while((left<right) && ((*left)%2) == 1)
//         {
//             //如果为奇数指针就指向下一个
//             left++;
//         }
//         while((left<right) && ((*right)%2) == 0)
//         {
//             //如果为偶数指针就指向上一个
//             right--;
//         }
//         if(left<right)
//         {
//             tmp = *left;
//             *left = *right;
//             *right = tmp;
//         }
//     } 

// }
// void print(int* arr,int sz)
// {
//     int i = 0;
//     for(i = 0; i<sz; i++)
//     {
//         printf("%d ",*(arr+i));
//     }
//     printf("\n");
// }
// int main()
// {
//     int arr[] = {1,3,2,4,5,6,8,7,9,10};
//     int sz = sizeof(arr)/sizeof(arr[0]);
//     move(arr,sz);
//     print(arr,sz);
// }

// int main()
// {
//     unsigned char a = 200;
//     unsigned char b = 100;
//     unsigned char c = 0;
//     c = a+b;
//     printf("%d,%d",a+b,c);
//     return 0;
// }

// int main()
// {
//     unsigned int a = 0x1234;
//     unsigned char b = *(unsigned char*)&a;
//     printf("%x\n",b);
//     return 0;
// }

// int main()
// {
//     char a[1000] = {0};
//     int i = 0;
//     for(i = 0;i<1000; i++)
//     {
//         a[i] = -1-i;
//     }
//     //-1 -2 -3 ... -128 127 126 ... 3 2 1 0 1 ...
//     printf("%d",strlen(a));
// }
// void print(int (*arr)[10],int m,int n)
// {
//     int i = 0;
//     int j = 0;
//     for(i = 0;i<m;i++)
//     {
//         for(j = 0;j<m-1-i;j++)
//         {
//             printf(" ");
//         }
//         for(j = 0;j<=i;j++)
//         {
//             printf("%d ",*(*(arr+i)+j));
//         }
//         printf("\n");
//     }
// }

// int main()
// {
//     int arr[10][10] = {0};
//     int i = 0;
//     int j = 0;
//     for(i = 0;i<10;i++)
//     {
        
//         for(j = 0;j<10;j++)
//         {
//             if(j == 0)
//             {
//                 *(*(arr+i)+j) = 1;
//             }
//            if(i == j)
//            {
//                *(*(arr+i)+j) = 1;
//            } 
//            if(i>=2 && j>=1)
//            {
//                *(*(arr+i)+j) = *(*(arr+i-1)+j) + *(*(arr+i-1)+j-1);
//            }
//         }
//     }
//     print(arr,10,10);
//     // yanghui_sanjiao(arr,10,10);
//     // print(arr,10,10);

//     return 0;
// }

// int main()
// {
//     int killer = 0;
//     for(killer = 'a';killer <= 'd';killer++)
//     {
//         if((killer != 'a') + (killer == 'c') + (killer == 'd') + (killer != 'd') == 3)
//         {
//             printf("killer = %c",killer);
//         }
//     }
//     return 0;
// }

