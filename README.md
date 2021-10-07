# Compiler-Design-Assignments-in-Lex-Flex


## How to Run
1. Install Flex on Ubuntu/WSL with
```    
sudo apt-get update 
sudo apt-get install flex
```
2. Run a lex file using 
```
lex filename.l
```
This will generate a lex.yy.c file.

3. Compile the C file using gcc and run.
```
gcc lex.yy.c
./a.out
```

## 1. Decimal To Binary (DecimalToBinary.l)
Read the given input string.
Check if there exists a number, if yes, convert it to binary using conventional method, and store it in a character array.
End if new line is reached.

## 2 Frequency of Most Frequent Character (HighestFrequencyCharacter.l)
Read the given input string.
Check each character and increment the array at the index of its ASCII code using yytext to store its count in the array.
Find the maximum number in this array and print the frequency and index as character.
End if new line is reached.


## 3. Identify Valid Identifiers (IdentifyValidIdentifiers.l)
Read the given input string.
Check if the first character is a numerical or any special character except ‘\_’ and print invalid if true.
Otherwise print it as valid identifier if remaining characters of string doesn’t contain any special characters except ‘\_’.

## 4. Length of Longest Word (LengthOfLongestWord.l)
Read the given input string.
Check each word and store its length using yyleng in a max variable if its greater than previous value
End if new line is reached.


## 5. Number of Vowels and Consonants (NumberOfVowelsConsonants.l)
Read the given input string.
Check one character at a time until it is not empty.
Check if the character is a vowel or a consonant and increment the respective variable.
Print the number of vowels and consonants stored in respective variables.
