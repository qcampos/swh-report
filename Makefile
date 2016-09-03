FILES= pp.headers.md p0.intro.md p1.context.md p2.swh.md p3.archiver.md p4.objstorage.md p5.vault.md p6.methodology.md p7.conclusion.md
OUTPUT=report.pdf

ANNEXES= a1.archiver1.md a2.archiver2.md a3.vault.md
ANNEXES_OUTPUT=annexes.tex

TEMPLATE=template/custom2.tex
CODE_RENDER=template/listings_renderer.tex

PLANTUML=java -jar libs/plantuml.jar

all: images report


report:
	@echo "Compile annexes"
	pandoc $(ANNEXES) -o $(ANNEXES_OUTPUT)
	pandoc $(FILES) -o $(OUTPUT) --template $(TEMPLATE) -N --chapters --listings -H $(CODE_RENDER) --include-after-body $(ANNEXES_OUTPUT)

images: images/*.uml
	@echo "Compile images"
	$(PLANTUML) `find images/*.uml` -tpdf

clean:
	@rm -rf $(OUTPUT)
	@rm -rf images/*.png images/*.svg images/*.pdf
