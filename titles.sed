#! /usr/bin/env -S sed -E -f
# /^[[:print:]]{1,65}$/{/^([@-]|Figure|Table)/!{s/.+/% &/}}
