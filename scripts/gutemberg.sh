echo
echo "[program] gutemberg"

while getopts :ph opt
do
  case "$opt" in
    h) echo
       echo "  SUMMARY: gutemberg is a tool for document typesetting and formatting"
       echo 
       echo "  USAGE: gutemberg [-OPTION] [FILE] [STYLE]"
       echo 
       echo "         FILE: Markdown file, the content"
       echo 
       echo "         STYLE: YAML file, the format"
       echo 
       echo "         OPTION:"
       echo 
       echo "           -h: shows help"
       echo "           -p: formats FILE according to STYLE"
       echo ;;
    p) shift
       echo "  [i] building RMarkdown document (style + content)..." &&
       mkdir -p processed/$2s &&
       cat styles/$2.yaml raw/$1.md > processed/$1.Rmd &&
       echo "  [i] targeting file to be rendered..." &&
       sudo sed -i "s|file.Rmd|$1.Rmd|g" scripts/renderer.R &&
       echo "  [i] calling renderer..." &&
       sudo Rscript scripts/renderer.R &&
       sudo sed -i "s|$1.Rmd|file.Rmd|g" scripts/renderer.R ;;
  esac
done

