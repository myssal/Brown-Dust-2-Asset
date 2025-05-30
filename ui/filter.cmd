@echo off
setlocal

:: Set the root folder and output file
set "root=F:\FullSetC\Game\Active\BrownDust\BrownDust2\ui\atlas"
set "output=F:\FullSetC\Game\Active\BrownDust\BrownDust2\ui\structure.txt"

:: Clear the output file if it exists
> "%output%" echo Folder structure of "%root%" (excluding root-level files)

:: Loop through each first-level subfolder
for /D %%d in ("%root%\*") do (
    echo Processing %%d
    >> "%output%" echo.
    >> "%output%" echo -------------------------------
    >> "%output%" echo Subfolder: %%d
    >> "%output%" echo -------------------------------
    tree "%%d" /F >> "%output%"
)

echo Done! Output saved to: %output%
endlocal
