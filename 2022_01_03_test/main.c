#include "node.h"

int main()
{
    Node_t *head = AllocNode(0); //创建头结点
    printf("插入节点测试...\n");
    for(int i = 1; i<=N; i++)
    {
        InsertNode(head, i);
        ShowList(head);
        Sleep(1000);
    }
    printf("删除节点测试...\n");
    for(int i = 1; i<=N; i++)
    {
        DeleteNode(head);
        ShowList(head);
        Sleep(1000);
    }
    free(head);
    head = NULL;
    return 0;
}