#include "head.h"
int menu(Students *Stu,int n)
{
    int cnt = 0;
    int input = 0;
    for(int i = 0; i<n;i++)
    {
        if(Stu[i].id != 0)
        {
            cnt++;
        }
    }
    printf("**************��ӭʹ��ѧ����Ϣ����ϵͳ(��ǰ����%d��ѧ��)***********\n",cnt);
    printf("*              ---------------------------------                  *\n");
    printf("*              |   Powered By c.biancheng,net  |                  *\n");
    printf("*              ---------------------------------                  *\n");
    printf("*                                                                 *\n");
    printf("*              1)����ѧ�Ų�ѯ                                     *\n");
    printf("*              2)����������ѯ                                     *\n");
    printf("*              3)������ѧ�ɼ���ѯ                                 *\n");
    printf("*              4)�������ĳɼ���ѯ                                 *\n");
    printf("*              5)����Ӣ��ɼ���ѯ                                 *\n");
    printf("*              0)�˳����                                         *\n");
    printf("*                                                                 *\n");
    printf("*******************************************************************\n");
    scanf("%d",&input);
    return input;
}