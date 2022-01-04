#pragma once
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <windows.h>

#define N 10
typedef struct Node
{
    int data;
    struct Node *next;
}Node_t;

//生成节点
extern Node_t *AllocNode(int x);

//插入节点
extern void InsertNode(Node_t *head, int x);

//打印链表
extern void ShowList(Node_t *head);

//删除节点
extern void DeleteNode(Node_t *head);

