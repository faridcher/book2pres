#! /usr/bin/env -S sed -E -f
# Titles: if length < 65 chars, prefix # and put in holdspace
# something done in pandoc
/^[[:print:]]{1,60}$/{/^(-|TASK|Figure|Table|شکل|جدول)/!{s/.+/# &/; h; d }}
