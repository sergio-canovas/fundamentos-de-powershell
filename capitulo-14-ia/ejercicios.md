# Capítulo 14. Programar con IA. Ejercicios

**Nivel 1.** Elige una tarea repetitiva de tu día a día (renombrar fotos, ordenar descargas, comprobar el espacio libre del disco…) y redacta la petición usando la plantilla de este capítulo. No hace falta que la envíes a ningún asistente: el ejercicio es escribirla.

**Nivel 2.** Un compañero te pasa este script, que según él "limpia los logs antiguos del servidor". Encuentra al menos tres problemas antes de mirar la solución.

```powershell
$logs = Get-ChildItem "D:\Logs"
for ($i = 0; $i -le $logs.Count; $i++) {
    if ($logs[$i].CreationTime -lt (Get-Date).AddDays(90)) {
        Remove-Item $logs[$i].FullName -Recurse -Force
    }
}
```

**Nivel 3.** Toma la solución de alguno de los ejercicios de nivel 3 de este libro, pídele a un asistente de IA que te la explique línea a línea y compara su explicación con lo que tú sabes. ¿Coincide en todo? ¿Ha añadido algo que el código no hace?
