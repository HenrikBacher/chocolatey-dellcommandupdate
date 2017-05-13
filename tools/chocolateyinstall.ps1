﻿$ErrorActionPreference = 'Stop';

$packageName  = 'dellcommandupdate'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = ''

#Based on NO DETECTION IN PRO
$packageArgs = @{
  packageName   = $packageName
  softwareName  = 'Dell Command | Update'
  fileType      = 'exe'
  silentArgs    = "/s"  
  validExitCodes= @(0) #please insert other valid exit codes here
  url           = "https://downloads.dell.com/FOLDER04139436M/1/Systems-Management_Application_FXD2R_WN32_2.3.0_A00-00.EXE"  #download URL, HTTPS preferrred
  checksum      = '6E6D1FFA16F97AC29FD8EB6D1676412954529376FCD8210AE655F5FECC6132F5'
  checksumType  = 'sha256'
  destination   = $toolsDir
}

Install-ChocolateyPackage @packageArgs 