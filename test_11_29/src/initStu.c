#include "head.h"
void initStu(Students* Stu,int n)
{
    Stu[0].id = 1;memcpy(Stu[0].name,"小吴",20);Stu[0].sex = 0;Stu[0].age = 20;Stu[0].math = 90;Stu[0].chinese = 110;Stu[0].english = 120;
    Stu[1].id = 2;memcpy(Stu[1].name,"小林",20);Stu[1].sex = 0;Stu[1].age = 20;Stu[1].math = 91;Stu[1].chinese = 112;Stu[1].english = 70;
    Stu[2].id = 3;memcpy(Stu[2].name,"小刘",20);Stu[2].sex = 1;Stu[2].age = 20;Stu[2].math = 80;Stu[2].chinese = 119;Stu[2].english = 110;
    Stu[3].id = 4;memcpy(Stu[3].name,"小姚",20);Stu[3].sex = 1;Stu[3].age = 20;Stu[3].math = 100;Stu[3].chinese = 90;Stu[3].english = 120;
    Stu[4].id = 5;memcpy(Stu[4].name,"小陈",20);Stu[4].sex = 0;Stu[4].age = 20;Stu[4].math = 110;Stu[4].chinese = 90;Stu[4].english = 121;
    Stu[5].id = 6;memcpy(Stu[5].name,"小周",20);Stu[5].sex = 0;Stu[5].age = 20;Stu[5].math = 120;Stu[5].chinese = 80;Stu[5].english = 122;

}