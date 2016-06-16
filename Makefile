all: presentation.pdf images.pdf

IMAGES = $(patsubst %.asy, %.pdf, $(wildcard img/*.asy))

thesis.pdf: ${IMAGES}
presentation.pdf: ${IMAGES}
images.pdf: ${IMAGES}
	pdftk $(sort $(wildcard img/*.pdf)) output $@

# LaTeX must be run multiple times to get references right
thesis.pdf: thesis.tex $(wildcard *.tex) bibliography.bib
	pdflatex $<
	bibtex thesis
	pdflatex $<
	makeindex thesis.nlo -s nomencl.ist -o thesis.nls
	pdflatex $<
	#cp thesis.pdf ~/Cloud/

presentation.pdf: presentation/presentation.tex
	pdflatex $<

IMGDEP += img/lib.asy img/unilib.asy
IMGDEP += $(wildcard img/*.eps)

img/%.pdf: img/%.asy ${IMGDEP}
	asy -f pdf $< -o $@


clean:
	rm -f *.log *.dvi *.aux *.toc *.lof *.lot *.out *.bbl *.blg *.il *.nlo *.nls
	rm -f thesis.pdf
