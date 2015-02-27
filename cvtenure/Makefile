
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
	${texfile}.dvi \
	${texfile}.ps \
	${texfile}.nav \
	${texfile}.out \
	${texfile}.snm \
	${texfile}.pdf \
	${texfile}.aux \
	${texfile}.bbl \
	${texfile}.blg \
	${texfile}.toc \
	${texfile}.log
