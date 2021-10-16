@echo off

for /f "delims=" %%a in ('wmic OS Get localdatetime ^| find "."') do set dt=%%a
set year=%dt:~0,4%
set month=%dt:~4,2%
set day=%dt:~6,2%
set filename=%date:~0,2%-%date:~3,2%-%date:~6,4%_%time:~0,2%.%time:~3,2%.%time:~6,2%

IF NOT EXIST %year% echo "criando pastas do ano de %year%..."
IF NOT EXIST %year% mkdir %year% Janeiro Fevereiro Marco Abril Maio Junho Julho Agosto Setembro Outubro Novembro Dezembro 

move Janeiro ./%year% 
move Fevereiro ./%year%
move Marco ./%year%
move Abril ./%year%
move Maio ./%year%
move Junho ./%year%
move Julho  ./%year%
move Agosto ./%year%
move Setembro ./%year%
move Outubro ./%year%
move Novembro ./%year%
move Dezembro ./%year%

if %month%==01 set monthname=Janeiro
if %month%==02 set monthname=Fevereiro
if %month%==03 set monthname=Marco  
if %month%==04 set monthname=Abril
if %month%==05 set monthname=Maio
if %month%==06 set monthname=Junho
if %month%==07 set monthname=Julho
if %month%==08 set monthname=Agosto
if %month%==09 set monthname=Setembro
if %month%==10 set monthname=Outubro
if %month%==11 set monthname=Novembro
if %month%==12 set monthname=Dezembro

wkhtmltopdf http://google.com file.pdf

ren file.pdf %filename%.pdf
move %filename%.pdf ./%year%/%monthname%

echo "arquivo gerado e salvo em %year%/%monthname%."
