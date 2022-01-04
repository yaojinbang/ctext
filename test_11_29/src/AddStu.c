#include "head.h"
void AddStu(Students *Stu,int n)
{
    for(int i = 0; i<n; i++)
    {
        if(Stu[i].id == 0)
        {
            printf("输入学号:");
            scanf("%d",&Stu[i].id);
            printf("输入姓名:");
            scanf("%s",&Stu[i].name);
            printf("输入性别:");
            scanf("%d",&Stu[i].sex);
            printf("输入年龄:");
            scanf("%d",&Stu[i].age);
            printf("数学成绩:");
            scanf("%d",&Stu[i].math);
            printf("语文成绩:");
            scanf("%d",&Stu[i].chinese);
            printf("英语成绩:");
            scanf("%d",&Stu[i].english);
            printf("添加成功！\n");
            break;
        }
    }
}