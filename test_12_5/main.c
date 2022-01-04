#include "head.h"

// int main()
// {
//     int a = 0;
//     int b = 0;
//     int c = 0;
//     int d = 0;
//     int e = 0;
//     for (a = 0; a <= 5; a++)
//     {
//         for (b = 0; b <= 5; b++)
//         {
//             for (c = 0; c <= 5; c++)
//             {
//                 for (d = 0; d <= 5; d++)
//                 {
//                     for (e = 0; e <= 5; e++)
//                     {
//                         if (((b == 2) + (a == 3) == 1) && ((b == 2) + (e == 4) == 1) && ((c == 1) + (d == 2) == 1) && ((c == 5) + (d == 3) == 1) && ((e == 4) + (a == 1) == 1))
//                         {
//                             if ((a > 0) && (b > 0) && (c > 0) && (d > 0) && (e > 0))
//                             {
//                                 if ((a != b) && (a != c) && (a != d) && (a != e) && (b != c) && (b != d) && (b != e) && (c != d) && (c != e) && (d != e))
//                                 {
//                                     //if(a*b*c*d*e == 120)
//                                     printf("a = %d ", a);
//                                     printf("b = %d ", b);
//                                     printf("c = %d ", c);
//                                     printf("d = %d ", d);
//                                     printf("e = %d\n", e);
//                                 }
//                             }
//                         }
//                     }
//                 }
//             }
//         }
//     }

//     return 0;
// }

// int main()
// {
//     //申请40个字节的空间
//     int* p = (int *)malloc(10*sizeof(int));
//     //使用空间
//     //释放空间
//     free(p);//释放空间只是把申请的空间归还并不会修改指针所指的申请地址（不会修改指针指向的内容）需要自行将修改
//     p = NULL;
//     return 0;
// }

// int main()
// {
//     char str1[] = "hello bit";
//     char str2[] = "hello bit";
//     char *str3 = "hello";//常量字符串，不可被修改
//     char *str4 = "hello";
//     if(str1 == str2) //首元素地址
//     {
//         printf("same\n");
//     }
//     else
//     {
//         printf("no same\n");
//     }
//     if(str3 == str4)
//     {
//         printf("same\n");
//     }
//     else
//     {
//         printf("no same\n");
//     }
//     return 0;
// }

// int main()
// {
//     int a[5] = {5,4,3,2,1};
//     int* ptr = (int *)(&a+1);
//     printf("%d,%d",*(a+1),*(ptr-1));
//     return 0;
// }
// int main()
// {
//     int aa[2][5] = {10,9,8,7,6,5,4,3,2,1};
//     int* ptr1 = (int *)(&aa+1);
//     int* ptr2 = (int *)(*(aa+1));
//     printf("%d,%d",*(ptr1-1),*(ptr2-1));
//     return 0;
// }
// void turn_left(char* a,int n)
// {
//     char* left = NULL;
//     char* right = NULL;
//     char tmp = 0;
//     while(n>0)
//     {
//         left = a;
//         right = a+1;
//         while(*right != '\0')
//         {
//             tmp = *left;
//             *left = *right;
//             *right = tmp;
//             left++;
//             right++;
//         }
//         n--;

//     }
// }

// void left_move(char* a,int n)
// {
//     int len = strlen(a);
//     for(int i = 0;i<n;i++)
//     {
//         char tmp = *a;
//         for(int j = 0;j<len-1;j++)
//         {
//             *(a+j) = *(a+j+1);
//         }
//         *(a+len-1) = tmp;
//     }
// }
// void turn(char* left,char* right)
// {
//     while(left<right)
//     {
//         char tmp = *left;
//         *left = *right;
//         *right = tmp;
//         left++;
//         right--;
//     }
// }
// void fun(char* a,int n)
// {
//     assert(a);
//     char* left = a;
//     char* right = a+n-1;
//     int len = strlen(a);
//     assert(n<=len);
//     turn(left,right);
//     left = a+n;
//     right = a+len-1;
//     turn(left,right);
//     left = a;
//     right = a+len-1;
//     turn(left,right);

