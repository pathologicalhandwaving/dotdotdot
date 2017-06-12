#!/bin/bash

dir=$(mktemp -d) || exit 1

cd $dir
cat <<EOF > file.tex
\\documentclass[varwidth=true,border=5pt]{standalone}
\\begin{document}
$1
\\end{document}
EOF

texfot --quiet --interactive pdflatex -shell-escape file.tex && \
convert -density 600 file.pdf -quality 90 -background white -alpha off -resize 50% file.png && \
tycat $dir/file.png && \
tycat $dir/file.png && \
sleep 0.5
rm -r $dir
