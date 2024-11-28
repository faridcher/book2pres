#! /usr/bin/env -S sed -E -f
# if after \end{frame} we have empty line and \begin{itemize}
/\\end\{itemize\}/{:x N; N; N;
/\\begin\{itemize\}$/s;.*;\\begin{itemize};
}
