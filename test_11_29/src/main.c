#include "head.h"
int main()
{
    Students Stu[20] = {0};
    initStu(Stu,20);
    int input = 0;
    int ret = 0;
    do
    {
        mmenu(Stu, 20);
        scanf("%d",&input);
        switch(input)
        {
            case 1: 
                    AddStu(Stu,20);
                    break;
            case 2: 
                    DelStu(Stu,20);
                    break;
            case 3:
                    ReStu(Stu,20);
                    break;
            case 4:
                    ret = menu(Stu,20);
                    FindStu(Stu,20,ret);
                    break;
            case 5:
                    DisStu(Stu,20);
                    break;
            case 0:
                    break;
            default:
                    printf("输入错误，请重新输入\n");
                    break;

        }
    }while(input);
    return 0;
}