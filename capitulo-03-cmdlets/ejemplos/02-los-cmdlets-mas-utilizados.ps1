# Fundamentos de PowerShell (2ª edición)
# Capítulo 3. Interactuando con el sistema: cmdlets, ayuda, alias y módulos.
# Apartado: Los cmdlets más utilizados

# ¡CUIDADO! Este script apaga o reinicia el equipo.
# Léelo entero antes de ejecutarlo y pruébalo solo en una carpeta o un equipo de pruebas.
# Cuando lo hayas entendido, borra la línea del throw.
throw "Lee el script antes de ejecutarlo. Cuando lo hayas entendido, borra esta línea."

# Escribe en pantalla
Write-Host -Object "Hola"
# Muestra el mensaje y espera a que escribamos
Read-Host -Prompt "Introduce tu edad"
# Limpia la pantalla. No admite parámetros
Clear-Host
# Lista los procesos en ejecución
Get-Process
# Detiene un proceso por su nombre
Stop-Process -Name notepad
# Apaga el equipo. Restart-Computer lo reinicia
Stop-Computer -Force
