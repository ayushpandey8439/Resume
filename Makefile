
all: Saalik_Hatia_CV_en.pdf

%.pdf: %.tex
	latexmk -pdf $^
clean:
	latexmk -c
watch:
	latexmk -interaction=nonstopmode -pdf -pvc Saalik_Hatia_CV_en.tex &
	
.PHONY: all clean watch

