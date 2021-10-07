%{
	char stack[100];
	int top=0;
	void push(char);
	void pop();
    char getTop();
    int precedence(char character);
%}
%%
[a-zA-Z1-9]?    {   printf("%c", yytext[0]);}
[+\-\*\/\(\)\^] {   char operator = yytext[0];
                    if(top == 0 || operator == '(')
                        push(operator);
                    else if(operator == ')'){
                        while(getTop() != '('){
                            printf("%c", getTop());
                            pop();
                        }
                        pop();
                    }
                    
                    else if(precedence(operator) >= precedence(getTop())){
                        push(operator);
                    }
                    else if(precedence(operator) <= precedence(getTop())){
                            while(precedence(operator) <= precedence(getTop())){
                                printf("%c",getTop());
                                pop();
                            }
                        push(operator);
                    }
                }
[\n]            {   int i;
                    for(i = top-1;i >= 0;i--)
                    if(stack[i] != '(' && stack[i] != ')'){
                        printf("%c", stack[i]);
                    }
                    top=0;
                }

%%
int yywrap() {} 

int main(){
    printf("Enter Infix form: \n");
    yylex();
}

void pop(){
    top--;
}

char getTop(){
    return stack[top - 1];
}

void push(char character){
    stack[top]=character;
    top++;
}

int precedence(char character){
    switch(character){
    case '(':return 0;
    case ')':return 0;
    case '+':return 1;
    case '-':return 1;
    case '*':return 2;
    case '/':return 2;
    case '^':return 3;
    }
}
