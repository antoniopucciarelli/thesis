% A LaTeX template for MSc Thesis submissions to 
% Politecnico di Milano (PoliMi) - School of Industrial and Information Engineering
%
% P. F. Antonietti, S. Bonetti, A. Gruttadauria, G. Mescolini, A. Zingaro
%
% Last Revision: October 2021
%
% Copyright 2021 Politecnico di Milano, Italy. Inc. All rights reserved

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{config/polimiThesis}[2021/6/30 PoliMi3i thesis submission class]
\ProcessOptions\relax

%--------------------------------------------------------------------------
%	HANDLING THE STYLE OF THE THESIS
%--------------------------------------------------------------------------
\LoadClass[12pt, twoside]{book} % 12 pt font, two-sided book style
\RequirePackage[a4paper, includehead, headheight=0.6cm, inner=3.0cm ,outer=2.0cm, top=2.5cm, bottom=2.5cm]{geometry}
\RequirePackage{epigraph} 
\RequirePackage[bf, font=onehalfspacing]{caption} % caption: FIG in bold, 1.5 line spacing in figure and table captions
\newcommand{\thesisspacing}{\onehalfspacing}

% Define new command: numbered and un-numbered chapter in Polimi style. 

\let\latexchapter\chapter
\renewcommand{\chapter}{\@ifstar{\polimichapterstar}{\polimichapter}}

