%{
#include <stdio.h>
#include <stdlib.h>
#include "fb1-5.tab.h"   
%}
%%
"+"       { return ADD; }
"-"       { return SUB; }
"*"       { return MUL; }
"/"       { return DIV; }
"|"       { return ABS; }
[0-9]+    { yylval = atoi(yytext); return NUMBER; }
\n        { return EOL; }
[ \t]+    { /* skip whitespace */ }
"("       { return OP;}
")"       { return CP;}
"//".*    /*ignore comment*/
.         { printf("Mystery character %c\n", *yytext); }
%%
