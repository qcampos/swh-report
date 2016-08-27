OUTPUT=report.pdf
TEMPLATE=template/custom.tex
FILES= pp.headers.md p0.intro.md p1.context.md p2.swh.md p3.archiver.md p4.objstorage.md p5.vault.md p6.methodology.md p7.conclusion.md

all: report


report: images template
	@echo "Compile report"
	pandoc $(FILES) -o $(OUTPUT) --template $(TEMPLATE) -N

images: images/*.uml
	@echo "Compile uml diagrams"
	plantuml $?
