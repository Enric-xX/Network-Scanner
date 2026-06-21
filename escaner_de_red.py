import os
import platform
from getmac import get_mac_address

print("=== Escáner de Red Local ===")
print("")
print("Ejemplo de IP de router: 192.168.1.1")
print("")

ip_base = input("Pon la IP de tu router: ")

# Cogemos los 3 primeros bloques (ej: 192.168.0)
partes = ip_base.split(".")
rango = partes[0] + "." + partes[1] + "." + partes[2]

print("")
print(f"Escaneando la red {rango}.0/24...")
print("Puede tardar un minuto. Paciencia.")
print("")

dispositivos = 0

for i in range(1, 255):
    ip = rango + "." + str(i)
    
    # Hacemos ping según el sistema operativo
    if platform.system() == "Windows":
        comando = f"ping -n 1 -w 50 {ip} > nul"
    else:
        comando = f"ping -c 1 -W 0.1 {ip} > /dev/null 2>&1"
    
    respuesta = os.system(comando)
    
    if respuesta == 0:
        dispositivos += 1
        mac = get_mac_address(ip=ip)
        
        if mac is None:
            mac = "No disponible"
        
        print(f"[+] Dispositivo encontrado: {ip} - MAC: {mac}")

print("")
print(f"Escaneo terminado. {dispositivos} dispositivos encontrados.")

if dispositivos == 0:
    print("No se encontró nada. Revisa la IP del router.")