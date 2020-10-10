/***counting no. of  integers***/
/*declaring counter of integers*/
%{
int no_of_integers = 0;
%}
/*setting rules*/
%%
[0-9] {printf("%s Integer\n" , yytext) ; ++no_of_integers;}
[a-zA-Z] {printf("%s letter\n",yytext);}
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
    printf("\nNumber of integers in the given input - %d\n", no_of_integers);
return 0;
}