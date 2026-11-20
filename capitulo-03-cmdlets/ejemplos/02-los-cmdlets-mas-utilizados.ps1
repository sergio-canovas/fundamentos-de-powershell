# Fundamentos de PowerShell (2ª edición)
# Capítulo 3. Interactuando con el sistema: cmdlets, ayuda, alias y módulos.
# Apartado: Los cmdlets más utilizados

# ¡CUIDADO! Este script apaga o reinicia el equipo.
# Léelo entero antes de ejecutarlo y pruébalo solo en una carpeta o un equipo de pruebas.
# Cuando lo hayas entendido, borra la línea del throw.
throw "Lee el script antes de ejecutarlo. Cuando lo hayas entendido, borra esta línea."

Write-Host -Object "Hola"                      # Escribe en pantalla
Read-Host -Prompt "Introduce tu edad"          # Muestra el mensaje y espera a que escribamos
Clear-Host                                     # Limpia la pantalla. No admite parámetros
Get-Process                                    # Lista los procesos en ejecución
Stop-Process -Name notepad                     # Detiene un proceso por su nombre
Stop-Computer -Force                           # Apaga el equipo. Restart-Computer lo reinicia
