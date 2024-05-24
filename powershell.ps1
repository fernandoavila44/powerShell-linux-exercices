# Obtención de información del sistema:
$computerName = $env:COMPUTERNAME

$os = Get-WmiObject -Class Win32_OperatingSystem -ComputerName $computerName
$processor = Get-WmiObject -Class Win32_Processor -ComputerName $computerName

$systemInfo = @{
  "Sistema Operativo" = $os.Caption
  "Versión"           = $os.Version
  "Arquitectura"      = $os.OSArchitecture
  "Procesador"        = $processor.Name
  "Núcleos"           = $processor.NumberOfCores
}

$systemInfo | Format-Table -AutoSize


