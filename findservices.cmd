@echo off
setlocal EnableDelayedExpansion
sc \\localhost query | findstr SERVICE_NAME > services.lst
for /f "tokens=1,2" %%A in (services.lst) do (
    echo %%B
    sc \\localhost qc %%B | findstr SERVICE_START_NAME
)
del services.lst
pause()