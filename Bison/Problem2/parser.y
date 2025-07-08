%{
    #include <stdio.h>
    void yyerror(const char *s);
    int yylex();
%}


%%
prog: stats
    ;
stats:
      stats stat
    ;
stat: declar SEMI
    ;
declar: INT ID 
      INT ID EQUAL NUM 
      FLOAT ID 
      FLOAT ID EQUAL FLOAT_NUM
    ;
%%


void yyerror(const char *s){
    fprintf(stderr,"Syntex Error\n");
}
int main(){return yyparse();return 0;}