\newcommand{\polimichapter}[1]{
    \cleardoublepage % To make sure the previous headers are passed
    \phantomsection  % To help hyperref link to the right page
    \latexchapter{#1}
    \renewcommand{\headrulewidth}{0pt} %removing the horizontal line in the header
    % \addcontentsline{toc}{chapter}{#1} % Also adds the chapter name to the Contents
    \fancyhead[LO, RE]{ \textbf{\textcolor{bluepoli}\thechapter\hsp\textcolor{bluepoli}{|   }\hsp \leftmark}} % Header
    \fancyhead[LE, RO]{\thepage}
    \vspace{-1cm}
}

\newcommand{\polimichapterstar}[1]{
    \cleardoublepage                                             % To make sure the previous headers are passed
    \phantomsection                                              % To help hyperref link to the right page
    \latexchapter*{#1} 
   	\renewcommand{\headrulewidth}{0pt}                           %removing the horizontal line in the header
    \addcontentsline{toc}{chapter}{#1}                           % Also adds the chapter name to the Contents
    \fancyhead[LO, RE]{ \bfseries \textcolor{bluepoli}{|   } #1} % Header \textbf{\leftmark} \hspace{1mm}}
    \fancyhead[LE, RO]{\thepage}
    \vspace{-1cm}
}

% Define new command: start preamble
\newcommand{\startpreamble}{
	\pagestyle{fancy}                                % Change the header style
	\fancyhf{}                                       % Clear header and footer
	\renewcommand{\chaptermark}[1]{\markboth{##1}{}} % Getting the chapter name right
	\rhead{\thepage}                                 % Page number at the right of the header
	\frontmatter                                     % Use roman page numbering style (i, ii, iii, iv...) for the preamble pages
	\thesisspacing                                   % Double or single spacing
}

%------------------------------------------------------------------------
%	BUILDING THE TITLE PAGE
%------------------------------------------------------------------------

% Define new command: adding background picture (halo) on bottom left (used for empty pages)
\newcommand\BackgroundPic{
	\put(-50, 650){
		\parbox[b][\paperheight]{\paperwidth}{%	
			\Huge{
			\epigraph{\textbf{Discipline, doing what you hate to do but do it like you love it.}}{\textbf{\textit{Mike Tyson}}}
		}}
	}
	% \put(-150,-200){%
	% 	\parbox[b][\paperheight]{\paperwidth}{%
	% 		\vfill
	% 		\centering
	% 		% \transparent{0.4}
	% 		\includegraphics[width=0.9\paperwidth]{./decoration.eps}
	% 		\vfill
	% 	}
	% }
}

% Define new command: adding background picture (halo) on top right (used for cover page)
% \newcommand\BackgroundPicTR{ 
% 	\put(250,-300){
% 		\parbox[b][\paperheight]{\paperwidth}{
% 			\vfill
% 			\centering
% 			% \transparent{0.4}
% 			\includegraphics[width=0.70\paperwidth]{./decoration.eps}
% 			\vfill
% 		}
% 	}
% 	\put(-7, 250){
% 		\parbox[b][\paperheight]{\paperwidth}{
% 			\vfill
% 			\centering
% 			% \includegraphics[trim={1.2cm 3cm 12.2cm 1.2cm}, clip, width=0.3\textwidth]{./polimiLogo-long.eps}
% 			% \includegraphics[trim={1.2cm 3cm 4cm 1.2cm}, clip, width=0.6\paperwidth]{./polimiLogo-short.eps}
% 			\includegraphics[width=0.7\paperwidth]{./polimiLogo-short.eps}
% 			\vfill
% 		}
% 	}	
% 	% \put(-40, 170){
% 	% 	\parbox[b][\paperheight]{\paperwidth}{
% 	% 		\vfill
% 	% 		\centering
% 	% 		% \includegraphics[width=0.275\paperwidth]{./VKIlogo-short.eps}
% 	% 		\includegraphics[width=0.55\paperwidth]{./VKIlogo-long-BW.eps}
% 	% 		\vfill
% 	% 	}
% 	% }
% }

\newcommand\BackgroundPicTR{ 
	% \put(250,-300){
	% 	\parbox[b][\paperheight]{\paperwidth}{
	% 		\vfill
	% 		\centering
	% 		% \transparent{0.4}
	% 		\includegraphics[width=0.70\paperwidth]{./decoration.eps}
	% 		\vfill
	% 	}
	% }
	\put(-7, 250){
		\parbox[b][\paperheight]{\paperwidth}{
			\vfill
			\centering
			% \includegraphics[trim={1.2cm 3cm 12.2cm 1.2cm}, clip, width=0.3\textwidth]{./polimiLogo-long.eps}
			% \includegraphics[trim={1.2cm 3cm 4cm 1.2cm}, clip, width=0.6\paperwidth]{./polimiLogo-short.eps}
			\includegraphics[width=0.7\paperwidth]{./polimiLogo-short.eps}
			\vfill
		}
	}	
	\put(120, -330){
		\parbox[b][\paperheight]{\paperwidth}{
			\vfill
			\centering
			% \includegraphics[width=0.2\paperwidth]{./VKIlogo-short.eps}
			\includegraphics[width=0.4\paperwidth]{./VKIlogo-long-BW.eps}
			% \includegraphics[width=0.2\paperwidth]{./DAERlogo.png}
			\vfill
		}
	}
	% \put(60, -330){
	% 	\parbox[b][\paperheight]{\paperwidth}{
	% 		\vfill
	% 		\centering
	% 		% \includegraphics[width=0.2\paperwidth]{./VKIlogo-short.eps}
	% 		\includegraphics[width=0.4\paperwidth]{./VKIlogo-long-BW.eps}
	% 		% \includegraphics[width=0.2\paperwidth]{./DAERlogo.png}
	% 		\vfill
	% 	}
	% }
	% \put(150, -245){
	% 	\parbox[b][\paperheight]{\paperwidth}{
	% 		\vfill
	% 		\centering
	% 		\includegraphics[width=0.22\paperwidth]{./DAERlogo.png}
	% 		\vfill
	% 	}
	% }
	% \put(-80, -240){
	% 	\parbox[b][\paperheight]{\paperwidth}{
	% 		\vfill
	% 		\centering
	% 		% \includegraphics[width=0.2\paperwidth]{./VKIlogo-short.eps}
	% 		% \includegraphics[width=0.2\paperwidth]{./DAERlogo.png}
	% 		\includegraphics[width=0.45\paperwidth]{./VKIlogo-long-BW.eps}			
	% 		\vfill
	% 	}
	% }
}

\RequirePackage{xkeyval} % Handling keyword options.

% Define keys for title pages
\newif\if@cosupervisorexist\@cosupervisorexistfalse
\define@key[OIST]{title}{title}{\def\thesistitle{#1}}
\define@key[OIST]{title}{course}{\def\course{#1}}
\define@key[OIST]{title}{name}{\def\name{#1}}
\define@key[OIST]{title}{ID}{\def\ID{#1}}
\define@key[OIST]{title}{advisor}{\def\advisor{#1}}
\define@key[OIST]{title}{promoter}{\def\promoter{#1}}
\define@key[OIST]{title}{coadvisor}{\def\coadvisor{#1}\@cosupervisorexisttrue}
\define@key[OIST]{title}{academicyear}{\def\academicyear{#1}}
\define@key[OIST]{title}{course}{\def\course{#1}}

\providecommand{\puttitle}{}
\renewcommand{\puttitle}[1]{
	\@puttitle{}{#1}
}

% \providecommand{\@putcover}{}
% \renewcommand{\@putcover}[]{
% 	\AddToShipoutPicture*{\BackgroundPic}
% 	\begin{minpage}{\textwidth}
% 		\epigraph{\textbf{Discipline, doing what you hate to do but do it like you love it.}}{\textit{Mike Tyson}}
% 		\vfill
% 	\end{minpage}
% }

\providecommand{\@puttitle}{}
\renewcommand{\@puttitle}[2]{%
	\setkeys[OIST]{title}{#2}

	\begin{titlepage}
		\AddToShipoutPicture*{\BackgroundPicTR}
		\begin{minipage}{0.95\textwidth}
			\vfill
			\vspace{10cm}
			{{\color{black} \singlespacing \huge \bfseries \thesistitle \par}}	
			\vspace{1.5cm}
			{\color{black} \bfseries \large{\textsc{Master of Science in\\ \course}}\par}
			\vspace{1.5 cm}
			{\color{black} \Large {Author:} \bfseries{\name}}
		\end{minipage}
		\\
		\vspace*{\fill}
		\\
		\begin{minipage}{0.85\textwidth}
			\normalsize{
			Student ID: {\bfseries\ID}
			\\
			Advisor: {\bfseries\advisor}
			\\
			Promoter: {\bfseries\promoter}
			\\
			Academic Year: {\bfseries\academicyear}
			}
		\end{minipage}
	\end{titlepage}
}

\newcommand\blankpage{%
    \null
    \AddToShipoutPicture*{\BackgroundPic}
    \thispagestyle{empty}%
    \addtocounter{page}{-1}%
    \newpage
}

\RequirePackage{listings} % Typeset source code listings

\lstset{
  basicstyle=\ttfamily,  % Style of the font that is used for the code
  backgroundcolor=\color{gray!10},    % Background color
  keywordstyle=\color{red!75!black},  % Keyword style
  stringstyle=\color{green!40!black}, % String style
  commentstyle=\color{blue!30!black}, % Comment style
  numbers=left,                       % Add line numbers on the left side
  numbersep=5pt,                      % Decrease distance between line numbers and code
  numberstyle=\tiny,                  % Line number style
  breaklines=true,                    % Line break automatically
}