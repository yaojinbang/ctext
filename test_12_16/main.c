#include "head.h"

// int main()
// {
//     char a[3][30] = {0};
//     char (*b)[30] = a;
//     for(int i = 0; i<3; i++)
//     {
//         gets((char*)(b+i));
//     }
//     for(int i = 0; i<3; i++)
//     {
//         printf("%s\n",*(b+i));
//     }
    
//     // gets((char*)b);
//     // printf("%s", *b);
// }
// int main()
// {
//     long a = 0x12345678;
//     char* left = (char*)&a;
//     char* right = left+3;
//     while(left < right)
//     {
//         char tmp = *left;
//         *left = *right;
//         *right = tmp;
//         left++;
//         right--;
//     }
//     printf("%lX",a);

// }

// union Un
// {
//     long a;
//     char b[4];
// };
// int main()
// {
//     union Un u = {0};
//     u.a = 0x12345678;
//     char* left = &u.b[3];
//     char* right = &u.b[0];
//     while(left < right)
//     {
//         char tmp = *left;
//         *left = *right;
//         *right = tmp;
//         left++;
//         right--;
//     }
//     for(int i = 0; i<4; i++)
//     {
//         printf("%X\n", u.b[i]);
//     }
//     printf("%lX",u.a);
//     return 0;
// }