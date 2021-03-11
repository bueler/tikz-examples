# tikz-examples

## grab bag of tikz examples

This repo contains a grab bag of examples which I have created for various reasons and might want to work from.

* [`fluid-domain.tex`](fluid-domain.tex):

<p align="center">
  <a  href="FIXME"> <img src="results/fluid-domain.jpg" alt="fluid-domain.tex" /img> </a>
</p>

FIXME

## generating the image files for inclusion in this README

Use `convert`:

    $ convert -density 300 -quality 100 fluid-domain.pdf fluid-domain.jpg

This may require editing `/etc/ImageMagick-6/policy.xml` to comment-out a line which looks like

    <policy domain="coder" rights="none" pattern="PDF" />