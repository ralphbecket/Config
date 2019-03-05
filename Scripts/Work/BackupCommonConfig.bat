::@echo off
setlocal
set yMd=%date:~-4,4%-%date:~-7,2%-%date:~-10,2%
set src=\\ult-deploy1\c-drive\stage4pmi\CommonConfigServer\common_config.json
set tgt=C:\Users\Ralph\Shared\CommonConfigBackups\common_config.%yMd%.json
copy /Y %src% %tgt%
