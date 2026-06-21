# Network Scanner

Escáner de red local creado con Python. Detecta todos los dispositivos conectados a tu WiFi con su IP, MAC, fabricante y puertos abiertos.

## Características
- Escaneo completo de red local (1-254)
- Detección de dirección MAC
- Identificación del fabricante (API online + base offline)
- Escaneo de puertos comunes (FTP, SSH, HTTP, HTTPS, RDP...)
- Nombre del dispositivo (NetBIOS)
- Informe detallado en archivo .txt

## Instalación
Ejecuta el archivo `Instalador de Librerias.bat` para instalar todas las dependencias automáticamente.

## Uso
1. Ejecuta `obtener_ip.bat` para saber la IP de tu router
2. Ejecuta `py network_scanner.py`
3. Introduce la IP de tu router (ej: 192.168.1.1)
4. Espera a que termine el escaneo
5. Revisa el informe generado

## Requisitos
- Python 3.10 o superior
- Windows 10/11

## Autor
**Enric** - 13 años
Primer proyecto de ciberseguridad ética.
