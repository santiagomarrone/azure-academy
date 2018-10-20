function DeployLinux {

  $pathLinuxTemplate = "$pathToApp\functions\deploy\templates\template-linux.json"
  $newGroupName = ""

  New-AzureRmResourceGroup -Name $newGroupName -Location "eastus"

  New-AzureRmResourceGroupDeployment -TemplateFile $pathLinuxTemplate
}