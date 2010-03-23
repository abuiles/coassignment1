
%% bare_conf.tex
%% V1.3
%% 2007/01/11
%% by Michael Shell
%% See:
%% http://www.michaelshell.org/
%% for current contact information.
%%
%% This is a skeleton file demonstrating the use of IEEEtran.cls
%% (requires IEEEtran.cls version 1.7 or later) with an IEEE conference paper.
%%
%% Support sites:
%% http://www.michaelshell.org/tex/ieeetran/
%% http://www.ctan.org/tex-archive/macros/latex/contrib/IEEEtran/
%% and
%% http://www.ieee.org/

%%*************************************************************************
%% Legal Notice:
%% This code is offered as-is without any warranty either expressed or
%% implied; without even the implied warranty of MERCHANTABILITY or
%% FITNESS FOR A PARTICULAR PURPOSE!
%% User assumes all risk.
%% In no event shall IEEE or any contributor to this code be liable for
%% any damages or losses, including, but not limited to, incidental,
%% consequential, or any other damages, resulting from the use or misuse
%% of any information contained here.
%%
%% All comments are the opinions of their respective authors and are not
%% necessarily endorsed by the IEEE.
%%
%% This work is distributed under the LaTeX Project Public License (LPPL)
%% ( http://www.latex-project.org/ ) version 1.3, and may be freely used,
%% distributed and modified. A copy of the LPPL, version 1.3, is included
%% in the base LaTeX documentation of all distributions of LaTeX released
%% 2003/12/01 or later.
%% Retain all contribution notices and credits.
%% ** Modified files should be clearly indicated as such, including  **
%% ** renaming them and changing author support contact information. **
%%
%% File list of work: IEEEtran.cls, IEEEtran_HOWTO.pdf, bare_adv.tex,
%%                    bare_conf.tex, bare_jrnl.tex, bare_jrnl_compsoc.tex
%%*************************************************************************

% *** Authors should verify (and, if needed, correct) their LaTeX system  ***
% *** with the testflow diagnostic prior to trusting their LaTeX platform ***
% *** with production work. IEEE's font choices can trigger bugs that do  ***
% *** not appear when using other class files.                            ***
% The testflow support page is at:
% http://www.michaelshell.org/tex/testflow/



% Note that the a4paper option is mainly intended so that authors in
% countries using A4 can easily print to A4 and see how their papers will
% look in print - the typesetting of the document will not typically be
% affected with changes in paper size (but the bottom and side margins will).
% Use the testflow package mentioned above to verify correct handling of
% both paper sizes by the user's LaTeX system.
%
% Also note that the "draftcls" or "draftclsnofoot", not "draft", option
% should be used if it is desired that the figures are to be displayed in
% draft mode.
%
\documentclass[conference]{IEEEtran}
% Add the compsoc option for Computer Society conferences.
%
% If IEEEtran.cls has not been installed into the LaTeX system files,
% manually specify the path to it like:
% \documentclass[conference]{../sty/IEEEtran}





% Some very useful LaTeX packages include:
% (uncomment the ones you want to load)


% *** MISC UTILITY PACKAGES ***
%
%\usepackage{ifpdf}
% Heiko Oberdiek's ifpdf.sty is very useful if you need conditional
% compilation based on whether the output is pdf or dvi.
% usage:
% \ifpdf
%   % pdf code
% \else
%   % dvi code
% \fi
% The latest version of ifpdf.sty can be obtained from:
% http://www.ctan.org/tex-archive/macros/latex/contrib/oberdiek/
% Also, note that IEEEtran.cls V1.7 and later provides a builtin
% \ifCLASSINFOpdf conditional that works the same way.
% When switching from latex to pdflatex and vice-versa, the compiler may
% have to be run twice to clear warning/error messages.






% *** CITATION PACKAGES ***
%
%\usepackage{cite}
% cite.sty was written by Donald Arseneau
% V1.6 and later of IEEEtran pre-defines the format of the cite.sty package
% \cite{} output to follow that of IEEE. Loading the cite package will
% result in citation numbers being automatically sorted and properly
% "compressed/ranged". e.g., [1], [9], [2], [7], [5], [6] without using
% cite.sty will become [1], [2], [5]--[7], [9] using cite.sty. cite.sty's
% \cite will automatically add leading space, if needed. Use cite.sty's
% noadjust option (cite.sty V3.8 and later) if you want to turn this off.
% cite.sty is already installed on most LaTeX systems. Be sure and use
% version 4.0 (2003-05-27) and later if using hyperref.sty. cite.sty does
% not currently provide for hyperlinked citations.
% The latest version can be obtained at:
% http://www.ctan.org/tex-archive/macros/latex/contrib/cite/
% The documentation is contained in the cite.sty file itself.



\usepackage{fancyhdr}
\usepackage{amsmath,amsfonts,amsthm,amssymb}
\usepackage{setspace}
\usepackage{Tabbing}
\usepackage{lastpage}
\usepackage{extramarks}
\usepackage{chngpage}
\usepackage{soul,color}
\usepackage{listings}



% *** GRAPHICS RELATED PACKAGES ***
%
\ifCLASSINFOpdf
\usepackage[pdftex]{graphicx}
  % declare the path(s) where your graphic files are
\graphicspath{{/home/abuiles/jpeg/}}
  % and their extensions so you won't have to specify these with
  % every instance of \includegraphics
\DeclareGraphicsExtensions{.pdf,.jpeg,.jpg,.png}
\else
  % or other class option (dvipsone, dvipdf, if not using dvips). graphicx
  % will default to the driver specified in the system graphics.cfg if no
  % driver is specified.
  % \usepackage[dvips]{graphicx}
  % declare the path(s) where your graphic files are
  % \graphicspath{{../eps/}}
  % and their extensions so you won't have to specify these with
  % every instance of \includegraphics
  % \DeclareGraphicsExtensions{.eps}
\fi
% graphicx was written by David Carlisle and Sebastian Rahtz. It is
% required if you want graphics, photos, etc. graphicx.sty is already
% installed on most LaTeX systems. The latest version and documentation can
% be obtained at:
% http://www.ctan.org/tex-archive/macros/latex/required/graphics/
% Another good source of documentation is "Using Imported Graphics in
% LaTeX2e" by Keith Reckdahl which can be found as epslatex.ps or
% epslatex.pdf at: http://www.ctan.org/tex-archive/info/
%
% latex, and pdflatex in dvi mode, support graphics in encapsulated
% postscript (.eps) format. pdflatex in pdf mode supports graphics
% in .pdf, .jpeg, .png and .mps (metapost) formats. Users should ensure
% that all non-photo figures use a vector format (.eps, .pdf, .mps) and
% not a bitmapped formats (.jpeg, .png). IEEE frowns on bitmapped formats
% which can result in "jaggedy"/blurry rendering of lines and letters as
% well as large increases in file sizes.
%
% You can find documentation about the pdfTeX application at:
% http://www.tug.org/applications/pdftex





% *** MATH PACKAGES ***
%
%\usepackage[cmex10]{amsmath}
% A popular package from the American Mathematical Society that provides
% many useful and powerful commands for dealing with mathematics. If using
% it, be sure to load this package with the cmex10 option to ensure that
% only type 1 fonts will utilized at all point sizes. Without this option,
% it is possible that some math symbols, particularly those within
% footnotes, will be rendered in bitmap form which will result in a
% document that can not be IEEE Xplore compliant!
%
% Also, note that the amsmath package sets \interdisplaylinepenalty to 10000
% thus preventing page breaks from occurring within multiline equations. Use:
%\interdisplaylinepenalty=2500
% after loading amsmath to restore such page breaks as IEEEtran.cls normally
% does. amsmath.sty is already installed on most LaTeX systems. The latest
% version and documentation can be obtained at:
% http://www.ctan.org/tex-archive/macros/latex/required/amslatex/math/





% *** SPECIALIZED LIST PACKAGES ***
%
%\usepackage{algorithmic}
% algorithmic.sty was written by Peter Williams and Rogerio Brito.
% This package provides an algorithmic environment fo describing algorithms.
% You can use the algorithmic environment in-text or within a figure
% environment to provide for a floating algorithm. Do NOT use the algorithm
% floating environment provided by algorithm.sty (by the same authors) or
% algorithm2e.sty (by Christophe Fiorio) as IEEE does not use dedicated
% algorithm float types and packages that provide these will not provide
% correct IEEE style captions. The latest version and documentation of
% algorithmic.sty can be obtained at:
% http://www.ctan.org/tex-archive/macros/latex/contrib/algorithms/
% There is also a support site at:
% http://algorithms.berlios.de/index.html
% Also of interest may be the (relatively newer and more customizable)
% algorithmicx.sty package by Szasz Janos:
% http://www.ctan.org/tex-archive/macros/latex/contrib/algorithmicx/




% *** ALIGNMENT PACKAGES ***
%
%\usepackage{array}
% Frank Mittelbach's and David Carlisle's array.sty patches and improves
% the standard LaTeX2e array and tabular environments to provide better
% appearance and additional user controls. As the default LaTeX2e table
% generation code is lacking to the point of almost being broken with
% respect to the quality of the end results, all users are strongly
% advised to use an enhanced (at the very least that provided by array.sty)
% set of table tools. array.sty is already installed on most systems. The
% latest version and documentation can be obtained at:
% http://www.ctan.org/tex-archive/macros/latex/required/tools/


%\usepackage{mdwmath}
%\usepackage{mdwtab}
% Also highly recommended is Mark Wooding's extremely powerful MDW tools,
% especially mdwmath.sty and mdwtab.sty which are used to format equations
% and tables, respectively. The MDWtools set is already installed on most
% LaTeX systems. The lastest version and documentation is available at:
% http://www.ctan.org/tex-archive/macros/latex/contrib/mdwtools/


% IEEEtran contains the IEEEeqnarray family of commands that can be used to
% generate multiline equations as well as matrices, tables, etc., of high
% quality.


%\usepackage{eqparbox}
% Also of notable interest is Scott Pakin's eqparbox package for creating
% (automatically sized) equal width boxes - aka "natural width parboxes".
% Available at:
% http://www.ctan.org/tex-archive/macros/latex/contrib/eqparbox/

\pagestyle{fancy}                                                       %
\lhead{\includegraphics[width=1in]{logoeafit}}                                                 %
\chead{Informe 3}  %
\rhead{\firstxmark}                                                     %
\lfoot{\lastxmark}                                                      %
%\cfoot{}                                                                %
\rfoot{Page\ \thepage\ of\ \pageref{LastPage}}                          %
%% \renewcommand\headrulewidth{0.4pt}                                      %
%% \renewcommand\footrulewidth{0.4pt}  




% *** SUBFIGURE PACKAGES ***
%\usepackage[tight,footnotesize]{subfigure}
% subfigure.sty was written by Steven Douglas Cochran. This package makes it
% easy to put subfigures in your figures. e.g., "Figure 1a and 1b". For IEEE
% work, it is a good idea to load it with the tight package option to reduce
% the amount of white space around the subfigures. subfigure.sty is already
% installed on most LaTeX systems. The latest version and documentation can
% be obtained at:
% http://www.ctan.org/tex-archive/obsolete/macros/latex/contrib/subfigure/
% subfigure.sty has been superceeded by subfig.sty.



%\usepackage[caption=false]{caption}
%\usepackage[font=footnotesize]{subfig}
% subfig.sty, also written by Steven Douglas Cochran, is the modern
% replacement for subfigure.sty. However, subfig.sty requires and
% automatically loads Axel Sommerfeldt's caption.sty which will override
% IEEEtran.cls handling of captions and this will result in nonIEEE style
% figure/table captions. To prevent this problem, be sure and preload
% caption.sty with its "caption=false" package option. This is will preserve
% IEEEtran.cls handing of captions. Version 1.3 (2005/06/28) and later
% (recommended due to many improvements over 1.2) of subfig.sty supports
% the caption=false option directly:
%\usepackage[caption=false,font=footnotesize]{subfig}
%
% The latest version and documentation can be obtained at:
% http://www.ctan.org/tex-archive/macros/latex/contrib/subfig/
% The latest version and documentation of caption.sty can be obtained at:
% http://www.ctan.org/tex-archive/macros/latex/contrib/caption/




% *** FLOAT PACKAGES ***
%
%\usepackage{fixltx2e}
% fixltx2e, the successor to the earlier fix2col.sty, was written by
% Frank Mittelbach and David Carlisle. This package corrects a few problems
% in the LaTeX2e kernel, the most notable of which is that in current
% LaTeX2e releases, the ordering of single and double column floats is not
% guaranteed to be preserved. Thus, an unpatched LaTeX2e can allow a
% single column figure to be placed prior to an earlier double column
% figure. The latest version and documentation can be found at:
% http://www.ctan.org/tex-archive/macros/latex/base/



%\usepackage{stfloats}
% stfloats.sty was written by Sigitas Tolusis. This package gives LaTeX2e
% the ability to do double column floats at the bottom of the page as well
% as the top. (e.g., "\begin{figure*}[!b]" is not normally possible in
% LaTeX2e). It also provides a command:
%\fnbelowfloat
% to enable the placement of footnotes below bottom floats (the standard
% LaTeX2e kernel puts them above bottom floats). This is an invasive package
% which rewrites many portions of the LaTeX2e float routines. It may not work
% with other packages that modify the LaTeX2e float routines. The latest
% version and documentation can be obtained at:
% http://www.ctan.org/tex-archive/macros/latex/contrib/sttools/
% Documentation is contained in the stfloats.sty comments as well as in the
% presfull.pdf file. Do not use the stfloats baselinefloat ability as IEEE
% does not allow \baselineskip to stretch. Authors submitting work to the
% IEEE should note that IEEE rarely uses double column equations and
% that authors should try to avoid such use. Do not be tempted to use the
% cuted.sty or midfloat.sty packages (also by Sigitas Tolusis) as IEEE does
% not format its papers in such ways.





% *** PDF, URL AND HYPERLINK PACKAGES ***
%
\usepackage{url}
% url.sty was written by Donald Arseneau. It provides better support for
% handling and breaking URLs. url.sty is already installed on most LaTeX
% systems. The latest version can be obtained at:
% http://www.ctan.org/tex-archive/macros/latex/contrib/misc/
% Read the url.sty source comments for usage information. Basically,
% \url{my_url_here}.





% *** Do not adjust lengths that control margins, column widths, etc. ***
% *** Do not use packages that alter fonts (such as pslatex).         ***
% There should be no need to do such things with IEEEtran.cls V1.6 and later.
% (Unless specifically asked to do so by the journal or conference you plan
% to submit to, of course. )


% correct bad hyphenation here
\hyphenation{op-tical net-works semi-conduc-tor}


\begin{document}
%
% paper title
% can use linebreaks \\ within to get better formatting as desired
\title{Pr\'actica 1 Avance 4}


% author names and affiliations
% use a multiple column layout for up to three different
% affiliations
\author{\IEEEauthorblockN{Alejandro Cavadavid}
\IEEEauthorblockA{Universidad EAFIT\\
Medell\'in, Colombia\\
Email: acadavid@eafit.edu.co}
\and
\IEEEauthorblockN{Adolfo Builes}
\IEEEauthorblockA{Universidad EAFIT\\
Medell\'in, Colombia\\
Email: abuilesj@eafit.edu.co}
\and
\IEEEauthorblockN{Sebastian Castillo}
\IEEEauthorblockA{Universidad EAFIT\\
Medell\'in, Colombia\\
Email: scatil1@eafit.edu.co}}

% conference papers do not typically use \thanks and this command
% is locked out in conference mode. If really needed, such as for
% the acknowledgment of grants, issue a \IEEEoverridecommandlockouts
% after \documentclass

% for over three affiliations, or if they all won't fit within the width
% of the page, use this alternative format:
%
%\author{\IEEEauthorblockN{Michael Shell\IEEEauthorrefmark{1},
%Homer Simpson\IEEEauthorrefmark{2},
%James Kirk\IEEEauthorrefmark{3},
%Montgomery Scott\IEEEauthorrefmark{3} and
%Eldon Tyrell\IEEEauthorrefmark{4}}
%\IEEEauthorblockA{\IEEEauthorrefmark{1}School of Electrical and Computer Engineering\\
%Georgia Institute of Technology,
%Atlanta, Georgia 30332--0250\\ Email: see http://www.michaelshell.org/contact.html}
%\IEEEauthorblockA{\IEEEauthorrefmark{2}Twentieth Century Fox, Springfield, USA\\
%Email: homer@thesimpsons.com}
%\IEEEauthorblockA{\IEEEauthorrefmark{3}Starfleet Academy, San Francisco, California 96678-2391\\
%Telephone: (800) 555--1212, Fax: (888) 555--1212}
%\IEEEauthorblockA{\IEEEauthorrefmark{4}Tyrell Inc., 123 Replicant Street, Los Angeles, California 90210--4321}}




% use for special paper notices
%\IEEEspecialpapernotice{(Invited Paper)}




% make the title area
\maketitle


\begin{abstract}
%\boldmath
Durante esta 4 semanas de trabajo, hemos venido haciendo
refinaciones sobre los problemas propuestos, para este informe y gracias a la ayuda
brindada por los anteriores, ya tenemos implementados en lenguaje ensamblador
 operaciones de suma, resta, transpuesta de una matriz y multiplicación por escalar.
\end{abstract}
% IEEEtran.cls defaults to using nonbold math in the Abstract.
% This preserves the distinction between vectors and scalars. However,
% if the conference you are submitting to favors bold math in the abstract,
% then you can use LaTeX's standard command \boldmath at the very start
% of the abstract to achieve this. Many IEEE journals/conferences frown on
% math in the abstract anyway.

% no keywords




% For peer review papers, you can put extra information on the cover
% page as needed:
% \ifCLASSOPTIONpeerreview
% \begin{center} \bfseries EDICS Category: 3-BBND \end{center}
% \fi
%
% For peerreview papers, this IEEEtran command inserts a page break and
% creates the second title. It will be ignored for other modes.
\thispagestyle{fancy}
\IEEEpeerreviewmaketitle



\section{Suma de matrices}
% no \IEEEPARstart
% You must have at least 2 lines in the paragraph with the drop letter
% (should never be an issue)

%\hfill mds

%\hfill January 11, 2007

\subsection{De la refinaci\'on al c\'odigo}
Luego de examinar cada uno de los diagramas de flujo, y llegar al de nivel m\'as
bajo, y teniendo en cuenta adem\'as lo de mas alto nivel, fue muy f\'acil pasar a
implementar la soluci\'on en lenguaje ensamblador, tal vez, en lo que gastamos algo de tiempo fue en la compresión del coprocesador para las operaciones con dobles. Es esta versi\'on estamos trabajando con matrices quemadas en el c\'odigo, esta son de un tamaño de 10 filas y 2 columnas.
\subsection{Implementaci\'on}
Partiendo del diagrada de la Figura 1 (Fig.1), 
\begin{figure}[!h]
\centering
\includegraphics[width=2.5in]{suma3}
\caption{Diagrama de flujo para la suma de matrices}
\label{fig_sim}
\end{figure}
\vspace{0.1in}
llegar a la implentacion en lenguaje ensamblador se hizo de una manera muy intuitiva,
el siguiente codigo corresponde a la suma de matrices de tamaño flotante.
\begin{lstlisting}[language={[x86masm]Assembler}]
segment .data
matriz1: dq 4.0,1.0,4.0,1.0,4.0,1.0,4.0,1.0,4.0,1.0
matriz2: dq 3.0,1.0,4.0,1.0,4.0,1.0,4.0,1.0,4.0,1.0
 msg2: db "%lf ,",10,0

segment .bss
matriz3: resq 10
aux: resd 1
aux2: resd 1
aux3: resq 1

segment .text
   global main
   extern printf
main:
   mov   eax,matriz1
   mov   ebx,matriz2
   mov   edx,matriz3
   mov   ecx,10
   jmp   lp

lp:
   fld   qword [eax]
   fld   qword [ebx]
   faddp st1
   fstp  qword [edx]
   add   eax,8
   add   ebx,8
   add   edx,8
   loop  lp
   mov   ecx,10
   mov   eax,matriz3
   call  printm
   jmp   exit

printm:
   mov   [aux],eax
   mov   [aux2],ecx
   push  dword [eax+4]
   push  dword [eax]
   push  dword msg2
   call  printf
   add   esp,12
   mov   eax,[aux]
   mov   ecx,[aux2]
   add   eax,8
   loop  printm

exit:
   mov   eax,1
   mov   ebx,0
   int   0x80
\end{lstlisting}

\subsection{Refinando la resta de matrices}
Se muestra una refinaci\'on para el problema de resta de dos matrice


\subsubsection{Vista general}
Al igual que en la suma, se muestra una vista muy general de como funciona el
algoritmo para sumar las matrices.
\begin{figure}[!h]
\centering
\includegraphics[width=2.5in]{resta1}
\caption{Resta de matrices}
\label{fig_sim}
\end{figure}
\subsubsection{Vista en profundidad 1}
Se navega en un nivel de profundidad y se hace la distinci\'on entre la parte donde
se leen los datos y en donde se recorren las matrices.
\newpage
\begin{figure}[h]
\centering
\vspace{0.2in}
\includegraphics[width=2in]{resta2}
\caption{Resta de matrices}
\label{fig_sim}
\end{figure}

\subsubsection{Vista en profundidad 2}
Se navega en un nivel de profundidad 2, donde se muestra a m\'as detalle el proceso de
leer los valores iniciales y la parte de recorrer las dos matrices realizando su resta.
\begin{figure}[h]
\centering
\includegraphics[width=2in]{resta3}
\caption{Resta de matrices}
\label{fig_sim}
\end{figure}

\subsection{Multiplaci\'on de matriz por un escalar}
Refinaci\'on para la multiplicaci\'on de una matriz por un escalar.
\subsubsection{Vista general}
Idea general de como se realiza la multiplicaci\'on de una matriz por un escalar.
\begin{figure}[!h]
\centering
\includegraphics[width=3in]{escalar1}
\caption{Matriz por escalar}
\label{fig_sim}
\end{figure}
\subsubsection{Vista en profundidad 1}
Al igual que en los otros ejemplos se hace una separaci\'on entre la entrada de datos
y el recorrido de la matriz.
\begin{figure}[h]
\centering
\includegraphics[width=2in]{escalar2}
\caption{Matriz por escalar}
\label{fig_sim}
\end{figure}

\subsubsection{Vista en profundidad 2}
Se navega en un nivel de profundidad 3, donde se muestra detalladamente el proces de
multiplicar una matriz por un escalar.
\begin{figure}[h]
\centering
\includegraphics[width=2in]{escalar3}
\caption{Matriz por escalar}
\label{fig_sim}
\end{figure}

\subsection{Multiplaci\'on de matrices}
Refinaci\'on para la multiplicaci\'on entre matrices.
\subsubsection{Vista general}
Idea general de como se realiza la multiplicaci\'on de dos matrices A y B.
\newpage
\begin{figure}[!h]
\centering
\includegraphics[width=3in]{multi1}
\caption{Multiplicaci\'on de matrices}
\label{fig_sim}
\end{figure}
\subsubsection{Vista en profundidad 1}
Separaci\'on entre la entrada de datos y el recorrido para hacer la respectiva multiplicaci\'on.
\begin{figure}[h]
\centering
\includegraphics[width=2in]{multi2}
\caption{Multiplicaci\'on de matrices}
\label{fig_sim}
\end{figure}

\subsubsection{Vista en profundidad 2}
Mostramos detalladamente el proceso de
multiplicar una matriz por otra.
\begin{figure}[h]
\centering
\includegraphics[width=3in]{multi3}
\caption{Multiplicaci\'on de matrices}
\label{fig_sim}
\end{figure}
\newpage
% An example of a floating figure using the graphicx package.
% Note that \label must occur AFTER (or within) \caption.
% For figures, \caption should occur after the \includegraphics.
% Note that IEEEtran v1.7 and later has special internal code that
% is designed to preserve the operation of \label within \caption
% even when the captionsoff option is in effect. However, because
% of issues like this, it may be the safest practice to put all your
% \label just after \caption rather than within \caption{}.
%
% Reminder: the "draftcls" or "draftclsnofoot", not "draft", class
% option should be used if it is desired that the figures are to be
% displayed while in draft mode.
%
%\begin{figure}[!t]
%\centering
%\includegraphics[width=2.5in]{myfigure}
% where an .eps filename suffix will be assumed under latex,
% and a .pdf suffix will be assumed for pdflatex; or what has been declared
% via \DeclareGraphicsExtensions.
%\caption{Simulation Results}
%\label{fig_sim}
%\end{figure}

% Note that IEEE typically puts floats only at the top, even when this
% results in a large percentage of a column being occupied by floats.


% An example of a double column floating figure using two subfigures.
% (The subfig.sty package must be loaded for this to work.)
% The subfigure \label commands are set within each subfloat command, the
% \label for the overall figure must come after \caption.
% \hfil must be used as a separator to get equal spacing.
% The subfigure.sty package works much the same way, except \subfigure is
% used instead of \subfloat.
%
%\begin{figure*}[!t]
%\centerline{\subfloat[Case I]\includegraphics[width=2.5in]{subfigcase1}%
%\label{fig_first_case}}
%\hfil
%\subfloat[Case II]{\includegraphics[width=2.5in]{subfigcase2}%
%\label{fig_second_case}}}
%\caption{Simulation results}
%\label{fig_sim}
%\end{figure*}
%
% Note that often IEEE papers with subfigures do not employ subfigure
% captions (using the optional argument to \subfloat), but instead will
% reference/describe all of them (a), (b), etc., within the main caption.


% An example of a floating table. Note that, for IEEE style tables, the
% \caption command should come BEFORE the table. Table text will default to
% \footnotesize as IEEE normally uses this smaller font for tables.
% The \label must come after \caption as always.
%
%\begin{table}[!t]
%% increase table row spacing, adjust to taste
%\renewcommand{\arraystretch}{1.3}
% if using array.sty, it might be a good idea to tweak the value of
% \extrarowheight as needed to properly center the text within the cells
%\caption{An Example of a Table}
%\label{table_example}
%\centering
%% Some packages, such as MDW tools, offer better commands for making tables
%% than the plain LaTeX2e tabular which is used here.
%\begin{tabular}{|c||c|}
%\hline
%One & Two\\
%\hline
%Three & Four\\
%\hline
%\end{tabular}
%\end{table}


% Note that IEEE does not put floats in the very first column - or typically
% anywhere on the first page for that matter. Also, in-text middle ("here")
% positioning is not used. Most IEEE journals/conferences use top floats
% exclusively. Note that, LaTeX2e, unlike IEEE journals/conferences, places
% footnotes above bottom floats. This can be corrected via the \fnbelowfloat
% command of the stfloats package.

\section {Promedio de un vector de 10 posiciones}
En nuestro proceso de familiarización con assembler, esta semana implementamos un
algoritmo para determinar el promedio de la suma de un vector de 10 posiciones.
Dado que las matrices se pueden representar como vectores dentro de vectores, realizamos una pequeña implementaci\'on en clase para realizar el c\'alculo de promedios de una serie de datos dados. Con ello comprendimos en principio como operamos con estos vectores, es decir, que de acuerdo al tamaño de los datos que escogimos, nos debemos mover dentro del vector variando con este tamaño para pasar a las posiciones siguientes del mismo. El nombre del vector apunta al byte 0 de la estructura.
\subsection {Programa en Assembly}
segment .data\\
notas: dd 1,2,3,4,5,6,7,8,9,10\\
total: dd 0\\
segment .bss\\
\\
segment .text\\
   global main\\
\\
main:\\
        mov   ebx,notas\\
        mov   eax,0\\
        mov   edx,0\\
        mov   ecx,3\\
        jmp   fstloop\\
fstloop:\\
        add   eax,[ebx]\\
        add   ebx,4\\
        loop  fstloop\\
        mov   ecx, 5\\
        div   ecx\\
        add   [total], eax\\
        mov   edx,0\\
        mov   eax,0\\
        mov   ecx,3\\
sndloop:\\
        add   eax,[ebx]\\
        add   ebx,4\\
        loop  sndloop\\
        mov   ecx, 6\\
        mul   ecx\\
        mov   ecx, 10\\
        div   ecx\\
        add   [total], eax\\
        mov   edx,0\\
        mov   eax,0\\
        mov   ecx,4\\
thdloop:\\
        add   eax,[ebx]\\
        add   ebx,4\\
        loop  thdloop\\
        mov   ecx, 5\\
        div   ecx\\
        add   [total], eax\\
        mov   edx, 0\\
        mov   ecx,3\\
fin:\\
        mov   eax,1\\
        mov   ebx,0\\
        int   0x80

\section{Conclusiones}
Realizar el proceso de refinaci\'on para cualquier problema claramente ayuda en el
entendimiento de este, permite a las personas tener una mejor idea de como es su
funcionamiento, y adem\'as en el momento de llevarlo a codigo ensamblador brinda una
mejor idea  de como debe ser estructurado el programa.


% conference papers do not normally have an appendix


% use section* for acknowledgementn

% trigger a \newpage just before the given reference
% number - used to balance the columns on the last page
% adjust value as needed - may need to be readjusted if
% the document is modified later
%\IEEEtriggeratref{8}
% The "triggered" command can be changed if desired:
%\IEEEtriggercmd{\enlargethispage{-5in}}

% references section

% can use a bibliography generated by BibTeX as a .bbl file
% BibTeX documentation can be easily obtained at:
% http://www.ctan.org/tex-archive/biblio/bibtex/contrib/doc/
% The IEEEtran BibTeX style support page is at:
% http://www.michaelshell.org/tex/ieeetran/bibtex/
%\bibliographystyle{IEEEtran}
% argument is your BibTeX string definitions and bibliography database(s)
%\bibliography{IEEEabrv,../bib/paper}
%
% <OR> manually copy in the resultant .bbl file
% set second argument of \begin to the number of references
% (used to reserve space for the reference number labels box)
%\begin{thebibliography}{1}
\section{Bibliograf\'ia}
%\bibitem{wikipedia.org}
[1] \url{http://es.wikipedia.org/wiki/Matriz_(matemática)}, Visitado Viernes 12 de Marzo.

%\end{thebibliography}




% that's all folks
\end{document}


