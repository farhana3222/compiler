%{
    int c = 0, n = 0;  
%}

alp [a-zA-Z]  
nums [0-9]   

%%

{alp}+ {c++;}   
{nums}+ {n++;}

 
\n { 
    
    printf("Word = %d,\nNumber = %d\n", c, n); 
}

%%

int yywrap() {
    return 1;  
}

int main() {
    yylex();  
    return 0;
}
