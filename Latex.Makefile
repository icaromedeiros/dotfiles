# Using biblatex + biber
# Use MacTex to install
#

TARGET="paper"  # change it

build: clean
	@echo "Compiling latex..."
	@pdflatex $(TARGET).tex
	@echo "Compiling bibliography..."
	@biber $(TARGET)
	@clear
	@echo "Recompiling to add bibliography..."
	@pdflatex $(TARGET).tex
	@echo "Opening $(TARGET)."
	@open $(TARGET).pdf

build_bibtex: clean
	@echo "Compiling latex..."
	@pdflatex $(TARGET).tex
	@echo "Compiling bibliography..."
	@bibtex $(TARGET).aux
	@pdflatex $(TARGET).tex
	@echo "Recompiling to add bibliography..."
	@bibtex $(TARGET).aux
	@pdflatex $(TARGET).tex
	@open $(TARGET).pdf

clean:
	@find . -name "*.bbl" -delete
	@find . -name "*.blg" -delete
	@find . -name "*.aux" -delete
	@find . -name "*.log" -delete
	@find . -name "*.run.xml" -delete
	@find . -name "*.bcf" -delete
