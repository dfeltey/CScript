% CScript: Implementing C in JavaScript
% Daniel Feltey
% December 12, 2012

# CScript

CScript is ...

- An educational tool for learning programming in C
- A *mostly* specifcation compliant implementation of C in JavaScript
- An interesting project in compiler/interpreter design


# Why?

Learning to program online:

- tryruby.org
- codecademy.com
- Nothing for learning C interactively

I need to teach high school students a C based language. 

Available options:

- Deal with platform differences
- Learn an IDE first
- Build an interactive tool

# Implementing C: The Toolbox

- Parser generators
    - CFG vs. PEG
    - Jison vs PEG.js
- Continuations
    - Continuation Passing Style
    - Compiling with continuations
    - CESK machine
- Compiler vs. Interpreter 

# Parser Generators

Context Free Grammars

- Bison/Yacc/Jison
- Happy

Parsing Expression Grammars

- PEG.js
- Pappy

# Parser Generator Syntax

Context Free Grammars
-
> add_expr 
>    : cast_expr
>    | add_expr + mult_expr
>    | add_expr - mult_expr

Parsing Expression Grammars
-
> add_expr
>    = cast_expr ("+" mult_expr)*
>    / cast_expr ("-" mult_expr)*


# CFG vs. PEG

Context Free Grammars

- Bottom up parsing
- LR, LALR algorithms
- Ambiguity
- Usually require pre-lexed input

Parsing Expression Grammars

- Top down parsing
- Linear time
- _Unambiguous_ 
- No need for a lexer
- Problems with left recursion

# PEG: The Good 

- Ordered choice eliminates ambiguity
- Left recursion can be eliminated
- Linear time parsing
- The C grammar is easy to adapt to a PEG

# PEG: The Bad

- Rule order matters
    - __do__ vs. __double__
- Left recursion elimination can be tricky
    - Can change associativity
- Space use proportional to input
    - The downside to linear time parsing





# Continuations

# Compiler vs. Interpreter

Compile to JavaScript

- CoffeeScript
- Elm
- Fay

Interpret in JavaScript

- Various Schemes
- O'Browser: OCaml bytecode interpreter in JavaScript


# Challenges

Paradigm shift

- C is imperative
- JavaScript is Object-oriented, Imperative, Functional



# The Future

- Finishing the parser
- Building the interpreter/compiler
- Fill in the missing pieces

# Contributing

[GH]: https://github.com/dfeltey/CScript "GitHub.com/dfeltey/CScript"

- CScript is open source and all code is available at [GitHub.com/dfeltey/CScript][GH]
- I'm very open to suggestions/opinions/contributions
- I hope that CScript could become a valuable learning/teaching tool


# References









