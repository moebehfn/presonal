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
\RequirePackage[T1,TS1]{fontenc}
\RequirePackage{newtxtext,newtxmath}
\RequirePackage{textcomp}
\RequirePackage{upgreek,textgreek}
\RequirePackage{tgtermes}
\RequirePackage[nottoc]{tocbibind}
\RequirePackage{tocloft}
\setlength{\cfttabindent}{0em}
\setlength{\cftfigindent}{0em}
\setlength{\parindent}{0pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% PAGE LAYOUT AND SPACING
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[
  letterpaper,
  top=1in,
  bottom=1in,
  left=.9in,
  right=.9in,
  % showframe,
]{geometry}
\RequirePackage[parfill]{parskip}
\RequirePackage{changepage}
\RequirePackage{setspace}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% LISTS AND ENUMERATION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{enumitem}
\setlist{labelindent=4pt,leftmargin=*,nosep}
\setlist[enumerate]{label={\arabic*)}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% TITLE, AUTHOR, AND ABSTRACT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\makeatletter
\renewcommand{\maketitle}{%
\begin{titlepage}
  \begin{center}
    {\large\textsc{%
        Doctoral Research Project Proposal\\[.25cm]
    Mathematics}}
    \vspace{7em}

    {\Large\textsc{\setlength{\baselineskip}{1.25em}\@title\\}}

    \vspace{8em}
    \@author\\
    Under the Supervision of Prof. Youssef Diouane\\[.5cm]
    {\centering\small
      \begin{tabular}{@{}l @{\ :\ \ } l@{}}
        Jury President & Prof. Charles Audet\\
        Jury Member    & Prof. Sébastien Le Digabel
    \end{tabular}}
    \vspace{2em}
    \vspace{2em}

    \vspace*{\fill}
    \includegraphics[height=.075\textwidth]{figures/CoA.png}\qquad
    \includegraphics[height=.075\textwidth]{figures/GERAD.png}
    \\[.2in]
    {\large\sc Groupe d'étude et de recherche en analyse des décisions\\
      Department of Mathematics and Industrial Engineering\\
    Polytechnique Montréal\\}
    \vspace{.1cm}
    \@date
  \end{center}
\end{titlepage}
}
\makeatother

\RequirePackage[style]{abstract}
\renewcommand{\abstitlestyle}[1]{}
\renewcommand{\abstracttextfont}{\bfseries\normalsize}
\setlength{\absleftindent}{0.5in}
\setlength{\absrightindent}{0.5in}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% SECTION FORMATTING
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[explicit]{titlesec}

\titleformat{\section}
{\large\bfseries\singlespacing\centering}
{\thesection.\space}{0pt}{#1}[]
\titlespacing{\section}{0pt}{0.5\baselineskip}{0pt}

\titleformat{\subsection}
{\normalsize\bfseries\singlespacing}
{\thesubsection.\space}{0pt}{#1}[]
\titlespacing{\subsection}{0pt}{0.5\baselineskip}{0pt}

\titleformat{\subsubsection}
{\normalsize\itshape\singlespacing}
{\thesubsubsection.\space}{0pt}{#1}[]
\titlespacing{\subsubsection}{0pt}{0.5\baselineskip}{0pt}

\titleformat{\paragraph}
{\normalsize\scshape\singlespacing}
{\theparagraph.\space}{0pt}{#1}[]
\titlespacing{\paragraph}{0pt}{0.5\baselineskip}{0pt}

\titleformat{\subparagraph}
{\normalsize\itshape\scshape\singlespacing}
{\thesubparagraph.\space}{0pt}{#1}[]
\titlespacing{\subparagraph}{0pt}{0.5\baselineskip}{0pt}

\setcounter{tocdepth}{4} % Includes subparagraphs in TOC
\setcounter{secnumdepth}{4}

\RequirePackage{lettrine}
\setlength{\DefaultNindent}{0pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% FLOATS: FIGURES, TABLES, AND CAPTIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{float,graphicx,wrapfig}
\RequirePackage[tableposition=top]{caption}
\RequirePackage{subcaption}
\captionsetup*{labelfont=bf,labelsep=quad}

\RequirePackage{tabularx,ragged2e,booktabs,multirow,longtable,xltabular,xtab}
\RequirePackage{makecell,adjustbox}
\renewcommand{\arraystretch}{1.2}

\usepackage{tikz,circuitikz}
\usetikzlibrary{
shapes.geometric,
arrows.meta,
positioning,
calc
}
\tikzstyle{arrow} = [thick,->,>=stealth]
\tikzstyle{io} = [trapezium, trapezium left angle=70, trapezium right angle=110, minimum width=1cm, minimum height=.5cm, text centered, draw=black, fill=blue!30]
\tikzstyle{process} = [rectangle, minimum width=1cm, minimum height=.5cm, text centered, draw=black, fill=orange!30]
\tikzstyle{decision} = [diamond, minimum width=1cm, minimum height=.5cm, text centered, draw=black, fill=green!30, shape aspect=2]
\tikzstyle{dots} = [rectangle, minimum width=1cm, minimum height=0.5cm, text centered, draw=none, fill=none]
\tikzstyle{bbeval} = [rectangle, rounded corners, minimum width=1cm, minimum height=.5cm,text centered, draw=black, fill=red!30]
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
\DeclareMathOperator{\EI}{\mathbb{EI}}
\DeclareMathOperator{\LogEI}{\log\mathbb{EI}}

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
\RequirePackage{dirtytalk}
\RequirePackage{csquotes}
\RequirePackage[
backend=biber,
style=numeric-comp,
sorting=none,
maxbibnames=99,
minbibnames=1,
maxcitenames=2,
mincitenames=1,
giveninits=true,
terseinits=true,
urldate=long,
doi=true,
url=true,
isbn=false
]{biblatex}

\DeclareFieldFormat[article]{volume}{\mkbibbold{#1}}
\DeclareFieldFormat[article]{number}{\mkbibparens{#1}}
\DeclareFieldFormat[article]{pages}{#1}
\DeclareFieldFormat{title}{\mkbibquote{#1}}
\renewcommand*{\newunitpunct}{\addcomma\space}
\addbibresource{bib.bib}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% HYPERLINKS AND CROSS-REFERENCES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[hidelinks]{hyperref}
\RequirePackage[english]{babel}
\RequirePackage{cleveref}

\hypersetup{
colorlinks   = true,
linkcolor    = blue,
citecolor    = green,
filecolor    = blue,
urlcolor     = red,
breaklinks   = true
}

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
\RequirePackage{zref-abspage}
\RequirePackage{zref-user}
\RequirePackage{gensymb}
\RequirePackage{hhline}
\RequirePackage{ifthen}
\RequirePackage{moresize}
\RequirePackage{siunitx}
\RequirePackage{slantsc}
\RequirePackage{pgfgantt}
\RequirePackage{lipsum}
\RequirePackage{fancyhdr}

\usepackage[page,title,titletoc]{appendix}
\usepackage{pdfpages}
\usepackage{hyphenat}
\RequirePackage{xparse}
\RequirePackage{letltxmacro}

\RequirePackage[colorinlistoftodos,prependcaption,textsize=small]{todonotes}
\newcommand{\todoerror}[2][]{\todo[color=red!70, #1]{#2}}
\newcommand{\todowarn}[2][]{\todo[color=orange, #1]{#2}}
\newcommand{\todoremark}[2][]{\todo[color=yellow!80!black, #1]{#2}}
\newcommand{\todohint}[2][]{\todo[color=green!20, #1]{#2}}
\newcommand{\tododone}[2][]{\todo[color=blue!50, #1]{#2}}
