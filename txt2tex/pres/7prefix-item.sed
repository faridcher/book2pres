#!/usr/bin/env -S sed -E -f
# prefix \item if not starting with
/^(^$|[\% {]|Figure.+:|Table.+:|شکل.+:|جدول.+:)/!s,.*,\\item &,

