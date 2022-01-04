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

//���ɽڵ�
extern Node_t *AllocNode(int x);

//����ڵ�
extern void InsertNode(Node_t *head, int x);

//��ӡ����
extern void ShowList(Node_t *head);

//ɾ���ڵ�
extern void DeleteNode(Node_t *head);

