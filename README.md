maArbeit
========

möchte mit lualatex compiliert werden, dazu ist das folgende in meiner 
.aliasrc:
```ruby
mylualatexmk(){
  grep -l '\\documentclass' *tex | \
    xargs latexmk -pdflatex=lualatex -pdf -outdir=".lualatexmk_files" -pvc
}
```


