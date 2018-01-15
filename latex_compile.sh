#
# Compiles the tex files
# ----------------------------------------------
#
# info: it requires texlive-full

filename=./main.tex
output_directory=./output

mkdir -p $output_directory
pdflatex -output-directory=$output_directory $filename
