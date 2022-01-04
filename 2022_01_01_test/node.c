// ����ļ򵥲�����ɾ��


#include "test.h"

Node_t *AllocNode(int x) //�����ڵ�
{
    //����ռ䴴��ڵ�
    Node_t *node = (Node_t*)malloc(sizeof(Node_t));
    if(node == NULL)
    {
        perror("malloc");
        exit(1);
    }
    //��ʼ���ڵ�
    node->data = x;
    node->next = NULL;
    return node;
}
void InsertNode(Node_t *head, int x) //����ڵ� ����ͷ��ķ�ʽ
{
    assert(head);
    Node_t *node = AllocNode(x);//�����½ڵ�

    node->next = head->next;
    head->next = node;
}
void ShowList(Node_t *head) //��ӡ����
{
    assert(head);
    Node_t *p = head->next;//ͷ�������ݲ��ڹ���ķ�Χ֮�� Ҫ��ͷ������һ���ڵ���ж�Ӧ������ά��
    
    while(p)
    {
        printf("%d->", p->data);
        p = p->next;
    }
    printf("NULL\n");
}
void DeleteNode(Node_t *head) //ɾ���ڵ� ����ͷɾ�ķ�ʽ
{
    assert(head);
    
    Node_t *p = head->next;
    head->next = p->next;
    
    free(p);
    p = NULL;
}
