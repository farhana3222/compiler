%{
 
%}

alp [a-zA-Z]

%%
_{alp}+_ {printf("valid input: %s ",yytext);}
end {return 0;}
.+ {printf ("Invalid input: %s",yytext);}
%%

int yywrap(){return 1;}
int main(){yylex(); return 0;}