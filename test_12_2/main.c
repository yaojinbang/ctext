#include "head.h"
// int Add(int x,int y)
// {
//     return x+y;
// }
// int Sub(int x,int y)
// {

//     return x-y;
// }
// int Mul(int x,int y)
// {
    
//     return x*y;
// }
// int Div(int x,int y)
// {
//     return x/y;
// }
// int main()
// {
//     int (*padd)(int, int) = add;
//     printf("%d",padd(2,3));
//     printf("%d",(*padd)(2,3));
//     //����������д��ʽ���ǿ��Եģ������'*'�ǲ������õģ�
//     //��һ��д����Ϊ������������ǵ�ַ������ͨ����ֱַ���ҵ���
//     //�ڶ���д������ͨ��*�Ž������ҵ�������ַ
//     return 0;
// }


// int main()
// {
//     int* arr[5] = {NULL};
//     int (*arr[4])(int,int) = {add,sub,mul,div};

//     return 0;
// }

// char* my_strcpy(char* dest, const char* src);
// int main()
// {
//     //����ָ��
//     char* (*pf)(char*, const char*) = my_strcpy;
//     //����ָ������
//     char* (*pfArr[4])(char*, const char*) = {my_strcpy};
//     return 0;
// }
// void menu()
// {
//     printf("*******************************\n");
//     printf("**   1.add            2.sub  **\n");
//     printf("**   3.mul            4.div  **\n");
//     printf("**           0.exit          **\n");
//     printf("*******************************\n");

// }
// int main()
// {
//      int input = 0;
//      int x = 0;
//      int y = 0;
//      int (*psarr[5]) (int,int) = {0,Add,Sub,Mul,Div};
//     do
//     {     
//         menu();
//         printf("��ѡ��:>");
//         scanf("%d",&input);

//         if(input == 0)
//         {
//             printf("�˳�\n");
//         }
//         else if(input > 4)
//         {
//             printf("�����������������\n");
//         }
//         else
//         {
//             printf("����������������:");
//             scanf("%d%d",&x,&y);
//             printf("%d\n",(*psarr[input])(x,y));
//         }
        

//     }while(input);
//     return 0;
// }
// void calc(int (*pf)(int,int))//�ص�������ͨ������һ������ʵ�ֵ���������ͬ���ܵĺ��������ڼ���һ��������

// {
//     int x = 0;
//     int y = 0;
//     printf("����������������:>");
//     scanf("%d%d",&x,&y);
//     printf("%d\n",(*pf)(x,y));
// }
// int main()
// {
//      int input = 0;  
//     do
//     {     
//         menu();
//         printf("��ѡ��:>");
//         scanf("%d",&input);
//         switch(input)
//         {
//             case 0:
//                 printf("�˳�\n");
//                 break;
//             case 1:
//                 calc(Add);
//                 break;
//             case 2:
//                 calc(Sub);
//                 break;
//             case 3:
//                 calc(Mul);
//                 break;
//             case 4:
//                 calc(Div);
//                 break;
//             default:
//                 printf("�����������������\n");
//                 break;
//         }
//     }while(input);
//     return 0;
// }
// int main()
// {
//     int arr[10] = {0};
//     //����ָ��
//     int (*p)[10] = &arr;
//     //����ָ��
//     int (*pf)(int, int);
//     //����ָ������
//     int (*pfArr[4])(int, int);
//     //����ָ�������ָ��
//     int (*(*ppfArr)[4])(int, int) = &pfArr;
//     //ppfArr ��һ������ָ�룬ָ��ָ���������4��Ԫ��
//     //ָ��������ÿһ��Ԫ�ص�������һ������ָ�� int(*)(int, int)
//     return 0;

