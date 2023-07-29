@ECHO OFF
title Folder BlockInfo

REM Carpeta a ocultar/mostrar
SET "folderName=BlockInfo"

REM Comprobamos si la carpeta ya está oculta
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" (
    goto UNLOCK_FOLDER
) else (
    goto LOCK_FOLDER
)

:LOCK_FOLDER
REM Preguntamos al usuario si desea ocultar la carpeta
echo ¿Deseas ocultar esta carpeta? (S/N)
set /p "choice="
if /I "%choice%"=="S" (
    REM Ocultamos la carpeta
    ren %folderName% "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
    attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
    echo Carpeta ocultada exitosamente.
) else if /I "%choice%"=="N" (
    REM El usuario no desea ocultar la carpeta
    echo No se ha ocultado la carpeta.
    pause
) else (
    REM Opción inválida, volvemos a preguntar
    echo Opción inválida.
    goto LOCK_FOLDER
)

goto END

:UNLOCK_FOLDER
REM Pedimos al usuario que ingrese la contraseña para mostrar la carpeta
echo Ingrese la clave para mostrar la carpeta %folderName%:
set /p "password="
if "%password%"=="00100100" (
    REM Mostramos la carpeta
    attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
    ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" %folderName%
    echo Carpeta mostrada exitosamente.
) else (
    REM Contraseña incorrecta
    echo Contraseña incorrecta.
    pause
)

goto END

:END
