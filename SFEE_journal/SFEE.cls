\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{SFEE}[2023/11/23 version1.0]

\LoadClass[journal,noindent,headline,twocolumn]{paper} % Load class with twocolumn option

\usepackage{xcolor}
\usepackage{mdframed}
\usepackage{graphicx}
\usepackage{academicons}
\usepackage{svg}
\usepackage{yfonts,color}
\usepackage{datetime}
\usepackage{etoolbox}
\usepackage{ccicons}
\usepackage{lineno} % Add line numbers for paragraphs

\newcommand{\headlinecolor}{\normalcolor}

\RequirePackage{xcolor}
\definecolor{slcolor}{HTML}{882B21}

\let\Abstract\abstract %color al abstract
\long\def\abstract{\mdframed[backgroundcolor=black!12,hidealllines=true]
  \vspace*{-0.5\baselineskip}\Abstract}
\let\endAbstract\endabstract
\def\endabstract{\endAbstract\endmdframed\par\bigskip}

\newcommand\doi[1]{\renewcommand\@doi{doi:10.61794/#1}}
\newcommand\@doi{}

\newcommand\received[1]{\renewcommand\@received{Received #1}}
\newcommand\@received{}

\newcommand\accepted[1]{\renewcommand\@accepted{Accepted #1}}
\newcommand\@accepted{}

\newcommand\Vol[1]{\renewcommand\@Vol{#1}}
\newcommand\@Vol{}

\newcommand\ppInit[1]{\renewcommand\@ppInit{#1}}
\newcommand\@ppInit{}

\newcommand\ppEnd[1]{\renewcommand\@ppEnd{#1}}
\newcommand\@ppEnd{}

\newcommand\ISSN[1]{\renewcommand\@ISSN{#1}}
\newcommand\@ISSN{}

\oddrunhead{SFEE, Vol. \textsc{\@Vol}, ISSN ???-???, pp. \@ppInit-\@ppEnd}

\DeclareOption{onecolumn}{\OptionNotUsed}
\DeclareOption{green}{\renewcommand{\headlinecolor}{\color{green}}}
\DeclareOption{red}{\renewcommand{\headlinecolor}{\color{slcolor}}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\newcounter{fnote}
\def\fnmark[#1]{\let\comma\@empty
    \def\@fnmark{\@for\@@fnmark:=#1\do{%
    \edef\fnotenum{\@ifundefined{X@\@@fnmark}{1}{\Ref{\@@fnmark}}}%
  \unskip\comma\fnotenum\let\comma,}}%
}

\RequirePackage{authblk}
\renewcommand{\maketitle}{%
    \twocolumn[%
        \raisebox{10pt}{\href{https://sfee.space/}{\includegraphics[width=7.61pc]{logo_sfee.png}}} \raisebox{25pt}{\href{https://purisima.tecnm.mx/}{\centering \color{blue} \textcopyright \textbf{\the\year\ Tecnológico Nacional de México/ITS Purísima del Rincón}}} \raisebox{21pt}{\href{https://creativecommons.org/licenses/by-nc/4.0/}{\color{black} \ccbync}} \par
        \fontsize{15}{15}\fontfamily{phv}\fontseries{b}%
        \fontshape{sl}\selectfont\headlinecolor
        \textbf{\@title} \vskip 4pt
        \fontsize{12}{12}\fontfamily{phv}\fontseries{b}%
        \setcounter{footnote}{0}%
        \fontshape{sl}\selectfont\headlinecolor
        \@author \vskip 4pt
        \@doi \vskip 3pt
        \@received ; \@accepted
    ]%
    \vskip 4pt
    \renewcommand{\AB@affillist}{}
    \renewcommand{\AB@authlist}{}
    \setcounter{authors}{0}
    \typeout{Article: \@shortauthor}
    %\setcounter{affil}{0}%
    \setcounter{section}{0}%
    \setcounter{subsection}{0}%
    \setcounter{subsubsection}{0}%
    \setcounter{paragraph}{0}%
    \setcounter{subparagraph}{0}%
    \setcounter{figure}{0}%
    \setcounter{table}{0}%
    \setcounter{equation}{0}%
}
%biography
%Biography with a photograph
\newcommand{\authorcontribution}[1]{%
    \begin{wrapfigure}{l}{25mm}
        \includegraphics[width=1in,height=1.25in,clip,keepaspectratio]{#1}
    \end{wrapfigure}
}

\newenvironment{AuthorContribution}{%
    \section*{Author contribution}
}{}

\newcommand{\dataavailability}[2]{%
    \section*{Data availability}
    \small
    #1 \\
    \setlength{\Urlmuskip}{0mu plus 1mu}
    \textbf{GitHub repository:} \url{#2}
}
\newcommand{\codeavailability}[2]{%
    \section*{Code availability}
    \small
    #1 \\
    \setlength{\Urlmuskip}{0mu plus 1mu}
    \textbf{GitHub repository:} \url{#2}
}

% Activar los números de línea para los párrafos
\linenumbers
\modulolinenumbers[5]
\makeatletter
\renewcommand\linenumberfont{\normalfont\tiny\sffamily\color{black}}
\def\makeLineNumberLeft{%
  \hss\linenumberfont\LineNumber\hspace{2pt}% Cambia \hspace{\linenumbersep} según tu preferencia
}
\leftlinenumbers
\makeatother

\endinput

