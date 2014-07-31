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

%%%% Bibliography %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage[style=authoryear,natbib=true,backend=biber]{biblatex}
\usepackage{fontspec}
\usepackage[babel]{csquotes}
%\usepackage{filecontents}

\renewcommand*{\thefootnote}{\tiny[\arabic{footnote}]}

\usepackage[framemethod=TikZ]{mdframed}
\surroundwithmdframed[
  linewidth=2pt,
  linecolor=gray,
  topline=false,
  rightline=false,
  bottomline=false,
  leftmargin=\parindent,
  skipabove=\medskipamount,
  skipbelow=\medskipamount
]{lem}


%A4
%\setlength{\paperwidth}{29.7cm}
%\setlength{\paperheight}{21.0cm}
%\setlength{\textwidth}{28.7cm}
%\setlength{\textheight}{20.0cm}
%custom
\setlength{\paperwidth}{15cm}
\setlength{\paperheight}{15cm}
\setlength{\textwidth}{13cm}
\setlength{\textheight}{13cm}
\beamertemplatenavigationsymbolsempty

% vim:set ft=tex foldmethod=marker foldmarker={{{,}}}:
