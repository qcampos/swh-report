# Compile report
pandoc \
pp.headers.md p0.intro.md p1.context.md p2.swh.md p3.archiver.md \
p4.objstorage.md p5.vault.md p6.methodology p7.conclusion.md \
-o report.pdf \
--template template/custom.tex \
-N
