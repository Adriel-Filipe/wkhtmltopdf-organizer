#!/bin/bash

filename=$(date +"%d-%B-%Y_%H-%M-%S")
year=$(date +"%Y")
monthname=$(date +"%B")

year_folder=./$year 
if [ ! -d "$year" ]; then
echo "criando pastas do ano de $year..."
mkdir $year janeiro fevereiro marco abril maio junho julho agosto setembro outubro novembro dezembro
mv janeiro fevereiro marco abril maio junho julho agosto setembro outubro novembro dezembro ./$year
fi

wkhtmltopdf https://google.com file.pdf
mv file.pdf $filename.pdf
mv $filename.pdf ./$year/$monthname
echo "arquivo gerado e salvo em $year/$monthname."
