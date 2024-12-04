#! /usr/bin/env -S sed -E -f
# end of para.
#     start of new
# avoid
#    Figure 1-3: text
#    more tex
# exclude
# 1) some text
#     more text
#     not working on a raster model
/^[[:graph:]][[:print:]]+\./{/^[[:digit:]]+\) /!{N; s;(^[[:graph:]][[:print:]]+\n)( {2,5}[[:graph:]]);\1\n\2; }}
