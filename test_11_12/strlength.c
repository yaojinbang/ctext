#include "head.h"
int strlength(char* str)
{
    printf("%c ",*str);
    if(*str != '\0')
    {
        return strlength(str+1)+1;
    } 
    else{
        return 0;
    } 
}