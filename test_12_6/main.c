#include "head.h"
// int my_strncmp(const char* str1,const char* str2,int count)
// {
//     while(count)
//     {
//         if(*str1 == *str2)
//         {
//             str1++;
//             str2++;
//         }
//         else
//         {
//             return (*str1-*str2);
//         }
//         count--;
//     }
//     return 0;
// }
// int main()
// {
//     const char* str1 = "abchef";
//     const char* str2 = "abcfwe";
//     printf("%d",my_strncmp(str1,str2,4));
//     return 0;
// }
// char* my_strstr(const char* str1,const char* str2)
// {
//     assert(str1&&str2);
//     while((*str1 != '\0') && (*str1 != *str2))
//     {
//         str1++;
//     }
//     if(*str1 == '\0')
//     {
//         return NULL;
//     }
//     else
//     {
//         char* str = (char*)str1;
//         while(*str1 == *str2)
//         {
//             str1++;
//             str2++;
//             if(*str2 == '\0')
//             {
//                 return str;
//             }
//         }
//         return NULL;
//     }
// }
// char* my_strstr(const char* str1,const char* str2)
// {
//     assert(str1&&str2);
//     if(*str2 == '\0')
//     {
//         return ((char*)str1);
//     }
//     char *s1 = NULL;
//     char *s2 = NULL;
//     char *cur = (char*)str1;
//     while(*cur)
//     {
//         s1 = cur;
//         s2 = (char*)str2;
//         while((*s1 != '\0')&&(*s2 != '\0')&&(*s1 == *s2))
//         {
//             s1++;
//             s2++;
//         }
//         if(*s1 == '\0')
//         {
//             return (NULL);//没找到子串
//         }
//         if(*s2 == '\0')
//         {
//             return (cur);//找到子串
//         }
//         cur++;
//     }
//     return (NULL);//没找到子串
// }
// int main()
// {
//     const char* str1 = "abbbcdef";
//     const char* str2 = "bbc";
//     char* ret = my_strstr(str1,str2);//返回的是d的地址
//     if(ret == NULL)
//     {
//         printf("子串不存在\n");
//     }
//     else
//     {
//         printf("子串存在\n");
//     }
//     return 0;
// }

// int main()
// {
//     //192.168.32.121
//     char str1[] = "192.168.32.121";
//     const char* str2 = ".";
//     int num[4] = {0};
//     char* str = str1;
//     for(int i = 0;i<4;i++)
//     {
//         char* ret = strtok(str,str2);
//         int len = strlen(ret);
//         str = ret+len+1;
//         num[i] = atoi(ret);
//     }
//     for(int i = 0;i<4;i++)
//     {
//         printf("%d ",num[i]);
//     }
//     printf("\n");
//     return 0;
// }
// int main()
// {
//     //192.168.32.121
//     char str[] = "192.168.32.121";
//     char str1[1024] = {0};
//     strcpy(str1,str);
//     const char* str2 = ".";
//     int num[4] = {0};
//     char* ret = NULL;
//     for(int i = 0;i<4;i++)
//     {
//         if(!i)
//         {
//             ret = strtok(str1,str2);
//             num[i] = atoi(ret);
//             continue;
//         }
//         ret = strtok(NULL,str2);
//         num[i] = atoi(ret);
//     }
//     for(int i = 0;i<4;i++)
//     {
//         printf("%d ",num[i]);
//     }
//     printf("\n");
//     return 0;
// }

// int main()
// {
//     char str[] = "2445625585@qq.com";
//     char str1[1024] = {0};
//     const char* str2 = "@.";
//     strcpy(str1,str);
//     char* ret = NULL;
//     for(ret = strtok(str1,str2);ret!=NULL;ret = strtok(NULL,str2))
//     {
//         printf("%s\n",ret);
//     }
//     return 0;
// }
//IP地址的提取
// int main()
// {
//     const char *IP = "192.168.192.162";
//     const char *p = ".";
//     char buf[1024] = "0";
//     strcpy(buf, IP);
//     char *ret = NULL;
//     int num[4] = {0};
//     int i = 0;
//     for (ret = strtok(buf, p), i = 0; i < 4 && ret != NULL; i++, ret = strtok(NULL, p))
//     {
//         num[i] = atoi(ret);
//     }
//     for (i = 0; i < 4; i++)
//     {
//         printf("%d ", num[i]);
//     }
//     printf("\n");
// }

