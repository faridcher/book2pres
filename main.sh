# first run chars-replace.sed then manually edit
cd $(dirname $0)
./para-detect.sed |\
 ./spc.sed |\
  ./block2line.sed |\
   ./wrap-env.sed |\
    ./nest-lists.sed |\
    ./split-para.sed |\
    ./prefix-item.sed |\
   cat -s preamble.tex - <(echo \\end{document})
