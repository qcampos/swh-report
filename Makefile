OUTPUT=report.pdf
TEMPLATE=template/custom.tex
FILES= pp.headers.md p0.intro.md p1.context.md p2.swh.md p3.archiver.md p4.objstorage.md p5.vault.md p6.methodology.md p7.conclusion.md

all: report


report: images
	@echo "Compile report"
	pandoc $(FILES) -o $(OUTPUT) --template $(TEMPLATE) -N --chapters

images: images/*.uml
	plantuml `find images/*.uml` -tpdf

clean:
	@rm -rf $(OUTPUT)
	@rm -rf images/*.png images/*.svg images/*.pdf
