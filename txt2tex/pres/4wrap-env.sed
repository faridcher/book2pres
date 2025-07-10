#! /usr/bin/env -S sed -E -f
# wrap list and pars in frame
# run after join
# insert to holdspace
/^# /{h; d }

# later append hold to pat space and back-reference in wrap-env.sed
# /^TASK/{s/.+/

# list blocks. and shift-up
# /^[@-] /s,.*,\\begin{itemize}\n&\n\\end{itemize}\n\\end{itemize}\n\\end{frame},

# varbatim text
# /^verbam\//{G; s,(verbam/.+)\n# (.+),\\begin{frame}\[allowframebreaks\]{\2}\n\\input{\1}\n\\end{frame}, }

# Table 3.1: TEXT
# localize tabs/1-fa.tex
/^(Table|جدول) [[:digit:]]{1,2}[-.][[:digit:]]{1,2}: /{G; s,(^[^.]+[.-])([[:digit:]]+)(.+)\n# (.+),\\begin{frame}{\4}\n\\centering\n{\\tiny \1\2\3\\\\}\n\\input{tabs/\2-fa.tex}\n\\end{frame}, }

# includegraphics[width=1\\textwidth]{tabs/\2.pdf}\n\\end{frame}, }
# number must be like 3-2:
/^(Figure|شکل) [[:digit:]]{1,2}[-.]?[[:digit:]]{0,2}: /{G; s;(^[^.]+[.-])([[:digit:]]+)(.+)\n# (.+);\\begin{frame}[c]{\4}\n\\centering\n\\includegraphics[height=0.8\\textheight]{figs/\2.jpg}\\\\\n{\\tiny \1\2\3\\\\}\n\\end{frame}; }

# para/list blocks. none of above happens: not starting with \ (a latex cmd) or is not empty line
/^(\\|$)/!{G; s,(.+)# (.+),\\begin{frame}\[allowframebreaks\]{\2}\n\\begin{itemize}\n\1\\end{itemize}\n\\end{frame}, }
