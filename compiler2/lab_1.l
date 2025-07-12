%{
    int v = 0, c = 0, n = 0;
%}

vowels [aeiouAEIOU]
alp [a-zA-Z]
nums [0-9]

%%

{vowels} { v++; }
{alp}    { c++; }
{nums}   { n++; }

"end"    { return 0; }  // When "end" is encountered, exit the program

\n { 
    // Print the result after processing all the characters
    printf("Vowels = %d, \nConsonants = %d,\nNumbers = %d\n", v, c, n); 
}

%%

int yywrap() { return 1; }

int main() {
    yylex();  // Start the lexical analyzer
    return 0;
}
