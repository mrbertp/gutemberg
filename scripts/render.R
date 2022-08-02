library("rmarkdown")
# library("tidyverse")
library("tinytex")

print("[program] render.R")
print("calling render...")

render("processed/file.Rmd", output_format="all")

