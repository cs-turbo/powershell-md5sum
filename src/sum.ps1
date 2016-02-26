<#

.SYNOPSIS
MD5Sum script for windows users

.DESCRIPTION
Replicates the md5sum of linux users. Uses the CertUtil tool.

.EXAMPLE
./sum.ps1 [FILE] [FILE]
./sum.ps1 test_one.jpg test_two.jpg

.NOTES
Version 1.0, author: cs-turbo (PS)

.LINK
https://github.com/cs-turbo/powershell-md5sum

#>

$numOfArgs = $args.Length

if( "$numOfArgs" -eq "0"){
   Write-Host "Wrong amount of arguments. See help by typing Get-Help .\sum.ps1 "
   Exit
}

Write-Host ""
for ($i=0; $i -lt $numOfArgs; $i++){
  if(Test-Path $($args[$i])){
 	 Write-Host "$($(CertUtil -hashfile $($args[$i]) MD5)[1] -replace ' ','')   $($args[$i])"
  }
}
Write-Host ""
