# NOTE: install the pandoc-crossref filter if you don't already have it
# e.g. brew install pandoc-crossref

# `fullpaper.pdf` depends on `tab1cap.md` and `fig1.pdf` existing
fullpaper: fig1 tab1cap
	cat mypaper.md tab1cap.md > fullpaper.md
	pandoc -F pandoc-crossref fullpaper.md -o fullpaper.pdf

#`fig1.pdf` depends on `fig1.r`
fig1: fig1.r
	R CMD BATCH fig1.r

# `tab1cap.md` depends on tab1.md
tab1cap: tab1
	cat tab1.md tab_mtcars.label > tab1cap.md

#`tab1.md` depends on `tab1.r`
tab1: tab1.r
	R CMD BATCH tab1.r

# Clean target
.PHONY: clean

clean:
	rm -f fullpaper.pdf
	rm -f fullpaper.md
	rm -f fig1.pdf
	rm -f fig1.r.Rout
	rm -f tab1.md
	rm -f tab1.r.Rout
	rm -f .RData
