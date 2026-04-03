function Get-Bonjour {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$true)]
        [string]$Nom,
        [Parameter(Mandatory=$true)]
        [datetime]$DNS
    )
    Write-Output "Hello $Nom, you were born at $DNS"
}


function Get-PipeT {
    Get-Process | Where-Object { $_.CPU -gt 50 }
}

function Get-Users {
    $csvP = "/home/addie/Desktop/TD5/users.csv"
    if (Test-Path $csvP) {
        Import-Csv -Path $csvP | Format-Table
    }
}

Get-Users
