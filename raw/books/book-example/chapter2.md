<!-- set parameters in the R code chunk below -->

```{r echo=FALSE}
unlockBinding("params", env = .GlobalEnv)
params$title <- "Example of Book"
params$subtitle <- "Example of how a book can look like"
params$chapter <- "Chapter Two"
params$abstract <- "This is the second chapter"
params$author <- "Bert"
```

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

\newpage
\maketitle

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

\pagestyle{fancy}

<!-- start writing your RMarkdown document below -->

\lipsum[1-10]

this is a test in the second file wow!

This is the continuation wow!

tururu
