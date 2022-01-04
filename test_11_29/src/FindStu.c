#include "head.h"
void FindStu(Students *Stu,int n,int ret)
{
    int input = 0;
    int cnt = 0;
    if(ret == 1)
    {
        printf("输入想要查询的学生信息的学号");
        scanf("%d",&input);
        for(int i = 0; i<n; i++)
        {
            if(input == Stu[i].id)
            {
                cnt++;
                int sum = Stu[i].math+Stu[i].chinese+Stu[i].english;
                printf("学号:%d  姓名:%s  性别:%d  年龄:%d  数学成绩:%d  语文成绩:%d  英语成绩:%d  总成绩:%d\n",Stu[i].id,Stu[i].name,Stu[i].sex,Stu[i].age,Stu[i].math,Stu[i].chinese,Stu[i].english,sum);

            }
        }
        printf("检索出有%d个学生符合\n",cnt);
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
                printf("学号:%d  姓名:%s  性别:%d  年龄:%d  数学成绩:%d  语文成绩:%d  英语成绩:%d  总成绩:%d\n",Stu[i].id,Stu[i].name,Stu[i].sex,Stu[i].age,Stu[i].math,Stu[i].chinese,Stu[i].english,sum);
            }
        }
        printf("检索出有%d个学生符合\n",cnt);
        
    }
    else if(ret == 3)
    {
        int max = 0;
        int min = 0;
        printf("请输入要查询的数学成绩范围:");
        scanf("%d %d",&min,&max);
        for(int i = 0;i<n;i++)
        {
            if(Stu[i].math >= min && Stu[i].math <= max)
            {
                cnt++;
                int sum = Stu[i].math+Stu[i].chinese+Stu[i].english;
                printf("学号:%d  姓名:%s  性别:%d  年龄:%d  数学成绩:%d  语文成绩:%d  英语成绩:%d  总成绩:%d\n",Stu[i].id,Stu[i].name,Stu[i].sex,Stu[i].age,Stu[i].math,Stu[i].chinese,Stu[i].english,sum);

            }
        }
        printf("检索出有%d个学生符合\n",cnt);
    }
    else if(ret == 4)
    {
        int max = 0;
        int min = 0;
        printf("请输入要查询的语文成绩范围:");
        scanf("%d %d",&min,&max);
        for(int i = 0;i<n;i++)
        {
            if(Stu[i].chinese >= min && Stu[i].chinese <= max)
            {
                cnt++;
                int sum = Stu[i].math+Stu[i].chinese+Stu[i].english;
                printf("学号:%d  姓名:%s  性别:%d  年龄:%d  数学成绩:%d  语文成绩:%d  英语成绩:%d  总成绩:%d\n",Stu[i].id,Stu[i].name,Stu[i].sex,Stu[i].age,Stu[i].math,Stu[i].chinese,Stu[i].english,sum);

            }
        }
        printf("检索出有%d个学生符合\n",cnt);        
    }
    else if(ret == 5)
    {
        int max = 0;
        int min = 0;
        printf("请输入要查询的英语成绩范围:");
        scanf("%d %d",&min,&max);
        for(int i = 0;i<n;i++)
        {
            if(Stu[i].english >= min && Stu[i].english <= max)
            {
                cnt++;
                int sum = Stu[i].math+Stu[i].chinese+Stu[i].english;
                printf("学号:%d  姓名:%s  性别:%d  年龄:%d  数学成绩:%d  语文成绩:%d  英语成绩:%d  总成绩:%d\n",Stu[i].id,Stu[i].name,Stu[i].sex,Stu[i].age,Stu[i].math,Stu[i].chinese,Stu[i].english,sum);

            }
        }
        printf("检索出有%d个学生符合信息\n",cnt);
    }
}