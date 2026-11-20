# Fundamentos de PowerShell (2ª edición)
# Capítulo 14. Programar con IA.
# Ejercicio de nivel 2
#
# Enunciado: Un compañero te pasa este script, que según él "limpia los logs antiguos del
# servidor". Encuentra al menos tres problemas antes de mirar la solución.

# ¡CUIDADO! Este script borra ficheros o carpetas sin preguntar.
# Léelo entero antes de ejecutarlo y pruébalo solo en una carpeta o un equipo de pruebas.
# Cuando lo hayas entendido, borra la línea del throw.
throw "Lee el script antes de ejecutarlo. Cuando lo hayas entendido, borra esta línea."

$logs = Get-ChildItem "D:\Logs"
for ($i = 0; $i -le $logs.Count; $i++) {
    if ($logs[$i].CreationTime -lt (Get-Date).AddDays(90)) {
        Remove-Item $logs[$i].FullName -Recurse -Force
    }
}
