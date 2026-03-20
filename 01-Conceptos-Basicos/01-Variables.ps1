# ====================================================================
# LECCIÓN 1: VARIABLES EN POWERSHELL
# ====================================================================
# Una variable es un contenedor donde guardamos información
# Se declara con $ al inicio

# EJEMPLO 1: Variable simple con texto
Write-Host "=== EJEMPLO 1: Variables de Texto ===" -ForegroundColor Cyan
$nombre = "María"
$apellido = "García"
Write-Host "Mi nombre es: $nombre $apellido"

# EJEMPLO 2: Variables numéricas
Write-Host "`n=== EJEMPLO 2: Variables Numéricas ===" -ForegroundColor Cyan
$edad = 25
$anio_nacimiento = 1999
$edad_actual = 2026 - $anio_nacimiento
Write-Host "Naciste en $anio_nacimiento, por lo tanto tienes aproximadamente $edad_actual años"

# EJEMPLO 3: Cambiar el valor de una variable
Write-Host "`n=== EJEMPLO 3: Modificar Variables ===" -ForegroundColor Cyan
$contador = 0
Write-Host "Contador inicial: $contador"
$contador = $contador + 1
Write-Host "Después de incrementar: $contador"

# EJEMPLO 4: Variable con comando (resultado)
Write-Host "`n=== EJEMPLO 4: Variables con Resultados ===" -ForegroundColor Cyan
$fecha_actual = Get-Date
$carpeta_escritorio = "$env:USERPROFILE\Desktop"
Write-Host "Fecha de hoy: $fecha_actual"
Write-Host "Ruta del escritorio: $carpeta_escritorio"

# EJEMPLO 5: Variable con entrada del usuario
Write-Host "`n=== EJEMPLO 5: Pedir Información al Usuario ===" -ForegroundColor Cyan
$ciudad = Read-Host "¿En qué ciudad vives?"
Write-Host "¡Qué genial! Yo también quisiera visitar $ciudad"

# ====================================================================
# 🎯 EJERCICIO PRÁCTICO
# ====================================================================
Write-Host "`n=== EJERCICIO PARA TI ===" -ForegroundColor Yellow
Write-Host "Crea 3 variables:" -ForegroundColor Yellow
Write-Host "1. Tu comida favorita" -ForegroundColor Yellow
Write-Host "2. Tu deporte favorito" -ForegroundColor Yellow
Write-Host "3. Un número que te represente" -ForegroundColor Yellow
Write-Host "`nLuego muestra un mensaje con toda la información" -ForegroundColor Yellow

# Escribe tu código aquí:
# $comida = 
# $deporte = 
# $numero = 
# Write-Host "..."

$comida = "Pizza"
$deporte = "Karate"
$numero = 3
Write-Host "Mi comida favorita es $comida, me encanta practicar $deporte y el número que me representa es el $numero"