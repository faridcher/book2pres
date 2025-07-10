#! /usr/bin/env -S sed -E -f
# a block 
# para, list, Figure, Table blocks to single line. Sections already are.
# if utf-bom 
# if not an empty line
/^$/!{
  :x N
  # $a \n
  # if found an empty line
  /\n$/{
    # join lines. the leading and last \n replaced as well
    s/\n/ /g
    # dehyphenate
    s/([[:alpha:]])- /\1/g
    # append newline (all newlines replaced by space above)
    s/ $/\n/g
    p
    d
  }
  bx
}