// }
// void print(char *str)
// {
//     printf("hehe:%s\n", str);
// }
// void test(void (*pf)(char *))
// {
//     printf("test\n");
//     char* str = "hello world"; 
//     (*pf)(str);
// }
// void bubble_sort(int* arr,int sz)
// {
//     for(int i = 0; i<sz-1; i++)
//     {
//         int tmp = 0;
//         for(int j = 0; j<sz-1-i; j++)
//         {
//             if(arr[j]>arr[j+1])
//             {    
//                 tmp = arr[j];
//                 arr[j] = arr[j+1];
//                 arr[j+1] = tmp;
//                 tmp = 0;
//             }
//         }
//     }
// }
// void bubble_sort_f(float* arr,int sz)
// {
//     for(int i = 0; i<sz-1; i++)
//     {
//         float tmp = 0;
//         for(int j = 0; j<sz-1-i; j++)
//         {
//             if(arr[j]>arr[j+1])
//             {    
//                 tmp = arr[j];
//                 arr[j] = arr[j+1];
//                 arr[j+1] = tmp;
//                 tmp = 0;
//             }
//         }
//     }
// }
// void dis_arr(int* arr, int sz)
// {
//     for(int i = 0; i<sz; i++)
//     {
//         printf("%d ",arr[i]);
//     }
//     printf("\n");
// }
// void dis_f(float* arr,int sz)
// {
//     for(int i = 0; i<sz; i++)
//     {
//         printf("%f ",arr[i]);
//     }
//     printf("\n");
// }
// int main()
// {
//     // test(print);
//     //ð��������
//     //ð��������ֻ��������������
//     int arr[] = {1,3,5,7,9,2,4,6,8,0};
//     int sz = sizeof(arr)/sizeof(arr[0]);
//     dis_arr(arr,sz);
//     bubble_sort(arr,sz);
//     dis_arr(arr,sz);
    
//     float f[] = {9.0,8.0,7.0,6.0,5.0,4.0,3.0,2.0,1.0,0.0};
//     int f_sz = sizeof(f)/sizeof(f[0]);
//     dis_f(f,sz);
//     bubble_sort_f(f,f_sz);
//     dis_f(f,sz);
//     //qsort ���������������͵����� 
//     return 0;
// }
// int Add(int x, int y)
// {
//     return x+y;
// }
// int main()
// {
//     //ָ������
//     int* arr[10];
//     //����ָ��
//     int* (*parr)[10] = &arr;
//     //����ָ��
//     int (*padd)(int, int) = Add;
//     int sum = (*padd)(1,2);
//     printf("%d\n",sum);
//     sum = padd(2,3);
//     printf("%d\n",sum);
//     sum = Add(3,4);
//     printf("%d\n",sum);
//     //����ָ�������
//     int (*pfArr[4]) (int, int) = {Add};
//     sum = (*pfArr[0])(4,5);
//     printf("%d\n",sum);
//     //ָ����ָ�������ָ��
//     int (*(*ppfArr)[4])(int, int) = &pfArr;
//     return 0;
// }
// typedef struct students
// {
//     int id;
//     char name[20];
// }students;
// int compare(const void* a,const void* b)//void* ���Խ����������͵ĵ�ַ void* ���͵�ָ�벻�ܽ��н����õĲ�������Ϊ����û�����͵� ��֪������Ĵ�С void*���͵�ָ�벻�ܽ��мӼ������Ĳ���
// {
//     return (*(int*)a-*(int*)b);
// }

// int main()
// {
//     int arr[] ={7,4,1,0,2,5,8,9,6,3};
//     int sz = sizeof(arr)/sizeof(arr[0]);
//     qsort(arr,sz,sizeof(int),compare);
//     for(int i = 0;i<sz;i++)
//     {
//         printf("%d ",arr[i]);
//     }
//     printf("\n%d",sizeof(long));
//     return 0;
// }
// int cmp_int(const void* e1,const void* e2)
// {
//     return *(int *)e1-*(int *)e2;
// }
// void test_int()
// {
//     int arr[] = {7,4,1,0,2,5,8,9,6,3};
//     int sz = sizeof(arr)/sizeof(arr[0]);
//     qsort(arr,sz,sizeof(int),cmp_int);
//     for(int i = 0;i<sz; i++)
//     {
//         printf("%d ",arr[i]);
//     }
//     printf("\n");
// }
// int cmp_float(const void* e1,const void* e2)
// {
//     return  (int)(*(float*)e1-*(float*)e2);
// }
// void test_float()
// {
//     float f[] = {1.0,4.0,7.0,2.0,0.0,5.0,8.0,3.0,6.0,9.0};
//     int sz = sizeof(f)/sizeof(f[0]);
//     qsort(f,sz,sizeof(float),cmp_float);
//     for(int i = 0;i<sz; i++)
//     {
//         printf("%f ",f[i]);
//     }
//     printf("\n");

