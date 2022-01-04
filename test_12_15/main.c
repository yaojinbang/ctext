#include "head.h"

// int main()
// {
//     int weight = 0;
//     int height = 0;
//     scanf("%d %d", &weight, &height);
//     double bmi = 0;
//     bmi = weight / ((height / 100.0) * (height / 100.0));
//     printf("%.2f", bmi);
//     return 0;
// }

// int main()
// {
//     double a = 0;
//     double b = 0;
//     double c = 0;
//     double zhouchang = 0;
//     double mainji = 0;
//     double p = 0;
//     //输入
//     scanf("%lf %lf %lf", &a, &b, &c);
//     //计算
//     zhouchang = a + b + c;
//     p = zhouchang / 2;
//     mainji = sqrt(p * (p - a) * (p - b) * (p - c));//用海伦公式计算三角形面积
//     printf("%.2lf %.2lf", zhouchang, mainji);
//     //输出
//     return 0;
// }

// int main()
// {
//     double r = 0;
//     double v = 0;
//     double pi = 3.1415926;
//     scanf("%lf", &r);
//     v = (4.0 / 3) * pi * pow(r, 3);
//     printf("%.3lf", v);
//     return 0;
// }

// int main()
// {
//     // int sore1 = 0;
//     // int sore2 = 0;
//     // int sore3 = 0;
//     // scanf("%d %d %d", &sore1, &sore2, &sore3);
//     // printf("%d %d %d", sore1, sore2, sore3);
//     int score[3] = {0};
//     for(int i = 0; i<3; i++)
//     {
//         scanf("%d", &score[i]);
//         printf("score%d = %d\n",
//         i+1, score[i]);
//     }

//     return 0;
// }

// int main()
// {
//     int n = 0;
//     for (n = 10000; n < 100000; n++)
//     {
//         int i = 1;
//         int cnt = 0;
//         int tmp = n;
//         int sum = 0;
//         while (tmp > 0)
//         {
//             tmp = tmp / 10;
//             cnt++;
//         }
//         while (--cnt)
//         {
//             sum = sum + (n / (10 * i)) * (n % (10 * i));
//             i = i * 10;
//         }
//         if (sum == n)
//         {
//             printf("%d\n", sum);
//         }
//     }
// }

// int main()
// {
//     int i = 0;
//     for(i = 10000; i<100000; i++)
//     {
//         int j = 0;
//         int sum = 0;
//         for(j = 1; j<=10000; j = j * 10)
//         {
//             sum = sum + (i/j)*(i%j);
//         }
//         if(sum == i)
//         {
//             printf("%d ", sum);
//         }
//     }
//     return 0;
// }

// int main()
// {
//     int i = 0;
//     int j = 0;
//     scanf("%d %d", &i, &j);
//     int sum = i+j;
//     if(sum > 100)
//     {
//         sum = sum%100;

//     }
//     if(sum/10 == 0)
//     {
//         printf("%d", sum%10);
//     }
//     else
//     {
//         printf("%d", sum);
//     }

//     return 0;
// }

// int main()
// {
//     int i = 0;
//     int j = 0;
//     scanf("%d %d", &i, &j);
//     int sum = (i % 100 + j % 100) % 100;
//     printf("%d", sum);
//     return 0;
// }

// int main()
// {
//     float a = 0;
//     scanf("%f", &a);
//     int b = (int)a;
//     b = b%10;
//     printf("%d", b);
//     return 0;
// }

// int main()
// {
//     double year = 3.156*pow(10,7);
//     int age = 0;
//     scanf("%d", &age);
//     printf("%.0lf",age*year);
//     return 0;
// }

// int main()
// {
//     int age = 0;
//     scanf("%d", &age);
//     long long second = age*3.156e7;
//     printf("%lld", second);
//     return 0;
// }

// int main()
// {
//     int seconds = 0;
//     int h = 0;
//     int m = 0;
//     int s = 0;
//     scanf("%d", &seconds);
//     while(seconds >= 3600)
//     {
//         seconds = seconds - 3600;
//         h++;
//     }
//     while(seconds >= 60)
//     {
//         seconds = seconds - 60;
//         m++;
//     }
//     s = seconds;
//     printf("%d %d %d", h, m, s);
//     return 0;
// }

