# tikz-examples

This is a grab bag of LaTeX [TikZ](https://texample.net/tikz/) examples which I have created for various reasons, for possible future use.

Each example `.tex` here uses the `standalone` LaTeX class to create the image.  If you want to use the figure in your document then cut-and-paste the `tikzfigure` environment from the example `.tex` here.  Also note which packages are needed; `\usepackage{tikz}` is required in all cases, but an extra library may be needed.  See the preamble of the example.

* [`advectlimiter.tex`](advectlimiter.tex):
<p align="center">
  <img src="results/advectlimiter.jpg" height="250" /img> </a>
</p>

* [`cycles.tex`](cycles.tex):
<p align="center">
  <img src="results/cycles.jpg" height="150" /img> </a>
</p>

* [`difference-quotients.tex`](difference-quotients.tex):
<p align="center">
  <img src="results/difference-quotients.jpg" height="300" /img> </a>
</p>

* [`div-free-orthogonal.tex`](div-free-orthogonal.tex):
<p align="center">
  <img src="results/div-free-orthogonal.jpg" height="300" /img> </a>
</p>

* [`fluid-domain.tex`](fluid-domain.tex):
<p align="center">
  <img src="results/fluid-domain.jpg" height="300" /img> </a>
</p>

* [`q1gridandref.tex`](q1gridandref.tex):
<p align="center">
  <img src="results/q1gridandref.jpg" height="250" /img> </a>
</p>

* [`q1hat.tex`](q1hat.tex):
<p align="center">
  <img src="results/q1hat.jpg" height="250" /img> </a>
</p>

* [`unitsquaregridstencil.tex`](unitsquaregridstencil.tex):
<p align="center">
  <img src="results/unitsquaregridstencil.jpg" height="250" /img> </a>
</p>

## generating the image files for inclusion above

<i>These instructions are about making the current `README.md` at [github.com/bueler/tikz-examples](https://github.com/bueler/tikz-examples) look right.  Ignore it if you are grabbing examples from the above.</i>

Run `pdflatex` on each `.tex` you care about.  Then do

    $ make cropfigures

Then use `convert` from ImageMagick:

    $ convert -density 300 -quality 100 file.pdf results/file.jpg

For this to work, one may need to `/etc/ImageMagick-6/policy.xml` to comment-out a line which looks like

    <policy domain="coder" rights="none" pattern="PDF" />
