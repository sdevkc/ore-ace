@echo off
setlocal enabledelayedexpansion
set /a counter=1

for /f "tokens=*" %%a in (siyao.txt) do (
    set "key=%%a"
    set "filename=mine-!counter!.bat"
    (
    echo @echo off
    echo :loop
    echo ..\ore.exe --rpc https://linguistic-dulcea-fast-mainnet.helius-rpc.com/ --keypair !key! --priority-fee 1000000 mine --threads 50
    echo goto loop
    ) > !filename!
    set /a counter+=1
)
