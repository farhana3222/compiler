%{
 #include "test.tab.h" //for (a+b) sum sub mul and div
%}
%option noyywrap
%%
[0-9]+ {yylval = atoi(yytext); return Num;}
"+"  {return '+';}
"-"  {return '-';}
"*"  {return '*';}
"/"  {return '/';}
\n   {return Newline;}
[ \t] {}
%%