#include "head.h"

// int main()
// {
//     int i = -20;
//     unsigned int j = 10;
//     printf("%d\n", i + j);
//     printf("%u\n", i + j);

//     return 0;
// }

// int main()
// {
//     unsigned int i = 0;
//     for(i = 9; (int)i>=0; i--)
//     {
//         printf("%d", i);
//         Sleep(1000);
//     }
//     return 0;
// }

// int main()
// {

//     unsigned int a = -10u;
//     printf("%d", a);
    
//     return 0;
// }

// int main()
// {
//     bool x = true;
//     x = false;
//     if(!x)
//     {
//         printf("yes!\n");
//     }
//     else
//     {
//         printf("no!\n");
//     }

//     return 0;
// }
//c89 �� c90 �ǲ�֧��bool���͵� ΢�����ṩһ�ײ������ͣ����Ƽ�����Ϊ����ֲ�Խϲ
//c99 ���Ѿ�֧��bool���͵� ����Ҫ����ͷ�ļ�<stdbool.h> 
//float���Ͳ���ֱ�ӽ��бȽ� ��Ϊ����ھ���ȱʧ ����ȱʧ������һ���Ǽ���Ҳ����������
//��ҪҪ���бȽ���Ҫ��Ҫ�Ƚϵ���������� �ó�����ֵ�ڸ����ı�׼��Χ֮�ھ� �϶�Ϊ�������
//DBL_EPSILON �����double�� ��С����
//FLT_EPSILON �����float�� ��С����


// int main()
// {
//     double a = 0.1;
//     printf("%.50f\n", a);
//     printf("%.50lf\n", a);

//     return 0;
// }

// int main()
// {
//     double a = 0.1;
//     double b = 1.0;
//     double c = 0.0;
//     printf("%.50f\n", b-0.9);
//     printf("%.50f\n", a);
//     //��ʱ������ֱ�ӱȽ��ǲ���ȵ�
//     if(a == b-0.9)
//     {
//         printf("yes\n");
//     }
//     if(fabs((b-0.9)-a) < DBL_EPSILON)
//     {
//         printf("���\n");
//     }
//     //�����һ������0���бȽ�
//     if(fabs(c) < DBL_EPSILON)
//     {
//         printf("���\n");
//     }

// }

// int main()
// {
//     double x = 0.000000000000000000000000001;
//     if(fabs(x) < DBL_EPSILON)
//     {
//         printf("you can see me x == 0.0\n");
//     }
//     else
//     {
//         printf("oops!\n");
//     }

//     return 0;
// }

/*
1.�������洢��ʱ�����о���ȱʧ��
2.�������ǲ��ܽ��� == �Ƚϵ�
3.if(fabs(x-y) < DBL_EPSILON){}
4.Ҫ��Ҫ<= ,�����ǲ�Ҫ ��ΪDBL_EPSILON�������𸡵��������仯����С��ֵ
  �����ֵ�������仯�� �Ǻ��������֮˵
*/

// int main()
// {
//     char buf[7] = "123456";
//     int arr[6] = {0};
//     for(int i = 0; i<6; i++)
//     {
//         arr[i] = buf[i] - '0';
//         printf("%d ", arr[i]);
//     }
//     return 0;
// }

// int main()
// {
//     char buf[7] = "123456";
//     int a = 0;
//     a = atoi(buf);
//     printf("%d", a);
//     return 0;
// }

// int main()
// {
//     int a = 0xffffffff;
//     int x = 3.14;
//     printf("%d\n", x);
//     printf("%d\n", a);
//     printf("%u\n", a);
//     return 0;
// }
// int fun(int x, int y)
// {
//     return (x+y);
// }
// int fun1(int x, int y)
// {
//   return (x-y);
// }

// int main()
// {
//   int (*p) (int,int) = fun;
//   int (*pp[2]) (int, int) = {fun,fun1};
//   //����ָ������  һ��������Դ����������ָ��  ����ָ���� һ��ָ������ַ��ָ��
//   int ret = p(5,6);
//   ret = (pp[0])(7,8);
//   printf("%d\n", ret);

//   return 0;
// }