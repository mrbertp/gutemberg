echo "[gutemberg] updating and upgrading packages"
sudo apt update && sudo apt full-upgrade -y &&
echo "[gutemberg] DONE: updating and upgrading packages"

echo " installing: 'r-base'"
sudo apt install r-base &&
echo "[gutemberg] DONE: 'r-base'"

echo "[gutemberg] installing: 'pandoc'"
sudo apt install pandoc &&
echo "[gutemberg] DONE: 'pandoc'"

echo "[gutemberg] installing R package: 'rmarkdown'"
sudo Rscript -e "install.packages('rmarkdown')" &&
echo "[gutemberg] DONE: 'rmarkdown'"

echo "[gutemberg] installing R package: 'tinytex'"
sudo Rscript -e "install.packages('tinytex')" &&
	sudo Rscript -e "tinytex::install_tinytex()" &&
	echo "[gutemberg] DONE: 'tinytex'"

echo "[gutemberg] successful instalation!"

