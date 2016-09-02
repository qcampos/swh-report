OUTPUT=report.pdf
FILES= pp.headers.md p0.intro.md p1.context.md p2.swh.md p3.archiver.md p4.objstorage.md p5.vault.md p6.methodology.md p7.conclusion.md

TEMPLATE=template/custom2.tex
CODE_RENDER=template/listings_renderer.tex

PLANTUML=java -jar libs/plantuml.jar

all: images report


report:
	@echo "Compile report"
	pandoc $(FILES) -o $(OUTPUT) --template $(TEMPLATE) -N --chapters --listings -H $(CODE_RENDER)

images: images/*.uml
	@echo "Compile images"
	$(PLANTUML) `find images/*.uml` -tpdf

clean:
	@rm -rf $(OUTPUT)
	@rm -rf images/*.png images/*.svg images/*.pdf
