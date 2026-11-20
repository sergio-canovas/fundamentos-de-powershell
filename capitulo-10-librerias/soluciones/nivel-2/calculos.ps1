# Fundamentos de PowerShell (2ª edición)
# Capítulo 10. Librerías y módulos.
# Descripción: Solución del ejercicio de nivel 2: el script que importa el módulo

Import-Module "$PSScriptRoot\librerias\FuncionesMatematicas.psm1" -Force

Get-Command -Module FuncionesMatematicas
potencia -base 2 -exponente 10
