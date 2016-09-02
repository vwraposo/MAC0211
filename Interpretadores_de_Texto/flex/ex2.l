NUMERO [+-]?[0-9]*(\.[0-9]*)?

%%

{NUMERO} {
        printf ("%g", atof (yytext)/1000);
    }

. ECHO;

%%

int main () {
    yylex ();
}
