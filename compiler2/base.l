%{
#include <stdio.h>
%}

%%

[a-z]   { printf("Lowercase letter: %c\n", yytext[0]); }
[A-Z]   { printf("Uppercase letter: %c\n", yytext[0]); }

.       { /* Ignore other characters */ }

%%

int main(int argc, char **argv) {
    yylex();  
    return 0;
}
