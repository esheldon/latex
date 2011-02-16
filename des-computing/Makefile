export PATH=/sw/bin:/usr/bin:$PATH
TEXFILE=des-computing
default: dvi

gary:
	latex gary-des-computing.tex
	latex gary-des-computing.tex
	dvips -t letter gary-des-computing -o gary-des-computing.ps
	ps2pdf gary-des-computing.ps
garybib:
	bibtex gary-des-computing

# just run it
bib: 
	bibtex ${TEXFILE}

dvi: 
	latex ${TEXFILE}
	latex ${TEXFILE}

ps: 
	latex ${TEXFILE}
	latex ${TEXFILE}
	dvips -t letter ${TEXFILE} -o ${TEXFILE}.ps

pdf:
	latex ${TEXFILE}
	latex ${TEXFILE}
	dvips -t letter ${TEXFILE} -o ${TEXFILE}.ps
	ps2pdf ${TEXFILE}.ps

all: 
	latex ${TEXFILE}
	latex ${TEXFILE}
	dvips -t letter ${TEXFILE} -o ${TEXFILE}.ps
	dvipdfm -o ${TEXFILE}.pdf ${TEXFILE}.dvi 

clean:
	rm -f \
	${TEXFILE}.dvi \
	${TEXFILE}.ps \
	${TEXFILE}.pdf \
	${TEXFILE}.aux \
	${TEXFILE}.bbl \
	${TEXFILE}.blg \
	${TEXFILE}.toc \
	${TEXFILE}.log
