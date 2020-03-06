---
title: Oneshot Duet Backup
---

### Linux/Windows/Mac
Download [rfm (Reprap File Managment)](https://github.com/wilriker/rfm/releases) for your architecture.
Place in a folder with this bash script. Change the DUET value to suit your Duet.
Cron it daily for bonus points.
```
DUET=192.168.0.100
FILE=railcore_backup             
NAME=${FILE%.*}
DATE=`date +%y-%m-%d`         
NEWFILE=${NAME}_${DATE}
mkdir $NEWFILE
./rfm backup -domain $DUET -exclude 0:/gcodes ./$NEWFILE 0:/
tar -zcvf $NEWFILE.tar.gz $NEWFILE
rm -rf $NEWFILE
```


The following will give you a file that you can run, which will back up everything on your Duet (bar G-codes for speed) , and create a nice compressed file with the date in the name (ISO 8601).

### Windows (Powershell)
(by @pech on discord)

Change $railCoreHostOrIp
Puts everything in a directory that does not require admin access and is tied to the user who is logged in to the OS

[Download this script](https://cdn.discordapp.com/attachments/546190822228492290/657045033089761290/Railcore_backup.ps1)

```
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
```


### Windows (batch)
Create a the folder and download the following
1. from  [7-zip download page](https://www.7-zip.org/download.html) - get "7-Zip Extra: standalone console version" and unzip 7za.exe,7za.dll and 7zxa.dll
1. [rfm (Reprap File Managment) release page](https://github.com/wilriker/rfm/releases)  - get "rfm-windows_amd64.zip" and unzip into the folder.
1. paste the following code into a file called something like "duetbackup.cmd" in this folder, and modify the third line.

You can also get all of this from [here](http://www.crimsoncurve.com/upload/duetbackup.zip) in one go.
```
@echo off
REM CHANGE THE VALUE OF THIS TO SUIT YOUR RAILCORE - You can use IP address also
set hostnameorip = railcore.local

REM Sets environment variables used to create unique tape names.
  for /f "Tokens=1-4 Delims=/ " %%i in ('date /t') do set dt=%%k-%%j-%%i_%%l
  for /f "Tokens=1" %%i in ('time /t') do set tm=%%i
  set tm=%tm::=%
  set dtt=%dt%%tm%
REM create temporary folder
mkdir %dtt%

REM use rfm to backup duet, bar gcodes folder to the temp. folder
rfm backup -domain %hostnameorip% -exclude 0:/gcodes .\%dtt% 0:/

REM zip up the contents of the temp folder
7za.exe a  -r %dtt%.zip -w %dtt% 

REM delete the temp folder. Leaving the zip
RD /S /Q %dtt%
```



