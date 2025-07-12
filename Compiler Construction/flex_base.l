%{
#include <stdio.h>
%}
cap [A-Z]
sml [a-z]
num [0-9]
%%
{cap} {printf("Capital:%s\n");}
{sml} {printf("Small:%s\n");}
. {}
%%

int yywrap(){
    return 1;
}
int main(){
    yylex();
    return 0;
}