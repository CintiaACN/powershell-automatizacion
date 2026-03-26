## Desafío Integrador Opcional: Gestor de Tareas Semanal

# 1. Crea una carpeta llamada `TareasSemana` en tu escritorio.
# 2. Dentro de esa carpeta, crea un archivo para cada día de la semana (`lunes.txt`, `martes.txt`, ..., `domingo.txt`) usando un bucle.
# 3. Escribe en cada archivo una tarea diferente (puedes inventarlas).
# 4. Lee y muestra por pantalla el contenido de todos los archivos usando un bucle.
# 5. Crea una subcarpeta llamada `Realizadas`.
# 6. Mueve los archivos `lunes.txt`, `miércoles.txt` y `viernes.txt` a la carpeta `Realizadas`.
# 7. Elimina el archivo `domingo.txt`.
# 8. Muestra por pantalla la lista de archivos que quedan en `TareasSemana` y en `Realizadas`.

# Opcional: Automatiza todo el proceso en un solo script `.ps1`.

# Este desafío te ayudará a consolidar el manejo de variables, bucles, condicionales y automatización de archivos en PowerShell.



$ruta       = "$env:USERPROFILE\Desktop\TareasSemanales"
$realizadas = "$ruta\Realizadas"

$dias = "lunes","martes","miercoles","jueves","viernes","sabado","domingo"

# Crear carpeta principal
New-Item -ItemType Directory -Path $ruta -Force | Out-Null

# Crear archivos solo si no existen
foreach ($dia in $dias) {
    $archivo = Join-Path $ruta "$dia.txt"
    if (-not (Test-Path $archivo)) {
        New-Item -ItemType File -Path $archivo | Out-Null
    }
}

#Crear Realizadas
New-Item -ItemType Directory -Path $realizadas -Force | Out-Null

# Mover lunes, miercoles y viernes
foreach ($dia in "lunes","miercoles","viernes") {
    $archivo = Join-Path $ruta "$dia.txt"
    if (Test-Path $archivo) {
        Move-Item -Path $archivo -Destination $realizadas -Force
    }
}

