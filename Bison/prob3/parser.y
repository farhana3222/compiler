%{
#include<stdio.h>
int yylex();
void yyerror(const char *s);

%}

%token Num Newline
%left  '+' '-'
%left '/' '*'
%%

prog: expr Newline {printf("Result:%d\n",$1); return 0;};

expr: expr '-' expr  {$$ = $1 - $3;} 
|expr '+' expr  {$$ = $1 + $3;}
|expr '*' expr  {$$ = $1 * $3;}
|expr '/' expr  {$$ = $1 / $3;}
|Num {$$ = $1;}
;
%%
int main(){
    yyparse();
    return 0;
}
void yyerror(const char *s){
    fprintf(stderr, "Error:%s\n",s);
}