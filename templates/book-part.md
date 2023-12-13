<!-- set parameters in the R code chunk below -->

```{r echo=FALSE}
unlockBinding("params", env = .GlobalEnv)
params$title <- "title-placeholder"
params$subtitle <- "subtitle-placeholder"
params$chapter <- "capter-placeholder"
params$abstract <- "abstract-placeholder"
params$author <- "author-placeholder"
```

\fancypagestyle{fancy}{
  \fancyhead[OR,EL]{\large `r params$title`}
  \fancyhead[OL,ER]{\large `r params$chapter`}
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
    \Huge
    \textbf{`r params$chapter`}
    \par
    \vspace{1cm}
    \large
    \textbf{`r params$abstract`}
    \par
    \vspace{3\parskip}
}

\pagestyle{fancy}
\newpage
\maketitle

<!-- start writing your RMarkdown document below -->

\lipsum[1-10]

