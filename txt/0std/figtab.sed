#! /usr/bin/env -S sed -E -f
# oyana
s/TABLE ([[:digit:]]{1,2}\.[[:digit:]]{,3})/Table \1:/
s/FIGURE ([[:digit:]]{1,2}\.[[:digit:]]{,3})/Figure \1:/

# without any :
# s/TABLE ([[:digit:]]{1,2}\.[[:digit:]]{,3})/Table \1:/
