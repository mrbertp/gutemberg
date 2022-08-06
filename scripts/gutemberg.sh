while getopts :ph opt
do
  case "$opt" in
    h) echo
       echo -e "\tSUMMARY: gutemberg is a tool for document typesetting and formatting"
       echo 
       echo -e "\tUSAGE: gutemberg [-OPTION] [FILE] [STYLE]"
       echo
       echo -e "\t\tOPTION:"
       echo 
       echo -e "\t\t\t-h: shows help"
       echo -e "\t\t\t-p: formats FILE according to STYLE"
       echo 
       echo -e "\t\tFILE: Markdown file, the content"
       echo 
       echo -e "\t\tSTYLE: YAML file, the format"
       echo
       ;;
    p) shift
       echo
       echo -e "[gutemberg] Processing $1 as $2:"
       echo
       echo -e "\tbuilding RMarkdown document..." &&
       mkdir -p processed/$2s &&
       cat styles/$2.yaml raw/$1.md > processed/$1.Rmd &&
       echo -e "\ttargeting RMarkdown document..." &&
       sudo sed -i "s|file.Rmd|$1.Rmd|g" scripts/renderer.R &&
       echo -e "\trendering..." &&
       sudo Rscript scripts/renderer.R &> logs/renderer.log &&
       sudo sed -i "s|$1.Rmd|file.Rmd|g" scripts/renderer.R &&
       echo
       echo -e "[gutemberg] Document generated at: processed/$1"
       echo
       ;;
  esac
done

