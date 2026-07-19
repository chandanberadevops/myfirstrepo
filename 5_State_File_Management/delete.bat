@echo off
SETLOCAL EnableDelayedExpansion
echo ====================================================
echo Searching and deleting Resource group 'chandan'
echo ====================================================
call az group list --tag
call az group delete -n chandan --no-wait --yes
if %ERRORLEVEL% NEQ 0 (
    echo ====================================================
    echo ====================================================
    echo ----Resource group 'chandan' could not be found
    echo ====================================================
    echo ====================================================
) else (
    echo ====================================================
    echo ====================================================
    echo ----Resource group 'chandan' deleted
    echo ====================================================
    echo ====================================================
)

