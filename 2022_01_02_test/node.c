#include "node.h"

//�����ڵ�
Node_t *AllocNode(int x)
{
    Node_t *node = (Node_t *)malloc(sizeof(Node_t));
    if(node == NULL)
    {
        perror("malloc");
        exit(1);
    }
    //�ڵ��ʼ��
    node->data = x;
    node->next = NULL;

    return node;
}

//����ڵ�
void InsertNode(Node_t *head, int x)
{
    //���ɽڵ�
    Node_t *node = AllocNode(x);
    node->next = head->next;
    head->next = node;
}

//��ӡ����
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

//ɾ���ڵ�
void DeleteNode(Node_t *head)
{
    Node_t *p = head->next;
    head->next = p->next;
    free(p);
    p = NULL;
}