#! /usr/bin/env -S sed -E -f
/:$/{N; s/\n$//}
s/^#+ /# /
# rm pandoc preamble
/^---$/{:x N; /\n---$/d; bx}
