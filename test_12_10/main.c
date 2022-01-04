#include  "head.h"
// struct student
// {
//     int id;
//     char name[20];
// };

// int cmp_name(const void* e1,const void* e2)
// {
//     return strcmp(((struct student*)e1)->name,((struct student*)e2)->name);
// }
// int cmp_id(const void* e1,const void* e2)
// {
//     return ((struct student*)e1)->id-((struct student*)e2)->id;
// }

// void swap(char* buf1,char* buf2,int width)
// {
//     for(int i = 0;i<width;i++)
//     {
//         char tmp = *buf1;
//         *buf1 = *buf2;
//         *buf2 = tmp;
//         buf1++;
//         buf2++;
//     }
// }
// void Bubble_Sort_Any(void* base,int size,int width,int (*cmp)(const void*,const void*))
// {
//     //冒泡排序法
//     for(int i = 0;i<size-1;i++)
//     {
//         for(int j = 0;j<size-1-i;j++)
//         {
//             if(cmp((char*)base+j*width,((char*)base+(j+1)*width)) > 0)
//             {
//                 swap((char*)base+j*width,((char*)base+(j+1)*width),width);
//             }
//         }
//     }
// }

// void Dis_stu(struct student* stu,int sz)
// {
//     for(int i = 0;i<sz;i++)
//     {
//         printf("%20s\t%d\n",stu->name,stu->id);
//         stu++;
//     }
// }


// int main()
// {
//     struct student stu[3] = {{12,"xiaohong"},{5,"cuihua"},{20,"wangfang"}};
//     int sz = sizeof(stu)/sizeof(stu[0]);
//     int width = sizeof(stu[0]);
//     Dis_stu(stu,sz);
//     // Bubble_Sort_Any(stu,sz,width,cmp_name);
//     // Dis_stu(stu,sz);
//     Bubble_Sort_Any(stu,sz,width,cmp_id);
//     Dis_stu(stu,sz);

// }
//在C99标准中是支持变长数组的 arr[n] 这边的n是自己确定的变量  gcc main,c -std=c99
// int main()
// {
//     int n = 0;
//     scanf("%d",&n);
//     int a[n];
//     for(int i = 0;i<n;i++)
//     {
//         a[i] = i+1;
//     }
//     for(int i = 0;i<n;i++)
//     {
//         printf("%d ",a[i]);
//     }
//     printf("\n");
//     return 0;
// }
/*
    栈区 局部变量 函数的形参 函数的调用
    堆区  动态内存管理
    静态区 静态变量 全局变量
*/


// int main()
// {
//     int n;
//     scanf("%d",&n);
//     //向系统申请n*4个字节空间
//     int* a =(int*)malloc(n*sizeof(int));
//     if(a == NULL)
//     {
//         printf("%s\n",strerror(errno));
//     }
//     else
//     {
//         //使用空间
//         for(int i = 0 ;i<n;i++)
//         {
//             *(a+i) = i+1;
//         }
//     }
//     for(int i = 0;i<n;i++)
//     {
//         printf("%d ",*(a+i));
//     }
//     printf("\n");
//     //释放空间
//     free(a);
//     //释放完空间将野指针指向NULL
//     a = NULL;
// }
//calloc 是以数组的形式开辟空间并将内容初始化为0
//malloc 不会将内容初始化，效率更高
// int main()
// {
//     int n = 0;
//     scanf("%d",&n);
//     int* p = (int*)calloc(n,sizeof(int));
//     if(p == NULL)
//     {
//         printf("%s\n",strerror(errno));
//     }
//     else
//     {
//         for(int i = 0;i<n;i++)
//         {
//             printf("%d ",*(p+i));
//             *(p+i) = i+1;
//         }
//         printf("\n");
//         for(int i = 0;i<n;i++)
//         {
//             printf("%d ",*(p+i));
//         }
//         printf("\n");
//     }
//     free(p);
//     p = NULL;
//     return 0;
// }

//realloc 调整动态开辟内存空间的大小 如果原先申请的内存后面的空间够用就会返回原先申请的地址 如果后面的内存空间不够大 就会释放当前空间 并重新开辟一块足够大的空间 并将原有的数据拷贝到新的空间中 返回新开辟空间的地址
//realloc 注意事项
/* 1.如果p指向的空间之后有足够的内存空间可以追加，则直接追加，后返回p
   2.如果p指向的空间之后内有足够的内存空间可以追加，则realloc函数会重新找一个新的内存区域
   开辟一块满足需求的空间，并且把原来的内存中的数据拷贝过来，释放旧的内存空间
   最后返回新开辟的内存空间地址
   3.
*/
// int main()
// {
//     int *p = (int *)malloc(20);
//     int i = 0;
//     if(p == NULL)
//     {
//         printf("%s\n",strerror(errno));
//     }
//     else
//     {
//         for(i = 0;i < 5;i++)
//         {
//             *(p+i) = i+1;
//         }
//     }
//     //这里开辟的20个字节已经不够使用了需要再申请一块内存空间 总空间的大小为40个字节（4*10）
//     int *p1 = (int *)realloc(p,40);
//     if(p1 == NULL)
//     {
//         printf("%s\n",strerror(errno));
//     }
//     else
//     {
//         p = p1;
//         for(;i<10;i++)
//         {
//             *(p+i) = i+1;
//         }
//         for(int i = 0;i<10;i++)
//         {
//             printf("%d ",*(p+i));
//         }
//         printf("\n");
//     }
//     free(p);
//     p = NULL;
//     p1 = NULL;
//     return 0;
// }