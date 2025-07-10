#! /usr/bin/env -S sed -E -f
# end.start
# end. start
# end).start
# exclude i.e., e.g.,
# J. Smith
# U.S. Census
# not figure/tab captions or list items {\tiny } and equations $
/^(Figure.+:|شکل.+:|جدول.+:|Table.+:|-|#|\{)/!s,([[:lower:])][.?؟]) ([[:upper:]]),\1\n\2,g
# text; (2)
# text; another text; graph
# فارسی؛ ادامه
# فارسی. - لیست
/^(Figure.+:|شکل [[:digit:]]+\.[[:digit:]]+:|جدول.+:|Table.+:|-|#|\{)/!s,([[:graph:])][؛;.?؟:]) ([[:graph:]]),\1\n\2,g
# oyana
# end. 1) text
# end: a) text
# end: (1) text
# end2: (1) text
# end2? (1) text
/^(Figure.+:|شکل.+:|جدول.+:|Table.+:|-|#|\{)/!s,([[:alnum:])][.?؟:]) (\(?[[:alnum:]]\)),\1\n\2,g

# list items
# sentence. - start of list: remove leading -
s/\n- /\n/g

/^- | - /{
# middle
s, - ,\n,g
# leading
s/^- //
}

# manual newlines
s//\n/g
