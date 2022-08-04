library("rmarkdown")
library("tinytex")

cat("\n")
cat("[program] renderer.R\n")
cat("  [i] rendering...\n")

render("processed/file.Rmd", output_format="all")

