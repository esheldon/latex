
TEXFILE=mzm-green-card
default: dvi

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
    # this screws up figures
    #dvipdfm -o ${TEXFILE}.pdf ${TEXFILE}.dvi 

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
