/*** Definition Section has one variable
which can be accessed inside yylex()
and main() ***/
%{
int flag = 0;
%}
 
/*** Rule Section has five rules, first rule
matches with a valid identifier, second, third and fourth rule matches with invalid identifier and
fifth rule does not take input after the enter
***/
%%
[a-z A-Z _][a-z A-Z 0-9 _]* {flag = 1;}
[^a-z A-Z _ \n][a-z A-Z 0-9 _]* {flag = 0;}
[a-z A-Z _][^a-z A-Z 0-9 _  \n]* {flag = 0;}
[^a-z A-Z _ \n][^a-z A-Z 0-9 _ \n]* {flag = 0;}
\n    {return 0;}
%%
 
/*** Code Section prints the number of
vowels and consonants present in the given input***/
int yywrap(){}
int main(){
 
yylex();

printf(flag?"Valid Identifier\n":"Invalid Identifier\n");
return 0;
}
