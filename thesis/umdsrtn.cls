%%
%% This is file `umdsrtn.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% umdsrtn.dtx  (with options: `umdsrtn')
%% 
%% GAG This is a hack of the classes.dtx files which have the following
%% GAG statement attached to them.
%% 
%% E.S.S.- I made a few changes: boldface chapter names in toc, toc entry
%% E.S.S.- for appendices had a bug, corrected.  Abstract spacing. Single
%% E.S.S.- spaced footnotes.  Can have page numbers be at bottom for
%% E.S.S.- First page of chapter, top for the rest: look below for E.S.S.
%% E.S.S.- LS also helped.
%% 
%% This is a generated file.
%% 
%% Copyright 1993 1994 1995 1996 1997 1998 1999
%% The LaTeX3 Project and any individual authors listed elsewhere
%% in this file.
%% 
%% This file was generated from file(s) of the LaTeX base system.
%% --------------------------------------------------------------
%% 
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.2
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.2 or later is part of all distributions of LaTeX
%% version 1999/12/01 or later.
%% 
%% This file may only be distributed together with a copy of the LaTeX
%% base system. You may however distribute the LaTeX base system without
%% such generated files.
%% 
%% The list of all files belonging to the LaTeX base distribution is
%% given in the file `manifest.txt'. See also `legal.txt' for additional
%% information.
%% 
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{umdsrtn}
              [2000/07/12 v1.0
 Hacked LaTeX document book class]
