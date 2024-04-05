@echo off
setlocal enabledelayedexpansion
set /a counter=1

for /f "tokens=*" %%a in (siyao.txt) do (
    set "key=%%a"
    set "filename=claim-!counter!.bat"
    (
    echo @echo off
    echo :loop
    echo ..\ore.exe --rpc https://linguistic-dulcea-fast-mainnet.helius-rpc.com/ --keypair !key! claim
    echo goto loop
    ) > !filename!
    set /a counter+=1
)
