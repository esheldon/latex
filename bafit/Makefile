
texfile := bafit
default: dvi

# just run it
bib: 
	bibtex ${texfile}

dvi: 
	latex ${texfile}
	latex ${texfile}

ps: 
	latex ${texfile}
	latex ${texfile}
	dvips -t a4 ${texfile} -o ${texfile}.ps

pdf:
	latex ${texfile}
	latex ${texfile}
	dvips -t a4 ${texfile} -o ${texfile}.ps
	ps2pdf ${texfile}.ps

clean:
	rm -f \
	${texfile}.dvi \
	${texfile}.ps \
	${texfile}.pdf \
	${texfile}.aux \
	${texfile}.bbl \
	${texfile}.blg \
	${texfile}.toc \
	${texfile}.log
