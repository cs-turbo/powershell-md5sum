# powershell-md5sum
A md5sum implementation in powershell. Making it easiert to create checksums for windows users.


## Installation
Initially windows won't let you run unsigned powershell scripts

This can be modified via the restriction settings of powershell.

To edit these restrictions you can run the following command as **admin**
```
Set-ExecutionPolicy Unrestricted
```
Check out this [link](http://ss64.com/ps/set-executionpolicy.html) for more information about restriction settings.



## Usage
You can find the script in the **src** folder

The usage is similar to md5sum on linux.

Example:
> .\sum.ps1 .\test.jpg .\test_two.jpg


The output would be the following:
```
ef488e3a2e960badf994d68f6d1aff37   .\test.jpg
ef488e3a2e960badf994d68f6d1aff37   .\test_two.jpg
```

To get more information about this script use the get-help function:
```
get-help .\sum.ps1
```
