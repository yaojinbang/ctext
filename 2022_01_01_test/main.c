#include "test.h"

int main()
{
    Node_t *head = AllocNode(0);

    printf("�����������...\n");
    
    for(int i = 1; i<=N; i++)
    {
        InsertNode(head, i);//����ڵ��Լ�����
        ShowList(head);//��ӡ����
        Sleep(1000);
    }
    
    printf("ɾ���ڵ����...\n");
    
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