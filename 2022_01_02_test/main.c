#include "node.h"

int main()
{
    //创建头结点
    Node_t *head = AllocNode(0);
    //创建链表 打印链表
    printf("插入节点测试...\n");
    for(int i = 1; i<=N; i++)
    {
        InsertNode(head,i);
        ShowList(head);
        Sleep(1000);
    }
    printf("删除节点测试...\n");
    //删除链表 打印链表
    for(int i = 1; i<=N; i++)
    {
        DeleteNode(head);
        ShowList(head);
        Sleep(1000);
    }
    return 0;
}