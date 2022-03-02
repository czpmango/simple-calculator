1. 语义值类型      
 bison 默认所有语义值类型为 int，可以通过宏 `YYSTYPE` 改变该类型。如果需要多个语义值类型，则在 `%union` 块中定义所有类型，然后为每个符号定义相对类型，其中终结符用 `%token` 定义，非终结符用 `%type` 定义   
2. 操作符优先级   
 `%left` 左结合   
 `%right` 右结合   
 `%nonassoc` 无结合   
3. 指定上下文无关文法的起始符号   
  默认语法规则中出现的第一个非终结符是起始符号，也可以通过 %start 显式定义   
4. 可重入性   
  bison 通过静态变量 `yylval` 和 `yylloc` 与 `yylex` 进行通信，所以生成的解析器是不可重入的，除非用 `%pure_parser` 显式要求解释器可重入   
5. yyparser   
  `yyparser()` 内置函数默认是无参数的，但可以通过 `%parse-param {param}` 来传递参数
6. yylex   
  同5，`%lex-param` 可以对 `yylex()` 增加参数
