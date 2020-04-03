#!/bin/bash
mkdir out
pandoc --template=memoir-syllabus.latex -o out/syllabus.tex --biblatex $1
latexmk out/syllabus.tex -outdir=out -pdf -silent -pdflatex="pdflatex %O %S"
mv out/syllabus.pdf .