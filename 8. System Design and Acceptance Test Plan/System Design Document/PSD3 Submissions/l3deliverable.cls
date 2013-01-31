% =============================================================================
% l3deliverable.cls
%
% Template for PSD3 Deliverables in the Department of Computing Science at the
% University of Glasgow. Please contact Tim Storer <tws@dcs.gla.ac.uk> with 
% any questions, comments, or corrections.
%
% =============================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{l3deliverable}[]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions
\LoadClass[11pt,a4paper]{article}
\usepackage{a4wide}
\usepackage{textcase}
\usepackage{ifpdf}

\ifpdf
\usepackage[pdftex]{graphicx}
\else
\usepackage{graphicx}
\fi
\usepackage{tabularx}
\usepackage{times}
\setlength{\parindent}{0pt}

\newcommand{\@deliverableID}{}
\newcommand{\deliverableID}[1]{\renewcommand{\@deliverableID}{#1}}

\newcommand{\@project}{}
\newcommand{\project}[1]{\renewcommand{\@project}{#1}}

\newcommand{\@team}{}
\newcommand{\team}[1]{\renewcommand{\@team}{#1}}

\newcommand{\@version}{}
\newcommand{\version}[1]{\renewcommand{\@version}{#1}}

\renewcommand\maketitle{\begin{titlepage}%
\let\footnotesize\small
\let\footnoterule\relax
\let\footnote \thanks
\includegraphics[trim=0.7cm 0.7cm 0.7cm 0.7cm]{img/CompSci_mono}
  \vskip 8em%
  {\Huge\bf \MakeUppercase{\@deliverableID:~\@title}}
  \vfill
  \Large
  \begin{tabularx}{.9\textwidth}{|l|X|}\hline 
    Deliverable ID & \@deliverableID \\ \hline
    Deliverable Title & \@title \\ \hline
    Project &  \@project \\ \hline
    Team & \@team \\ \hline
    Authors & 
      \begin{tabular}[t]{@{}l}%
        \@author
        \end{tabular} \\ \hline
    Deliverable Date & \@date \\ \hline
    File Name & \jobname.tex \\ \hline
    Version & \@version \\   \hline
  \end{tabularx}
\end{titlepage}%
\setcounter{footnote}{0}%
\global\let\thanks\relax
\global\let\maketitle\relax
\global\let\@thanks\@empty
\global\let\@author\@empty
\global\let\@date\@empty
\global\let\@title\@empty
\global\let\title\relax
\global\let\author\relax
\global\let\date\relax
\global\let\and\relax
}