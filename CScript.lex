nondigit            [a-z_]
digit               [0-9]
nonzero_digit       [1-9]
hd                  [0-9a-fA-F]
hq                  {hd}{hd}{hd}{hd} 
uni_char_name       ("\\u" hq) | ("\\U" hq hq)
id_nd               nondigit|uni_char_name
identifier          id_nd (id_nd|digit)*





%%

"auto"              return 'AUTO';
"break"             return 'BREAK';
"case"              return 'CASE';
"char"              return 'CHAR';
"const"             return 'CONST';
"continue"          return 'CONTINUE';
"default"           return 'DEFAULT';
"do"                return 'DO';
"double"            return "DOUBLE";
"else"              return 'ELSE';
"enum"              return 'ENUM';
"extern"            return 'EXTERN';
"float"             return 'FLOAT';
"for"               return 'FOR';
"goto"              return 'GOTO';
"if"                return 'IF';
"inline"            return 'INLINE';
"int"               return 'INT';
"long"              return 'LONG';
"register"          return 'REGISTER';
"restrict"          return 'RESTRICT';
"return"            return 'RETURN';
"short"             return 'SHORT';
"signed"            return 'SIGNED';
"sizeof"            return 'SIZEOF';
"static"            return 'STATIC';
"struct"            return 'STRUCT';
"switch"            return 'SWITCH';
"typedef"           return 'TYPEDEF';
"union"             return 'UNION';
"unsigned"          return 'UNSIGNED';
"void"              return 'VOID';
"volatile"          return 'VOLATILE';
"while"             return 'WHILE';
"_Alignas"          return 'ALIGNAS';
"_Alignof"          return 'ALIGNOF';
"_Atomic"           return 'ATOMIC';
"_Bool"             return 'BOOL';
"_Complex"          return 'COMPLEX';
"_Generic"          return 'GENERIC';
"_Imaginary"        return 'IMAGINARY';
"_Noreturn"         return 'NORETURN';
"_Static_assert"    return 'STATIC_ASSERT';
"_Thread_local"     return 'THREAD_LOCAL';
identifier          return 'IDENTIFIER';

