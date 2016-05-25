all: thesis.pdf

thesis.pdf: $(patsubst %.asy, %.pdf, img/*.asy)

# LaTeX must be run multiple times to get references right
thesis.pdf: thesis.tex $(wildcard *.tex) bibliography.bib
	pdflatex $<
	bibtex thesis
	pdflatex $<
	makeindex thesis.nlo -s nomencl.ist -o thesis.nls
	pdflatex $<
	#cp thesis.pdf ~/Cloud/

img/%.pdf: img/%.asy img/lib.asy
	asy -f pdf $< -o $@

clean:
	rm -f *.log *.dvi *.aux *.toc *.lof *.lot *.out *.bbl *.blg *.il *.nlo *.nls
	rm -f thesis.pdf
