
#Exercise 1
function Get-BonjourS{
    Write-Output "Bonjour, exercise 1"
}

Get-BonjourS

#Exercise 2 + 3
function Get-Bonjour{
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$true)]
        [string]$Nom,
        [Parameter(Mandatory=$true)]
        [datetime]$DNS)
    Write-Output "Hello $Name, You were born at $DNS"
}
Get-Bonjour

#Exercise 4

function Get-PipeT{
    Get-Process | Where-Object CPU -gt 50
}

Get-PipeT