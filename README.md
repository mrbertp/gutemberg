# gutemberg

## Introduction

gutemberg is a tool for automatic and modular document typesetting and formatting.

## Prerequisites

A. Using Windows:
    
   - Windows Subsystem for Linux (WSL) [(Debian)](https://www.microsoft.com/store/productId/9MSVKQC78PK6)
    
B. Using Linux:
    
   - Debian distribution

## Installation

1. Get this repository in your computer:

    a) Clone this repository: `git clone https://github.com/mrbertp/gutemberg.git`

    or

    b) Download the zip of this repository (**Code > Download ZIP**) and extract it somewhere.

2. Launch the WSL inside the repository:

    1. Open the folder.
    2. `Shift` + `Right click` inside the folder.
    3. Click on "Open Linux shell here".

3. Execute the installer: `./scripts/installer.sh`

    This script will:
    
      - update and upgrade *system packages*
      - install *R*
      - install *pandoc*
      - install *rmarkdown*, from R
      - install *tinytex*, from R
