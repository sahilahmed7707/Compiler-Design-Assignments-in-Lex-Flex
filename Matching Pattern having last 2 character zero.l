%{
%}

%s A B DEAD

%%
<INITIAL>0 BEGIN A;
<INITIAL>1 BEGIN INITIAL;
<INITIAL>[^01\n] BEGIN DEAD;
<INITIAL>\n BEGIN INITIAL; printf("Not accepted\n");

<A>0 BEGIN B;
<A>1 BEGIN INITIAL;
<A>[^01\n] BEGIN DEAD;
<A>\n BEGIN INITIAL; printf("Not accepted\n");

<B>0 BEGIN B;
<B>1 BEGIN INITIAL;
<B>[^01\n] BEGIN DEAD;
<B>\n BEGIN INITIAL; printf("Accepted\n");

<DEAD>[^\n] BEGIN DEAD;
<DEAD>\n BEGIN INITIAL; printf("Invalid expression\n");
%%

int main() {
    yylex();
    return 0;
}