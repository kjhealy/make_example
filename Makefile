# NOTE: install the pandoc-crossref filter if you don't already have it
# e.g. brew install pandoc-crossref

# `depends on tables and figures existing
all: figures tables
	cat mypaper.md tab1cap.md > fullpaper.md
	pandoc -F pandoc-crossref fullpaper.md -o fullpaper.pdf

# figures depend on data being setup
figures: setup_data
	R CMD BATCH R/create_figures.R

tables: setup_data
	R CMD BATCH R/create_tables.R

# Data setup target depends on clean data existing
setup_data: create_clean_data
	R CMD BATCH R/setup_data.R

# Clean data target make sure
create_clean_data:
	R CMD BATCH R/create_clean_data.R

# Clean target
.PHONY: clean

clean:
	rm -f fullpaper.pdf
	rm -f fullpaper.md
	rm -f figures/*.*
	rm -f data/*.*
	rm -f *.Rout
	rm -f .RData
