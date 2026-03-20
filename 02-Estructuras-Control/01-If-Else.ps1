# ====================================================================
# LECCIÓN 4: CONDICIONALES (IF/ELSE) EN POWERSHELL
# ====================================================================
# Los condicionales nos permiten tomar decisiones en nuestros scripts
# Si se cumple una condición, hacemos algo. Si no, hacemos otra cosa.

# EJEMPLO 1: IF simple
Write-Host "=== EJEMPLO 1: IF Simple ===" -ForegroundColor Cyan
$edad = 25

if ($edad -ge 18) {
    Write-Host "¡Eres mayor de edad!" -ForegroundColor Green
}

# EJEMPLO 2: IF/ELSE
Write-Host "`n=== EJEMPLO 2: IF/ELSE ===" -ForegroundColor Cyan
$calificacion = 7

if ($calificacion -ge 7) {
    Write-Host "¡Aprobaste! Calificación: $calificacion" -ForegroundColor Green
} else {
    Write-Host "Reprobaste. Calificación: $calificacion" -ForegroundColor Red
}

# EJEMPLO 3: IF/ELSEIF/ELSE (Múltiples condiciones)
Write-Host "`n=== EJEMPLO 3: IF/ELSEIF/ELSE ===" -ForegroundColor Cyan
$temperatura = 22

if ($temperatura -lt 0) {
    Write-Host "Hace mucho frío" -ForegroundColor Blue
} elseif ($temperatura -lt 15) {
    Write-Host "Hace frío 🧥" -ForegroundColor Cyan
} elseif ($temperatura -lt 25) {
    Write-Host "Está templado 😊" -ForegroundColor Green
} else {
    Write-Host "Hace calor ☀️" -ForegroundColor Red
}

# EJEMPLO 4: Condicionales con operadores lógicos
Write-Host "`n=== EJEMPLO 4: Condicionales con AND/OR ===" -ForegroundColor Cyan
$hora = 14
$es_fin_de_semana = $false

if ($hora -gt 9 -and $hora -lt 17) {
    Write-Host "Estoy en horario laboral" -ForegroundColor Yellow
}

if ($es_fin_de_semana -or $hora -lt 8) {
    Write-Host "Es un buen momento para dormir 😴" -ForegroundColor Blue
}

# EJEMPLO 5: Verificar si un archivo existe
Write-Host "`n=== EJEMPLO 5: Verificar Existencia de Archivo ===" -ForegroundColor Cyan
$archivo = "C:\Users\$env:USERNAME\Desktop\prueba.txt"

if (Test-Path $archivo) {
    Write-Host "El archivo existe ✓" -ForegroundColor Green
} else {
    Write-Host "El archivo NO existe ✗" -ForegroundColor Red
    Write-Host "Creando el archivo..." -ForegroundColor Yellow
    New-Item -Path $archivo -ItemType File | Out-Null
    Write-Host "Archivo creado ✓" -ForegroundColor Green
}

# EJEMPLO 6: Validar entrada del usuario
Write-Host "`n=== EJEMPLO 6: Validar Entrada del Usuario ===" -ForegroundColor Cyan
$edad_usuario = Read-Host "¿Cuántos años tienes?"

if ([int]$edad_usuario -lt 13) {
    Write-Host "Debes tener al menos 13 años para usar PowerShell con supervisión" -ForegroundColor Yellow
} elseif ([int]$edad_usuario -lt 18) {
    Write-Host "Eres un adolescente. ¡Aprenderás rápido!" -ForegroundColor Green
} else {
    Write-Host "Bienvenido al mundo profesional de la automatización" -ForegroundColor Green
}

# ====================================================================
# 🎯 EJERCICIO PRÁCTICO
# ====================================================================
Write-Host "`n=== EJERCICIO PARA TI ===" -ForegroundColor Yellow
Write-Host "Crea un script que:" -ForegroundColor Yellow
Write-Host "1. Pida tu nombre" -ForegroundColor Yellow
Write-Host "2. Pida tu edad" -ForegroundColor Yellow
Write-Host "3. Muestre un mensaje diferente según si eres menor o mayor de 21 años" -ForegroundColor Yellow

