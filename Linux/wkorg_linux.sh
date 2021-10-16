#!/bin/bash
filename=$(date +"%d-%B-%Y_%H-%M")
year=$(date +"%B")
## wkhtmltopdf http://google.com file.pdf
mv file.pdf ./$filename