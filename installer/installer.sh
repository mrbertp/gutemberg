stamp=$(date +"%d-%m-%Y_%H-%M")

echo
echo -n "[gutemberg] updating and upgrading packages"
sudo apt-get -qq update && sudo apt-get -qq full-upgrade -y &> apt-log_$stamp.log &&
	echo " ... DONE"

echo
echo -n "[gutemberg] installing: r-base"
sudo apt -qq install r-base -y &> r-base-log_$stamp.log &&
	echo " ... DONE"

echo
echo -n "[gutemberg] installing: pandoc"
sudo apt -qq install pandoc -y &> pandoc-log_$stamp.log &&
	echo " ... DONE"

echo
echo -n "[gutemberg] installing R package: rmarkdown"
sudo Rscript -e "install.packages('rmarkdown')" &> rmarkdown-log_$stamp.log &&
	echo " ... DONE"

echo
echo -n "[gutemberg] installing R package: tinytex"
sudo Rscript -e "install.packages('tinytex')" &> tinytex-log_$stamp.log &&
	sudo Rscript -e "tinytex::install_tinytex(force=TRUE)" &> tinytex-log_$stamp.log &&
	echo " ... DONE"

echo
echo "[gutemberg] installation completed successfully"

echo

