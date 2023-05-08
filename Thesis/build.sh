#!/bin/bash

pdflatex -output-directory=./build  thesis.tex 
bibtex refs
pdflatex -output-directory=./build  thesis.tex 
pdflatex -output-directory=./build  thesis.tex 
cp ./build/*.pdf ./
rm *.aux
rm *.gz
rm *.log
rm *.bbl
rm *.bcf
rm *.fls
rm *.lof
rm *.lot
rm *.out
rm *.xml
rm *.toc
rm *.blg