#! /usr/bin/env -S sed -E -f
# end.start
# end. start
# end).start
# exclude i.e., e.g.,
# J. Smith
# U.S. Census
# not figure/tab captions or list items {\tiny } and equations $
/^(Figure.+:|Table.+:|◆|-|@|%|\{)/!s,([[:alpha:])][.?]) ([[:upper:]]),\1\n\2,g
# text; (2)
/^(Figure.+:|Table.+:|◆|-|@|%|\{)/!s,([[:graph:])][;]) ([[:graph:]]),\1\n\2,g
# oyana
# end. 1) text
# end: a) text
# end: (1) text
# end2: (1) text
/^(Figure.+:|Table.+:|◆|-|@|%|\{)/!s,([[:alnum:])][.?:]) (\(?[[:alnum:]]\)),\1\n\2,g

# remove trailing dots at the end of a para
s/\.(\n|$)/\1/g
# list items
/^[◆@-] /{
# middle
s, [◆@-] ,\n,g
# leading
s/^[◆@-] //
}
