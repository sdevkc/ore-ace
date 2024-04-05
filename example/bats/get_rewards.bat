@echo off
setlocal enabledelayedexpansion
set keypair_file=siyao.txt
set /a counter=0

for /f %%i in (%keypair_file%) do (
    set /a counter+=1
    echo Processing keypair number !counter!
    ..\ore.exe --rpc https://linguistic-dulcea-fast-mainnet.helius-rpc.com/ --keypair %%i rewards
)

echo All keypairs processed.
pause
endlocal
