calc: y.tab.c lex.yy.c
	gcc -o calculator y.tab.c lex.yy.c

y.tab.c:
	bison -vdty calc.y 

lex.yy.c: 
	flex calc.l
clean: 
	rm calc.tab.c calculator lex.yy.c y.output  y.tab.c  y.tab.h 
