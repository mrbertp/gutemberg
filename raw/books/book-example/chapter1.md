<!-- set parameters in the R code chunk below -->

```{r echo=FALSE}
unlockBinding("params", env = .GlobalEnv)
params$title <- "Example of Book"
params$subtitle <- "An example of how a book can look like"
params$chapter <- "Chapter One"
params$abstract <- "This is the first chapter"
params$author <- "Bert"
```

\fancypagestyle{firstpage}{
  \fancyhead[OR,EL]{\large `r params$title`}
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

This is a test for internal references.

# One section

Aqui estamos todos locuelos y por ello tenemos que ir a la sección [Locuelos](#two-section)

\lipsum[1-18]

# Two section

Aquí está la sección de locuelos. También estamos en la web: [Locuelos.com](www.juju.com).

# Three section

This is a test for vim autocompile feature. And CDs nuuuuuts Saniiic.

In the night... my darling... we will meet up on the go.

My dreams have come true instantly on the gow. Me quedo re-loco. jeje sisi.
