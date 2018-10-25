$path = ""

function Test-Deployment {
        
    New-AzureRmResourceGroup -Name test-development -Location eastus

    New-AzureRmResourceGroupDeployment `
    -ResourceGroupName test-development `
    -TemplateFile $path\template.json `
    -TemplateParameterFile $path\parameters-development.json
    
    Remove-AzureRmResourceGroup -Name test-development
}

Connect-AzureRmAccount

$continue = "yes"

while ($continue -eq "yes") { 
        
    Test-Deployment

    $continue = Read-Host "Continue?"
}