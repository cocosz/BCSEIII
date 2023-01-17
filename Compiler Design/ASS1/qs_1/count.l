/*lex code to count number of valid integers and float values using lex program.*/
	
%{
int valid_int=0, valid_float=0;
%}

%%
^[-+]?[0-9]* valid_int++;
^[-+]?[0-9]*[.][0-9]+$ valid_float++;
.;
%%

int main()
{
yylex();
printf("Number of integers : %d \n",valid_int);
printf("Number of floating integers : %d \n",valid_float);

return 0;
}
