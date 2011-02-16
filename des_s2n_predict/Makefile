TEXFILE=des_s2n_predict
default: pdf

pdf:
	latex ${TEXFILE}
	latex ${TEXFILE}
	dvipdfm ${TEXFILE}.dvi 

# just run it
bib: 
	bibtex ${TEXFILE}

clean:
	rm \
	${TEXFILE}.dvi \
	${TEXFILE}.ps \
	${TEXFILE}.pdf


