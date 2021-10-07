/* Definition section */
%{
	int positiveNumbers=0;
	int negativeNumbers=0;
	int fractions=0;
%}

/* Rule Section */
DIGIT                   [0-9]
%%

\+?{DIGIT}+			    positiveNumbers++;

-{DIGIT}+			    negativeNumbers++;

\+?{DIGIT}*\.{DIGIT}+   fractions++;
\+?{DIGIT}*\/{DIGIT}+   fractions++;
-{DIGIT}*\.{DIGIT}+	    fractions++;
-{DIGIT}*\/{DIGIT}+	    fractions++;

.                       ;
[\n]                    {   return 0;   }
%%

int yywrap(){}

int main()
{
	yylex();
	printf("\nNumber of Positive Integers: %d", positiveNumbers);
	printf("\nNumber of Negative Integers: %d", negativeNumbers);
	printf("\nNumber of Fractions: %d", fractions);
	printf("\n\n");

	return 0;
}
