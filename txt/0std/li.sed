#! /usr/bin/env -S sed -E -f
# replace dot with )
#   1. an item
#   2. second item
#   a. more
s/(^ +[[:lower:][:digit:]])\./\1)/
