# run this from the main directory

dir=arxiv
mkdir -p $dir
mkdir -p $dir/figures

cp -L -f bafit_mnras.tex \
         bafit_mnras.bbl \
         mn2e.bst \
         mn2e.cls \
         newcommands.tex \
         $dir/

cp -f figures/* $dir/figures
