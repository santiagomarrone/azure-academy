function DeployWindows {

    # Variables para deployment
    $myNum = "kirchner01" # Cambiar numero en cada deployment
    $RGName = "myRG$myNum"
    $myLocation = "eastus"

    # Crear grupo de recursos 
    New-AzureRmResourceGroup -Name $RGName -Location $myLocation

    # Deployment de infraestructura
    New-AzureRmResourceGroupDeployment `
        -Name myDep$myNum `
        -ResourceGroupName $RGName `
        -TemplateFile C:\Users\santiago.marrone\Downloads\DevOps-Academy\ps-final-project\templates\create_resource_group.json `
        -NewStorageAccountName mysto$myNum `
        -DnsNameForPublicIP mydns$myNum `
        -AdminUsername santiago `
        -AdminPassword ("Globant1234$" | ConvertTo-SecureString -AsPlainText -Force) `
        -VmName myVM$myNum `
        -WindowsOSVersion 2012-R2-Datacenter
}