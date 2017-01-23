
$ErrorActionPreference = 'Stop';

$packageName= 'opencl-runtime'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://registrationcenter-download.intel.com/akdlm/irc_nas/9022/opencl_runtime_16.1.1_x86_setup.msi'
$url64      = 'http://registrationcenter-download.intel.com/akdlm/irc_nas/9022/opencl_runtime_16.1.1_x64_setup.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  softwareName  = 'OpenCL*Runtime*Intel*Processors'

  checksum      = 'A1F556FC294154085929EF598F2022304D16CFD96C1B7FAD433A0A81E92D985B'
  checksumType  = 'sha256'
  checksum64    = '9082581C7E843616AC16AA696D4CB7C45121D22F6517EB08608B6F29A068277F'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs


















