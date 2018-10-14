function Get-MenuItem {

  Write-Host "MAIN MENU"

  Write-Host "[1] Create Resource Group - Linux VM"
  Write-Host "[2] Create Resource Group - Windows VM"
  Write-Host "[0] Run away from Azure!"

  $number = Read-Host "Execute an action"

  return $number
}
