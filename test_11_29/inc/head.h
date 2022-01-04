#ifndef __HEAD_H__
#define __HEAD_H__
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
typedef struct Students
{
    int id;
    char name[20];
    int sex;
    int age;
    int math;
    int chinese;
    int english;
}Students;

void initStu(Students* Stu,int n);
void DisStu(Students* Stu,int n);
void mmenu(Students* Stu,int n);
void AddStu(Students *Stu,int n);
void DelStu(Students* Stu,int n);
void ReStu(Students* Stu,int n);
int menu(Students *Stu,int n);
void FindStu(Students *Stu,int n,int ret);
#endif