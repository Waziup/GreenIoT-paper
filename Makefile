main = main

all: pdf

pdf:
	pdflatex --shell-escape $(main)
	bibtex $(main)
	pdflatex --shell-escape $(main)
	pdflatex --shell-escape $(main)
	pdflatex --shell-escape $(main)
clean:
	rm -rf *.aux *.log *.bbl *.blg *.toc *.lof *.lot *.out *.bcf *.nav *.run.xml *.snm $(main).pdf generated
