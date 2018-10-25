function Test-Deployment {
        
    New-AzureRmResourceGroup -Name test-development -Location eastus

    New-AzureRmResourceGroupDeployment `
    -ResourceGroupName test-development `
    -TemplateFile C:\Users\santiago.marrone\Documents\academy-remote\template-deployment\template.json `
    -TemplateParameterFile C:\Users\santiago.marrone\Documents\academy-remote\template-deployment\parameters-development.json
    
    Remove-AzureRmResourceGroup -Name test-development
}

Connect-AzureRmAccount

$continue = "yes"

while ($continue -eq "yes") { 
        
    Test-Deployment

    $continue = Read-Host "Continue?"
}