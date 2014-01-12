maArbeit
========

## TODO:
* Alles

Über den Code
-------------

möchte mit lualatex compiliert werden, dazu ist das folgende in meiner 
.aliasrc:
```bash
mylualatexmk(){
  grep -l '\\documentclass' *tex | \
    xargs latexmk -pdflatex=lualatex -pdf -outdir=".lualatexmk_files" -pvc
}
```
Zum drucken als A5-Broschüre:
```bash
lprBook() {
  mystartcups
  [[ -f $1 ]] && {
    pdftops -paperw 420 -paperh 595 $1 - \
      | psbook -q \
      | ps2pdf14 - - \
      | lpr -o sides=two-sided-short-edge -o number-up=2 -o fit-to-page -o media=A4
  } || { echo "file not found"; }
}
```

