\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ProjectReport}[2024/04/03 Project Report Template]

\LoadClass[a4paper, 12pt]{article}

% Required packages
\RequirePackage[left=0.5in, right=0.5in, top=1in, bottom=1in]{geometry}
\RequirePackage{graphicx}
\RequirePackage{tikz}
\RequirePackage{xcolor}
\RequirePackage{fancyhdr}


% Default font color, font family, and background color
\newcommand{\defaultFontColor}{black}
\newcommand{\defaultFontFamily}{\rmfamily}
\newcommand{\defaultBgColor}{white}

% Define a command to set the font family
\newcommand{\setFontFamily}[1]{\renewcommand{\defaultFontFamily}{#1}}


% Define custom commands for font color and background color for the title page
\newcommand{\setTitleFontColor}[1]{\newcommand{\@titleFontColor}{#1}}
\newcommand{\setTitleBgColor}[1]{\newcommand{\@titleBgColor}{#1}}

% Define new commands for course name and professor's name
\newcommand{\course}[1]{\newcommand{\@course}{#1}}
\newcommand{\professor}[1]{\newcommand{\@professor}{#1}}

% Title page formatting
\renewcommand{\maketitle}{%
  \begin{titlepage}
    \begin{center}
      % Decorative elements only on the title page
      \begin{tikzpicture}[remember picture, overlay, shift={(current page.center)}]
        % Background color
        \fill[\@titleBgColor] (-0.5\paperwidth,-0.5\paperheight) rectangle (0.5\paperwidth,0.5\paperheight);
        % White border with 0.5-inch margin from all borders
        \draw[\@titleFontColor, line width=1pt] (-0.5\paperwidth+0.5in,0.5\paperheight-0.5in) rectangle (0.5\paperwidth-0.5in,-0.5\paperheight+0.5in);
        % Add your unique decorative elements here
      \end{tikzpicture}
      \vspace*{1cm}
      {\color{\@titleFontColor}\defaultFontFamily\LARGE\bfseries \@title \par} % Font color and family
      \vspace{1.5cm}
      {\color{\@titleFontColor}\defaultFontFamily\Large\@author \par} % Font color and family
      {\color{\@titleFontColor}\defaultFontFamily\Large\@course \par} % Print course name (Font color and family)
      {\color{\@titleFontColor}\defaultFontFamily\Large\@professor \par} % Print professor's name (Font color and family)
      \vfill
      \includegraphics[width=8cm]{SUT-Logo_white.png} % Add your university logo
      \vfill
      {\color{\@titleFontColor}\defaultFontFamily\large \@date \par} % Font color and family
    \end{center}
  \end{titlepage}
}

% Define custom page style
\fancypagestyle{myreportstyle}{%
    \fancyhf{} % Clear header and footer
    \fancyhead[R]{\@date} % Right header
    \fancyhead[L]{\@course} % Center footer
    \fancyfoot[R]{Page \thepage\ / \pageref{LastPage}} % Right footer (with total pages)
    \fancyfoot[L]{\@title} % Left footer
    \renewcommand{\headrulewidth}{0.4pt} % Header rule width
    \renewcommand{\footrulewidth}{0.4pt} % Footer rule width
}

% Apply custom page style to all pages
\pagestyle{myreportstyle}


\endinput


