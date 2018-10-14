$pathToApp = ""

$indent = "`n>>>"

Import-Module "$pathToApp\layout.ps1"
Import-Module "$pathToApp\functions\control.ps1"
Import-Module "$pathtoApp\functions\manage\event-00.ps1"

Set-AppColors

$item = Get-MenuItem

switch ($item)
{
  1 {Manage-Event01}
  2 {Manage-Event02}

  0 {Manage-Event00 -from "0"}

  Default {Manage-Event00 -from "Default"}
}

Write-Host "$indent CLOSING APPLICATION [...]$indent See you soon!"