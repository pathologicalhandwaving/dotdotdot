%% Article Notes

\documentclass[10pt]{article}

\usepackage{multicols}
\setlength{\columnseprule}{0.5pt}
\def\columnseprulecolor{\color{black}}
\usepackage{fullpage}
\usepackage[parfill]{parskip}
\usepackage{framed}

\usepackage[colorinlistoftodos]{todonotes}
\newcommand{\addref}[1]{\todo[color=red,backgroundcolor=red!50,linecolor=red,size=\tiny]{\textbf{Add Reference:} #1}}
\newcommand{\term}[1]{\todo[color=blue,backgroundcolor=blue!50,linecolor=blue,size=\tiny]{\textbf{Concept:} #1}}

\usepackage{amsmath}
\usepackage{amsthm}
\usepackage{amssymb}

\usepackage{enumerate}

\usepackage{verbatim}
\usepackage{url}
\usepackage{hyperref}

\usepackage{fancyhdr}
\pagestyle{fancy}
\usepackage{lastpage}
\setlength{\headheight}{25.2pt}
\setlength{\headsep}{0.4in}
\lhead{\textbf{CiteKey:} \texttt{}}
\chead{\textbf{\textsc{Article Notes}}}
\rhead{\textbf{Date: \today}}
\lfoot{\textsc{K. M. Short}}
\rfoot{Page \thepage/\pageref{LastPage}}

\usepackage{color}
\newcommand{\ccon}[1]{\textcolor{blue}{\textbf{Concept:} #1} \newline}
\newcommand{\imp}[1]{\textcolor{red}{\textbf{Important:} #1} \newline}


\begin{document}

\section*{Article Information}

	\begin{framed}
		\begin{verbatim}
			@ {,
				title = {},
				author = {},
				month = {},
				year = {},
				institution = {},
				localurl = {},
			}
		\end{verbatim}
	\end{framed}

\section*{Notes}

\section*{References}

\begin{multicols}
\bibliographystyle{alpha}
\nocite{*}
\bibliography{}

\end{multicols}
