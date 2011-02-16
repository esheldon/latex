
TEXFILE=centerclass
default: dvi

# just run it
bib: 
	bibtex ${TEXFILE}

dvi: 
	latex ${TEXFILE}
	latex ${TEXFILE}

ps: 
	dvips -t letter ${TEXFILE} -o ${TEXFILE}.ps

pdf:
	latex ${TEXFILE}
	latex ${TEXFILE}
	dvipdfm -o ${TEXFILE}.pdf ${TEXFILE}.dvi 

clean:
	rm \
	${TEXFILE}.dvi \
	${TEXFILE}.ps \
	${TEXFILE}.pdf

