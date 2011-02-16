TEXFILE=des_dc3
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
	dvipdf ${TEXFILE}.dvi ${TEXFILE}.pdf

clean:
	rm \
	${TEXFILE}.dvi \
	${TEXFILE}.ps \
	${TEXFILE}.pdf


