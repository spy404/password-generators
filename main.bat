@echo off

setlocal EnableDelayedExpansion

set "length=10"

call :GeneratePassword !length! password

echo %password%

exit /b

:GeneratePassword
setlocal
set "chars=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+{}[]"
set "password="

for /L %%i in (1,1,%1) do (
    set /A "randomIndex=!RANDOM! %% !chars:~0,-1!.length!"
    for /L %%j in (!randomIndex!,1,!randomIndex!) do (
        set "password=!password!!chars:~%%j,1!"
    )
)

endlocal & set "%2=%password%"
exit /b
