@echo off
setlocal enabledelayedexpansion
set /a counter=1

for /f "tokens=*" %%a in (私钥.txt) do (
    set "key=%%a"
    set "filename=claim-!counter!.bat"
    (
    echo @echo off
    echo :loop
    echo ..\ore.exe --rpc RPC节点 --keypair !key! claim
    echo goto loop
    ) > !filename!
    set /a counter+=1
)
