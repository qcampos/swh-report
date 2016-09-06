FILES= pp.headers.md p0.intro.md p1.context.md p2.swh.md p3.archiver.md p4.objstorage.md p5.vault.md p6.methodology.md p7.conclusion.md
OUTPUT=report.pdf

APPENDIX= a1.archiver1.md a2.archiver2.md a3.vault.md a4.database.md
APPENDIX_OUTPUT=annexes.tex

TEMPLATE=template/custom2.tex
CODE_RENDER=template/listings_renderer.tex

PLANTUML=java -jar libs/plantuml.jar

all: report


report: images appendix $(FILES)
	@echo "Compile Report"
	pandoc $(FILES) -o $(OUTPUT) --template $(TEMPLATE) -N --chapters --listings -H $(CODE_RENDER) --include-after-body $(APPENDIX_OUTPUT)

images: $(wildcard images/*.uml)
	@echo "Compile images"
	$(PLANTUML) $? -tpdf

appendix: $(APPENDIX)
	@echo "Compile appendix"
	pandoc $(APPENDIX) -o $(APPENDIX_OUTPUT)

clean:
	@rm -rf $(OUTPUT)
	@rm -rf images/*.png images/*.svg images/*.pdf
