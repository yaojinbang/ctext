#include "head.h"
void FindStu(Students *Stu,int n,int ret)
{
    int input = 0;
    int cnt = 0;
    if(ret == 1)
    {
        printf("������Ҫ��ѯ��ѧ����Ϣ��ѧ��");
        scanf("%d",&input);
        for(int i = 0; i<n; i++)
        {
            if(input == Stu[i].id)
            {
                cnt++;
                int sum = Stu[i].math+Stu[i].chinese+Stu[i].english;
                printf("ѧ��:%d  ����:%s  �Ա�:%d  ����:%d  ��ѧ�ɼ�:%d  ���ĳɼ�:%d  Ӣ��ɼ�:%d  �ܳɼ�:%d\n",Stu[i].id,Stu[i].name,Stu[i].sex,Stu[i].age,Stu[i].math,Stu[i].chinese,Stu[i].english,sum);

            }
        }
        printf("��������%d��ѧ������\n",cnt);
    }
    else if(ret == 2)
    {
        char name = 0;
        scanf("%s",&name);
        for(int i = 0; i<n; i++)
        {
            if(strcmp(&name,Stu[i].name) == 0)
            {
                cnt++;
                int sum = Stu[i].math+Stu[i].chinese+Stu[i].english;
                printf("ѧ��:%d  ����:%s  �Ա�:%d  ����:%d  ��ѧ�ɼ�:%d  ���ĳɼ�:%d  Ӣ��ɼ�:%d  �ܳɼ�:%d\n",Stu[i].id,Stu[i].name,Stu[i].sex,Stu[i].age,Stu[i].math,Stu[i].chinese,Stu[i].english,sum);
            }
        }
        printf("��������%d��ѧ������\n",cnt);
        
    }
    else if(ret == 3)
    {
        int max = 0;
        int min = 0;
        printf("������Ҫ��ѯ����ѧ�ɼ���Χ:");
        scanf("%d %d",&min,&max);
        for(int i = 0;i<n;i++)
        {
            if(Stu[i].math >= min && Stu[i].math <= max)
            {
                cnt++;
                int sum = Stu[i].math+Stu[i].chinese+Stu[i].english;
                printf("ѧ��:%d  ����:%s  �Ա�:%d  ����:%d  ��ѧ�ɼ�:%d  ���ĳɼ�:%d  Ӣ��ɼ�:%d  �ܳɼ�:%d\n",Stu[i].id,Stu[i].name,Stu[i].sex,Stu[i].age,Stu[i].math,Stu[i].chinese,Stu[i].english,sum);

            }
        }
        printf("��������%d��ѧ������\n",cnt);
    }
    else if(ret == 4)
    {
        int max = 0;
        int min = 0;
        printf("������Ҫ��ѯ�����ĳɼ���Χ:");
        scanf("%d %d",&min,&max);
        for(int i = 0;i<n;i++)
        {
            if(Stu[i].chinese >= min && Stu[i].chinese <= max)
            {
                cnt++;
                int sum = Stu[i].math+Stu[i].chinese+Stu[i].english;
                printf("ѧ��:%d  ����:%s  �Ա�:%d  ����:%d  ��ѧ�ɼ�:%d  ���ĳɼ�:%d  Ӣ��ɼ�:%d  �ܳɼ�:%d\n",Stu[i].id,Stu[i].name,Stu[i].sex,Stu[i].age,Stu[i].math,Stu[i].chinese,Stu[i].english,sum);

            }
        }
        printf("��������%d��ѧ������\n",cnt);        
    }
    else if(ret == 5)
    {
        int max = 0;
        int min = 0;
        printf("������Ҫ��ѯ��Ӣ��ɼ���Χ:");
        scanf("%d %d",&min,&max);
        for(int i = 0;i<n;i++)
        {
            if(Stu[i].english >= min && Stu[i].english <= max)
            {
                cnt++;
                int sum = Stu[i].math+Stu[i].chinese+Stu[i].english;
                printf("ѧ��:%d  ����:%s  �Ա�:%d  ����:%d  ��ѧ�ɼ�:%d  ���ĳɼ�:%d  Ӣ��ɼ�:%d  �ܳɼ�:%d\n",Stu[i].id,Stu[i].name,Stu[i].sex,Stu[i].age,Stu[i].math,Stu[i].chinese,Stu[i].english,sum);

            }
        }
        printf("��������%d��ѧ��������Ϣ\n",cnt);
    }
}