#! /usr/bin/env -S sed -E -f
# rm spaces
# 1) Lines with only spaces are affected as well e.g.
#                         
# 2) trailing spaces
s/[[:space:]]+$//g
# 3) leading spaces including tabs
s/^[[:space:]]+//g
# squeeze spaces between a Figure/Table and its caption e.g. Figure 3-1:       CAPTION
s/ {2,}/ /g
