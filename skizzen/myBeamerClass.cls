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
  decorations.pathreplacing, fadings }

\usepackage{stmaryrd}

%%%% Bibliography %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage[style=authoryear,natbib=true,backend=biber]{biblatex}
\usepackage{fontspec}
\usepackage[babel]{csquotes}
%\usepackage{filecontents}

\renewcommand*{\thefootnote}{\tiny[\arabic{footnote}]}

\usepackage{amsmath,amsthm,amssymb}
\theoremstyle{plain}% default
\newtheorem{thm}{Theoreme}[section]
%\newtheorem{thm}[satz]{Satz}
%\newtheorem{lemma}[thm]{Lemma}
\newtheorem{lem}[thm]{Lemma}
\newtheorem{lemdef}[thm]{Lemma/Definition}
\newtheorem{lemcor}[thm]{Lemma/Korollar}
\newtheorem{defcor}[thm]{Definition/Korollar}
\newtheorem{cor}[thm]{Corollary}
\newtheorem{kor}[thm]{Corollary}
\newtheorem{prop}[thm]{Proposition}

\newtheorem{ex}{Aufgabe}[section]
\newtheorem*{beh}{Behauptung}
\newtheorem*{dazu}{Dazu}

\theoremstyle{definition}
\newtheorem{defn}[thm]{Definition}
\newtheorem{conj}[thm]{Conjecture}
\newtheorem{exmp}[thm]{Example}
\newtheorem{bsp}[thm]{Example}

\theoremstyle{remark}
\newtheorem{rem}[thm]{Remark}
\newtheorem{bem}[thm]{Remark}
\newtheorem{beo}[thm]{Beobachtung}
%\newtheorem{note}[thm]{Notiz}
\newtheorem{probl}[thm]{Problem}

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
\surroundwithmdframed[
  linewidth=2pt,
  linecolor=gray,
  topline=false,
  rightline=false,
  bottomline=false,
  leftmargin=\parindent,
  skipabove=\medskipamount,
  skipbelow=\medskipamount
]{thm}
\surroundwithmdframed[
  linewidth=2pt,
  linecolor=gray,
  topline=false,
  rightline=false,
  bottomline=false,
  leftmargin=\parindent,
  skipabove=\medskipamount,
  skipbelow=\medskipamount
]{defn}
\surroundwithmdframed[
  linewidth=2pt,
  linecolor=gray,
  topline=false,
  rightline=false,
  bottomline=false,
  leftmargin=\parindent,
  skipabove=\medskipamount,
  skipbelow=\medskipamount
]{cor}
\surroundwithmdframed[
  linewidth=2pt,
  linecolor=gray,
  topline=false,
  rightline=false,
  bottomline=false,
  leftmargin=\parindent,
  skipabove=\medskipamount,
  skipbelow=\medskipamount
]{prop}
\surroundwithmdframed[
  linewidth=2pt,
  linecolor=red!40!white,
  topline=false,
  rightline=false,
  bottomline=false,
  leftmargin=\parindent,
  skipabove=\medskipamount,
  skipbelow=\medskipamount
]{probl}


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