// int main()
// {
//     int seconds = 0;
//     int h = 0;
//     int m = 0;
//     int s = 0;
//     scanf("%d", &seconds);
//     h = seconds/60/60;
//     m = seconds/60%60;
//     s = seconds%60;
//     printf("%d %d %d", h, m, s);
//     return 0;
// }

// int main()
// {
//     // double score1 = 0;
//     // double score2 = 0;
//     // double score3 = 0;
//     double score[3] = {0};
//     int sz = sizeof(score)/sizeof(score[0]);
//     double avg = 0;
//     double sum = 0;
//     for(int i = 0; i<sz; i++)
//     {
//         scanf("%lf", &score[i]);
//         sum = sum + score[i];
//     }
//     avg = sum/3.0;
//     printf("sum = %.2lf,avg = %.2lf", sum, avg);
//     return 0;
// }

// int main()
// {
//     int n = 0;
//     int h = 0;
//     int m = 0;
//     while (scanf("%d %d %d", &n, &h, &m) != EOF)
//     {
//         if (m % h)
//         {
//             printf("%d", n - m / h - 1);
//         }
//         else
//         {
//             printf("%d", n - m / h);
//         }
//     }
//     return 0;
// }

// int main()
// {
//     printf("I lost my cellphone!");
//     return 0; 
// }

// int main()
// {
//     int num = 0;
//     double sum = 0;
//     for(int i = 0; i<5; i++)
//     {
//         scanf("%d", &num);
//         sum = sum + num;
//     }
//     printf("%.1lf",sum/5);
//     return 0;
// }

// int main()
// {
//     int a = 0;
//     int b = 0;
//     scanf("%X %o", &a, &b);
//     printf("%d\n", a+b);
// }

// int main()
// {
//     double goods = 0;
//     int month = 0;
//     int date = 0;
//     int discount = 0;
//     scanf("%lf %d %d %d", &goods, &month, &date, &discount);
//     if(month == 11 && date == 11)
//     {
//         goods = goods * 0.7;
//         if(discount == 1)
//         {
//             goods = goods - 50;
//         }
//     }
//     else if(month == 12 && date == 12)
//     {
//         goods = goods * 0.8;
//         if(discount == 1)
//         {
//             goods = goods - 50;
//         }
//     }
//     if(goods < 0.0)
//     {
//         goods = 0.0;
//     }
//     printf("%.2lf", goods);
// }

// int main()
// {
//     double price = 0;
//     int month = 0;
//     int date = 0;
//     int flag = 0;
//     double cut = 0;
//     scanf("%lf %d %d %d", &price, &month, &date, &flag);
//     if(month == 11 && date == 11)
//     {
//         cut = 0.7;
//     }
//     else if(month == 12 && date == 12)
//     {
//         cut = 0.8;
//     }
//     double last = price * cut - flag * 50;
//     if(last < 0.0)
//     {
//         last = 0.0;
//     }
//     printf("%.2lf\n", last);

//     return 0;
// }

// int main()
// {
//     int arr[40] = {0};
//     int n = 0;
//     int i = 0;
//     int j = 0;
//     scanf("%d", &n);
//     for(i = 0; i<n; i++)
//     {
//         scanf("%d", &arr[i]);
//     }
//     for(i = 0; i<n-1; i++)
//     {
//         for(j = 0; j<n-1-i; j++)
//         {
//             if(arr[j] < arr[j+1])
//             {
//                 int tmp = arr[j];
//                 arr[j] = arr[j+1];
//                 arr[j+1] = tmp; 
//             }
//         }
//     }
//     for(int i = 0; i<5; i++)
//     {
//         printf("%d ", arr[i]);
//     }
//     printf("\n");
// }
// int cmp_int(const void* e1, const void* e2)
// {
//     return *((int*)e1)-*((int*)e2);
// }
// //用e1-e2是以升序的形式进行排序 用e2-e1就是以降序的形式进行排序
// int main()
// {
//     int n = 0;
//     int arr[40] = {0};
//     scanf("%d", &n);
//     for(int i = 0; i<n; i++)
//     {
//         scanf("%d", &arr[i]);
//     }
//     qsort(arr,n,sizeof(arr[0]),cmp_int);//6是要比较的元素个数 每个元素的大小 
//     for(int i = n-1; i>=n-5; i--)
//     {
//         printf("%d ",arr[i]);
//     }

//     return 0;
// }

