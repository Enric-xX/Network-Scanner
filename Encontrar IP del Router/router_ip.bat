@echo off
title Obtener IP del Router
color 0A
echo =============================================
echo   OBTENER IP DEL ROUTER
echo =============================================
echo.
echo Buscando la IP de tu router...
echo.

for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /c:"Puerta de enlace predeterminada"') do (
    set ip=%%a
)

:: Quitar espacios
set ip=%ip: =%

echo.
echo =============================================
echo   IP DE TU ROUTER: %ip%
echo =============================================
echo.
echo Usa esta IP en el escaner de red.
echo.
pause
