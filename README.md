# maArbeit

The compiled **pdf** can be downloaded [here](https://github.com/maximilianhuber/MasterThesisPDFs/raw/master/Maximilian_Huber-Masters_Thesis.pdf).

## About

This repository contains the **tex**-files, for my master thesis.
The compiled **pdf**-files can be found in the repository
[MasterThesisPDFs](https://github.com/maximilianhuber/MasterThesisPDFs) or in
the submodule `_output`.

### Compiling:
The code has to be compiled with **lualatex**:

```bash
latexmk -pdflatex=lualatex -pdf -pvc Maximilian_Huber-Masters_Thesis.tex
```
