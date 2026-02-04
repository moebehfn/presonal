\ProvidesClass{config}[config name]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% CLASS OPTIONS AND BASE CONFIGURATION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ExecuteOptions{}
\ProcessOptions\relax
\LoadClass[10pt]{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% FONT AND ENCODING
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[T1,LY1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{newtxtext,newtxmath}
\RequirePackage{textcomp}
\RequirePackage{upgreek,textgreek}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% PAGE LAYOUT AND SPACING
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[letterpaper,margin=1in]{geometry} % ,showframe
\RequirePackage[parfill]{parskip}
\RequirePackage{changepage}
\RequirePackage{setspace}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% LISTS AND ENUMERATION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{enumitem}
\setlist{labelindent=\parindent,leftmargin=*,nosep}
\setlist[enumerate]{label={\arabic*)}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% TITLE, AUTHOR, AND ABSTRACT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[blocks]{authblk}
\renewcommand{\Authfont}{\normalsize\upshape}
\renewcommand{\Affilfont}{\normalsize\itshape}
\setlength{\affilsep}{0pt}

\renewcommand{\maketitle}{%
  \begingroup
  \renewcommand\and{\\[\baselineskip]}
  \centering\singlespacing
  {\LARGE\bfseries\@title\par}
  \vskip2\baselineskip
  \@author\par
  \endgroup
  \vskip\baselineskip
  \setcounter{footnote}{0}
}

\RequirePackage[style]{abstract}
\renewcommand{\abstitlestyle}[1]{}
\renewcommand{\abstracttextfont}{\bfseries\normalsize}
\setlength{\absleftindent}{0.5in}
\setlength{\absrightindent}{0.5in}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% SECTION FORMATTING
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[explicit]{titlesec}
\renewcommand{\thesection}{\Roman{section}}
\renewcommand{\thesubsection}{\thesection.\Alph{subsection}}
\renewcommand{\thesubsubsection}{\thesubsection.\arabic{subsubsection}}

\titleformat{\section}
  {\large\bfseries\singlespacing\centering}
  {\thesection.\space}{0pt}{#1}[]
\titlespacing{\section}{0pt}{0.5\baselineskip}{0pt}

\titleformat{\subsection}
  {\normalsize\bfseries\singlespacing}
  {\Alph{subsection}.\space}{0pt}{#1}[]
\titlespacing{\subsection}{0pt}{0.5\baselineskip}{0pt}

\titleformat{\subsubsection}
  {\normalsize\itshape\singlespacing}
  {\arabic{subsubsection}.\space}{0pt}{#1}[]
\titlespacing{\subsubsection}{0pt}{0.5\baselineskip}{0pt}

\RequirePackage{lettrine}
\setlength{\DefaultNindent}{0pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% FLOATS: FIGURES, TABLES, AND CAPTIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{float,graphicx,wrapfig}
\RequirePackage[tableposition=top]{caption}
\RequirePackage{subcaption}
\renewcommand{\figurename}{Fig.}
\captionsetup*{font=bf,labelsep=quad}

\RequirePackage{tabularx,ragged2e,booktabs,multirow,longtable,xltabular,xtab}
\RequirePackage{makecell,adjustbox}
\renewcommand{\arraystretch}{1.2}

\usepackage{tikz,circuitikz}
\usetikzlibrary{
    shapes.geometric, % For shapes like diamond, rounded rectangle
    arrows.meta,      % For arrow tips
    positioning,      % For placing nodes relative to each other
    calc              % For coordinate calculations
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% ALGORITHMS AND CODE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage[
	linesnumbered,
	lined,
	ruled,
	vlined,
	longend,
]{algorithm2e}
\newcommand{\grcomment}[1]{\hfill\texttt{\textcolor{green}{// #1}}}

\RequirePackage{listings}
\RequirePackage{pythonhighlight}
\lstset{basicstyle=\ttfamily, breaklines=true, commentstyle=\color{cyan}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% MATHEMATICS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{amsmath,mathtools,mathrsfs,bm}

\DeclareMathOperator*{\argmax}{argmax}
\DeclareMathOperator*{\argmin}{argmin}
\DeclareMathOperator*{\average}{average}
\DeclareMathOperator*{\conv}{conv}
\DeclareMathOperator*{\Cov}{Cov}
\DeclareMathOperator*{\von}{von}
\DeclareMathOperator*{\vol}{vol}
\DeclareMathOperator*{\cm}{cm}
\DeclareMathOperator*{\cv}{cv}
\DeclareMathOperator*{\diam}{diam}
\DeclareMathOperator*{\diamb}{\overline{diam}}
\DeclarePairedDelimiter\ceil{\lceil}{\rceil}
\DeclarePairedDelimiter\floor{\lfloor}{\rfloor}

\setlength{\abovedisplayskip}{\baselineskip}
\setlength{\belowdisplayskip}{\baselineskip}
\setlength{\abovedisplayshortskip}{\baselineskip}
\setlength{\belowdisplayshortskip}{\baselineskip}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% QUOTATIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[indentfirst=false,font+=small,leftmargin=0.4in,rightmargin=0pt,vskip=0pt]{quoting}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% BIBLIOGRAPHY AND CITATIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[sort&compress,numbers]{natbib}
\RequirePackage{dirtytalk}
\bibliographystyle{new-aiaa}
\renewcommand{\bibfont}{\small}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% HYPERLINKS AND CROSS-REFERENCES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[hyphens]{url}
\RequirePackage{hyperref}
\RequirePackage[english]{babel}
\RequirePackage{cleveref}

\hypersetup{hidelinks}

\crefname{section}{Section}{Sections}
\crefname{appsec}{Appendix}{Appendices}
\crefname{figure}{Figure}{Figures}
\crefname{table}{Table}{Tables}
\crefname{equation}{}{}
\crefname{lstlisting}{Listing}{Listings}
\crefname{algorithm}{Algorithm}{Algorithms}
\crefname{theorem}{Theorem}{Theorems}
\crefname{lemma}{Lemma}{Lemmas}
\crefname{definition}{Definition}{Definitions}
\crefname{notation}{Notation}{Notations}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% COLORS AND HIGHLIGHTING
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{soul}
\RequirePackage[dvipsnames]{xcolor}
\soulregister\textcolor{2}
\soulregister\Cref{1}
\definecolor{green}{HTML}{008000}
\definecolor{mygray}{gray}{0.92}
\definecolor{cyan}{rgb}{0.0,0.6,0.6}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% FOOTNOTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[symbol*]{footmisc}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% MISCELLANEOUS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{multicol,vwcol}
\RequirePackage{lscape}
\RequirePackage{bold-extra}
\RequirePackage{calc}
\RequirePackage{epic}
\RequirePackage{etoolbox}
\RequirePackage{gensymb}
\RequirePackage{hhline}
\RequirePackage{ifthen}
\RequirePackage{moresize}
\RequirePackage{siunitx}
\RequirePackage{slantsc}
\RequirePackage{pgfgantt}
\RequirePackage{lipsum}

\newcommand{\tempcomment}[1]{{\color{green}\hl{Comment [to-be-removed]: #1}}}


