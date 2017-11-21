main = main

all: pdf

pdf:
	pdflatex $(main)
	bibtex $(main)
	pdflatex $(main)
	pdflatex $(main)
	pdflatex $(main)
clean:
	rm -rf *.aux *.log *.bbl *.blg *.toc *.lof *.lot *.out *.bcf *.nav *.run.xml *.snm $(main).pdf generated
