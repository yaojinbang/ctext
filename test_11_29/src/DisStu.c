#include "head.h"
void DisStu(Students* Stu,int n)
{
    int tmp = 0;
    char name = 0;
    for(int i=0; i<n-1; i++)
    {
        for(int j = i+1; j<n; j++)
        {
            if(Stu[i].id > Stu[j].id)
            {
                tmp = Stu[i].id;
                Stu[i].id = Stu[j].id;
                Stu[j].id = tmp;
                tmp = 0;
                memcpy(&name,Stu[i].name,strlen(Stu[i].name));
                memcpy(Stu[i].name,Stu[j].name,strlen(Stu[j].name));
                memcpy(Stu[j].name,&name,strlen(&name));
                memset(&name,0,strlen(&name));
                tmp = Stu[i].sex;
                Stu[i].sex = Stu[j].sex;
                Stu[j].sex = tmp;
                tmp = 0;
                tmp = Stu[i].age;
                Stu[i].age = Stu[j].age;
                Stu[j].age = tmp;
                tmp = 0;
                tmp = Stu[i].math;
                Stu[i].math = Stu[j].math;
                Stu[j].math = tmp;
                tmp = 0;
                tmp = Stu[i].chinese;
                Stu[i].chinese = Stu[j].chinese;
                Stu[j].chinese = tmp;
                tmp = 0;
                tmp = Stu[i].english;
                Stu[i].english = Stu[j].english;
                Stu[j].english = tmp;
                tmp = 0;
            }
        }
    }
    for(int i = 0; i<n; i++)
    {
        if(!Stu[i].id)
        {
            continue;
        }
        int sum = Stu[i].math+Stu[i].chinese+Stu[i].english;
        printf("学号:%d  姓名:%s  性别:%d  年龄:%d  数学成绩:%d  语文成绩:%d  英语成绩:%d  总成绩:%d\n",Stu[i].id,Stu[i].name,Stu[i].sex,Stu[i].age,Stu[i].math,Stu[i].chinese,Stu[i].english,sum);
    } 
}