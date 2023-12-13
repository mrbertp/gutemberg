<!-- set parameters in the R code chunk below -->

```{r echo=FALSE}
unlockBinding("params", env = .GlobalEnv)

params$title <- "title-placeholder"
params$subtitle <- "subtitle-placeholder"
params$author <- "author-placeholder"
params$date <- "date-placeholder"
params$affiliation <- "affiliation-placeholder"
```

\fancypagestyle{fancy}{
  \fancyhead[OR,EL]{\large `r params$title`}
  \fancyhead[OL,ER]{\large `r params$date`}
  \fancyhead[C]{}
  \fancyfoot[OR,EL]{\thepage}
  \fancyfoot[OL,ER]{\large `r params$author`}
  \fancyfoot[C]{}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}

\fancypagestyle{firstpage}{
  \fancyhead[OR,EL]{}
  \fancyhead[OL,ER]{}
  \fancyhead[C]{}
  \fancyfoot[OR,EL]{\thepage}
  \fancyfoot[OL,ER]{}
  \fancyfoot[C]{}
  \renewcommand{\headrulewidth}{1pt}
  \renewcommand{\footrulewidth}{1pt}
}

\renewcommand{\maketitle}{
  
  \thispagestyle{firstpage}  
    \begin{center}
      \Huge
      \textbf{`r params$title`}
      \par
      \vspace{1cm}
      \Large
      \textbf{`r params$subtitle`}
      \par
      \vspace{0.5cm}
      \large
      \textbf{`r params$author`}
      \par
      \vspace{0.25cm}
      \normalsize
      \textbf{`r params$date` || `r params$affiliation`}
      \par
      \vspace{0.2cm}
      \rule{0.5\textwidth}{0.4pt}
    \end{center}
}

\pagestyle{fancy}
\newpage
\maketitle

<!-- start writing your RMarkdown document below -->

