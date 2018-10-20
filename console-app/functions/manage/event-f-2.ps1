Import-Module "$pathToApp\functions\security.ps1"
Import-Module "$pathToApp\functions\deploy\resgroup-windows.ps1"

function Manage-EventF2 {
    
    $approval = Get-DeploymentApproval

    if ($approval -eq $true) {

        Write-Host "$indent EXECUTING DEPLOYMENT"
        # Deploy-Windows
        Print-NewMessage -from 2
    }
    else {
        Print-NewMessage -from 2 -deploymentDenied $true
    }


}