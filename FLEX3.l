/***counting no. of odd and even digits***/
/*declaring counter of odd and even digits*/
%{
int no_of_odd_digits = 0;
int no_of_even_digits = 0;
%}
/*setting rules for odd and even digits*/
%%
[13579] {printf("%s ODD\n" , yytext) ; ++no_of_odd_digits;}
[02468] {printf("%s EVEN\n" , yytext) ; ++no_of_even_digits;}
[a-zA-Z] {printf("%s LETTER\n", yytext);}
\n   return 0;
%%

int yywrap(){}
int main(){

    FILE *fp; 
 char filename[50]; 
 printf("Enter the filename: \n"); 
 scanf("%s",filename); 
 fp = fopen(filename,"r"); 
 yyin = fp; 

    yylex();
    printf("\nNumber of odd digits in the given input - %d\n", no_of_odd_digits);
    printf("\nNumber of even digits in the given input - %d\n", no_of_even_digits);
return 0;
}