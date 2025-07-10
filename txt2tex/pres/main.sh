# first run chars-replace.sed then manually edit
cd $(dirname $0)
   ./4wrap-env.sed |\
    # ./5nest-lists.sed |\
    ./6split-para.sed |\
    ./7trail-dot.sed |\
    ./7prefix-item.sed |\
    # for persian text BIDI
    sed -E 's/(item|tiny) /\1\n/' |\
    cat -s preamble-fa.tex - <(echo \\end{document})
