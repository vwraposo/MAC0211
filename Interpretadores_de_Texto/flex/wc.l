	int nl = 0, nc = 0, np=0;
%%
([[:alpha:]]|ç|ã)+	{
				np++; nc += yyleng;
				printf("Achei |%s| com tamanho %d\n",yytext, yyleng);
	}
\n				++nc;++nl;
.				++nc;
%%
main() {
	yylex();
	printf("%d %d %d\n", nc, nl, np);
}

