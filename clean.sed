#! /usr/bin/env -S sed -E -f
# rm spaces
# 1) Lines with many spaces
#                         
# 2) trailing spaces
# some text 
s/ +$//g
# 3) leading spaces
s/^ +//g
# spaces between a figure and its caption e.g. Figure 3-1:       CAPTION
s/ {2,}/ /g

