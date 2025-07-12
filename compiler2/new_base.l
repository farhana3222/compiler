%{  
    
%}
cap [A-Z]
sml [a-z]
num [ 0-9]
%%
{cap} {printf("Capital:%s\n",yytext);}
{sml} {printf("Small:%s\n",yytext);}
. {}
%%
 
int yywrap(){
    return 1;
 }
int main(){
    yylex();
    return 0;}