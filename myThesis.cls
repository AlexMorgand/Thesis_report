\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{myThesis}[10/05/06, Modele de Thèse Pierre Lothe]

\LoadClass[a4paper,12pt]{book}
% =============================================================================

% -----------------------------------------------------------------------------
% Définition des titres des pages "parties"
% -----------------------------------------------------------------------------
 \def\@part[#1]#2{%
    \ifnum \c@secnumdepth >-2\relax
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    \markboth{}{}%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \ifnum \c@secnumdepth >-2\relax
       \huge\bfseries \partname\nobreakspace\thepart % premiere partie
       \par
       \vskip 20\p@
     \fi
     \vspace{20pt}\hrule\vspace{20pt}
     \Huge \bfseries #2\par\nobreak
	 \vspace{20pt}\hrule\vspace{1pt}} % Titre de la partie
    \@endpart}







% -----------------------------------------------------------------------------
% La table des matières 
% Pour eviter d'avoir le header en majuscule
% -----------------------------------------------------------------------------
\renewcommand\tableofcontents{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{%
           \textsc{\contentsname}}{\textsc{\contentsname}}}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    }      



% -----------------------------------------------------------------------------
% La table des figures 
% Pour eviter d'avoir le header en majuscule
% -----------------------------------------------------------------------------
\renewcommand\listoffigures{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename}%
      \@mkboth{\textsc{\listfigurename}}%
              {\textsc{\listfigurename}}%
    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
    }



% -----------------------------------------------------------------------------
% La table des tableaux 
% Pour eviter d'avoir le header en majuscule  
% -----------------------------------------------------------------------------
\renewcommand\listoftables{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename}%
      \@mkboth{%
          \textsc{\listtablename}}%
         {\textsc{\listtablename}}%
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi
    }  