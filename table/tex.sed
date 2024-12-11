#!/usr/bin/env -S sed -E -f
# s/^ {2,}/\&/
s/^ +//
1s;^;\\begin{tabular}{}\n\\hline\n;
# dehyphenate
s/([[:alpha:]])- /\1/g
# add & between columns' spaces
s/ {2,}/&\&/g
# append newline
s/$/\\\\/
$s;$;\n\\hline\n\\end{tabular};
