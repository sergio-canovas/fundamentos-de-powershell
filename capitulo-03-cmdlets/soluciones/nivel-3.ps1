# Fundamentos de PowerShell (2ª edición)
# Capítulo 3. Interactuando con el sistema: cmdlets, ayuda, alias y módulos.
# Solución del ejercicio de nivel 3
#
# Enunciado: Sin instalarlo, investiga el módulo `ImportExcel` de la PowerShell Gallery:
# quién es su autor, qué versión es la última, cuál es la página del proyecto y cuántas
# veces se ha descargado. ¿Te parece de fiar? Pista: `Find-Module` devuelve un objeto, y
# puedes ver sus propiedades con `Format-List`.

$modulo = Find-Module -Name ImportExcel
$modulo | Format-List Name, Version, Author, ProjectUri, PublishedDate
$modulo.AdditionalMetadata.downloadCount

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Name          : ImportExcel
# Version       : 7.8.10
# Author        : Douglas Finke
# ProjectUri    : https://github.com/dfinke/ImportExcel
# PublishedDate : 21/10/2024 23:45:09
#
# 22940663
