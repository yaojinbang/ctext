#include "node.h"

int main()
{
    //����ͷ���
    Node_t *head = AllocNode(0);
    //�������� ��ӡ����
    printf("����ڵ����...\n");
    for(int i = 1; i<=N; i++)
    {
        InsertNode(head,i);
        ShowList(head);
        Sleep(1000);
    }
    printf("ɾ���ڵ����...\n");
    //ɾ������ ��ӡ����
    for(int i = 1; i<=N; i++)
    {
        DeleteNode(head);
        ShowList(head);
        Sleep(1000);
    }
    return 0;
}