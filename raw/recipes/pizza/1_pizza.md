<!-- set parameters in the R code chunk below -->

```{r echo=FALSE}
unlockBinding("params", env = .GlobalEnv)
params$title <- "Pizza"
params$subtitle <- "The healthy way"
params$runningtitle <- "Healthy Pizza"
params$author <- "Julia and William"
params$signature <- "CJ and W"
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

## Ingredients

\vspace{-0.5cm}
\begin{tabbing}
\hspace{2ex} \= \hspace{20ex} \= \hspace{4ex} \= \\
\>                  \>   2 people                \\
\>                  \> \rule{8ex}{0.5pt}         \\
\> - Flour Type 00  \> 300 \> g                  \\
\> - Flour Type 405 \> 200 \> g                  \\
\> - Lukewarm water \> 300 \> mL                 \\
\> - Salt           \> 15  \> g                  \\
\> - Fresh yeast    \> 5   \> g                  \\
\> - Olive oil      \> 35  \> g                  \\
\> - Sauce          \> to your taste             \\
\> - Toppings       \> to your taste             \\
\end{tabbing}
\vspace{-0.5cm}

## Kitchenware

\vspace{-0.5cm}
\begin{tabbing}
\hspace{2ex} \= \hspace{19ex} \= \\
\> - Bowl          \> x2         \\
\> - Spoon         \> x1         \\
\> - Plates        \> x2         \\
\> - Kitchen towel \> x1         \\
\> - Oven                        \\
\end{tabbing}
\vspace{-0.5cm}

## Preparation

1. Mix flour and salt in a bowl.

2. Prepare 300 ml of lukewarm water. Stir together fresh yeast and about 3-4 tbsp of water until yeast is fully dissolved.

3. Add yeast to the flour and mix well.

4. Gradually add the remaining water, while mixing well to form a soft dough.

5. Knead for about 5 min before adding the olive oil. Add the oil and knead for at least 5-8min until the dough is smooth and elastic.

6. Divide dough in half and roll both parts into balls. Place balls on two separate floured plates and additionally dust with a bit of flour. Cover with plastic wrap or damp kitchen towel.

7. Let dough rise for about 2h. Prepare tomato sauce and pizza toppings in the meantime.

8. Preheat oven to its highest setting (circulating air/Umluft).

9. When the dough has risen, stretch by hand or roll out to form pizza base.

10. Once the oven is heated, precook base for about 6min. Take base out of the oven and add tomato sauce, mozzarella, and toppings of choice. By precooking the base, the crust and the bottom of the base will stay crispy, while the inside of the crust and the top of the base will stay soft and fluffy.

11. Put pizza back into the oven and bake for another 6-10min until the crust is golden brown.

\lipsum[11-15]
