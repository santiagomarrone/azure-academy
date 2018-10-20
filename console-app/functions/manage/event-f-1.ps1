Import-Module "$pathToApp\functions\security.ps1"
Import-Module "$pathToApp\functions\deploy\resgroup-linux.ps1"

function Manage-EventF1 {
    
    $approval = Get-DeploymentApproval

    if ($approval -eq $true) {

        Write-Host "$indent EXECUTING DEPLOYMENT"
        # Deploy-Linux
        Print-NewMessage -from 1
    }
    else {
        Print-NewMessage -from 1 -deploymentDenied $true
    }


}