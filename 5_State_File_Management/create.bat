@echo off
SETLOCAL EnableDelayedExpansion
echo ====================================================
echo Creating RG, Storage account and container
echo ====================================================

set RESOURCE_GROUP_NAME=chandan_tfstate_rg
set STORAGE_ACCOUNT_NAME=tfstatestorage
set CONTAINER_NAME=tfstate
set LOCATION=eastus
call az group list --tag









call az group create -n %RESOURCE_GROUP_NAME% --location %LOCATION%
echo ====================================================
echo RG %RESOURCE_GROUP_NAME% Created
echo ====================================================

call az storage account create -n %STORAGE_ACCOUNT_NAME% -g %RESOURCE_GROUP_NAME% -l %LOCATION% --sku Standard_LRS
echo ====================================================
echo Storage Account %STORAGE_ACCOUNT_NAME% Created
echo ====================================================
call az storage container create -n %CONTAINER_NAME% --account-name %STORAGE_ACCOUNT_NAME% --auth-mode login
echo ====================================================
echo BLOB container %CONTAINER_NAME% Created
echo ====================================================

:: call az group delete -n $RESOURCE_GROUP_NAME --no-wait --yes
