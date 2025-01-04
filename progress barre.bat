@echo off 
set max=10
setlocal enabledelayedexpansion
for /L %%A in (1,1,100) do (
    set /A progress=%%A
    set "bar="
    set /A num_hashes=%%A/10  :: Calculer le nombre de # à afficher
    for /L %%B in (1,1,!num_hashes!) do set "bar=!bar!#"
    for /L %%B in (!num_hashes!,1,%max%) do set "bar=!bar! "
    cls
    echo [!bar!] !progress!%%
    timeout /nobreak /t 0 >nul
)