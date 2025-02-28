#!/usr/bin/env -S sed -E -f
# squeeze leading spaces
# s/^ {2,}/\&/
# rm leading spaces
s/^ +//

# begin{env}
# 1s;^;

# dehyphenate
# s/([[:alpha:]])- /\1/g

# columnate: add delim (&) between columns' spaces
s/ {2,}/&\&/g

# append new row chars
s/$/\\\\/

# end{env}
# $s;$;
