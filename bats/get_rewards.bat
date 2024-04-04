@echo off
setlocal enabledelayedexpansion
set keypair_file=list.txt
set /a counter=0

for /f %%i in (%keypair_file%) do (
    set /a counter+=1
    echo Processing keypair number !counter!
    ..\ore.exe --rpc 节点 --keypair %%i rewards
)

echo All keypairs processed.
pause
endlocal
