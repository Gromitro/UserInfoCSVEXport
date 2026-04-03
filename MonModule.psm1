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
    if (Test-Path "/etc/passwd") {
        Get-Content "/etc/passwd" | Export-Csv -Path "users.csv" -NoTypeInformation
}
}

Get-Users