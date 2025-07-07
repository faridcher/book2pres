# first run chars-replace.sed then manually edit
cd $(dirname $0)
./1escape-tex-special.sed |\
./2tr-punct.sed |\
./3greek2tex.sed |\
./4indented-para-newline.sed |\
 ./5spc-squeeze.sed |\
  ./6block2line.sed |\
   # ./4wrap-env.sed |\
   #  ./5nest-lists.sed |\
    # ./6split-para.sed |\
    # ./7prefix-item.sed |\
     cat -s #preamble.tex - <(echo \\end{document})

#!/usr/bin/bash
# i="$(realpath $1)"
# cd $(dirname $0)
# ./1escape-tex-special.sed -i $i
# ./2symbols.sed -i $i
