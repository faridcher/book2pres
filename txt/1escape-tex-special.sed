#! /usr/bin/env -S sed -E -f
# exec on .txt not .tex
# escape tex special chars
# don't escape _ in equations!
# eqn are edited after this script because these should not be escaped there
s/[&%$#_{}~^\]/\\&/g

