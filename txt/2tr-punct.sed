#! /usr/bin/env -S sed -E -f
# transliterate
# replace invalid chars
s/[“”]/"/g
s/’/'/g
# minus sign in math
s/−/-/g
# en em dash
s/–/--/g
s/—/---/g
# pipe
s/∣/|/g
# hair space U+200A
s/ //g
# four-per-em-space U+2005
s/ //g

