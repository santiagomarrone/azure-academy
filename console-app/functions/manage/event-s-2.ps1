Import-Module "$pathToApp\functions\enjoy\learn.ps1"

function Manage-EventS2 {

    Write-Host "$indent These are the letters ! `n"
    
    Learn-Letters
   
    Write-Host "`n $indent And here you have the numbers ! `n"

    Learn-Numbers
}

Manage-EventS2