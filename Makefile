# The output file `mypaper.pdf` depends on `mypaper.md` and `fig1.pdf`
mypaper.pdf: mypaper.md fig1.pdf 
	pandoc mypaper.md -o mypaper.pdf

# The output file `fig1.pdf` depends on `fig1.r`
fig1.pdf: fig1.r
	R CMD BATCH fig1.r
