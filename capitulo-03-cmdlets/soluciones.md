# Capítulo 3. Interactuando con el sistema: cmdlets, ayuda, alias y módulos. Soluciones

Intenta resolver los ejercicios antes de mirar aquí. Se aprende mucho más equivocándose que leyendo la respuesta.

**Nivel 1.** `Get-Command -Noun Process` devuelve, entre otros, `Get-Process`, `Stop-Process` y `Start-Process`, que es el que arranca programas. Para los alias:

```powershell
Get-Alias -Name cd, cls, cat
```

```
CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Alias           cd -> Set-Location
Alias           cls -> Clear-Host
Alias           cat -> Get-Content
```

**Nivel 2.** Los parámetros son `-File` y `-Recurse`. Con `-Filter` nos quedamos solo con los `.txt`:

```powershell
Get-ChildItem -Path "C:\Practicas" -Filter *.txt -File -Recurse
```

**Nivel 3.**

```powershell
$modulo = Find-Module -Name ImportExcel
$modulo | Format-List Name, Version, Author, ProjectUri, PublishedDate
$modulo.AdditionalMetadata.downloadCount
```

```
Name          : ImportExcel
Version       : 7.8.10
Author        : Douglas Finke
ProjectUri    : https://github.com/dfinke/ImportExcel
PublishedDate : 21/10/2024 23:45:09

22940663
```

Tus datos serán distintos, porque la Gallery se actualiza. Millones de descargas, un autor identificado y un proyecto público donde revisar el código no son una garantía absoluta, pero juntos hacen razonable confiar en él. Un módulo de nombre parecido, publicado hace dos semanas y con cuatro descargas, merecería mucha más desconfianza.
