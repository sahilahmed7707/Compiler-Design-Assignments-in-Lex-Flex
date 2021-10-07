/*** Definition Section has two variables
which can be accessed inside yylex()
and main() ***/
%{
int v_count = 0;
int c_count = 0;
%}
 
/*** Rule Section has four rules, first rule
matches with vowels, second rule matches with consonants, third rule
matches with any character except newline and
fourth rule does not take input after the enter***/
%%
[aeiouAEIOU] {v_count++;}
/***
Explicit Rules to avoid catch-all rule caused due to ^aeiou rule
***/
[a-zA-Z] {c_count++;} 
.       {}
\n    {return 0;}
%%
 
/*** Code Section prints the number of
voels and consonants present in the given input***/
int yywrap(){}
int main(){
 
yylex();
printf("\nNumber of vowels in the string is %d Number of consonants in the string %d\n",v_count,c_count);
 
return 0;
}
