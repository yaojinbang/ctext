#include "node.h"

//创建节点
Node_t *AllocNode(int x)
{
    Node_t *node = (Node_t *)malloc(sizeof(Node_t));
    if(node == NULL)
    {
        perror("malloc");
        exit(1);
    }
    //节点初始化
    node->data = x;
    node->next = NULL;

    return node;
}

//插入节点
void InsertNode(Node_t *head, int x)
{
    //生成节点
    Node_t *node = AllocNode(x);
    node->next = head->next;
    head->next = node;
}

//打印链表
void ShowList(Node_t *head)
{
    Node_t *p = head->next;
    while(p)
    {
        printf("%d->", p->data);
        p = p->next;
    }
    printf("NULL\n");
}

//删除节点
void DeleteNode(Node_t *head)
{
    Node_t *p = head->next;
    head->next = p->next;
    free(p);
    p = NULL;
}