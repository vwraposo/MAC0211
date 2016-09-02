SPACE_SEQ [ \t]+
SPACE_END [ \t]+[\n]
NAME usuario

%%

{SPACE_SEQ} {
        printf (" ");
    }

{SPACE_END} {printf ("4");}

{NAME} {
        printf ("VICTOR");
    }

. ECHO;

%%

int main () {
    yylex ();
}
