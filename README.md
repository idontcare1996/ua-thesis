LaTeX template for theses at University of Aveiro.
Check the guidelines for [master](https://www.ua.pt/en/sga/page/12810) and [PhD](https://www.ua.pt/en/sga/page/4630) theses.

### Draw.io -> PDF -> .tex
In order to use *draw.io* diagrams, you need to download the desktop version of *draw.io*, install it, and make sure it runs when called by the command-line interface.
Afterwards, navigate to the `build-scripts` folder, and from there, execute the `drawio-pdf-tex` bash script.

This script will use the *draw.io* executable to export any file with a `.drawio` extension to `.pdf`. Then, it will move those files to the correct folder and follow up on that by creating (if they don't exist already) the corresponding `.tex` files in the correct folder as well. It will also delete `.tex` files remaining from the diagram folder.
Theoretically, you can use this script in a tool and then a latex recipe, but I haven't been able to do so yet. So, each time you change/create a new diagram, `cd` into the build-scripts directory and execute the script
```
$ cd build-scripts
$ ./drawio-pdf-tex.sh
```


### LaTeX document generation

You can generate the PDF output file with [latexmk](https://ctan.org/pkg/latexmk) using the following command.

```
$ latexmk -lualatex main.tex
```

Alternatively, you can use [TeXstudio](https://www.texstudio.org/), [Texmaker](https://www.xm1math.net/texmaker/), [Overleaf](https://www.overleaf.com/), [Visual Studio Code](https://code.visualstudio.com/) with [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop), or [any other LaTeX IDE](https://tex.stackexchange.com/questions/339/latex-editors-ides).

Support for both [pdfTeX](https://en.wikipedia.org/wiki/PdfTeX) and [LuaTeX](https://en.wikipedia.org/wiki/LuaTeX) engines has been guaranteed in this template, but I encourage you to use the latter.

You can consult further information about this template in the generated PDF.


### Authors

This is a fork of the work maintained by [Rui Antunes](https://github.com/ruiantunes)

It is based on the original [LaTeX template created by Tomás Oliveira e Silva](http://sweet.ua.pt/tos/TeX.html).

Similar works include the ones by [João Paulo Barraca _et al_.](http://code.ua.pt/projects/latex-ua/repository) and [Fábio Maia _et al_.](https://github.com/detiuaveiro/ua-thesis-template)


### Repository

[https://github.com/ruiantunes/ua-thesis-template](https://github.com/ruiantunes/ua-thesis-template)
