%{
  int v=0,c=0,n=0;  
%}

alp [a-zA-Z]

%%
p{alp}* {  printf("valid input: %s ",yytext);}
end {return 0;}
.+        {printf ("Invalid input: %s",yytext);}
%%

int yywrap(){return 1;}
int main(){yylex(); return 0;}