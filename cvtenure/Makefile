
texfile := cvpub

default: all

all: pdf cvpdf pubpdf

# everything in one file
pdf:
	latex ${texfile}
	latex ${texfile}
	dvips -t letter ${texfile} -o ${texfile}.ps
	ps2pdf ${texfile}.ps

# cv separate
cvpdf:
	latex cv
	latex cv
	dvips -t letter cv -o cv.ps
	ps2pdf cv.ps

pubpdf:
	latex pubs
	latex pubs
	dvips -t letter pubs -o pubs.ps
	ps2pdf pubs.ps


# pubs separate

clean:
	rm -f \
	*.dvi \
	*.ps \
	*.nav \
	*.out \
	*.snm \
	*.pdf \
	*.aux \
	*.blg \
	*.toc \
	*.log
