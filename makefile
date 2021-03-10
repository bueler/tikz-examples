all:

_figures := fluid-domain v-cycle
figures := $(addsuffix .pdf, $(_figures))

cropfigures: $(figures)
	for X in $(figures); do \
	     (pdfcrop $$X $$X); \
	done

.PHONY: clean cropfigures

clean:
	@rm -f *~ *.out *.aux *.log *.blg *.snm *.toc *.nav *.vrb *.bbl *.synctex.gz
