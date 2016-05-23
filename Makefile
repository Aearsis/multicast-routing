all: thesis.pdf

thesis.pdf: img/rp-tree.pdf img/source-tree.pdf

# LaTeX must be run multiple times to get references right
thesis.pdf: thesis.tex $(wildcard *.tex) bibliography.bib
	pdflatex $<
	bibtex thesis
	pdflatex $<
	pdflatex $<

img/%.pdf: img/%.asy img/lib.asy
	asy -f pdf $< -o $@

clean:
	rm -f *.log *.dvi *.aux *.toc *.lof *.lot *.out *.bbl *.blg
	rm -f thesis.pdf
