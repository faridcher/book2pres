#!/usr/bin/env -S sed -E -f
# squeeze leading spaces
# s/^ {2,}/\&/
s/^ +//
# wrap tabular
1s;^;\\resizebox{\\textwidth}{!}{\n\\begin{tabular}{}\n\\hline\n;
# dehyphenate
s/([[:alpha:]])- /\1/g
# columnate: add delim (&) between columns' spaces
s/ {2,}/&\&/g
# append new row chars
s/$/\\\\/
$s;$;\n\\hline\n\\end{tabular}\n};
