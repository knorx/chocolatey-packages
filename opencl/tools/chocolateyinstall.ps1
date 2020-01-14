
$ErrorActionPreference = 'Stop';

$packageName= 'opencl-intel-cpu-runtime'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://registrationcenter-download.intel.com/akdlm/irc_nas/vcp/13794/opencl_runtime_18.1_x64_setup.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url

  softwareName  = 'OpenCL*Runtime*Intel*Processors'

  checksum      = '1A2531A5D01E0FD3D939A2E090EE0195379FD72DF235563E7DBBFD898D1075E8'
  checksumType  = 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
