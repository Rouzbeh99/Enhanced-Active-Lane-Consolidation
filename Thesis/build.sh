#!/bin/bash

pdflatex -output-directory=./build  thesis.tex 
bibtex thesis
pdflatex -output-directory=./build  thesis.tex 
pdflatex -output-directory=./build  thesis.tex 

