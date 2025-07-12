%{
    
%}

%%

.*pq.*|.*PQ.*   { printf("Valid\n"); }  
"end"           { return 0; }           
.*              { printf("Invalid\n"); } 
%%

int yywrap() {
    return 1; 
}

int main() {
    yylex();  
    return 0;
}
