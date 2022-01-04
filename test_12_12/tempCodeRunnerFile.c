int main()
{

    int a = 10000;
    FILE* pf = fopen("test1.txt","wt");//对文件进行写操作 二进制文件的形式
    if(pf == NULL)
    {
        printf("%s\n",strerror(errno));
    }
    fwrite(&a,5,1,pf);
    fclose(pf);
    pf = NULL;
    return 0;
}