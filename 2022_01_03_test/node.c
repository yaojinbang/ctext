#include "node.h"

Node_t *AllocNode(int x)
{
    //创建节点
    Node_t *node = (Node_t *)malloc(sizeof(Node_t));
    if(node == NULL)
    {
        perror("malloc");
        exit(1);
    }
    //初始化数据
    node->data = x;
    node->next = NULL;
}

void InsertNode(Node_t *head, int x)
{
    assert(head);
    Node_t *node = AllocNode(x);
    node->next = head->next;
    head->next = node;
}

void ShowList(Node_t *head)
{
    assert(head);
    Node_t *p = head->next;
    while(p)
    {
        printf("%d->", p->data);
        p = p->next;
    }
    printf("NULL\n");
}

void DeleteNode(Node_t *head)
{
    assert(head);
    Node_t *p = head->next;
    head->next = p->next;
    free(p);
    p = NULL;
}