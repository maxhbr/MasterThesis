maArbeit
========

This repository contains the **tex**-files, for my master thesis.

### Compiling:
The code has to be compiled with **lualatex**.

without notes:
--------------

```bash
latexmk -pdflatex=lualatex -pdf -pvc main-nonotes.tex
```

with notes:
-----------

```bash
latexmk -pdflatex=lualatex -pdf -pvc main.tex
```

## The folder `_output`
In this folder there will be the generated **PDF**s.

Tricks:
-------

Printing as booklet
```bash
lprBook() {
  [[ -f $1 ]] && {
    pdftops -paperw 420 -paperh 595 $1 - \
      | psbook -q \
      | ps2pdf14 - - \
      | lpr -o sides=two-sided-short-edge -o number-up=2 -o fit-to-page -o media=A4
  } || { echo "file not found"; }
}
```
for more, look at [myconfig](https://github.com/maximilianhuber/myconfig)