// }
// int cmp_char(const void* e1,const void* e2)
// {
//     return *(char*)e1-*(char*)e2;
// }
// void test_char()
// {
//     char c[] = {'q','a','z','w','s','x','e','d','c'};
//     int sz = sizeof(c)/sizeof(c[0]);
//     qsort(c,sz,sizeof(char),cmp_char);
//     for(int i = 0; i<sz; i++)
//     {
//         printf("%c ",c[i]);
//     }
//     printf("\n");
// }
// int cmp_str(const void* e1,const void* e2)
// {
//     return strcmp(*(char**)e1,*(char**)e2);
// }
// void test_str()
// {
//     char* str[3] = {"hello","world","gitee"};
//     printf("%d\n",sizeof(str)/sizeof(str[0]));
//     qsort(str,3,sizeof(char*),cmp_str);
//     for(int i = 0; i<3; i++)
//     {
//         printf("%s\n",str[i]);
//     }
// }
// typedef struct students
// {
//     char name[20];
//     int age;

// }students;
// int cmp_age(const void* e1,const void* e2)
// {
//     return ((students*)e1)->age-((students*)e2)->age;   
// }
// int cmp_name(const void* e1,const void* e2)
// {
//     return strcmp(((students*)e1)->name,((students*)e2)->name);
// }
// void test_struct()
// {
//     students stu[3] = {{"zhangsan",20},{"lisi",10},{"wangwu",30}};
//     int sz = sizeof(stu)/sizeof(stu[0]);
//     qsort(stu,sz,sizeof(stu[0]),cmp_age);
//     for(int i = 0;i<sz;i++)
//     {
//         printf("%d ",stu[i].age);
//         printf("%s ",stu[i].name);
//     }
//     qsort(stu,sz,sizeof(stu[0]),cmp_name);
//     //��һ������Ϊ�������������Ԫ�صĵ�ַ
//     //�ڶ�������Ϊ�������Ԫ�ظ���
//     //����������Ϊ�����������ÿ��Ԫ�صĴ�С����λΪ�ֽ�
//     //���ĸ������Ǻ���ָ��Ƚ�����Ԫ�ص����ú����ĵ�ַ���������ʹ�����Լ�ʵ�ֺ���
//     //����ָ�����������Ϊ���Ƚϵ�����Ԫ�صĵ�ַ
//     for(int i = 0;i<sz;i++)
//     {
//         printf("%d ",stu[i].age);
//         printf("%s ",stu[i].name);
//     }
// }
// int main()
// {
//     test_int();
//     test_float();
//     test_char();
//     test_str();
//     test_struct();
// }
// void swap(char* buf1,char* buf2,int width)
// {
//     for(int i = 0;i<width;i++)
//     {
//         int tmp = 0;
//         tmp = *buf1;
//         *buf1 = *buf2;
//         *buf2 = tmp;
//         buf1++;
//         buf2++;
//     }
// }
// void bubble_sort(void* base,int sz,int width,int (*cmp)(const void*,const void*))
// {
//     for(int i = 0 ;i<sz-1;i++)
//     {
//         for(int j = 0;j<sz-1-i;j++)
//         {
//             if((*cmp)((char*)base+j*width,(char*)base+(j+1)*width)>0)
//             {
//                 swap((char*)base+j*width,(char*)base+(j+1)*width,width);
//             }
//         }
//     }

// }
// void my_test_struct()
// {
//     students stu[3] = {{"wangwu",22},{"lisi",42},{"zhangsan",12}};
//     int sz = sizeof(stu)/sizeof(stu[0]);
//     bubble_sort(stu,sz,sizeof(students),cmp_name);
//     for(int i = 0;i<sz;i++)
//     {
//         printf("%d ",stu[i].age);
//         printf("%s\n",stu[i].name);
//     }
// }
// void my_test_int()
// {
//     int arr[] = {7,4,1,0,2,5,8,9,6,3};
//     int sz = sizeof(arr)/sizeof(arr[0]);
//     bubble_sort(arr,sz,sizeof(arr[0]),cmp_int);
//     for(int i = 0;i<sz;i++)
//     {
//         printf("%d ",arr[i]);
//     }
//     printf("\n");
// }

// int main()
// {
//     my_test_int();
//     my_test_struct();
//     return 0;
// }

