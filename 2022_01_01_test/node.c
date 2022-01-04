// 链表的简单插入与删除


#include "test.h"

Node_t *AllocNode(int x) //创建节点
{
    //申请空间创造节点
    Node_t *node = (Node_t*)malloc(sizeof(Node_t));
    if(node == NULL)
    {
        perror("malloc");
        exit(1);
    }
    //初始化节点
    node->data = x;
    node->next = NULL;
    return node;
}
void InsertNode(Node_t *head, int x) //插入节点 采用头插的方式
{
    assert(head);
    Node_t *node = AllocNode(x);//创建新节点

    node->next = head->next;
    head->next = node;
}
void ShowList(Node_t *head) //打印链表
{
    assert(head);
    Node_t *p = head->next;//头部的数据不在管理的范围之内 要从头结点的下一个节点进行对应的数据维护
    
    while(p)
    {
        printf("%d->", p->data);
        p = p->next;
    }
    printf("NULL\n");
}
void DeleteNode(Node_t *head) //删除节点 采用头删的方式
{
    assert(head);
    
    Node_t *p = head->next;
    head->next = p->next;
    
    free(p);
    p = NULL;
}
