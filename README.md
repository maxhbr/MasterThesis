maArbeit
========

## TODO:
* Alles

## Das Verzeichnis `_output`
In diesem Verzeichnis sollen sich die (hofffentlich aktuellen) **PDF**s
befinden.

Über den Code
-------------

Er möchte mit **lualatex** compiliert werden, dazu ist das folgende in meiner 
`.aliasrc`:
```bash
mylualatexmk(){
  grep -l '\\documentclass' *tex | \
    xargs latexmk -pdflatex=lualatex -pdf -outdir=".lualatexmk_files" -pvc
}
```
Zum drucken als A5-Broschüre:
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
für mehr, siehe [myconfig](https://github.com/maximilianhuber/myconfig)
