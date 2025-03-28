#! /usr/bin/env -S sed -E -f
# end of para.
#     start of new

# Avoid
#    Figure 1-3: text
#    more tex
#
# 1) some text
#     more text
#     more text
/^[[:graph:]][[:print:]]+\./{/^[[:digit:]]+\) /!{N; s;(^[[:graph:]][[:print:]]+\n)( {2,5}[[:graph:]]);\1\n\2; }}
