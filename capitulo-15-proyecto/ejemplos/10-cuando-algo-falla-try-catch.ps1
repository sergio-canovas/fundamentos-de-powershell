# Fundamentos de PowerShell (2ª edición)
# Capítulo 15. Proyecto final: organizando nuestros ficheros por años.
# Apartado: Cuando algo falla: try/catch

$bloqueo = [System.IO.File]::Open("C:\Temp\Kaos\presupuesto.xlsx", 'Open', 'Read', 'None')
# ... ejecuta aquí el script ...
$bloqueo.Close()
