%\xdef\myDevelopVariable{0}
\def\ifundefined#1{\expandafter\ifx\csname#1\endcsname\relax}
\ifundefined{myDevelopVariable}\xdef\myDevelopVariable{1}\fi

\LoadClassWithOptions{beamer}

%%%% Sprache
\usepackage{polyglossia}
\setdefaultlanguage{german}
\setotherlanguages{english}

\usepackage{amsmath,amsthm,amssymb}
\usepackage{latexsym}

\usepackage{url} % URLS in bibtex

\usepackage[german]{varioref}

\usepackage{tikz}
\usepackage{tikz-cd}
\usetikzlibrary{matrix,arrows, calc, decorations.pathmorphing,%
  decorations.pathreplacing }

\usepackage{stmaryrd}

\renewcommand*{\thefootnote}{[\arabic{footnote}]}

% vim:set ft=tex foldmethod=marker foldmarker={{{,}}}:
