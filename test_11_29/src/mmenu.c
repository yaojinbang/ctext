#include "head.h"
void mmenu(Students* Stu,int n)
{
    int cnt = 0;
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
    printf("*              1)添加学生信息                                     *\n");
    printf("*              2)删除学生信息(根据学号)                           *\n");
    printf("*              3)修改学生信息(根据学号)                           *\n");
    printf("*              4)查询学生信息                                     *\n");
    printf("*              5)显示所有学生信息以及统计信息                     *\n");
    printf("*              0)退出软件                                         *\n");
    printf("*                                                                 *\n");
    printf("*******************************************************************\n");
}