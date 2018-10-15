Import-Module "$pathToApp\functions\security.ps1"

function Manage-EventF1 {
    
    $approval = Get-DeploymentApproval

    if ($approval -eq $true) {
        Write-Host "$indent EXECUTING DEPLOYMENT"
        # Deploy-LinuxResourceGroup
    }
}