#! /usr/bin/env -S sed -E -f
# end of para.
#     start of new
# avoid
#    Figure 1-3: text
#    more tex

N; s;(^[[:graph:]][[:print:]]+\n)( {4,5}[[:graph:]]);\1\n\2;
