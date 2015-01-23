%\xdef\myDevelopVariable{0}
\def\ifundefined#1{\expandafter\ifx\csname#1\endcsname\relax}
\ifundefined{myDevelopVariable}\xdef\myDevelopVariable{1}\fi

\usepackage[table]{xcolor}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%  global variables  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\definecolor{myColor1}{RGB}{0,51,128}
\definecolor{myheadLineColor}{RGB}{0,51,128}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\LoadClassWithOptions{scrbook}

%%%% General
\clubpenalty = 10000
\widowpenalty = 10000
\displaywidowpenalty = 10000

%%%% Sprache
\usepackage{polyglossia}
\iffalse
  \setdefaultlanguage{german}
  \setotherlanguages{english}
\else
  \setdefaultlanguage{english}
  \setotherlanguages{germal}
\fi

\usepackage{amsmath,amsthm,amssymb}
\usepackage{latexsym}
\usepackage{enumerate}
\usepackage{graphicx}

\usepackage{url} % URLS in bibtex

\usepackage[german]{varioref}
\usepackage{hyperref}
\hypersetup{colorlinks, citecolor=black, filecolor=black, linkcolor=black, urlcolor=black}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%  tikz  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{tikz}
\usepackage{tikz-cd}
\usetikzlibrary{matrix, arrows, calc, decorations.pathmorphing,%
  decorations.pathreplacing, fadings, 3d, decorations.markings, positioning}
\usepackage{tikzpagenodes}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%  Design / Style  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\usepackage{paracol}

