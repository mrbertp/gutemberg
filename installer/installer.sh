stamp=$(date +%d-%m-%Y_%H-%M)
packages=false
R=false
pandoc=false
citeproc=false
Rmd=false
tinytex=false

echo
echo [gutemberg] Installing requisites:
echo

echo -e "\tupdating and upgrading packages ..."
sudo apt-get -qq update && sudo apt-get -qq full-upgrade -y &> logs/apt-log_$stamp.log &&
	packages=true &&
	echo -e "\tDONE"
echo

echo -ne "\tinstalling: r-base ..."
sudo apt -qq install r-base -y &> logs/r-base-log_$stamp.log &&
	R=true &&
	echo -e "\t\t\tDONE"
echo

echo -ne "\tinstalling: pandoc ..."
sudo apt -qq install pandoc -y &> logs/pandoc-log_$stamp.log &&
	pandoc=true &&
	echo -e "\t\t\tDONE"
echo

echo -ne "\tinstalling: pandoc-citeproc ..."
sudo apt -qq install pandoc-citeproc -y &> logs/pandoc-citeproc-log_$stamp.log &&
	citeproc=true &&
	echo -e "\t\tDONE"
echo

echo -ne "\tinstalling R package: rmarkdown ..."
sudo Rscript -e "install.packages('rmarkdown')" &> logs/rmarkdown-log_$stamp.log &&
	Rmd=true &&
	echo -e "\tDONE"
echo

echo -ne "\tinstalling R package: tinytex ..."
sudo Rscript -e "install.packages('tinytex')" &> logs/tinytex-log_$stamp.log &&
	sudo Rscript -e "tinytex::install_tinytex(force=TRUE)" &> logs/tinytex-install-log_$stamp.log &&
	tinytex=true &&
	echo -e "\tDONE"
echo

if [ $packages -a $R -a $pandoc -a $citeproc -a $Rmd -a $tinytex ]
then
	echo
	echo [gutemberg] Installation completed successfully
	echo
fi

