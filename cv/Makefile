TEXFILE=cv
default: pub

pub: 
	latex pubsource.tex
	latex pubsource.tex
	bibtex pubsource
	latex pubsource.tex
	latex pubsource.tex
	latex pub.tex
	latex pub.tex
	dvipdfm -o pub.pdf pub.dvi 
	@ echo "made pub.pdf"

pubrecent: 
	latex pubrecent
	latex pubrecent
	bibtex pubrecent
	latex pubrecent
	latex pubrecent

	dvipdfm -o pubrecent.pdf pubrecent.dvi 
	@ echo "made pubrecent.pdf"

talksrecent: 
	latex talksrecent
	latex talksrecent
	bibtex talksrecent
	latex talksrecent
	latex talksrecent

	dvipdfm -o talksrecent.pdf talksrecent.dvi 
	@ echo "made talksrecent.pdf"



pub8: 
	latex pubsource8.tex
	latex pubsource8.tex
	bibtex pubsource8
	latex pubsource8.tex
	latex pubsource8.tex
	latex pub8.tex
	latex pub8.tex
	dvipdfm -o pub8.pdf pub8.dvi 
	@ echo "made pub8.pdf"

pub10: 
	latex pubsource10.tex
	latex pubsource10.tex
	bibtex pubsource10
	latex pubsource10.tex
	latex pubsource10.tex
	latex pub10.tex
	latex pub10.tex
	dvipdfm -o pub10.pdf pub10.dvi 
	@ echo "made pub10.pdf"

pub20082009:
	latex pub-2008-09-2009-10.tex
	latex pub-2008-09-2009-10.tex
	dvipdfm -o pub-2008-09-2009-10.pdf pub-2008-09-2009-10.dvi

pub-2008-2010:
	latex pubsource-2008-2010.tex
	latex pubsource-2008-2010.tex
	bibtex pubsource-2008-2010
	latex pubsource-2008-2010.tex
	latex pubsource-2008-2010.tex
	latex pub-2008-2010.tex
	latex pub-2008-2010.tex
	dvips -t letter pub-2008-2010 -o pub-2008-2010.ps
	ps2pdf pub-2008-2010.ps
	@ echo "made pub-2008-2010.pdf"

pub-2008-2011:
	latex pubsource-2008-2011.tex
	latex pubsource-2008-2011.tex
	bibtex pubsource-2008-2011
	latex pubsource-2008-2011.tex
	latex pubsource-2008-2011.tex
	latex pub-2008-2011.tex
	latex pub-2008-2011.tex
	dvips -t letter pub-2008-2011 -o pub-2008-2011.ps
	ps2pdf pub-2008-2011.ps
	@ echo "made pub-2008-2011.pdf"




cv: 
	latex cv.tex
	latex cv.tex
	dvipdfm -o cv.pdf cv.dvi 
	@ echo "made cv.pdf"

# Must run pub first.  Would just call make pub but the open command
# messes up when called rapidly in succession
cvpub: 
	latex cvpub.tex
	latex cvpub.tex
	dvipdfm -o cvpub.pdf cvpub.dvi 
	@ echo "\nmade cvpub.pdf"

# Must run pub first.  Would just call make pub but the open command
# messes up when called rapidly in succession
cvpub8: 
	latex cvpub8.tex
	latex cvpub8.tex
	dvipdfm -o cvpub8.pdf cvpub8.dvi 
	@ echo "\nmade cvpub8.pdf"




clean:
	- rm -f *.aux *.log *.dvi *.pdf *.ps *.bbl *.blg

