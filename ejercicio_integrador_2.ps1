# Scenario
# Tenés una carpeta con archivos de trabajo.
# Algunos archivos están listos, otros pendientes.
# Queremos:

# mover los archivos “listos” a una carpeta Processed
# verificar dónde quedaron los archivos
# confirmar el resultado sin suposiciones

#Requisitos del ejercicio
#1. Crear una carpeta llamada “WorkFiles” en tu escritorio.

#2. Dentro de WorkFiles crear estos archivos:
#   task_ready_1.txt
#   task_ready_2.txt
#   task_pending_1.txt
#   task_pending_2.txt  

#  3. Crear una subcarpeta dentro de WorkFiles llamada “Processed”.

# 4. Usando un loop, mover solo los archivos que: 
# contengan la plabra “ready” en su nombre a la carpeta Processed.

# 5. Al final: mostrar todos los archivos existentes usando Get-ChildItem -Recurse -File

# ----------ejecución del ejercicio----------

# === Paths (siempre anclados al Desktop real del usuario) ===
$base = Join-Path $env:USERPROFILE "Desktop\WorkFiles"
$processed = Join-Path $base "Processed"

# === Ensure folders exist ===
New-Item -Path $base -ItemType Directory -Force | Out-Null
New-Item -Path $processed -ItemType Directory -Force | Out-Null

# === Task list ===
$tasks = @(
    "task_ready_1.txt",
    "task_ready_2.txt",
    "task_pending_1.txt",
    "task_pending_2.txt"
)

# === Create files only if missing (idempotente) ===
foreach ($task in $tasks) {
    $path = Join-Path $base $task
    if (-not (Test-Path $path)) {
        New-Item -Path $path -ItemType File | Out-Null
    }
}

# === Move only *ready* ===
foreach ($task in $tasks) {
    if ($task -like "*ready*") {
        $src = Join-Path $base $task
        if (Test-Path $src) {
            # -PassThru te muestra dónde quedó realmente
            Move-Item -Path $src -Destination $processed -PassThru -ErrorAction Stop |
              Select-Object Name, FullName
        } else {
            Write-Host "NO ENCONTRADO EN ORIGEN: $src"
        }
    }
}

# === Final listing ===
Write-Host "`n--- CONTENIDO FINAL EN WorkFiles (recurse) ---"
Get-ChildItem -Path $base -Recurse -File | Select-Object Name, FullName

Write-Host "`n--- BUSQUEDA FORENSE task_ready_*.txt EN TODO EL PERFIL ---"
Get-ChildItem -Path $env:USERPROFILE -Recurse -File -ErrorAction SilentlyContinue |
  Where-Object { $_.Name -like "task_ready_*.txt" } |
  Select-Object Name, FullName