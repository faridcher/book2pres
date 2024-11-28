#! /usr/bin/env -S awk -f
# replace the \items with trailing % with dashesh as long as the replaced text plus a constant
{
  if ($0 ~ /\\item .+%$/)
    {
     s=sprintf("%*s", length + extra , "")
     gsub(/ /,"-",s)
     print "\\item "s
   }
  else if ($0 ~ /^%$/)
  {
    print "\\end{document}"
    exit 1
  }
  else print
}