%%%% Headline styles %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% \usepackage{scrpage2}
\usepackage[automark]{scrpage2}
% \pagestyle{scrheadings}
\addtokomafont{pagenumber}{\sffamily\color{gray!50!black}}
\addtokomafont{pagehead}{\sffamily\upshape\color{gray!50!black}}
%\setheadwidth[0pt]{textwithmarginpar}}
\pagestyle{scrheadings}
\clearscrheadfoot
\setheadsepline{0pt}
\chead{\headmark}
\ohead[\myheadcmdempty]{\myheadcmd}
\ofoot{}
\def\myheadcmd{\tikz[remember picture]{
  \node[outer xsep=1pt, outer ysep=3pt, inner ysep=0pt,
    inner xsep=5pt, font=\sffamily] (a) {\pagemark};}%
    \tikz[remember picture, overlay]{
    \ifthenelse{\isodd{\thepage}}{
    % \ifthispageodd{
      \draw[myColor1,line width=1pt]
        ($(a.north west)+(0pt,0)$) |- ($(a.south east)+(-3pt,-3pt)$);
      \draw[myColor1] ($(a.south west)+(0pt,0pt)$)  -- 
        (a.south west -| current page text area.north west);
    }{%
      \draw[myColor1,line width=1pt]
        ($(a.north east)+(0pt,0)$) |- ($(a.south west)+(3pt,-3pt)$);
      \draw[myColor1] ($(a.south east)+(0pt,0pt)$)-- 
        (a.south east -| current page text area.north east);
    }%
  }%
}
\makeatletter
\def\myheadcmdempty{
  \if@mainmatter
  \else
    \tikz[remember picture]{
    \node[outer xsep=1pt, outer ysep=3pt, inner ysep=0pt,
      inner xsep=5pt, font=\sffamily] (a) {\pagemark};}%
      \tikz[remember picture, overlay]{
      % \ifthenelse{\isodd{\thepage}}{
      \ifthispageodd{
        \draw[myColor1,line width=1pt]
          ($(a.north west)+(0pt,0)$) |- ($(a.south east)+(-3pt,-3pt)$);
      }{
        \draw[myColor1,line width=1pt]
          ($(a.north east)+(0pt,0)$) |- ($(a.south west)+(3pt,-3pt)$);
      }
    }
  \fi
}
% \else
%   \def\myheadcmdempty{}
\makeatother

%%%%  Layout  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% \usepackage[scale=0.75]{geometry}
% \usepackage{geometry}
\setlength{\unitlength}{1mm}
%\emergencystretch 2em
%\usepackage{multicol}
\usepackage{lscape} % alt: pdflscape

\allowdisplaybreaks

\iftrue %Section Numbers moved left out
  \usepackage{sectsty}
  \makeatletter\def\@seccntformat#1{%
    \protect\makebox[0pt][r]{\csname the#1\endcsname\hspace{12pt}}}\makeatother
\fi

\renewcommand*{\thefootnote}{[\arabic{footnote}]}


\iftrue %Horizontale Linien
  \usepackage{sectsty}
  \chapterfont{%
    \vspace{1cm}
    \color{myheadLineColor}
    \sectionrule{0pt}{0pt}{-5pt}{2pt}
    }
  \sectionfont{%
    \color{myheadLineColor}
    \sectionrule{0pt}{0pt}{-5pt}{0.8pt}
    }
  \subsectionfont{%
    \color{myheadLineColor}
    \sectionrule{0pt}{0pt}{-5pt}{0.6pt}
    }
  \subsubsectionfont{%
    \color{myheadLineColor}
    \sectionrule{0pt}{0pt}{-5pt}{0.4pt}
    }
\fi

%%%%  Typography  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{lmodern} %Type1-Schriftart für nicht-englische Texte
\setkomafont{sectioning}{\normalcolor\bfseries\boldmath}

\iffalse %schrift enger:
  \usepackage{mathptmx}
  \usepackage[scaled=.92]{helvet}
  \usepackage{courier}
\fi

%\linespread{1.5}

%%%%  Theoreme Styles  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage[framemethod=TikZ]{mdframed}
\makeatletter

\theoremstyle{plain}% default
\iffalse
  \newtheorem{thm}{Satz}[chapter]
  \newtheorem{tthm}{Satz}[chapter]
  \newtheorem{lemma}[thm]{Lemma}
  \newtheorem{lem}[thm]{Lemma}
  \newtheorem{llem}[thm]{Lemma}
  \newtheorem{lemdef}[thm]{Lemma/Definition}
  \newtheorem{lemcor}[thm]{Lemma/Korollar}
  \newtheorem{defcor}[thm]{Definition/Korollar}
  \newtheorem{cor}[thm]{Korollar}

  \newtheorem{kor}[thm]{Korollar}
  \newtheorem{prop}[thm]{Proposition}

  \newtheorem{ex}{Aufgabe}[chapter]
  \newtheorem*{beh}{Behauptung}
  \newtheorem*{dazu}{Dazu}

  \theoremstyle{definition}
  \newtheorem{defn}[thm]{Definition}
  \newtheorem*{notations}{Notations}
  \newtheorem{conj}[thm]{Conjecture}
  \newtheorem{exmp}[thm]{Example}
  \newtheorem{bsp}[thm]{Example}

  \theoremstyle{remark}
  \newtheorem{rem}[thm]{Remark}
  \newtheorem{bem}[thm]{Remark}
  \newtheorem{beo}[thm]{Beobachtung}
  \newtheorem{note}[thm]{Notiz}

  %\usepackage{thmbox}
  \newtheorem{try}{Versuch}
  \newtheorem{case}{Fall}

  \newenvironment{einr}{}{}
\else
  \mdtheorem[linewidth=2pt ,linecolor=myColor1
            ,topline=false, rightline=false, bottomline=false
            ,leftmargin=\parindent
            ,skipabove=\medskipamount, skipbelow=\medskipamount
            ]{thm}{Theorem}[chapter]
  \mdtheorem[linewidth=2pt ,linecolor=myColor1
            ,leftmargin=\parindent
            ,skipabove=\medskipamount, skipbelow=\medskipamount
            ]{tthm}{Theorem}[chapter]
  \mdtheorem[linewidth=2pt ,linecolor=myColor1
            ,topline=false, rightline=false, bottomline=false
            ,leftmargin=\parindent
            ,skipabove=\medskipamount, skipbelow=\medskipamount
            ]{lem}[thm]{Lemma}
  \mdtheorem[linewidth=2pt ,linecolor=myColor1
            ,leftmargin=\parindent
            ,skipabove=\medskipamount, skipbelow=\medskipamount
            ]{llem}[thm]{Lemma}
  \mdtheorem[linewidth=2pt ,linecolor=myColor1
            ,topline=false, rightline=false, bottomline=false
            ,leftmargin=\parindent
            ,skipabove=\medskipamount, skipbelow=\medskipamount
            ]{lemdef}[thm]{Lemma/Definition}
  \mdtheorem[linewidth=2pt ,linecolor=myColor1
            ,topline=false, rightline=false, bottomline=false
            ,leftmargin=\parindent
            ,skipabove=\medskipamount, skipbelow=\medskipamount
            ]{lemdef}[thm]{Lemma/Corollary}
  \mdtheorem[linewidth=2pt ,linecolor=myColor1
            ,topline=false, rightline=false, bottomline=false
            ,leftmargin=\parindent
            ,skipabove=\medskipamount, skipbelow=\medskipamount
            ]{lemdef}[thm]{Definition/Corollary}
  \mdtheorem[linewidth=2pt ,linecolor=myColor1
            ,topline=false, rightline=false, bottomline=false
            ,leftmargin=\parindent
            ,skipabove=\medskipamount, skipbelow=\medskipamount
            ]{cor}[thm]{Corollary}
  \mdtheorem[linewidth=2pt ,linecolor=myColor1
            ,topline=false, rightline=false, bottomline=false
            ,leftmargin=\parindent
            ,skipabove=\medskipamount, skipbelow=\medskipamount
            ]{kor}[thm]{Corollary}
  \mdtheorem[linewidth=2pt ,linecolor=myColor1
            ,topline=false, rightline=false, bottomline=false
            ,leftmargin=\parindent
            ,skipabove=\medskipamount, skipbelow=\medskipamount
            ]{prop}[thm]{Proposition}

  \newtheorem{ex}{Aufgabe}[chapter]
  \newtheorem*{beh}{Behauptung}
  \newtheorem*{dazu}{Dazu}

  \theoremstyle{definition}
  \mdtheorem[linewidth=1pt ,linecolor=myColor1
            ,topline=false, rightline=false, bottomline=false
            ,leftmargin=\parindent
            ,skipabove=\medskipamount, skipbelow=\medskipamount
            ]{defn}[thm]{Definition}
  \mdtheorem[linewidth=1pt ,linecolor=myColor1
            ,topline=false, rightline=false, bottomline=false
            ,leftmargin=\parindent
            ,skipabove=\medskipamount, skipbelow=\medskipamount
            ]{notations}[thm]{Notations}
  \mdtheorem[linewidth=1pt ,linecolor=myColor1
            ,leftmargin=\parindent
            ,skipabove=\medskipamount, skipbelow=\medskipamount
            ]{notations}[conj]{Conjecture}
  \mdtheorem[linewidth=1pt ,linecolor=myColor1
            ,leftmargin=\parindent
            ,skipabove=\medskipamount, skipbelow=\medskipamount
            ]{exmp}[thm]{Example}
  \newtheorem{bsp}[thm]{Example}

  \theoremstyle{remark}
  \mdtheorem[linewidth=1pt ,linecolor=myColor1
            ,topline=false, rightline=false, bottomline=false
            ,leftmargin=\parindent
            ,skipabove=\medskipamount, skipbelow=\medskipamount
            ]{rem}[thm]{Remark}
  \mdtheorem[linewidth=1pt ,linecolor=myColor1
            ,topline=false, rightline=false, bottomline=false
            ,leftmargin=\parindent
            ,skipabove=\medskipamount, skipbelow=\medskipamount
            ]{bem}[thm]{Remark}
  \mdtheorem[linewidth=1pt ,linecolor=myColor1
            ,topline=false, rightline=false, bottomline=false
            ,leftmargin=\parindent
            ,skipabove=\medskipamount, skipbelow=\medskipamount
            ]{note}[thm]{Note}

  \newtheorem{beo}[thm]{Beobachtung}

  %\usepackage{thmbox}
  \newtheorem{try}{Versuch}
  \newtheorem{case}{Fall}

  \surroundwithmdframed[linecolor=myColor1
                       ,topline=false ,rightline=false ,bottomline=false
                       ,leftmargin=\parindent
                       ,skipabove=\medskipamount ,skipbelow=\medskipamount
                       ]{proof}

  \newenvironment{einr}{%
      \begin{itemize}
        \item[]
          \begin{mdframed}[linewidth=1pt ,linecolor=myColor1
              ,topline=false, rightline=false, bottomline=false
              ,leftmargin=\parindent
              ,skipabove=\medskipamount, skipbelow=\medskipamount]

    }{%
          \end{mdframed}
      \end{itemize}
    }
\fi

\numberwithin{equation}{chapter}
\numberwithin{figure}{chapter}
%\numberwithin{figure}{thm}


%%%%  figures  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{float}
%TODO: decorate floats
\newcommand{\myfigurestart}{
%\textcolor{lightgray}{\hrule height 2pt}
\hline
\vspace{3mm}
}
\newcommand{\myfigureend}{
\vspace{3mm}
\hline
%\textcolor{lightgray}{\hrule height 2pt}
}

%\usepackage{lipsum}% http://ctan.org/pkg/lipsum
%\usepackage{mdframed}% http://ctan.org/pkg/mdframed
%\usepackage{xcolor}% http://ctan.org/pkg/xcolor
%\newenvironment{inline}{
%\begin{figure}[h!]
  %\begin{mdframed}[backgroundcolor=back!5]
  %\vspace{10pt}%
%}{%
  %\end{mdframed}
%\end{figure}
%}

%%%%  Zeichen  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{nicefrac}
\usepackage{mathrsfs}
\usepackage{stmaryrd}
%simplewick

%%%%  myobracket/myubracket  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{mathtools}
\newcommand{\myobracket}[1]{%
  \textcolor{gray}{%
    \overbracket[0.7pt]{%
      \textcolor{black}{%
        #1%
      }%
    }%
  }%
}
\newcommand{\myubracket}[1]{%
  \textcolor{gray}{%
    \underbracket[0.7pt]{%
      \textcolor{black}{%
        #1%
      }%
    }%
  }%
}

%%%%  Listings  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{listings}
\lstset{literate=
  {á}{{\'a}}1 {é}{{\'e}}1 {í}{{\'i}}1 {ó}{{\'o}}1 {ú}{{\'u}}1
  {Á}{{\'A}}1 {É}{{\'E}}1 {Í}{{\'I}}1 {Ó}{{\'O}}1 {Ú}{{\'U}}1
  {à}{{\`a}}1 {è}{{\'e}}1 {ì}{{\`i}}1 {ò}{{\`o}}1 {ò}{{\`u}}1
  {À}{{\`A}}1 {È}{{\'E}}1 {Ì}{{\`I}}1 {Ò}{{\`O}}1 {Ò}{{\`U}}1
  {ä}{{\"a}}1 {ë}{{\"e}}1 {ï}{{\"i}}1 {ö}{{\"o}}1 {ü}{{\"u}}1
  {Ä}{{\"A}}1 {Ë}{{\"E}}1 {Ï}{{\"I}}1 {Ö}{{\"O}}1 {Ü}{{\"U}}1
  {â}{{\^a}}1 {ê}{{\^e}}1 {î}{{\^i}}1 {ô}{{\^o}}1 {û}{{\^u}}1
  {Â}{{\^A}}1 {Ê}{{\^E}}1 {Î}{{\^I}}1 {Ô}{{\^O}}1 {Û}{{\^U}}1
  {œ}{{\oe}}1 {Œ}{{\OE}}1 {æ}{{\ae}}1 {Æ}{{\AE}}1 {ß}{{\ss}}1
  {ç}{{\c c}}1 {Ç}{{\c C}}1 {ø}{{\o}}1 {å}{{\r a}}1 {Å}{{\r A}}1
  {€}{{\EUR}}1 {£}{{\pounds}}1
}

%%%% Bibliography %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% \usepackage[style=authoryear,natbib=true,backend=biber]{biblatex}
\usepackage[style=alphabetic,natbib=true,backend=biber]{biblatex}
\usepackage{fontspec}
\usepackage[babel]{csquotes}
%\usepackage{filecontents}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%  MyDevelop  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{verbatim}
\newcommand{\comm}[1] {}
\newcommand{\rewrite}[1] {#1}
\newcommand{\ccite}[2][\empty] {}
\newcommand{\TODO}[1][\empty] {}

\ifnum\myDevelopVariable=1
  \usepackage{xcolor}
  \usepackage{color}
  \usepackage{framed}

  \definecolor{commentShadeColor}{rgb}{1.0,.9,.6}
  %\definecolor{commentShadeColor}{rgb}{.6,.6,.6}
  \definecolor{commentTextColor}{rgb}{.2,.2,.2}
  \definecolor{CommentFrameColor}{rgb}{.3,.3,.3}%
  \definecolor{rewriteColor}{rgb}{.6,1,.9}

  \renewcommand{\comment}{\color{commentTextColor}%
    \def\FrameCommand{\fcolorbox{CommentFrameColor}{commentShadeColor}}%
    \MakeFramed {\FrameRestore}%
    \footnotesize%
    %\textbf{\tiny Kommentar: } 
    }
  \renewcommand{\endcomment}{\endMakeFramed}

  \iftrue
    \usepackage{soul}
    \renewcommand{\comm}[1] {%
      \sethlcolor{commentShadeColor}%
      {\texthl{#1}}}
    \renewcommand{\rewrite}[1] {%
      \sethlcolor{rewriteColor}%
      {\texthl{#1}}}
  \else
    \renewcommand{\comm}[1] {%
      \color{commentTextColor}{#1}}
    \renewcommand{\rewrite}[1] {%
      \color{green}{#1}}
  \fi

  \usepackage{ifthen}
  \makeatletter
  \renewcommand{\ccite}[2][\empty]{{%
    \fcolorbox{CommentFrameColor}{commentShadeColor}{%
      \ifthenelse{\equal{#1}{\empty}}
        {\cite{#2}}
        {\cite[#1]{#2}}
    }
  }}
  \makeatother

  \renewcommand{\TODO}[1][\empty]{{%
      \fcolorbox{CommentFrameColor}{commentShadeColor}{%
      \footnotesize{}
      \ifthenelse{\equal{#1}{\empty}}
        {\tiny T\!O\!D\!O}
        {\tiny T\!O\!D\!O: #1} % {TODO: #1}
      
  }}}

  %Zeilenhöhe, für bessere lesbarkeit
  % \linesprcad{1.3}

  % \cfoot{-\thepage-\\\today}

  % einseitig, überschreibt KOMA
  %\setboolean{@twoside}{false}
\fi

\ifnum\myDevelopVariable=2
  \usepackage{showframe}
\fi

%\setcounter{chapter}{-1}

% vim:set ft=tex foldmethod=marker foldmarker={{{,}}}:
