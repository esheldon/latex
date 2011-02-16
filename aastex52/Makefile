# Makefile for AASTeX

# Set INSTALLDIR to the directory that aastex.cls should be
# installed in.  It would be canonical for it to go in the
# tex/latex/misc area.  So you probably only need to change
# the leading portion of this, once you know where your texmf
# installation is rooted.

INSTALLDIR = /usr/share/texmf/tex/latex/misc

# It you have tetex installed, you can run "texconfig conf"
# to see what TEXMFMAIN is.

# ------------------------------------------------------------------------
# From here on, parameters should not usually require change.

PACKAGE = aastex
VERSION = 52
DATE    = 14 Jan 2004

TAREXT  = tgz

RM      = rm -f
TAR     = tar
COMPRESS = gzip
UNCOMPRESS = gunzip -c
INSTALL = install -m 0644
SYMLINK = ln -s

# ========================================================================
# NO!  You do not need to screw around below this line!

CLASS   = aastex.cls
MANUAL  = aasguide

SOURCES = *.tex *.aux *.toc *.eps $(CLASS) *.sty
SUBDIRS =
FILES   = Makefile Version README $(SOURCES) $(SUBDIRS)

# Add some useful inference rules for LaTeX development.
.SUFFIXES: .doc .sty .tex .dvi .ps

.doc.sty:
	doc2sty $*

.tex.dvi:
	latex $<

.dvi.ps:
	dvips $< -o $*.ps

# Generalized targets, housekeeping, etc.
first: showver
all: $(MANUAL).dvi symbols.dvi sample.dvi

install: $(INSTALLDIR)/$(CLASS)

$(INSTALLDIR)/$(CLASS): $(CLASS)
	$(INSTALL) $(CLASS) $(INSTALLDIR)

clean:
	$(RM) a.out core *.dvi *.log

veryclean: clean
	$(RM) *.aux *.toc

tar: clean brand
	$(RM) $(PACKAGE)$(VERSION).$(TAREXT)
	$(TAR) -cf - $(FILES) | $(COMPRESS) > $(PACKAGE)$(VERSION).$(TAREXT)

zip: clean
	$(RM) $(PACKAGE)$(VERSION).zip
	zip $(PACKAGE)$(VERSION).zip $(FILES)

brand:
	@echo -n "$(PACKAGE) v$(VERSION) ($(DATE))" > Version
	@echo -n , cls `egrep '%%[ ]+version[ ]+=' $(CLASS) | sed 's/^.*=[ ]*"//' | sed 's/".*$$//'` >> Version
	@echo ", $(TAREXT) created `date`" >> Version

showver:
	@cat Version
	@echo 'Version data in Makefile:'
	@egrep '^(PACKAGE|VERSION|DATE)' Makefile
	@echo -n 'Version data in $(CLASS): '
	@egrep '%%[ ]+version[ ]+=' $(CLASS) | sed 's/^.*=[ ]*"//' | sed 's/".*$$//'

texmf:
	@texconfig conf | egrep TEXMFMAIN

# Dependency targets.

$(MANUAL): $(MANUAL).dvi
$(MANUAL).ps: $(MANUAL).dvi
$(MANUAL).dvi: $(MANUAL).tex $(CLASS) aastexug.sty

symbols: symbols.dvi
symbols.ps: symbols.dvi
symbols.dvi: symbols.tex $(CLASS) aastexug.sty

sample: sample.dvi
sample.ps: sample.dvi
sample.dvi: sample.tex $(CLASS)

natnotes: natnotes.dvi
natnotes.ps: natnotes.dvi
natnotes.dvi: natnotes.tex

aasclass: aasclass.dvi
aasclass.ps: aasclass.dvi
aasclass.dvi: aasclass.tex $(CLASS)
