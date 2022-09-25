/*** Definition Section has one variable
which can be accessed inside yylex()
and main() ***/
%{
int count = 0;
%}

/***Find integers in a string***/
%%
[0-9] {printf("%s is an integer\n", yytext);
       count++;}
.     {printf("%s not a integer\n", yytext);}
\n    {return 0;}
%%

int yywrap(){}
int main(){

yylex();
printf("\nNumber of integers "
      "in the given input - %d\n", count);

return 0;
}