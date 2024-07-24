# Ruta de la carpeta que contiene los archivos de Excel
$Path = "C:\Ruta\De\Tu\Carpeta"

# Iniciar una nueva instancia de Excel
$Excel = New-Object -ComObject Excel.Application
$Excel.Visible = $false
$Excel.DisplayAlerts = $false

# Obtener todos los archivos .xlsx en la carpeta especificada
$Files = Get-ChildItem -Path $Path -Filter "*.xlsx"

Foreach ($file in $Files) {
  $Workbook = $Excel.Workbooks.Open($file.FullName)
    
  # Iterar sobre cada hoja en el libro de trabajo
  foreach ($Sheet in $Workbook.Sheets) {
    $Worksheet = $Sheet

    # Aquí puedes modificar la columna A (o cualquier otra)
    # Por ejemplo, agregar un texto "Modificado" en la primera columna (A) de cada fila
    $LastRow = $Worksheet.Cells($Worksheet.Rows.Count, 2).End(12).Row  # -4162 corresponde a xlUp
        
    for ($row = 1; $row -le $LastRow; $row++) {
      $Worksheet.Cells.Item($row, 1) = "Modificado"
    }
  }

  # Guardar y cerrar el libro de trabajo
  $Workbook.Save()
  $Workbook.Close()
}

# Cerrar Excel
$Excel.Quit()

# Liberar los objetos COM
[System.Runtime.Interopservices.Marshal]::ReleaseComObject($Excel)
Remove-Variable Excel
[GC]::Collect()
[GC]::WaitForPendingFinalizers()
