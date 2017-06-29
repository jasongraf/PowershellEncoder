$t=Read-Host -Prompt 'Input Powershell Command to Encode'
$Bytes = [System.Text.Encoding]::Unicode.GetBytes($t)
$EncodedText =[Convert]::ToBase64String($Bytes)
Write-Host "powershell.exe -nop -w hidden -enc $EncodedText"