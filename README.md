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

## 2. Length of Longest Word (LengthOfLongestWord.l)
Read the given input string.
Check each word and store its length using yyleng in a max variable if its greater than previous value
End if new line is reached.

