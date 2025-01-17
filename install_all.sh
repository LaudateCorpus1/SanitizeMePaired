#!/usr/bin/env bash 
cd ~
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
sh Miniconda3-latest-Linux-x86_64.sh -b
echo 'export PATH="~/miniconda3/bin:$PATH"' >> ~/.bashrc
. ~/.bashrc
conda init bash
conda config --set auto_activate_base false
conda config --add channels defaults
conda config --add channels bioconda
conda config --add channels conda-forge
. ~/.bashrc
rm Miniconda3-latest-Linux-x86_64.sh

wget ftp://ftp-trace.ncbi.nih.gov/1000genomes/ftp/technical/reference/human_g1k_v37.fasta.gz -P ~/SanitizeMePaired/ 

conda env create -f ~/SanitizeMePaired/environment.yml
