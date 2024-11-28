#! /usr/bin/env -S sed -E -f
# wrap list and pars in frame
# insert to holdspace
# /^% /{h; d }
/^[[:print:]]{1,55}$/{/^([@-]|Figure|Table)/!{s/.*/% &/; h; d }}
# later append hold to pat space and back-reference

# list blocks. and shift-up
/^[@-] /s,.*,\\begin{itemize}\n&\n\\end{itemize}\n\\end{itemize}\n\\end{frame},

# Table 3.1: TEXT
/^Table [[:digit:]]{1,2}-[[:digit:]]{1,2}:/{G; s,(^[^.]+[.-])([[:digit:]]+)(.+)\n% (.+),\\begin{frame}\[allowframebreaks\]{\4}\n\\centering\n{\\tiny \1\2\3\\\\}\n\\input{tabs/\2.tex}\n\\end{frame}, }

# includegraphics[width=1\\textwidth]{tabs/\2.pdf}\n\\end{frame}, }
/^Figure [[:digit:]]{1,2}-[[:digit:]]{1,2}:/{G; s;(^[^.]+[.-])([[:digit:]]+)(.+)\n% (.+);\\begin{frame}{\4}\n\\centering\n\\includegraphics[height=0.8\\textheight]{figs/\2.jpg}\\\\\n{\\tiny \1\2\3\\\\}\n\\end{frame}; }

# para blocks. none of above happens: not starting with \ or none empty line
/^(\\|$)/!{G; s,(.+)% (.+),\\begin{frame}\[allowframebreaks\]{\2}\n\\begin{itemize}\n\1\\end{itemize}\n\\end{frame}, }
