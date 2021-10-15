#!/bin/bash

narq=$(date +"%d-%B-%Y_%H-%M")
MES=$(date +"%B")
wkhtmltopdf http://google.com $narq.pdf
mv *.pdf ./$MES