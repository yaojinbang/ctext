#include "head.h"

void ReStu(Students* Stu,int n)
{
    int re = 0;
    int i = 0;
    printf("������Ҫ�޸ĵ�ѧ����Ϣ��Ӧѧ��:");
    scanf("%d",&re);
    for(i = 0; i<n; i++)
    {
        if(Stu[i].id == re)
        {
            printf("��������:");
            scanf("%s",&Stu[i].name);
            printf("�����Ա�:");
            scanf("%d",&Stu[i].sex);
            printf("��������");
            scanf("%d",&Stu[i].age);
            printf("��ѧ�ɼ�:");
            scanf("%d",&Stu[i].math);
            printf("���ĳɼ�:");
            scanf("%d",&Stu[i].chinese);
            printf("Ӣ��ɼ�:");
            scanf("%d",&Stu[i].english);
            printf("�޸ĳɹ���\n");
            break;
        }
    }
    
}