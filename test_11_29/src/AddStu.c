#include "head.h"
void AddStu(Students *Stu,int n)
{
    for(int i = 0; i<n; i++)
    {
        if(Stu[i].id == 0)
        {
            printf("����ѧ��:");
            scanf("%d",&Stu[i].id);
            printf("��������:");
            scanf("%s",&Stu[i].name);
            printf("�����Ա�:");
            scanf("%d",&Stu[i].sex);
            printf("��������:");
            scanf("%d",&Stu[i].age);
            printf("��ѧ�ɼ�:");
            scanf("%d",&Stu[i].math);
            printf("���ĳɼ�:");
            scanf("%d",&Stu[i].chinese);
            printf("Ӣ��ɼ�:");
            scanf("%d",&Stu[i].english);
            printf("��ӳɹ���\n");
            break;
        }
    }
}