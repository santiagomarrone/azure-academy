function DeployWindows {

  $pathWindowsTemplate = "$pathToApp\functions\deploy\templates\template-windows.json"
  $newGroupName = ""

  New-AzureRmResourceGroup -Name $newGroupName = "" -Location "eastus"

  New-AzureRmResourceGroupDeployment `
      -Name newrgDeploymentName `
      -ResourceGroupName $newGroupName `
      -TemplateFile $pathWindowsTemplate `
      -NewStorageAccountName newStorage `
      -DnsNameForPublicIP newDNS `
      -AdminUsername newusername `
      -AdminPassword ("Password1234$" | ConvertTo-SecureString -AsPlainText -Force) `
      -VmName newVM `
}