\newcommand\@ptsize{}
\newif\if@titlepage
\@titlepagetrue
\newif\if@openright
\newif\if@mainmatter
\@mainmattertrue
\newif\if@numbychap
\newif\if@appendixmatter
\@appendixmatterfalse
\newcommand{\chnamejust}{\centering}
\newif\if@chnameleft
\newcommand{\@mylinespacing}{}
\newcommand\mylinespacing[1]{\renewcommand\@mylinespacing{#1}}
\DeclareOption{letterpaper}
   {\setlength\paperheight {11in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{landscape}
   {\setlength\paperheight {11in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{10pt}{\renewcommand\@ptsize{0}}
\DeclareOption{11pt}{\renewcommand\@ptsize{1}}
\DeclareOption{12pt}{\renewcommand\@ptsize{2}}
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\DeclareOption{titlepage}{\@titlepagetrue}
\DeclareOption{notitlepage}{\@titlepagefalse}
\DeclareOption{openright}{\@openrighttrue}
\DeclareOption{openany}{\@openrightfalse}
\DeclareOption{onecolumn}{\@twocolumnfalse}
\DeclareOption{twocolumn}{\@twocolumnfalse}
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{\input{fleqn.clo}}
\DeclareOption{numbychap}{\@numbychaptrue}
\DeclareOption{nonumbychap}{\@numbychapfalse}
\DeclareOption{chnamecenter}{\renewcommand{\chnamejust}%
    {\centering}\@chnameleftfalse}
\DeclareOption{chnameleft}{\renewcommand{\chnamejust}%
    {\raggedright}\@chnamelefttrue}
\DeclareOption{openbib}{%
  \AtEndOfPackage{%
   \renewcommand\@openbib@code{%
      \advance\leftmargin\bibindent
      \itemindent -\bibindent
      \listparindent \itemindent
      \parsep \z@}%
   \renewcommand\newblock{\par}}}
\ExecuteOptions{letterpaper,12pt,oneside,onecolumn,final,%
                openany,numbychap,chnamecenter}
\ProcessOptions
\input{umd1\@ptsize.clo}
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{}
\newcommand\w@ntsinglespace{\linespread{}\normalsize}
\newcommand\w@ntmylinespace{\linespread{\@mylinespacing}\normalsize}
\w@ntmylinespace
\setlength\parskip{0\p@ \@plus \p@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\setcounter{topnumber}{2}
\renewcommand\topfraction{.7}
\setcounter{bottomnumber}{1}
\renewcommand\bottomfraction{.3}
\setcounter{totalnumber}{3}
\renewcommand\textfraction{.2}
\renewcommand\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\renewcommand\dbltopfraction{.7}
\renewcommand\dblfloatpagefraction{.5}
\if@twoside
    \def\ps@headings{%
        \let\@oddfoot\@empty\let\@evenfoot\@empty
        \def\@evenhead{\hspace*{\fill}\thepage\hspace*{\fill}}%
        \def\@oddhead{\hspace*{\fill}\thepage\hspace*{\fill}}%
        \let\@mkboth\markboth
        \let\@mkboth\@gobbletwo
        \let\chaptermark\@gobble
        \let\sectionmark\@gobble}
\else
    \def\ps@headings{%
        \let\@oddfoot\@empty
        \def\@oddhead{\hspace*{\fill}\thepage\hspace*{\fill}}%
        \let\@mkboth\@gobbletwo
        \let\chaptermark\@gobble
        \let\sectionmark\@gobble}
\fi
\def\ps@myheadings{%
    \let\@oddfoot\@empty\let\@evenfoot\@empty
    \def\@evenhead{\thepage\hfil\slshape\leftmark}%
    \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
    \let\@mkboth\@gobbletwo
    \let\chaptermark\@gobble
    \let\sectionmark\@gobble}
\if@twoside
    \def\ps@tocstyle{%
        \let\@oddhead\@empty\let\@evenhead\@empty
        \def\@evenfoot{\hspace*{\fill}\thepage\hspace*{\fill}}%
        \def\@oddfoot{\hspace*{\fill}\thepage\hspace*{\fill}}%
        \let\@mkboth\markboth
        \let\@mkboth\@gobbletwo
        \let\chaptermark\@gobble
        \let\sectionmark\@gobble}
\else
    \def\ps@tocstyle{%
        \let\@oddhead\@empty
        \def\@oddfoot{\hspace*{\fill}\thepage\hspace*{\fill}}%
        \let\@mkboth\@gobbletwo
        \let\chaptermark\@gobble
        \let\sectionmark\@gobble}
\fi
\newcommand{\titleboxsubmit}{%
  \begin{centering}
    \Large\today\normalsize
  \end{centering}\par}
\newcommand{\titleboxcommit}{\relax}
\if@titlepage
    \newcommand{\maketitle}%
        {\begin{titlepage}%
            \let\footnotesize\small
            \let\footnoterule\relax
            \let \footnote \thanks
            \null\vfil
            \vskip 144\p@
            \begin{center}%
                {\LARGE \@title \par}%
                \vskip 3em%
                {\large by \par}%
                \vskip 3em%
                {\large
                \lineskip .75em%
                \begin{tabular}[t]{c}%
                    \@author
                \end{tabular}\par}%
                \vskip 3em%
            \end{center}\par%
            \titleboxsubmit%       % GAG-could easily be date command
            \vspace{\stretch{1}}\titleboxcommit\vspace*{\stretch{1}}%
            \@thanks
            \vfil\null
        \end{titlepage}%
        \setcounter{footnote}{0}%
        \global\let\thanks\relax
        \global\let\maketitle\relax
        \global\let\@thanks\@empty
        \global\let\title\relax
        \global\let\author\relax
        \global\let\date\relax
        \global\let\and\relax
        \global\let\titleboxsubmit\relax
        \global\let\titleboxcommit\relax}
\else
    \newcommand\maketitle{
        \setcounter{footnote}{0}%
        \global\let\thanks\relax
        \global\let\maketitle\relax
        \global\let\@thanks\@empty
        \global\let\title\relax
        \global\let\author\relax
        \global\let\date\relax
        \global\let\and\relax
        \global\let\titleboxsubmit\relax
        \global\let\titleboxcommit\relax}
\fi
\newcommand{\copyriteme}{%
    \clearpage \w@ntsinglespace \thispagestyle{empty}%
    \vspace*{\stretch{2}}
    \hfill
        Copyright \copyright\hspace{3ex}
        \parbox[c]{1.5in}{%
            \begin{center}
                \raisebox{-1ex}{\@author}\par
                \rule[0.5ex]{1.5in}{0.5pt}\par
                \raisebox{1ex}{All Rights Reserved}
            \end{center}}
        \hspace{3ex}\number\year
    \hfill
    \vspace*{\stretch{1}}\clearpage\w@ntmylinespace}
\newcommand*\chaptermark[1]{}
\setcounter{secnumdepth}{2}
\newcounter {part}
\newcounter {chapter}
\newcounter {section}[chapter]
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand \thepart {\@Roman\c@part}
\renewcommand \thechapter {\@arabic\c@chapter}
% E.S.S.
\renewcommand \thesection {\thechapter.\@arabic\c@section}
%\renewcommand \thesection {\@arabic\c@chapter.\@arabic\c@section}
\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection .\@arabic\c@subsubsection}
\renewcommand\theparagraph    {\thesubsubsection.\@arabic\c@paragraph}
\renewcommand\thesubparagraph {\theparagraph.\@arabic\c@subparagraph}
\newcommand\@chapapp{\chaptername}
\newcommand\frontmatter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmatterfalse
  \pagenumbering{roman}}
\newcommand\mainmatter{%
  \addtocontents{toc}{\protect\addvspace{20\p@}}%
  \addtocontents{toc}{\protect{\noindent\chaptername}}%
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmattertrue
  \pagenumbering{arabic}}
\newcommand\backmatter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmatterfalse\@appendixmatterfalse}
\newcommand{\thisispageii}{\pagestyle{plain}%
    \if@twoside\else\setcounter{page}\tw@\fi}
\newcommand\part{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \thispagestyle{plain}%
  \null\vfil
  \secdef\@part\@spart}
\def\@part[#1]#2{
    \refstepcounter{part}%
    \markboth{}{}%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \ifnum \c@secnumdepth >-2\relax
       \huge\bfseries \partname~\thepart
       \par
       \vskip 20\p@
     \fi
     \Huge \bfseries #2\par}%
    \@endpart}
\def\@spart#1{%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \Huge \bfseries #1\par}%
    \@endpart}
\def\@endpart{\vfil\newpage
              \if@twoside
                \null
                \thispagestyle{empty}%
                \newpage
              \fi}
\newcommand{\chapter}{%
    \if@openright\cleardoublepage\else\clearpage\fi
    \w@ntsinglespace%
    \thispagestyle{plain}%
    \global\@topnum\z@
    \if@chnameleft\@afterindentfalse\else\@afterindenttrue\fi
    \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{% E.S.S. Page numbers always on bottom
%\def\@chapter[#1]#2{\pagestyle{headings}%bottom at beginning of chap. top thereafter
    \ifnum \c@secnumdepth >\m@ne
        \if@mainmatter
            \refstepcounter{chapter}%
            \typeout{\@chapapp\space\thechapter.}%
            \addcontentsline{toc}{chapter}% Made boldface E.S.S.
                {\protect\numberline{\thechapter}\protect\bf#1}%
            \if@appendixmatter
                \addcontentsline{loa}{appendix}%
                    {\protect\numberline{\thechapter}#1}
            \fi
        \else
            \addcontentsline{toc}{unchapter}{#1}%
        \fi
    \else
        \addcontentsline{toc}{unchapter}{#1}%
    \fi
    \chaptermark{#1}%
    \addtocontents{lof}{\protect\addvspace{10\p@}}%
    \addtocontents{lot}{\protect\addvspace{10\p@}}%
    \@makechapterhead{#2}%
    \@afterheading\w@ntmylinespace}
\def\@makechapterhead#1{%
  \vspace*{54\p@}%
  {\parindent \z@ \chnamejust \normalfont
    \ifnum \c@secnumdepth >\m@ne
       \if@mainmatter
        \large\bfseries \@chapapp\space \thechapter
        \par\nobreak
        \vskip 20\p@
       \fi
    \fi
    \interlinepenalty\@M
    \Large \bfseries #1\par\nobreak
    \vskip 20\p@}}
\def\@schapter#1{\if@mainmatter\else\thispagestyle{empty}\fi
    \@makeschapterhead{#1}\@afterheading\w@ntmylinespace}
\def\@makeschapterhead#1{%
  \vspace*{54\p@}%
  {\parindent \z@ \chnamejust \normalfont
    \interlinepenalty\@M
    \Large \bfseries  #1\par\nobreak
    \vskip 20\p@}}
\newcommand\section%
    {\@startsection {section}{1}{\z@}%
        {-2.5ex \@plus -.8ex \@minus -.2ex}%
        {1.3ex \@plus.2ex}%
        {\normalfont\large\bfseries}}
\newcommand\subsection%
    {\@startsection{subsection}{2}{\z@}%
        {-2.0ex\@plus -.5ex \@minus -.2ex}%
        {1.0ex \@plus .2ex}%
        {\normalfont\normalsize\bfseries}}
\newcommand\subsubsection%
    {\@startsection{subsubsection}{3}{\z@}%
        {-1.0ex\@plus -.3ex \@minus -.1ex}%
        {1.0ex \@plus .1ex}%
        {\normalfont\normalsize\bfseries}}
\newcommand\paragraph%
    {\@startsection{paragraph}{4}{\z@}%
        {0.5ex \@plus.2ex \@minus.1ex}%
        {-1em}%
        {\normalfont\normalsize\bfseries}}
\newcommand\subparagraph%
    {\@startsection{subparagraph}{5}{\parindent}%
        {0.5ex \@plus.2ex \@minus .1ex}%
        {-1em}%
        {\normalfont\normalsize\bfseries}}
\if@twocolumn
  \setlength\leftmargini  {2em}
\else
  \setlength\leftmargini  {2.5em}
\fi
\leftmargin  \leftmargini
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
\if@twocolumn
  \setlength\leftmarginv  {.5em}
  \setlength\leftmarginvi {.5em}
\else
  \setlength\leftmarginv  {1em}
  \setlength\leftmarginvi {1em}
\fi
\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}
\newenvironment{abstract}{%
       \if@openright\cleardoublepage\else\clearpage\fi
       \pagestyle{empty}
% this is me trying to get abstract spaced correctly E.S.S. and LS
	\w@ntmylinespace
       \begin{center}%
% this is old stuff 
%         \textbf{\abstractname} \par%
%         \vspace{\bigskipamount}%
%         \vspace{\bigskipamount}%
%         \@title \par%
%         \vspace{\bigskipamount}%
%         by \par%
%         \vspace{\bigskipamount}%
%         \@author
% but my changes
         \textbf{\abstractname} \par%
         \vspace{\bigskipamount}%
%         \vspace{\bigskipamount}%
         \@title \par%
%         \vspace{\bigskipamount}%
         by \par%
%         \vspace{\bigskipamount}%
         \@author%
       \end{center}\par%
%       \vspace{\bigskipamount}
	}%
    {\vfil\null
       \if@openright
        {\newpage{\pagestyle{empty}\cleardoublepage}}
       \else\newpage\fi}
\newenvironment{verse}
               {\let\\\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item\relax}
               {\endlist}
\newenvironment{quotation}
               {\w@ntsinglespace\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist\w@ntmylinespace}
\newenvironment{quote}
               {\w@ntsinglespace\list{}{\rightmargin\leftmargin}%
                \item\relax}
               {\endlist\w@ntmylinespace}
\newenvironment{titlepage}{%
      \cleardoublepage%
      \newpage%
      \thispagestyle{empty}%
      \setcounter{page}\@ne%
      \w@ntsinglespace}%
    {\newpage
     \if@twoside\else
        \setcounter{page}\@ne
     \fi
     \w@ntmylinespace}
\newcommand{\appendix}{\cleardoublepage\thispagestyle{plain}\large%
  \null\vfill
  \noindent\hspace*{\fill}\textbf{\appndxplrname}\hspace*{\fill}
  \vfill\normalsize%\clearpage%bug: gave next page first page in toc E.S.S.
  \addtocontents{toc}{\protect\addvspace{20\p@}}%
  \addcontentsline{toc}{unchapter}{\appndxplrname}%
  \addtocontents{toc}{\protect\setcounter{tocdepth}{-1}}%
  \clearpage%Now this page gets first page in appendices in toc E.S.S.
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \gdef\@chapapp{\appendixname}%
  \gdef\thechapter{\@Alph\c@chapter}%
  \@appendixmattertrue%
  \renewcommand{\chnamejust}{\centering}%
  \@chnameleftfalse}
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\if@numbychap
  \@addtoreset {equation}{chapter}
  \renewcommand\theequation
    {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@equation}
\else
  \renewcommand \theequation {\@arabic\c@equation}
\fi
\if@numbychap
   \newcounter{figure}[chapter]
   \renewcommand \thefigure
     {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@figure}
\else
   \newcounter{figure}
   \renewcommand \thefigure {\@arabic\c@figure}
\fi
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename~\thefigure}
\newenvironment{figure}
               {\w@ntsinglespace\@float{figure}}
               {\end@float\w@ntmylinespace}
\newenvironment{figure*}
               {\w@ntsinglespace\@dblfloat{figure}}
               {\end@dblfloat\w@ntmylinespace}
\if@numbychap
   \newcounter{table}[chapter]
   \renewcommand \thetable
     {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@table}
\else
   \newcounter{table}
   \renewcommand\thetable{\@arabic\c@table}
\fi
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename~\thetable}
\newenvironment{table}
               {\w@ntsinglespace\@float{table}}
               {\end@float\w@ntmylinespace}
\newenvironment{table*}
               {\w@ntsinglespace\@dblfloat{table}}
               {\end@dblfloat\w@ntmylinespace}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}
\long\def\@makecaption#1#2{%
  \footnotesize\vskip\abovecaptionskip
  \sbox\@tempboxa{\textbf{#1.} #2}%
  \ifdim \wd\@tempboxa >\hsize
    \textbf{#1.} #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip\normalsize}
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}
\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg{2.55em}
\newcommand\@dotsep{3}
\setcounter{tocdepth}{2}
\newcommand\tableofcontents{%
     \chapter*{\contentsname}\thispagestyle{plain}%
     \@starttoc{toc}\thispagestyle{plain}}
%     \chapter*{\contentsname}\pagestyle{plain}%
%     \@starttoc{toc}\pagestyle{plain}}
\newcommand*\l@unchapter{\@dottedtocline{-1}{0em}{1.5em}}
\newcommand*\l@chapter{\@dottedtocline{0}{1.5em}{1.5em}}
\newcommand*\l@section{\@dottedtocline{1}{3.8em}{2.3em}}
\newcommand*\l@subsection{\@dottedtocline{2}{7.0em}{3.2em}}
\newcommand*\l@subsubsection{\@dottedtocline{3}{10em}{4.1em}}
\newcommand*\l@paragraph{\@dottedtocline{4}{12em}{5em}}
\newcommand*\l@subparagraph{\@dottedtocline{5}{14em}{6em}}
\newcommand\listoffigures{%
    \chapter{\listfigurename}\noindent%
    $\underline{\mathrm{\figurename}}$\par%
    \setcounter{tocdepth}{0}\@starttoc{lof}\thispagestyle{tocstyle}}
    %\setcounter{tocdepth}{0}\@starttoc{lof}\pagestyle{plain}}
\newlength{\wide@figure}
\newcommand*\l@figure{\@dottedtocline{0}{0.5\wide@figure}{2.3em}}
\newcommand\listoftables{%
    \chapter{\listtablename}\noindent%
    $\underline{\mathrm{\tablename}}$\par%
    \setcounter{tocdepth}{0}\@starttoc{lot}\thispagestyle{tocstyle}}
    %\setcounter{tocdepth}{0}\@starttoc{lot}\pagestyle{plain}}
\newlength{\wide@table}
\newcommand*\l@table{\@dottedtocline{0}{0.5\wide@table}{2.3em}}
\newcommand\listofappendices{%
    \chapter{\listappendixname}\noindent%
    $\underline{\mathrm{\otherappendixname}}$\par%
    \vspace*{10\p@}
    \setcounter{tocdepth}{0}\@starttoc{loa}\thispagestyle{tocstyle}}
    %\setcounter{tocdepth}{0}\@starttoc{loa}\pagestyle{plain}}
\newlength{\wide@appendix}
\newcommand*\l@appendix{\@dottedtocline{0}{0.5\wide@appendix}{1.2em}}
\newdimen\bibindent
\setlength\bibindent{1.5em}
\newenvironment{thebibliography}[1]
%this doesn't actually get used b/c natbib redefines it. So 
%want to be able to get to this anyway (for TOC, etc.)
     {\cleardoublepage\thispagestyle{plain}\large%
      \null\vfill%
      \noindent\hspace*{\fill}\textbf{\bibname}\hspace*{\fill}%
      \vfill\normalsize\clearpage%
      \addcontentsline{toc}{unchapter}{\bibname}%
      \chapter*{\bibname}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m }%\w@ntsinglespace}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist\w@ntmylinespace}
\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty
\newenvironment{theindex}
        {\cleardoublepage\thispagestyle{plain}\large%
                \null\vfill%
                \noindent\hspace*{\fill}\textbf{\indexname}\hspace*{\fill}%
                \vfill\normalsize\cleardoublepage%
                \addcontentsline{toc}{unchapter}{\indexname}%
                \columnseprule \z@
                \columnsep 35\p@
                \twocolumn[\chapter*{\indexname}]%
                \thispagestyle{plain}\parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \let\item\@idxitem
                \w@ntsinglespace}
        {\onecolumn\w@ntmylinespace}
\newcommand\@idxitem{\par\hangindent 40\p@}
\newcommand\subitem{\@idxitem \hspace*{20\p@}}
\newcommand\subsubitem{\@idxitem \hspace*{30\p@}}
\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}
\renewcommand\footnoterule{%
 % I think I change this here to make it single space somehow -LA
% \linespread{1.0}\normalsize\vspace{0.5\baselineskip}
 %  -- no, doesn't need to go here - goes below -LS, E.S.S.
  \kern-3\p@
  \hrule\@width.4\columnwidth
  \kern2.6\p@}
\@addtoreset{footnote}{chapter}
\newcommand\@makefntext[1]{%
  % added this next line to make footnotes singlespaced - LA 
%  \linespread{1.0}\normalsize\vspace{0.5\baselineskip}
  \linespread{1.0}\footnotesize\vspace{0.5\baselineskip}
    \parindent 1em%
    \noindent
    \hb@xt@1.8em{\hss\@makefnmark}#1}
\newcommand{\word@case}{\MakeUppercase}
\newcommand\contentsname{\word@case{Contents}}
\newcommand\listfigurename{\word@case{List of Figures}}
\newcommand\listtablename{\word@case{List of Tables}}
\newcommand\listappendixname{\word@case{List of Appendices}}
\newcommand\bibname{\word@case{Bibliography}}
\newcommand\indexname{\word@case{Index}}
\newcommand\appndxplrname{\word@case{Appendices}}
\newcommand\figurename{Figure}
\newcommand\tablename{Table}
\newcommand\otherappendixname{Appendix}
\settowidth{\wide@figure}{$\underline{\textbf{\figurename}}$}
\settowidth{\wide@table}{$\underline{\textbf{\tablename}}$}
\settowidth{\wide@appendix}{$\underline{\textbf{\otherappendixname}}$}
\newcommand\partname{\word@case{Part}}
\newcommand\chaptername{\word@case{Chapter}}
\newcommand\appendixname{\word@case{Appendix}}
\newcommand\abstractname{\word@case{Abstract}}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
\pagestyle{headings}
\pagenumbering{arabic}
\reversemarginpar
\if@twoside
\else
  \raggedbottom
\fi
\onecolumn
\endinput
%%
%% End of file `umdsrtn.cls'.
