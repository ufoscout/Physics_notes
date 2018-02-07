#
# Compiles the tex files
# ----------------------------------------------
#
# info: it requires texlive-full

input_directory=./Mathematics_Formulary
output_directory=./output

mkdir -p $output_directory
cd $input_directory
pandoc ./formulario.tex -o ../output/formulario.html --mathjax --template default.html5
cd ..
