all:

_figures := fluid-domain v-cycle difference-quotients div-free-orthogonal advectlimiter q1gridandref q1hat unitsquaregridstencil
figures := $(addsuffix .pdf, $(_figures))

cropfigures:
	for X in $(figures); do \
	     (pdfcrop $$X $$X); \
	done

.PHONY: clean cropfigures

clean:
	@rm -f *~ *.out *.aux *.log *.blg *.snm *.toc *.nav *.vrb *.bbl *.synctex.gz
