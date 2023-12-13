<!-- set parameters in the R code chunk below -->

```{r echo=FALSE}
unlockBinding("params", env = .GlobalEnv)
params$title <- "Letter B"
params$subtitle <- "the second letter"
params$runningtitle <- "The letter B"
params$author <- "The Alphabet"
params$signature <- "Alph"
```

\renewcommand{\maketitle}{
  \thispagestyle{firstpage}  
    \begin{center}
      \Huge
      \textbf{`r params$title`}
      \par
      \vspace{0.50cm}
      \large
      \textbf{`r params$runningtitle`}
      \par
      \vspace{0.20cm}
      \small
      \textbf{`r params$author`}
      \par
      \vspace{0cm}
      \rule{0.4\textwidth}{0.5pt}
    \end{center}
}

\newpage
\maketitle

\lhead[`r params$title`]{`r params$author`}
\chead[]{}
\rhead[`r params$author`]{`r params$title`}
\lfoot[\thepage]{}
\cfoot[]{}
\rfoot[]{\thepage}

<!-- start writing your RMarkdown document below -->

this text is about the letter b

\lipsum[6-10]

