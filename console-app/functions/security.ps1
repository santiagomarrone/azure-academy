$masterKey = "PowerShell"

function Get-DeploymentApproval {

 $inputKey = Read-Host "$indent CONFIRM DEPLOYMENT :: TYPE MASTER PASSWORD"

    if ($inputKey -eq $masterKey) {
        
        Write-Host "$indent DEPLOYMENT CONFIRMED $indent Starting deployment [...] $indent Warning: DO NOT close this app until deployment has ended"

        return $true
    }
    else {
        
        Write-Host "$indent DEPLOYMENT DENIED"

        return $false
    }
}