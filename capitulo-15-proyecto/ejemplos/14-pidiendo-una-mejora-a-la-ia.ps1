# Fundamentos de PowerShell (2ª edición)
# Capítulo 15. Proyecto final: organizando nuestros ficheros por años.
# Apartado: Pidiendo una mejora a la IA

# En filtrador.ps1: sin -Force y con -ErrorAction Stop
Move-Item -Path $Origen -Destination $rutaDestino -ErrorAction Stop

# En Organizar.ps1: solo ficheros, saltando los que ya están en la carpeta de su año
$listado = Get-ChildItem -Path $Ruta -File -Recurse |
    Where-Object { $_.DirectoryName -ne (Join-Path -Path $Ruta -ChildPath $_.LastWriteTime.Year) }