// int main()
// {
//     //strerroe(int errnum);可以将错误码翻译成相应信息
//     // 0 - No error
//     // 1 - Operation not permitted
//     //errno 是一个全局的错误码的变量，
//     //当C语言的库函数在执行过程中，发生错误，就会把对应的错误码赋值到errno
//     FILE *pf = NULL;
//     pf = fopen("test.c","r");
//     if(pf == NULL)
//     {
//         printf("%s\n",strerror(errno));
//     }
//     else
//     {
//         printf("open file success.\n");
//     }
//     return 0;
// }

// int main()
// {
//     /*int ret = islower('A');//判断是否为小写字母，如果是就返回一个非0的数字，反之则返回0
// */  int ret= isdigit('@');
//     printf("%d\n",ret);

// }

// int main()
// {
//     char ch = tolower('A');
//     char CH = toupper('a');
//     putchar(ch);
//     putchar(CH);
//     return 0;
// }

// int main()
// {
//     char arr[] = "I Am A Student";
//     int i = 0;
//     while(*(arr+i))
//     {
//         if(isupper(*(arr+i)))
//         {
//             *(arr+i) = tolower(*(arr+i));//tolower大写字母转小写字面字母
//         }
//         i++;
//     }
//     printf("%s\n",arr);

//     return 0;
// }

// int main()
// {
//     int arr1[] = {1,2,3,4,5};
//     int arr2[5] = {0};
//     memcpy(arr2,arr1,sizeof(arr1));
//     for(int i = 0; i<5; i++)
//     {
//         printf("%d ",arr2[i]);
//     }
//     printf("\n");
//     return 0;
// }
// void* my_memcpy(void *arr2, const void *arr1, size_t num)
// {
//     assert(arr2&&arr1);
//     char* dest = (char*)arr2;
//     char* src = (char*)arr1;
//     void* ret = arr2;
//     int cnt = num;
//     while (cnt)
//     {
//         *dest = *src;
//         ++dest;
//         ++src;
//         num--;
//     }
//     return (ret);
// }
// struct S
// {
//     char name[10];
//     int age;
// };
// int main()
// {
//     struct S arr1[] = {{"zhuangsan", 24}, {"lisi", 20}};
//     struct S arr2[3] = {0};
//     int arr3[] = {1,2,3,4,5};
//     int arr4[5] = {0};
//     my_memcpy(arr2, arr1, sizeof(arr1));
//     for (int i = 0; i < 3; i++)
//     {
//         printf("%s,%d\n", arr2[i].name, arr2[i].age);
//     }
//     my_memcpy(arr4,arr3,sizeof(arr3));
//     for(int i = 0; i<5;i++)
//     {
//         printf("%d ",arr4[i]);
//     }
//     printf("\n");
//     return 0;
// }
// void* mu_memmove(void* str1,const void* str2,size_t num)
// {
//     assert(str1&&str2);
//     void* ret = str1;
//     char* pstr1 = (char*)str1;
//     char* pstr2 = (char*)str2;
//     char buf[1024] = {0};
//     int i = 0;
//     int tmp = num;
//     while(tmp)
//     {
//         buf[i] = *pstr2;
//         pstr2++;
//         i++;
//         tmp--;
//     }
//     tmp = num;
//     i = 0;
//     while(tmp)
//     {
//         *pstr1 = buf[i];
//         pstr1++;
//         i++;
//         tmp--;
//     }
//     return (ret);
// }
// int main()
// {
//     int arr[] = {1,2,3,4,5,6,7,8,9,10};
//     mu_memmove(arr+2,arr,6*4);
//     for(int i = 0;i<10;i++)
//     {
//         printf("%d ",arr[i]);
//     }
//     //memmove 可以处理内存重叠的情况
//     return 0;
// }
// void* my_memmove(void* str1,const void* str2,int num)
// {
//     assert(str1&&str2);
//     void* ret = str1;
//     char* pstr1 = (char*)str1;
//     char* pstr2 = (char*)str2;
//     if(pstr1>=pstr2 && pstr1<=pstr2+num)
//     {
//         while(num)
//         {
//             *(pstr1+num-1) = *(pstr2+num-1);
//             num--;
//         }
//     }
//     else
//     {
//         while(num)
//         {
//             *(pstr1) = *(pstr2);
//             pstr1++;
//             pstr2++;
//             num--;
//         }
//     }
//     return (ret);
    
// }
// int main()
// {
//     int arr[] = {1,2,3,4,5,6,7,8,9,10};
//     int arr1[5] = {11,12,13,14,15};
//     my_memmove(arr,arr1,5*4);
//     int sz = sizeof(arr)/sizeof(arr[0]);
//     for(int i = 0;i<sz;i++)
//     {
//         printf("%d ",arr[i]);
//     }
//     printf("\n");
//     return 0;
// }