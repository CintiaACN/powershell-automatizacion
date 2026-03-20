#mi ejercicio practico
Write -Host "=== EJERCICIO PRÁCTICO ===" -ForegroundColor Yellow

$edad_nuevo_usuario = Read-Host "¿Cuántos años tienes?"
$nombre_nuevo_usuario = Read-Host "¿Cuál es tu nombre?"
if ([int]$edad_nuevo_usuario -lt 21) {
    Write-Host "Hola $nombre_nuevo_usuario, eres menor de edad" -ForegroundColor Yellow
} else {
    Write-Host "Hola $nombre_nuevo_usuario, eres mayor de edad" -ForegroundColor Green
}

