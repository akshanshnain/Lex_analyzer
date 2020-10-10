/***counting no. of Letters***/
%{ 
int letter_count = 0; 
%} 

%% 
[a-zA-Z] {printf("%s letter\n", yytext); 
	      letter_count++;}
[0-9]     {printf("%s number\n" , yytext);}
\n return 0;
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

printf("\nNumber of letters "
	"in the given input - %d\n", letter_count); 
	
return 0; 
} 
