# ====================================================================
# LECCIÓN 2: TIPOS DE DATOS EN POWERSHELL
# ====================================================================
# PowerShell tiene diferentes tipos de datos para guardar información

# TIPO 1: STRING (Texto)
Write-Host "=== TIPO 1: STRING (Texto) ===" -ForegroundColor Cyan
$texto = "Hola, soy PowerShell"
$titulo = 'Automatización de Tareas'
Write-Host "Texto 1: $texto"
Write-Host "Texto 2: $titulo"
Write-Host "Tipo: $(($texto).GetType().Name)"

# TIPO 2: INT (Número entero)
Write-Host "`n=== TIPO 2: INT (Números Enteros) ===" -ForegroundColor Cyan
$numero_entero = 42
$cantidad = 100
Write-Host "Número 1: $numero_entero"
Write-Host "Cantidad: $cantidad"
Write-Host "Tipo: $(($numero_entero).GetType().Name)"

# TIPO 3: DOUBLE/FLOAT (Números decimales)
Write-Host "`n=== TIPO 3: DOUBLE (Números Decimales) ===" -ForegroundColor Cyan
$precio = 19.99
$promedio = 8.5
Write-Host "Precio: $precio"
Write-Host "Promedio: $promedio"
Write-Host "Tipo: $(($precio).GetType().Name)"

# TIPO 4: BOOLEAN (Verdadero/Falso)
Write-Host "`n=== TIPO 4: BOOLEAN (Verdadero/Falso) ===" -ForegroundColor Cyan
$estoy_estudiando = $true
$tengo_hambre = $false
Write-Host "¿Estoy estudiando? $estoy_estudiando"
Write-Host "¿Tengo hambre? $tengo_hambre"
Write-Host "Tipo: $(($estoy_estudiando).GetType().Name)"

# TIPO 5: ARRAY (Lista de elementos)
Write-Host "`n=== TIPO 5: ARRAY (Listas) ===" -ForegroundColor Cyan
$colores = "Rojo", "Azul", "Verde", "Amarillo"
$numeros = 1, 2, 3, 4, 5
Write-Host "Colores: $colores"
Write-Host "El primer color es: $($colores[0])"
Write-Host "El segundo color es: $($colores[1])"
Write-Host "Números: $numeros"
Write-Host "Cantidad de números: $($numeros.Count)"

# TIPO 6: HASHTABLE (Diccionario/Mapa)
Write-Host "`n=== TIPO 6: HASHTABLE (Diccionarios) ===" -ForegroundColor Cyan
$persona = @{
    nombre = "Carlos"
    edad = 30
    ciudad = "Madrid"
    profesion = "Ingeniero"
}
Write-Host "Información de la persona:"
Write-Host "Nombre: $($persona['nombre'])"
Write-Host "Edad: $($persona['edad'])"
Write-Host "Ciudad: $($persona['ciudad'])"

# TIPO 7: DATETIME (Fechas)
Write-Host "`n=== TIPO 7: DATETIME (Fechas) ===" -ForegroundColor Cyan
$fecha_hoy = Get-Date
$fecha_custom = Get-Date -Date "2025-12-25"
Write-Host "Hoy es: $fecha_hoy"
Write-Host "Navidad 2025: $fecha_custom"
Write-Host "Tipo: $(($fecha_hoy).GetType().Name)"

# ====================================================================
# 🎯 EJERCICIO PRÁCTICO
# ====================================================================
Write-Host "`n=== EJERCICIO PARA TI ===" -ForegroundColor Yellow
Write-Host "Crea variables con diferentes tipos de datos:" -ForegroundColor Yellow
Write-Host "1. Una cadena de texto con tu película favorita" -ForegroundColor Yellow
Write-Host "2. Un número entero con tu año de nacimiento" -ForegroundColor Yellow
Write-Host "3. Un número decimal con tu estatura en metros" -ForegroundColor Yellow
Write-Host "4. Un booleano si hablas más de un idioma" -ForegroundColor Yellow
Write-Host "5. Un array con 3 de tus frutas favoritas" -ForegroundColor Yellow

# Escribe tu código aquí:
$pelicula = "The Reckoning" 
$anio_pelicula = 1999 
# $pelicula = 
Write-Host "Pelicula favorita: $pelicula" -ForegroundColor Green
Write-Host "Anio de lanzamiento: $anio_pelicula" -ForegroundColor Green
$estatura = 1.75
Write-Host "Me gustaría que mi estatura fuera: $estatura "-ForegroundColor Cyan
$hablo_multilingue = $true
Write-Host "¿Hablo más de un idioma? $hablo_multilingue" -ForegroundColor Cyan
$frutas_favoritas = "Manzana", "Banana", "Naranja"
Write-Host "Me gusta las siguientes frutas: $frutas_favoritas" -ForegroundColor Green
# $multilingue = 
# $frutas = 