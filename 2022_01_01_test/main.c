#include "test.h"

int main()
{
    Node_t *head = AllocNode(0);

    printf("插入链表测试...\n");
    
    for(int i = 1; i<=N; i++)
    {
        InsertNode(head, i);//插入节点以及数据
        ShowList(head);//打印链表
        Sleep(1000);
    }
    
    printf("删除节点测试...\n");
    
    for(int i = 0; i<=N; i++)
    {
        DeleteNode(head);
        ShowList(head);
        Sleep(1000);
    }
    
    free(head);
    head = NULL;
    
    return 0;
}