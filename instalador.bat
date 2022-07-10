@echo off
title Instalador del pack de mods
mode 100, 30

echo Ten paciencia y NO CIERRES esta ventana hasta que acabe la instalacion.
echo Modpack e instalador por: Jnk

echo Buscando carpeta
cd C:\Users\%USERNAME%\AppData\Roaming\.minecraft

echo Moviendo mods y configuraciones antiguas

ren mods mods-old
ren config config-old
ren resourcepacks resourcepacks-old
ren options.txt options-old.txt
ren optionsof.txt optionsof-old.txt



echo Instalando mods...

md mods
cd mods
echo Descargando mods....0%%
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/sora4popla/modpack/raw/main/mods-0.zip', 'mods-0.zip')"
echo Descargando mods...25%%
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/sora4popla/modpack/raw/main/mods-1.zip', 'mods-1.zip')"
echo Descargando mods...50%%
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/sora4popla/modpack/raw/main/mods-2.zip', 'mods-2.zip')"
echo Descargando mods...75%%
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/sora4popla/modpack/raw/main/mods-3.zip', 'mods-3.zip')"
echo Mods descargados  100%%
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/sora4popla/modpack/raw/main/LibraryFerret-Forge-1.18.2-2.0.0.jar', 'LibraryFerret-Forge-1.18.2-2.0.0.jar')"
echo Instalando mods...
powershell -Command "Expand-Archive -Force 'mods-0.zip' 'C:\Users\%USERNAME%%\AppData\Roaming\.minecraft\mods'"
powershell -Command "Expand-Archive -Force 'mods-1.zip' 'C:\Users\%USERNAME%%\AppData\Roaming\.minecraft\mods'"
powershell -Command "Expand-Archive -Force 'mods-2.zip' 'C:\Users\%USERNAME%%\AppData\Roaming\.minecraft\mods'"
powershell -Command "Expand-Archive -Force 'mods-3.zip' 'C:\Users\%USERNAME%%\AppData\Roaming\.minecraft\mods'"
echo Mods instalados!

echo Aplicando configuraciones...
cd..
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/sora4popla/modpack/raw/main/config.zip', 'config.zip')"
powershell -Command "Expand-Archive -Force 'config.zip' 'C:\Users\%USERNAME%%\AppData\Roaming\.minecraft'"
echo Listo.



:opciones
set /P c=Quieres utilizar las opciones recomendadas? (Pulsa una tecla: S=Si N=NO)
if /I "%c%" EQU "S" goto :si_opciones
if /I "%c%" EQU "N" goto :no_opciones
goto :opciones



:si_opciones
echo Estableciendo opciones recomendadas...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/sora4popla/modpack/raw/main/options.txt', 'options.txt')"
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/sora4popla/modpack/raw/main/optionsof.txt', 'optionsof.txt')"
goto :fin

:no_opciones
goto :fin

:fin
echo Instalacion completada! Puedes cerrar la ventana.