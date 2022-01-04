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
    printf("**************欢迎使用学生信息管理系统(当前共有%d名学生)***********\n",cnt);
    printf("*              ---------------------------------                  *\n");
    printf("*              |   Powered By c.biancheng,net  |                  *\n");
    printf("*              ---------------------------------                  *\n");
    printf("*                                                                 *\n");
    printf("*              1)根据学号查询                                     *\n");
    printf("*              2)根据姓名查询                                     *\n");
    printf("*              3)根据数学成绩查询                                 *\n");
    printf("*              4)根据语文成绩查询                                 *\n");
    printf("*              5)根据英语成绩查询                                 *\n");
    printf("*              0)退出软件                                         *\n");
    printf("*                                                                 *\n");
    printf("*******************************************************************\n");
    scanf("%d",&input);
    return input;
}