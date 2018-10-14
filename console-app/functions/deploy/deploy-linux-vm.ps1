function DeployLinux {

    # Variables para deployment
    $myNum = "tstlinux" # Cambiar numero en cada deployment
    $RGName = "tstlinuxrg"
    $myLocation = "eastus"

    # Crear grupo de recursos
    New-AzureRmResourceGroup -Name $RGName -Location $myLocation

    # Deployment de infraestructura
    New-AzureRmResourceGroupDeployment -TemplateFile C:\Users\santiago.marrone\Downloads\DevOps-Academy\ps-final-project\templates\simple-linux-vm.json
}
