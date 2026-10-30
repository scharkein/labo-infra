LATEXMK ?= latexmk
TARGET  = main.pdf

all: $(TARGET)

$(TARGET): main.tex preamble.tex $(wildcard chapters/*.tex) $(wildcard frontmatter/*.tex) $(wildcard figures/*.tex) $(wildcard annexes/*.tex)
	$(LATEXMK) -pdf -pdflatex="pdflatex -interaction=nonstopmode" main.tex

clean:
	$(LATEXMK) -C
	rm -f main.pdf

.PHONY: all clean