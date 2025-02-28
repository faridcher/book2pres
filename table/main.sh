# first run chars-replace.sed then manually edit
cd $(dirname $0)
./../txt/1escape-tex-special.sed |\
 ./../txt/2symbols.sed |\
  ./columnate.sed |\
   cat -s preamble.tex - end.tex
