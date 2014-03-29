# run this from the main directory

dir=bafit-arxiv
mkdir -pv $dir
mkdir -pv $dir/figures

cp -L -fv bafit_mnras.tex \
          bafit_mnras.bbl \
          mn2e.bst \
          mn2e.cls \
          newcommands.tex \
          $dir/

cp -fv figures/* $dir/figures
