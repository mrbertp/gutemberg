while getopts :ph opt
do
  case "$opt" in
    h) echo
       echo -e "\tSUMMARY: automatic and modular document typesetting and formatting"
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
       filename=$(basename $1 .md)
       stylename=$(basename $2 .yaml)
       images=$(dirname $1)/images
       echo
       echo -e "[gutemberg] Processing '$filename' with style '$stylename'"
       echo
       echo -e "\tbuilding RMarkdown document..." &&
       mkdir -p processed/$stylename &&
       cat $2 $1 > processed/$stylename/$filename.Rmd &&
       ( ( cp -r $images processed/$stylename &> /dev/null &&
         ( [[ $(\ls -A $images) ]] || echo -e "\tWARNING: 'images' folder is empty" ) ) ||
         echo -e "\tWARNING: 'images' folder is absent" ) &&
       echo -e "\ttargeting RMarkdown document..." &&
       sudo sed -i "s|\/.*\.Rmd|\/$stylename\/$filename\.Rmd|g" scripts/renderer.R &&
       echo -e "\trendering..." &&
       sudo Rscript scripts/renderer.R &> logs/renderer.log &&
       echo -e "\tresetting renderer..." &&
       sudo sed -i "s|\/.*\.Rmd|\/placeholder\.Rmd|g" scripts/renderer.R &&
       echo -e "\tcleaning temporary files..." &&
       rm -fr processed/$stylename/images/ &&
       echo &&
       echo -e "[gutemberg] Document generated: processed/$stylename/$filename.pdf"
       echo
       ;;
  esac
done

