#ifndef _HEAD_H_
#define _HEAD_H_
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
int add(int x,int y);//求和
int get_num(int arr[],int sz,int a);//二分法找数
int get_leap_year(int x);//找闰年
void add1(int* x);//指针加法+1
void input(int x);
int strlength(char* str);//求字符串长度
int stratum(int x);//递归求阶层
int facl(int x);//求阶层
int facl1(int x);//求阶层和
int stratum_sum(int x);
int fib(int x);
void bubble_sort(int num[], int sz);//冒泡排序
void sort(int num[], int sz);//排序
#endif