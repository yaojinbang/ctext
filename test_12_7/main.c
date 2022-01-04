#include "head.h"
// void* my_memcpy(void* dest,const void* src,size_t count)
// {
//     assert(dest&&src);
//     void* ret = dest;
//     char* p1 = (char*)dest;
//     char* p2 = (char*)src;
//     size_t tmp = count;
//     if((p1>p2)&&(p1<p2+tmp-1))
//     {
//         while(tmp)
//         {
//             *(p1+tmp-1) = *(p2+tmp-1);
//             tmp--;
//         }
//     }
//     else
//     {
//         while(tmp)
//         {
//             *(p1) = *(p2);
//             p1++;
//             p2++;
//             tmp--;
//         }
//     }
//     return (ret);
// }

// int main()
// {
//     int arr1[] = {1,2,3,4,5,6,7,8,9,10};
//     int arr2[10] = {0};
//     // my_memcpy(arr2,arr1,sizeof(arr1));
//     my_memcpy(arr1+2,arr1,5*4);
//     for(int i = 0;i<10;i++)
//     {
//         printf("%d ",arr1[i]);
//     }
//     printf("\n");
//     //my_memcpy 不能胜任内存的重叠拷贝
//     //memmove 可以胜任内存的重叠拷贝
//     //C语言标准说 memcpy函数可以拷贝不重叠的就可以了
//     //当下发现 VSCODE 环境下的memcpy可以处理重叠拷贝
//     return 0;
// }
int my_memcmp(const void* buf1,const void* buf2,size_t count)
{
    assert(buf1&&buf2);
    char* p1 = (char*)buf1;
    char* p2 = (char*)buf2;
    while(count)
    {
        if(*p1 == *p2)
        {
            p1++;
            p2++;
        }
        else
        {
            return (*p1-*p2);
        }
    }
    return 0;

}
void* my_memset(void* buf1,int val,size_t count)
{
    void* ret = buf1;
    char* p = (char*)buf1;
    while(count--)
    {
        *p = val;
        p++;
    }
    return (ret);
}
int main()
{
    // int arr1[] = {1,2,3,4,5};
    // int arr2[] = {1,2,6,4,3};
    // int ret = my_memcmp(arr1,arr2,2*sizeof(int));
    // printf("%d\n",ret);
    // char arr3[10] = "0";
    // my_memset(arr3,'#',10);
    // printf("%s\n",arr3);
    int arr4[10] = {0};
    memset(arr4,1,10*sizeof(int));//需要特别注意的一点是memset函数中最后一个参数的单位是字节
    for(int i = 0;i<10;i++)
    {
        printf("%d ",arr4[i]);
    }
    printf("\n");
    return 0;
}