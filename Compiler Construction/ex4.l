%{
    
%}

alp [a-zA-Z]          
nums [0-9] 

%%

^([a-zA-Z0-9_-]+)-([a-zA-Z0-9_-]+)^ { printf("Valid\n"); }
"end"  { return 0; }  
. { printf("Invalid\n"); }  

%%

int yywrap() {
    return 1; 
}

int main() {
    yylex(); 
    return 0;
}
