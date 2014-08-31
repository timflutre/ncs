all:
	@echo "targets are 'analysis.html', 'introstatmod.pdf' and 'clean'"

analysis.html: analysis.Rmd
	echo 'library(knitr); knit2html("analysis.Rmd")' | R --vanilla --quiet
	# echo 'library(knitr); knit2html("analysis.Rmd", options = c("toc", markdown::markdownHTMLOptions(TRUE)))' | R --vanilla --quiet

introstatmod.pdf: introstatmod.tex
	pdflatex introstatmod.tex
	pdflatex introstatmod.tex

clean:
	rm -f analysis.md analysis.html figure/*
