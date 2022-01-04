#include "head.h"

void ReStu(Students* Stu,int n)
{
    int re = 0;
    int i = 0;
    printf("请输入要修改的学生信息对应学号:");
    scanf("%d",&re);
    for(i = 0; i<n; i++)
    {
        if(Stu[i].id == re)
        {
            printf("输入姓名:");
            scanf("%s",&Stu[i].name);
            printf("输入性别:");
            scanf("%d",&Stu[i].sex);
            printf("输入年龄");
            scanf("%d",&Stu[i].age);
            printf("数学成绩:");
            scanf("%d",&Stu[i].math);
            printf("语文成绩:");
            scanf("%d",&Stu[i].chinese);
            printf("英语成绩:");
            scanf("%d",&Stu[i].english);
            printf("修改成功！\n");
            break;
        }
    }
    
}