
%{
int arr[129]={0};
%}
 

. {arr[(int)yytext[0]]++;}
\n    {return 0;}
%%
 
int yywrap(){}
int main(){
  int i, freq=-32700, character;
    printf("Enter the string: ");
    yylex();
    for(i = 0;i < 129;i++){
        if(freq < arr[i]){
            freq = arr[i];
            character = i;
        }
    }
    printf("\nFrequency is %d and the character with the highest frequency is %c",freq, character);
    if(character==' ') printf("[space]");
    printf("\n");
    return 0;
}
