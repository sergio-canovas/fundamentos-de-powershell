# Fundamentos de PowerShell (2ª edición)
# Capítulo 9. Funciones.
# Apartado: Dividir código > Return

function saludo {
    return "Hola amigos"
}
function numero {
    return 8+10
}
#Función saludo
saludo
Write-Host "%%%%%%%%%%%%%%%%%%%%"
#Función numero
$suma = numero
Write-Host $suma

# ----------------------------------------------------------------------
# Salida que aparece en el libro (la tuya puede variar):
# Hola amigos
# %%%%%%%%%%%%%%%%%%%%
# 18
