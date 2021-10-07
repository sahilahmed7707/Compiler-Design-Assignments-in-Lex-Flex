%{
%}
%%
^[a - z A - Z _][a - z A - Z 0 - 9 _]* {printf("Valid Identifier\n");}
^[^a - z A - Z _] {printf("Invalid Identifier\n");}
. {}
\n {return 0;}
%%
int yywrap(){}
int main(){
    yylex();
    return 0;
}
