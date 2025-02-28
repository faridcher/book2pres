# manual (txt)
- write tables to separate files
- newline after section headings
- find and replace large equations with EQN to later edit in .tex

# code
- txt/0std/*
- txt/1escape-tex-special.sed including \ (backslash)
- txt/2symbols.sed
- txt2tex/main.sh
- tables/tex.sh

# manual (tex)
once all text are ok
- tables
- edit eqn
- adjust fig size 
- split sentences with 
`.,$s/\. /\r\\item /cg`

## oyana
`%s/\(\\begin{itemize}\n\)\\item \(TASK.*\)\n/{\2}\r\1/`
and copy/paste to ensuing slides

# tables
- manual edit
- if wide table and want to use lcr not p colspec, use \resizebox{\textwidth}{!}. you may write two consecutive resizebox 
- if long table use [allowframebreaks] and longtable. put table legend inside longtable. otherwise it puts it in another slide

## code
- txt/1escape-tex-special.sed  1.txt > 1.tex
- txt/2symbols.sed
- table/tex.sed

- test with and VimtexToggleMain
\documentclass{beamer}
\usepackage{longtable}
\begin{document}
\begin{frame}[t,allowframebreaks]{TITLE}
...
