# first run chars-replace.sed then manually edit
cd $(dirname $0)
./1para-detect.sed |\
 ./2spc-rm.sed |\
  ./3block2line.sed |\
   ./4wrap-env.sed |\
    ./5nest-lists.sed |\
    ./6split-para.sed |\
    ./7prefix-item.sed |\
    cat -s preamble.tex - <(echo \\end{document})
