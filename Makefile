# Build the slides with latexmk. Output goes to build/, final PDF is copied next to the sources.
MAIN   := slides
BUILD  := build
LATEXMK := latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=$(BUILD)

.PHONY: all pdf watch clean distclean

all: pdf

pdf: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex $(wildcard images/*)
	$(LATEXMK) $(MAIN).tex
	cp $(BUILD)/$(MAIN).pdf $(MAIN).pdf

# Rebuild on every change
watch:
	$(LATEXMK) -pvc $(MAIN).tex

clean:
	latexmk -C -outdir=$(BUILD) $(MAIN).tex
	rm -rf $(BUILD)

distclean: clean
	rm -f $(MAIN).pdf
