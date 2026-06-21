@echo off
title Instalador de Librerias - Escaner de Red
color 0A
echo =============================================
echo   INSTALADOR DE LIBRERIAS
echo =============================================
echo.
echo Se instalaran todas las librerias necesarias.
echo.

echo [1/4] Actualizando pip...
py -m pip install --upgrade pip
echo.

echo [2/4] Instalando librerias de red...
py -m pip install getmac
py -m pip install requests
py -m pip install scapy
py -m pip install python-nmap
py -m pip install netifaces
echo.

echo [3/4] Instalando librerias de sistema...
py -m pip install pywin32
py -m pip install wmi
echo.

echo [4/4] Instalando librerias extra (por si acaso)...
py -m pip install dnspython
py -m pip install beautifulsoup4
py -m pip install whois
py -m pip install cryptography
echo.

echo =============================================
echo   TODO INSTALADO CORRECTAMENTE
echo =============================================
echo.
echo Ya puedes ejecutar tu escaner de red.
echo.
pause