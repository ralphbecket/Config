@echo off
setlocal
set src=%1
set dst=%2
echo Synchronising %src% and %dst% %3 %4 %5 %6 %7 %8 %9
if not exist %dst% mkdir %dst%
set rec=/E
:: If any explicit files are mentioned, do not recurse into sub-directories.
if not [%3%4%5%6%7%8%9] == [] set rec=
robocopy %dst% %src% %3 %4 %5 %6 %7 %8 %9 %rec% /DST /FFT /XO /XJ /NP /NFL /NDL /NJH /NJS > NUL
robocopy %src% %dst% %3 %4 %5 %6 %7 %8 %9 %rec% /DST /FFT /XO /XJ /NP /NFL /NDL /NJH /NJS > NUL
