PTEXFILE=early-career-sheldon

default: narrative

narrative:
	latex narrative
	latex narrative
	bibtex narrative
	latex narrative
	latex narrative

proposal: narrative
	dvips -t letter narrative
	ps2pdf narrative.ps
	pdftk narrative.pdf cat 1-24 output narrative-cut.pdf
	pdflatex early-career-sheldon

clean:
	rm -f \
	narrative.dvi \
	narrative.ps \
	narrative.pdf \
	narrative.aux \
	narrative.bbl \
	narrative.blg \
	narrative.toc \
	narrative.log \
	early-career-sheldon.pdf \
	early-career-sheldon.aux \
	early-career-sheldon.bbl \
	early-career-sheldon.blg \
	early-career-sheldon.toc \
	early-career-sheldon.log
