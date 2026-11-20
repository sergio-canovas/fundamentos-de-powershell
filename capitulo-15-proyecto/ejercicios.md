# Capítulo 15. Proyecto final: organizando nuestros ficheros por años. Ejercicios

**Nivel 1.** Añade a `Organizar.ps1` un parámetro `-Filtro` (por defecto `"*"`) para organizar solo un tipo de fichero. Por ejemplo, `-Filtro *.jpg` debe dejar fuera `presupuesto.xlsx`. Pruébalo con `-WhatIf`. Pista: `Get-ChildItem` tiene un parámetro `-Filter`.

**Nivel 2.** Modifica el proyecto para que organice por año y mes, en carpetas como `2021\09`. Pista: `$fichero.LastWriteTime.ToString("MM")` devuelve el mes con dos cifras, y `New-Item` crea las carpetas intermedias que falten.

**Nivel 3.** Escribe un script `Resumen.ps1` que lea `registro.csv` y muestre cuántos ficheros se han copiado a cada carpeta y cuántos han dado error. Pista: `Group-Object`.
