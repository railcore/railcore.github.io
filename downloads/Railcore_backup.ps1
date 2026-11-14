#region user defined
$railCoreHostOrIp = 'railcore'
$rfmDownloadUrl = 'https://github.com/wilriker/rfm/releases/download/v1.1.1/rfm-windows_amd64.zip'
$rfmOutputDestination = ('{0}\{1}' -f $env:userprofile, (Split-Path $rfmDownloadUrl -Leaf))
$backupDestination = ('{0}\Documents\{1}-backup-{2}' -f $env:userprofile, $railCoreHostOrIp, (Get-Date -Format 'MMddyy'))
#endregion

#region Only download rfm if not present
if (-not (Get-Item "$env:userprofile\Documents\rfm.exe")) {
    Invoke-WebRequest -Uri $rfmDownloadUrl -OutFile $rfmOutputDestination -Verbose
    if (-NOT (Get-Item $rfmOutputDestination)) {
        $msg = ('Unable to find "{0}", unable to continue' -f $rfmOutputDestination)
        Write-Warning $msg
        Break
    }
    Expand-Archive -Path $rfmOutputDestination -DestinationPath "$env:userprofile\Documents" -Force
}
#endregion

#region rfmExecution
$rfmParams = @(
    'backup'
    "-domain"
    $railCoreHostOrIp
    '-exclude'
    '0:/gcodes'
    $backupDestination
    '0:/'
    
)

if (-NOT ([IO.Directory]::Exists($backupDestination))) {
    $null = New-Item -ItemType Directory -Path $backupDestination
}
 
Start-Process "$env:userprofile\Documents\DuetRecovery\rfm.exe" -Wait -ArgumentList $rfmParams -NoNewWindow -RedirectStandardOutput $env:APPDATA\stdout.txt -RedirectStandardError $env:APPDATA\stderr.txt
Get-Content $env:APPDATA\stderr.txt
#endregion

#region compression and clean-up
try {
    Compress-Archive -Path $backupDestination -DestinationPath "$backupDestination`.zip" -ErrorAction Stop -CompressionLevel Optimal
    $backupDestination | Remove-Item -Recurse -Force
    $msg = ('{0} Back-up successfull {1}' -f (Get-Date), "$backupDestination`.zip")
    Write-Host $msg -ForegroundColor Green
} catch {
    Throw
}
#endregion
