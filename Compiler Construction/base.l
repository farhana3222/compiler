%{
    #include <stdio.h>
    int cnt = 0;
%}

%%

"Dina" {printf("King.\n");}
"farhana" {printf("Boss.\n");}
.+ {return 0;} 

%%

int yywrap() {return 1;}

int main()
{
    yylex();
    return 0;
}