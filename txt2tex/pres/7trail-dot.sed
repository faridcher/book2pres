#! /usr/bin/env -S sed -E -f

# remove trailing dots at the end of a para
s/\.(\n|$)/\1/g

