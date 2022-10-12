% -------------------------------------------
%       Class Setup
% -------------------------------------------
\ProvidesClass{exercisesheet}[2022/12/10 v1.0.0 Exercise Sheet Class]
\NeedsTeXFormat{LaTeX2e}
\LoadClass[11pt, a4paper]{article}

% -------------------------------------------
%       Document formatting packages
% -------------------------------------------
\RequirePackage{enumitem}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}

% -------------------------------------------
%       Typesetting packages
% -------------------------------------------
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{physics}
\RequirePackage{dsfont}
\RequirePackage{cancel}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{mathtools}
\RequirePackage{hyperref}
\hypersetup{hidelinks}

% -------------------------------------------
%       Diagram packages
% -------------------------------------------
\RequirePackage{pgf}
\RequirePackage{tikz}
\RequirePackage{pgfplots}
\pgfplotsset{compat=1.18}

% -------------------------------------------
%       Page setup
% -------------------------------------------
\geometry{left=2cm, right=2cm, top=2.5cm, bottom=2.5cm}
\setlength\parindent{0pt}

% -------------------------------------------
%       Exercise Information
% -------------------------------------------
\newcommand*{\coursename}[1]{\def\@coursename{#1}}
\newcommand*{\semesterlong}[1]{\def\@semesterlong{#1}}
\newcommand*{\semestershort}[1]{\def\@semestershort{#1}}
\newcommand*{\university}[1]{\def\@university{#1}}
\newcommand*{\exercisenumber}[1]{\def\@exercisenumber{#1}}
\newcommand*{\duedate}[1]{\def\@duedate{#1}}

% -------------------------------------------
%       Commands
% -------------------------------------------
\newcommand*{\makefancyheadfoot}{
    \setlength{\headheight}{13.6pt}
    \pagestyle{fancy}
    \fancyhf{}
    \lhead{\textit{Exericse Sheet \@exercisenumber}}
    \chead{\textit{\@coursename\ \@semestershort}}
    \rhead{\textit{\@duedate}}
    \cfoot{\thepage}
}

\newcommand*{\makemainheader}{
    \thispagestyle{plain}
    \begin{center}
        \LARGE
        \textbf{Exercise Sheet \@exercisenumber} \\[0.2cm]
        \large
        \textit{\@coursename\ - \@semesterlong} \\
        \textit{\@university} \\[0.2cm]
        Due: \@duedate \\[0.2cm]
    \end{center}
}

\newcommand*{\groupmember}[1]{
    \hspace*{\fill}#1\hspace*{\fill}

    % ^ Keep empty line
}

% Arguments: Problem #, Problem Name, Points
\newcommand*{\problemheader}[3]{
    \large
    \phantomsection
    \textbf{Problem #1\def\@currentlabel{\unexpanded{#1}}\label{p:#1} \; #2}\; #3
    \vspace{0.2cm}
    \normalsize

    % ^ Keep empty line
}

\definecolor{answerblue}{HTML}{0000bf}
\newcommand{\answer}[1]{
    \\[0.1cm]
    {\color{answerblue}#1}

    % ^ Keep empty line
}
