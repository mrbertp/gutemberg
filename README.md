# gutemberg

## Introduction

gutemberg is a tool for automatic and modular document typesetting and formatting.

## Prerequisites

A. Using Windows:
    
   - Windows Subsystem for Linux (WSL) [(Debian)](https://www.microsoft.com/store/productId/9MSVKQC78PK6)
    
B. Using Linux:
    
   - [Debian](www.debian.org) distribution

For both options, you will also need to install:

   - git (`sudo apt-get install git`)

## Installation

1. Get this repository in your computer:

    a) Clone this repository: `git clone https://github.com/mrbertp/gutemberg.git`

    or

    b) Download the zip of this repository (**Code > Download ZIP**) and extract it somewhere.

2. Launch the WSL inside the repository:

    1. Open the folder.
    2. `Shift` + `Right click` inside the folder.
    3. Click on "Open Linux shell here".

3. If the folder is inside Linux filesystem (Linux operating system or WSL), make sure that you set the correct file permissions.

    For this, execute:
    
    `chmod 777 *`
    
    `chmod 777 */*`
    
    `chmod 777 */*/*`
    
   If the folder is inside Windows filesystem, you will have already full permission.

4. Execute the installer: `./installer/installer.sh`

    This script will:
    
      - update and upgrade *system packages*
      - install *R*
      - install *pandoc*
      - install *rmarkdown*, from R
      - install *tinytex*, from R

## Usage

For information on how to use gutemberg, refer to the command help, executing:

`./scripts/gutemberg -h`

## Extensions

You may find any of the following things useful when using gutemberg:

### Make an alias of gutemberg

If when using gutemberg, you find it tedious to execute the script the verbose way:

`./scripts/gutemberg -f path/to/example/folder path/to/example/stylefile`

you can add gutemberg to the list of aliases of the terminal you are using, just by adding this line to your aliases file (e.g. bash_aliases for bash interpreter):

e.g. in Linux:

`alias gutemberg='~/Desktop/gutemberg/scripts/gutemberg'`

### Make a command of gutemberg

You can add gutemberg to your commands by adding the path of the folder conteining gutemberg script to your $PATH variable:

e.g. in Linux:

add the line `export PATH=$PATH:~/Desktop/gutemberg/scripts` to your interpreter file (e.g. .bashrc for bash interpreter)

and reload interpreter: `bash`

