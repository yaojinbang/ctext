#include "head.h"
void DelStu(Students* Stu,int n)
{
    int del = 0;
    printf("������Ҫɾ����ѧ����Ϣ��Ӧѧ��:");
    scanf("%d",&del);
    for(int i = 0; i<n; i++)
    {
        if(del == Stu[i].id)
        {
            Stu[i].id = 0;
            memset(Stu[i].name,0,20);
            Stu[i].sex = 0;
            Stu[i].age = 0;
            Stu[i].math = 0;
            Stu[i].chinese = 0;
            Stu[i].english = 0;
        }
    }
}