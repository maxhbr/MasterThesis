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
  decorations.pathreplacing, fadings, 3d }

\usepackage{stmaryrd}

%%%% Text
\usefonttheme{serif}


\AtBeginSection{\frame{\sectionpage}}

\newenvironment{einr}{%
  % \vspace{\medskipamount}
  \begin{itemize}
    \item[]
      % \begin{einrPrime}
      %   \begin{mdframed}[style=thick]
    }{%
      % \end{mdframed}
      % \end{einrPrime}
  \end{itemize}
}


%%%% Bibliography %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage[style=authoryear,natbib=true,backend=biber]{biblatex}
\usepackage{fontspec}
\usepackage[babel]{csquotes}
%\usepackage{filecontents}

\renewcommand*{\thefootnote}{\tiny[\arabic{footnote}]}

\usepackage{amsmath,amsthm,amssymb}
\theoremstyle{plain}% default
\newtheorem{thm}{Satz}[section]
\newtheorem{tthm}{Satz}[section]
%\newtheorem{thm}[satz]{Satz}
%\newtheorem{lemma}[thm]{Lemma}
\newtheorem{lem}[thm]{Lemma}
\newtheorem{llem}[thm]{Lemma}
\newtheorem{lemdef}[thm]{Lemma/Definition}
\newtheorem{lemcor}[thm]{Lemma/Korollar}
\newtheorem{defcor}[thm]{Definition/Korollar}
\newtheorem{cor}[thm]{Korollar}
\newtheorem{kor}[thm]{Korollar}
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

\definecolor{myVLineColor}{RGB}{0,51,128}
\usepackage[framemethod=TikZ]{mdframed}
\surroundwithmdframed[
  linewidth=2pt,
  linecolor=myVLineColor,
  topline=false,
  rightline=false,
  bottomline=false,
  leftmargin=\parindent,
  skipabove=\medskipamount,
  skipbelow=\medskipamount
]{lem}
\surroundwithmdframed[
  linewidth=2pt,
  linecolor=myVLineColor,
  topline=false,
  rightline=false,
  bottomline=false,
  innertopmargin=0pt,skipabove=0pt, innerbottommargin=0pt,
  leftmargin=\parindent,
  skipabove=\medskipamount,
  skipbelow=\medskipamount
]{lemdef}
\surroundwithmdframed[
  linewidth=2pt,
  linecolor=myVLineColor,
  leftmargin=\parindent, skipabove=\medskipamount, skipbelow=\medskipamount
]{llem}
\surroundwithmdframed[
  linewidth=1pt,
  linecolor=myVLineColor,
  % topline=false,
  % rightline=false,
  % bottomline=false,
  innertopmargin=0pt,skipabove=0pt, innerbottommargin=0pt,
  leftmargin=\parindent,
  skipabove=\medskipamount,
  skipbelow=\medskipamount
]{thm}
\surroundwithmdframed[
  linewidth=2pt,
  linecolor=myVLineColor,
  leftmargin=\parindent, skipabove=\medskipamount, skipbelow=\medskipamount
]{tthm}
\surroundwithmdframed[
  linewidth=2pt,
  linecolor=myVLineColor,
  topline=false,
  rightline=false,
  bottomline=false,
  innertopmargin=0pt,skipabove=0pt, innerbottommargin=0pt,
  leftmargin=\parindent,
  skipabove=\medskipamount,
  skipbelow=\medskipamount
]{defn}
\surroundwithmdframed[
  linewidth=2pt,
  linecolor=myVLineColor,
  topline=false,
  rightline=false,
  bottomline=false,
  leftmargin=\parindent,
  skipabove=\medskipamount,
  skipbelow=\medskipamount
]{cor}
\surroundwithmdframed[
  linewidth=2pt,
  linecolor=myVLineColor,
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
  innertopmargin=0pt,skipabove=0pt, innerbottommargin=0pt,
  leftmargin=\parindent,
  skipabove=\medskipamount,
  skipbelow=\medskipamount
]{probl}
\surroundwithmdframed[
  linewidth=1pt,
  linecolor=myVLineColor,
  topline=false,
  rightline=false,
  bottomline=false,
  leftmargin=\parindent,
  skipabove=\medskipamount,
  skipbelow=\medskipamount
]{rem}



% \setlength{\paperwidth}{15cm}
% \setlength{\paperheight}{15cm}
% \setlength{\textwidth}{13cm}
% \setlength{\textheight}{13cm}
\beamertemplatenavigationsymbolsempty

\usepackage{xcolor}
\usepackage{color}
\usepackage{framed}

\definecolor{commentShadeColor}{rgb}{1.0,.9,.6}
% \definecolor{commentShadeColor}{rgb}{.6,.6,.6}
\definecolor{commentTextColor}{rgb}{.2,.2,.2}
\definecolor{CommentFrameColor}{rgb}{.3,.3,.3}%
\newcommand{\TODO}[1][\empty]{{%
    \fcolorbox{CommentFrameColor}{commentShadeColor}{%
      \footnotesize{}
      \ifthenelse{\equal{#1}{\empty}}
      {\tiny T\!O\!D\!O}
      {\tiny T\!O\!D\!O: #1} % {TODO: #1}
    }}}

% vim:set ft=tex foldmethod=marker foldmarker={{{,}}}:
