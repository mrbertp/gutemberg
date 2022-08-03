stamp=$(date +"%d-%m-%Y_%H-%M")

echo "[gutemberg] updating and upgrading packages"
sudo apt update && sudo apt full-upgrade -y >apt-misc_$stamp.log 1>apt-stdout_$stamp.log 2>apt-stderr_$stamp.log &&
	echo "[gutemberg] DONE: updating and upgrading packages"

echo "[gutemberg] installing: 'r-base'"
sudo apt install r-base -y >r-base-misc_$stamp.log 1>r-base-stdout_$stamp.log 2>r-base-stderr_$stamp.log &&
	echo "[gutemberg] DONE: 'r-base'"

echo "[gutemberg] installing: 'pandoc'"
sudo apt install pandoc -y >pandoc-misc_$stamp.log 1>pandoc-stdout_$stamp.log 2>pandoc-stderr_$stamp.log &&
	echo "[gutemberg] DONE: 'pandoc'"

echo "[gutemberg] installing R package: 'rmarkdown'"
sudo Rscript -e "install.packages('rmarkdown')" >rmarkdown-misc_$stamp.log 1>rmarkdown-stdout_$stamp.log 2>rmarkdown-stderr_$stamp.log &&
	echo "[gutemberg] DONE: 'rmarkdown'"

echo "[gutemberg] installing R package: 'tinytex'"
sudo Rscript -e "install.packages('tinytex')" >tinytex-misc_$stamp.log 1>tinytex-stdout_$stamp.log 2>tinytex-stderr_$stamp.log &&
	sudo Rscript -e "tinytex::install_tinytex(force=TRUE)" &&
		echo "[gutemberg] DONE: 'tinytex'"

echo "[gutemberg] installation completed successfully"

