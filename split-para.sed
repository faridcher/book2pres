#! /usr/bin/env -S sed -E -f
# end.start
# end. start
# end).start
# exclude i.e., e.g.,
# J. Smith
# U.S.
# not figure/tab captions or list items {\tiny } and equations $
/^(Figure.+:|Table.+:|◆|-|@|%|\{)/!s,([[:graph:]])\. ?([[:upper:]]),\1\n\2,g
# remove trailing dots at the end of a para
s/\.$//
# list items
/^[◆@-] /{
# middle
s, [◆@-] ,\n,g
# leading
s/^[◆@-] //
}
