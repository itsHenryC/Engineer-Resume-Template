\ProvidesClass{custom}[2014/08/16 Example LaTeX class]
\NeedsTeXFormat{LaTeX2e}
\LoadClass{extarticle}

% Package Imports
\usepackage[hmargin=1cm, vmargin=.4cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{fontawesome}
\usepackage{fontspec}
\usepackage{array}
% Set font commands
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary, Path = fonts/, Scale=1.09]{Niveau-Lig}

% Custom Colors
\definecolor{DarkPurple}{RGB}{77, 0, 153}
\definecolor{DarkerPurple}{RGB}{77,0,125}
\definecolor{lightpurple}{RGB}{172, 57, 172}
\definecolor{custom3}{RGB}{64,64,64}
\definecolor{darkBlue}{RGB}{0, 37, 112}
\definecolor{subtitle}{HTML}{2d2d2d}
\definecolor{title}{HTML}{2d2d2d}
\definecolor{l2grey}{HTML}{383838}
\definecolor{lgrey}{HTML}{757575}
% Custom Fonts
\newcommand{\NivBol}{
    \fontspec[Path = fonts/]{Niveau-Bol}
}
\newcommand{\NivLig}{
    \fontspec[Path = fonts/]{Niveau-Lig}
}
\newcommand{\NivReg}{
    \fontspec[Path = fonts/]{Niveau-Reg}
}
\newcommand{\NivXlig}{
    \fontspec[Path = fonts/]{Niveau-ExtraLight}
}
\newcommand{\NivMed}{
    \fontspec[Path = fonts/]{Niveau-Med}
}
\newcommand{\NivLigIta}{
    \fontspec[Path = fonts/]{Niveau-LigIta}
}


\newcommand{\greyo}[1]{\color{lgrey}\NivLig#1\NivReg\color{black}}

% Horizontal Line command
\newcommand{\customline}{
    \vspace{0.4em}
    \color{darkBlue} \hrule\hrule
    \vspace{0.4em}
}

\newcommand{\shortline}{
    \vspace{0.2em}
    \color{darkBlue} \hrule\hrule\hrule
    \vspace{0.3em}
}

% Name command
\newcommand{\namesection}[4]{
    \hspace{8em}\raggedright{\parbox[b]{20em}{\NivMed\fontsize{30pt}{30pt}\selectfont#1{\NivLig#2}\\ \NivReg  \large \color{darkBlue} #3}}
    \hfill
    \raggedleft{\parbox[b]{16em}{\NivReg \fontsize{11pt}{14pt}\selectfont#4}}
}

% Section command
\newenvironment{rSection}{
\vspace{-0.25em}
  \begin{list}{}{
    \setlength{\leftmargin}{1.5em}
    \setlength{\itemsep}{5em}
  }
  \item[]
}{
  \end{list}
}

\newcommand{\sectiontitle}[1]{
    \vspace{.5em}
    \color{title} \NivBol \large \raggedright \underline{#1}\\
}

% Subsection command
\newcommand{\subsectionblock}[2]{
    \vspace{0.75em}
    \color{darkBlue} \NivBol \large \raggedright \underline{#1}\\ \vspace{0.5em} 
    \NivReg \color{black} \large #2\\
}

% Jobtitle command
\newcommand{\workplace}[2]{
    \vspace{-0.2em}
    \raggedright
    \color{darkBlue}
    \NivReg \large {#1}
    \hfill
    \raggedleft
    \NivReg \large \color{black}{#2} \normalfont\\ 
    \vspace{0.2em}
}

% Positions command
\newcommand{\position}[2]{
    \raggedright \NivReg \large{#1}
    \hfill
    \raggedleft \NivReg \normalsize {#2\\}
}


% Job Description command
\newenvironment{descriptionblock}{
  % \cdot used for bullets, items non-indented
  \vspace{-0.2em}
  \begin{list}{$\bullet$}{\leftmargin=0.75em \rightmargin=0.5em}
   \NivLig \color{l2grey}\large \itemsep -0.2em \vspace{-0.4em}
}{
  \end{list}
}

\newenvironment{rSubsection}[4]{
  \NivReg
  %%%%%%%%%%%%%%%%%%%%%% Default Layout: %%%%%%%%%%%%%%%%%%%%%%%%
  %%    Employer (bold)                     Dates (regular)    %%
  %%    Title (emphasis)                Location (emphasis)    %%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  {\NivReg \color{darkBlue}#1}                 \hfill                  {#2}% Stop a space
  \\
  {\normalsize{} \em \color{custom3} \NivLigIta #3}                 \hfill      {\normalsize{} \NivReg #4}
  % \cdot used for bullets, items non-indented
  \begin{list}{$\bullet$}{\leftmargin=1.5em \rightmargin=1.5em}
  \itemsep -.1em \vspace{-0.4em} 
}{
  \end{list}
}