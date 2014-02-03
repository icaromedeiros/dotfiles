# Using biblatex + biber
# Use MacTex to install

report: clean
	@echo "Making report..."
	@echo "Compiling report..."
	@pdflatex report.tex
	@echo "Compiling bibliography..."
	@biber report
	@clear
	@echo "Recompiling report..."
	@pdflatex report.tex
	@echo "Opening report."
	@open report.pdf

report_bibtex: clean
	@echo "Making report..."
	@pdflatex report.tex
	@bibtex report.aux
	@pdflatex report.tex
	@bibtex report.aux
	@pdflatex report.tex
	@open report.pdf

clean:
	@find . -name "*.bbl" -delete
	@find . -name "*.blg" -delete
	@find . -name "*.aux" -delete
	@find . -name "*.log" -delete
	@find . -name "*.run.xml" -delete
	@find . -name "*.bcf" -delete
