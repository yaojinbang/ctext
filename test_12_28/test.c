#include "test.h"


// int main()
// {
//     //���������Ǵ���ü��Ĺ���
// #ifdef C
//     printf("Hello C!\n");
// #else
//     printf("Hello Other\n");
// #endif
//     return 0;
// }
/*
ͨ���ü����룬����ʵ��ĳ��Ŀ��(�汾ά��(free���շ�)�����ܲü�����ƽ̨��)
*/
// #define C 0
// int main()
// {
// #if (C == 0)
//     printf("Hello C\n");
// #else
//     printf("Hello Other\n");
// #endif
//     return 0;
// }

// int main()
// {
// #if !defined(DEBUG)
//     printf("Hello Debug\n");
// #else
//     printf("Hello Other\n");
// #endif
//     return 0;
// }

// #define C
// #define CPP
// int main()
// {
// #if (defined(C) && defined(CPP))
//     printf("Hello World\n");
// #else
//     printf("Hello Other\n");
// #endif
//     return 0;
// }

/*
Ԥ�������
#error  �Զ���ı�����Ϣ ��������ǲ�ͨ����
#line 60 "hehe.h"  �ı�__FILE__ __LINE__ ��Ӧ����Ϣ
#pragma massage("M�Ѿ�������") �����������жԴ������ض��ķ���(���������궨��) �����Ƿ���ڽ��б���ʱ����Ϣ����
���������ͨ����

*/

// int main()
// {
// #ifndef DEBUG
// #error "��ı�����������!"
// #endif
//     return 0;
// }

// int main()
// {
//     printf("%s,  %d\n", __FILE__, __LINE__);
// #line 60 "hehe.h" 
//     printf("%s,  %d\n", __FILE__, __LINE__);
//     printf("%s,  %d\n", __FILE__, __LINE__);

//     return 0;
// }

// #define M 10

// int main()
// {
// #ifdef M
// #pragma massage("M�Ѿ�������!")
// #endif
//     return 0;
// }

// #define PRINT(x, n) do{printf("The value of "#x" is %d\n", n);}while(0)
// #define PRINTF(x, y) do{printf("%d\n", x##y);}while(0)
// int main()
// {
//     int Class84 = 100;
//     int Class = 10;
//     PRINTF(Class, 84);
//     PRINT(a, 5);
//     return 0;
// }

/*
�����ַ��������Զ���������
#s ����������s��Ӧ���ı����ݣ�ת�����ַ���
a##b ˫##�������������������ţ� ����һ���µķ���
���ź��ַ������������ �����ǲ���˫���ŵ� ���ַ����Ǵ�˫���ŵ�
*/

// int main()
// {
//     printf("hello bit ""hello world\n");
//     //���ֱ�ʾ����Ҳ����ȷ��
//     const char *str = "hello bit ""hello world\n";
//     printf(str);
//     return 0;
// }

// #define ITOC(x) #x

// int main()
// {
//     const char *str = ITOC(12345);
//     printf(str);
//     return 0;
// }

// #define TOSTRING(x) #x
// int main()
// {
//     char str[10] = {0};
//     strcpy(str,TOSTRING(12345));
//     char *p = str;
//     printf(p);
//     return 0;
// }

// #define XNAME(n) student##n

// int main()
// {
//     XNAME(yao);
//     return 0;
// }

// #define BULID(base,n) base##e##n
// int main()
// {
//     printf("%.lf\n", BULID(3.14,2));
//     return 0;
// }

// #define CONT(n) student##n
// int main()
// {
//     int CONT(1) = 123;
//     printf("%d\n", CONT(1));
//     return 0;
// }