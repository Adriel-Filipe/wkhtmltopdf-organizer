@echo on

for /f "delims=" %%a in ('wmic OS Get localdatetime ^| find "."') do set dt=%%a
set year=%dt:~0,4%
set month=%dt:~4,2%
set day=%dt:~6,2%
set filename=%date:~0,2%-%date:~3,2%-%date:~6,4%.%time:~0,2%.%time:~3,2%


if %month%==01 set monthname=janeiro
if %month%==02 set monthname=fevereiro
if %month%==03 set monthname=março  
if %month%==04 set monthname=abril
if %month%==05 set monthname=maio
if %month%==06 set monthname=junho
if %month%==07 set monthname=julho
if %month%==08 set monthname=agosto
if %month%==09 set monthname=setembro
if %month%==10 set monthname=outubro
if %month%==11 set monthname=novembro
if %month%==12 set monthname=dezembro

wkhtmltopdf http://google.com file.pdf
ren file.pdf %filename%.pdf
move %filename%.pdf ./%year%/%monthname%
pause

