# ====================================================================
# LECCIÓN 5: BUCLES (FOR/FOREACH) EN POWERSHELL
# ====================================================================
# Los bucles permiten repetir un bloque de código varias veces
# Muy útil para automatizar tareas repetitivas

# EJEMPLO 1: Bucle FOR simple
Write-Host "=== EJEMPLO 1: Bucle FOR Simple ===" -ForegroundColor Cyan
Write-Host "Contando del 1 al 5:"
for ($i = 1; $i -le 5; $i++) {
    Write-Host "Número: $i"
}

# EJEMPLO 2: Bucle FOR con saltos
Write-Host "`n=== EJEMPLO 2: Bucle FOR con Saltos ===" -ForegroundColor Cyan
Write-Host "Números pares del 0 al 10:"
for ($i = 0; $i -le 10; $i += 2) {
    Write-Host "Número par: $i"
}

# EJEMPLO 3: Bucle FOREACH en un array
Write-Host "`n=== EJEMPLO 3: Bucle FOREACH ===" -ForegroundColor Cyan
$frutas = "Manzana", "Plátano", "Naranja", "Fresa"

Write-Host "Mis frutas favoritas:"
foreach ($fruta in $frutas) {
    Write-Host "  - $fruta"
}

# EJEMPLO 4: Bucle FOREACH con números
Write-Host "`n=== EJEMPLO 4: FOREACH con Números ===" -ForegroundColor Cyan
$numeros = 1, 2, 3, 4, 5

Write-Host "Cuadrado de cada número:"
foreach ($num in $numeros) {
    $cuadrado = $num * $num
    Write-Host "$num² = $cuadrado"
}

# EJEMPLO 5: Bucle en archivos
Write-Host "`n=== EJEMPLO 5: Bucle con Archivos ===" -ForegroundColor Cyan
$carpeta = "C:\Users\$env:USERNAME\Desktop"

if (Test-Path $carpeta) {
    Write-Host "Archivos en el escritorio:"
    $archivos = Get-ChildItem -Path $carpeta -File
    foreach ($archivo in $archivos) {
        Write-Host "  - $($archivo.Name) ($('{0:N2}' -f ($archivo.Length / 1MB)) MB)"
    }
}

# EJEMPLO 6: Bucle FOR anidado
Write-Host "`n=== EJEMPLO 6: Bucle FOR Anidado ===" -ForegroundColor Cyan
Write-Host "Tabla de multiplicar del 1 al 3:"
for ($tabla = 1; $tabla -le 3; $tabla++) {
    Write-Host "Tabla del $tabla"
    for ($multiplicador = 1; $multiplicador -le 5; $multiplicador++) {
        $resultado = $tabla * $multiplicador
        Write-Host "  $tabla * $multiplicador = $resultado"
    }
}

# EJEMPLO 7: Bucle con BREAK (salir del bucle)
Write-Host "`n=== EJEMPLO 7: Bucle con BREAK ===" -ForegroundColor Cyan
Write-Host "Búsqueda del número 5:"
for ($i = 1; $i -le 10; $i++) {
    if ($i -eq 5) {
        Write-Host "¡Encontré el 5! Saliendo del bucle..."
        break
    }
    Write-Host "Revisando número $i..."
}

# EJEMPLO 8: Bucle con CONTINUE (saltar iteración)
Write-Host "`n=== EJEMPLO 8: Bucle con CONTINUE ===" -ForegroundColor Cyan
Write-Host "Números impares del 1 al 10:"
for ($i = 1; $i -le 10; $i++) {
    if ($i % 2 -eq 0) {
        continue  # Salta los números pares
    }
    Write-Host $i
}

# ====================================================================
# 🎯 EJERCICIO PRÁCTICO
# ====================================================================
Write-Host "`n=== EJERCICIO PARA TI ===" -ForegroundColor Yellow
Write-Host "Resuelve estos ejercicios:" -ForegroundColor Yellow
Write-Host "1. Crea un bucle que imprima los números del 1 al 10" -ForegroundColor Yellow
Write-Host "2. Crea un bucle que multiplique cada número por 2" -ForegroundColor Yellow
Write-Host "3. Crea un array con 5 nombres y muéstralos uno por uno con FOREACH" -ForegroundColor Yellow