// }
// void reverse(char* a)
// {
//     assert(a);
//     // char* left = a;
//     // char* right = a+n-1;
//     int len = strlen(a);
//     // assert(n<=len);
//     // turn(left,right);
//     char* left = a+1;
//     char* right = a+len-1;
//     turn(left,right);
//     left = a;
//     right = a+len-1;
//     turn(left,right);

// }
// int fun(char* s1,char* s2,void (*pr)(char *))
// {
//     int i = 0;
//     while(i<=strlen(s1))
//     {
        
//         pr(s1);
//         i++;
//         if(strcmp(s1,s2) == 0)
//         {
//             return i;
//         }
//     }
//     return 0;
// }
// int main()
// {
//     char a[] = "ABCD";
//     int n = 0;
//     scanf("%d",&n);
//     // turn_left(a,n);
//     // left_move(a,n);
//     fun(a,n);
//     printf("%s",a);
//     return 0;
// }

// int main()
// {
//     char s1[] = "abcd";
//     char s2[] = "ABCD";
//     void (*pr)(char*) = reverse;
//     int ret = fun(s1,s2,reverse);
//     printf("%d",ret);

// }
// int cmp(char* s1,char* s2)
// {
//     int len = strlen(s1);
//     int len1 = strlen(s2);
//     if(len != len1)
//     {
//         return 0;
//     }
//     strncat(s1,s1,len);//这个适用于自己追加自己
//     /*strcat(s1,s2);//这个适合追加别的字符串内容*/
//     printf("%s\n",s1);
//     char* ret = strstr(s1,s2);//这个函数的作用是在s1中找s2，找到了就返回一个指针，没找到就返回空指针
//     if(ret == NULL)
//     {
//         return 0;
//     }
//     else
//     {
//         return 1;
//     }
// }
// int main()
// {
//     char s1[] = "ABCD";
//     char s2[] = "CDAB";
//     int ret = cmp(s1,s2);
//     printf("%d",ret);
//     // printf("%s",s1);
// }
// int FindNum(int (*a)[3],int k,int row,int col)
// {
//     int x = 0;
//     int y = col-1;
//     while((x<=row-1)&&(y>=0))
//     {
//         if(k > a[x][y])
//         {
//             x++;
//         }
//         else if(k < a[x][y])
//         {
//             y--;
//         }
//         else
//         {
//             return 1;
//         }
//     }
//     return 0;
// }
// int FindNum(int (*a)[3],int k,int *py,int *px)
// {
//     int x = 0;
//     int y = *py-1;
//     while((x<=*px-1)&&(y>=0))
//     {
//         if(k > a[x][y])
//         {
//             x++;
//         }
//         else if(k < a[x][y])
//         {
//             y--;
//         }
//         else
//         {
//             *py = y;
//             *px = x;
//             return 1;
//         }
//     }
//     return 0;
// }
// int main()
// {
//     int a[3][3] = {{1,2,3},{4,5,6},{7,8,9}};
//     int k = 7;
//     int x = 3;
//     int y = 3;
//     int ret = FindNum(a,k,&x,&y);
//     if(ret == 0)
//     {
//         printf("没找到\n");
//     }
//     else
//     {
//         printf("找到了,下标是x = %d,y = %d\n",x,y);
//     }
// }
//1.计数器的方法
// int my_strlen(char* str)
// {
//     int cnt = 0;
//     while(*(str) != '\0')
//     {
//         cnt++;
//         str++;
//     }
//     return cnt;

