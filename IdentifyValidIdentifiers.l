/* Definition section */
%{
%}

/*Rule Section*/
%%

// Keywords are not allowed to be used as Identifiers.
double|auto|int|struct|break|else|long|switch|case|enum|register|typedef|char|extern|return|union|continue|for|signed|void|do|if|static|while|default|goto|sizeof|volatile|const|float|short|unsigned {printf("Invalid Identifier\n");}

// An Identifier can only have alphanumeric characters(a-z , A-Z , 0-9) and underscore(_).The first character of an identifier can only contain the alphabet(a-z, A-Z) or underscore (_).
^[a-zA-Z_][a-zA-Z0-9_]* {printf("Valid Identifier\n");}

// No special characters, such as a semicolon, period, whitespaces, slash, or comma are permitted to be used in or as an Identifier.
^[^a-zA-Z_] {printf("Invalid Identifier\n");}

. {}
%%

int yywrap(){}

int main(){
  yylex();
  return 0;
}
