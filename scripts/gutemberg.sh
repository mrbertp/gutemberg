while getopts :ph opt
do
  case "$opt" in
    h) echo
       echo -e "\tSUMMARY: automatic and modular document typesetting and formatting"
       echo 
       echo -e "\tUSAGE: gutemberg [-OPTION] [FOLDER] [STYLE]"
       echo
       echo -e "\t\tOPTION:"
       echo 
       echo -e "\t\t  -h: shows help"
       echo
       echo -e "\t\t  -p: formats contents in FOLDER according to STYLE"
       echo -e "\t\t        FOLDER: folder containing one or multiple (R)Markdown files"
       echo -e "\t\t        STYLE: YAML file, containing formatting information"
       echo
       ;;
    p) shift
       
       filename=$(basename $1)
       stylename=$(basename $2 .yaml)
       images=$1/images
       
       echo
       echo -e "[gutemberg] Processing '$filename' contents with style '$stylename'"
       echo
       
       echo -e "\tbuilding RMarkdown document..." &&
       mkdir -p processed/$stylename &&
       
       echo -e "\tmul" && cat $2 $(find $1 -maxdepth 1 -type f | tac) > processed/$stylename/$filename.Rmd &&

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
       
       echo
       echo -e "[gutemberg] Document generated: processed/$stylename/$filename.pdf"
       echo
       ;;
  esac
done