// }
//2.递归的方法
// int my_strlen(char* str)
// {
//     if(*(str)!='\0')
//     {
//         return 1+my_strlen(++str);
//     }
//     else
//     {
//         return 0;
//     }
// }
//3.指针减指针的方法
// int my_strlen(char* str)
// {
//     char *str1 = str;
//     while(*(str) != '\0')
//     {
//         str++;
//     }
//     return (int)(str-str1);
// }
//size_t : unsigned int 两个无符号数相减得到的结果也是无符号数
// int main()
// {
//     char str[] = "abcd";
//     // printf("%d",my_strlen(str));
//     if(strlen("abc")-strlen("abcdef") > 0)
//     {
//         printf("hehe\n");
//     }
//     else
//     {
//         printf("haha\n");
//     }
//     return 0;
// }
// void my_strcpy(char *str1,char* str2)
// {
//     while(*str2 !='\0')
//     {
//         *str1 = *str2;
//         str1++;
//         str2++;
//     }
//     *str1 = *str2;
// }
// char* my_strcpy(char *str1,const char* str2)
// {
//     assert(str1 != NULL);
//     assert(str2 != NULL);
//     char* ret = str1;
//     while(*str1++ = *str2++)
//     {
//         ;
//     }
//     return ret;
// }
// int main()
// {
//     char str1[] = "abcdef";
//     char str2[] = "bit";
//     my_strcpy(str1,str2);
//     printf("%s\n",str1);
//     return 0;
// }
// char* my_strcat(char* str1,const char* str2)
// {
//     assert(str1 != NULL);
//     assert(str2 != NULL);
//     char* str = str1;
//     int len = strlen(str1);
//     strcpy(str1+len,str2);
//     return str;
// }
// int main()
// {
//     char str1[30] = "hello";
//     char str2[] = "world";
//     my_strcat(str1,str2);
//     printf("%s",str1);
//     return 0;
// }
// int my_strcmp(const char* str1,const char* str2)
// {
//     assert(str1 != NULL);
//     assert(str2 != NULL);
//     // if(strlen(str1) - strlen(str2) != 0)
//     // {
//     //     return (int)(strlen(str1) - strlen(str2));
//     // }
//     while(*str1&&*str2)
//     {
//         if(*str1 == *str2)
//         {
//             str1++;
//             str2++;
//         }
//         else if(*str1 > *str2)
//         {
//             return 1;
//         }
//         else
//         {
//             return -1;
//         }
//     }
//     return 0;
// }
// int my_strcmp(const char* str1,const char* str2)
// {
//     assert(str1 != NULL);
//     assert(str2 != NULL);
//     while(*str1 == *str2)
//     {
//         if(*str1 == '\0')
//         {
//             return 0;
//         }
//         str1++;
//         str2++;
//     }
//     if(*str1 > *str2)
//     {
//         return 1;
//     }
//     else
//     {
//         return -1;
//     }
// }
// int my_strcmp(const char* str1,const char* str2)
// {
//     assert(str1 != NULL);
//     assert(str2 != NULL);
//     while(*str1 == *str2)
//     {
//         if(*str1 == '\0')
//         {
//             return 0;
//         }
//         str1++;
//         str2++;
//     }
//     return (*str1 - *str2);
// }
// int main()
// {
//     char *str1 = "power";
//     char *str2 = "power";
//     if(my_strcmp(str1,str2) == 0)
//     {
//         printf("str1 = str2\n");
//     }
//     else if(my_strcmp(str1,str2) < 0)
//     {
//         printf("str1 < str2\n");
//     }
//     else
//     {
//         printf("str1 > str2\n");
//     }
//     return 0;
// }
// char* my_strncpy(char* str1,const char* str2,int count)
// {
//     assert(str1&&str2);
//     char* str = str1;
//     while(count)
//     {
//         if(*str2 == '\0')
//         {
//             break;
//         }
//         *str1++ = *str2++;
//         count--;
//     }
//     while(count)
//     {
//         *str1 = '\0';
//         str1++;
//         count--;
//     }
//     return str;
// }
// int main()
// {
//     char str1[15] = "abcdrfghi";
//     char str2[] = "bit";
//     printf("%s\n",my_strncpy(str1,str2,6));
//     return 0;
// // }
// char* my_strncat(char* str1,char* str2,int count)
// {
//     assert(str1&&str2);
//     char* str = str1;
//     while(count)
//     {
//         if(*str2 == 0)
//         {
//             break;
//         }
//         *str1++ = *str2++;
//         count--;
//     }
//     *str1 = '\0';
//     return str;
// }
// int main()
// {
//     char str1[15] = "abcdrfghi";
//     char str2[] = "bit";
//     printf("%s",my_strncat(str1,str2,6));
//     return 0;
// }