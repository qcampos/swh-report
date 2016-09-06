
INPUT=slides.md
OUTPUT=slides.pdf
DEP=$(wildcard *.sty *.jpg *.png images/*.uml)
THEME=Custom

$(OUTPUT): $(INPUT) $(DEP)
	java -jar libs/plantuml.jar images/*.uml -Tpdf
	pandoc -st beamer -V theme:$(THEME) -V lang:francais $(INPUT) -o $(OUTPUT)

withversion: $(INPUT) $(DEP)
	<$(INPUT) ./inject_version |\
		pandoc -st beamer -V theme:$(THEME) -V lang:francais -o $(OUTPUT)

run: $(OUTPUT)
	impressive -t Crossfade --nologo $(OUTPUT)

clean:
	rm -f $(OUTPUT)
