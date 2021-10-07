/*** Definition Section has one variable
which can be accessed inside yylex()
and main() ***/
%{
int max = 0;
%}
 
/*** Rule Section has three rules, first rule matches with a word(only alphabets set), second rule matches with anything else except new line and third rule does not take input after the enter.
***/
%%
[a-zA-Z]+ { if (yyleng > max) 
    {max = yyleng;}
  }
. {}
\n    {return 0;}
%%
 
/*** Code Section prints the length of
the longest word present in the given input***/
int yywrap(){}
int main(){
  yylex();
  printf("The Length of the largest word: %d\n", max);
}
