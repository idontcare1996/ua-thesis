#!/bin/bash
if [ ! -f $1.tex ]; then

old_var=$1
removed_prefix=${old_var:20} # Remove the "../img/diagrams/pdf/"
removed_suffix=${removed_prefix%%.*}

# Placeholder text for new .tex files
VAR1=$(cat <<EOF
\begin{figure}[!htbp]
    \centering
    \includegraphics[width=0.90\textwidth]{img/diagrams/pdf/$removed_prefix}
    \caption[$removed_suffix listing]{$removed_suffix caption under figure}
    \label{fig:$removed_suffix}
\end{figure}
EOF
)

echo "$VAR1" > $1.tex
fi
echo "Ran"