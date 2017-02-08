dest=arxiv

epslist=$(grep "\.eps" mcalnoise.tex | cut -d { -f 2 | cut -d } -f 1)

for f in $epslist; do
    cp -v $f $dest/
done

for f in mcalnoise.tex mcalnoise.bbl astroref.bib emulateapj.cls newcommands.tex apj.bst apj-jour.bib; do
    cp -v $f $dest/
done
