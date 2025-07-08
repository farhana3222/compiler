%{

%}
%token num
%%
E: E '+' F
|F
;
F: F '-' T
|T
;
T:num
;
%%
