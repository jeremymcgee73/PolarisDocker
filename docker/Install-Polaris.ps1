$ZipPath = 'C:\temp\master.zip'
$PolarisDownloadPath = 'C:\temp\PolarisDownload'
$PolarisPath = 'C:\temp\Polaris'

Invoke-WebRequest -Uri "https://github.com/PowerShell/Polaris/archive/master.zip" -OutFile $ZipPath
Expand-Archive -Path $ZipPath -DestinationPath $PolarisDownloadPath
Move-item "$PolarisDownloadPath\Polaris-master" $PolarisPath