# Capítulo 10. Librerías y módulos. Ejercicios

**Nivel 1.** La función `restar` de nuestra librería no la hemos llegado a usar. Úsala desde un script para calcular 1000 menos 1. Después, añade a la librería una función `potencia` que reciba una base y un exponente, y pruébala calculando 2 elevado a 10. Pista: `[math]::Pow(2, 10)` hace el cálculo por ti.

**Nivel 2.** Convierte la librería del nivel anterior en el módulo `FuncionesMatematicas.psm1`. Impórtalo desde un script, comprueba con `Get-Command` que aparece la función `potencia` y úsala.

**Nivel 3.** Este script debería sumar dos números, pero en lugar del resultado muestra una ruta y un error. ¿Qué le falta? ¿Por qué aparece la ruta en pantalla?

```powershell
#Agregamos librería
"$PSScriptRoot\librerias\funciones_matematicas.ps1"

sumar -numero1 240 -numero2 150
```
