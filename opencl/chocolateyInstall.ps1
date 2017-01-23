$packageName = 'windirstat'
$fileType = 'exe'
$url = 'http://registrationcenter-download.intel.com/akdlm/irc_nas/9022/opencl_runtime_16.1.1_x64_setup.msi'
$silentArgs = '/S'

Install-ChocolateyPackage $packageName $fileType $silentArgs $url