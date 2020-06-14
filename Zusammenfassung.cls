%Klasse für AIFB-Seminare
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Zusammenfassung}[2009/07/22 Vorlage AIFB-Seminararbeiten]

\usepackage[dvipsnames]{xcolor}
%Baut auf article auf.
\LoadClass[a4paper,12pt]{scrartcl}

%Deutsche Sprache und deutscher Zeichensatz
\RequirePackage[ngerman]{babel}
\RequirePackage[utf8x]{inputenc}
\RequirePackage[T1]{fontenc}

%Schriftart und -satz
\RequirePackage{lmodern}
\RequirePackage{microtype}

%Tabellen
\RequirePackage{tabularx}

%Grafiken
\RequirePackage{graphicx}

%Verweise
\RequirePackage[colorlinks=false, pdfborder={0 0 0}]{hyperref}

%Maßeinheiten
\RequirePackage{siunitx}

\usepackage{minted}
\usepackage{amsmath, amssymb}
\RequirePackage{amsfonts}
% F"ur S"atze und Beweise
\usepackage[thmmarks,amsmath]{ntheorem}
% Definiert eine theorem-Umgebung mit Überschrift ‘‘Satz’’
\newtheorem{theorem}{Beispiel}[section]


%Seminar definieren
\def\Seminartitel#1{\gdef\@Seminartitel{#1}}
%Semester definieren
\def\Semester#1{\gdef\@Semester{#1}}
%Autor definieren
\def\Autor#1{\gdef\@Autor{#1}}
%Matrikelnummer definieren
\def\Matrikelnummer#1{\gdef\@Matrikelnummer{#1}}
%Betreuer definieren
\def\Betreuer#1{\gdef\@Betreuer{#1}}
%Titel der Arbeit definieren
\def\Arbeitstitel#1{\gdef\@Arbeitstitel{#1}}


%Titelseite und Inhaltsverzeichnis erstellen
\newcommand{\makeTitleAndTOC}{
\thispagestyle{empty}
\noindent

\vspace{1cm}

\noindent
\@Seminartitel
\newline

\vspace{3cm}

\noindent
{\Large\textbf{\@Arbeitstitel}}

\vspace{3cm}

\noindent
\begin{tabular}{ll}
Autor:	      & \@Autor\\
\end{tabular}

%Inhaltsverzeichnis
\clearpage
\thispagestyle{empty}
\tableofcontents
\clearpage

\setcounter{page}{1}
}

