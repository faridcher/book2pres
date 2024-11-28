#! /usr/bin/env -S sed -E -f
# para, list, Figure, Table blocks to single line. Sections already are.
# if not an empty line
/^$/!{
  :x N
  # $a \n
  /\n$/{
    # join lines. the last \n replaced as well
    s/\n/ /g
    # dehyphenate
    s/([[:alpha:]])- /\1/g
    # append newline (wrongly replaced before)
    s/ $/\n/
    p
    d
  }
  bx
}
