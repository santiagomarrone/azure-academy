# Import all necessary files

$pathToApp = "" # Armando, aqui va el camino a la carpeta incluyendo "\console-app"

Import-Module "$pathToApp\layout.ps1"

Import-Module "$pathToApp\functions\security.ps1"
Import-Module "$pathToApp\functions\control.ps1"

Import-Module "$pathToApp\functions\manage\event-f-0.ps1"
Import-Module "$pathToApp\functions\manage\event-f-1.ps1"
Import-Module "$pathToApp\functions\manage\event-f-2.ps1"
Import-Module "$pathToApp\functions\manage\event-f-d.ps1"

Import-Module "$pathToApp\functions\manage\event-s-0.ps1"
Import-Module "$pathToApp\functions\manage\event-s-2.ps1"
Import-Module "$pathToApp\functions\manage\event-s-3.ps1"
Import-Module "$pathToApp\functions\manage\event-s-4.ps1"
Import-Module "$pathToApp\functions\manage\event-s-d.ps1"

Import-Module "$pathToApp\functions\deploy\resgroup-linux.ps1"
Import-Module "$pathToApp\functions\deploy\resgroup-windows.ps1"

# Set output format variables

$indent = "`n>>>"
$load = "[....]"

# Set layout for any platform

Set-AppColors

# Show main menu & manage events

$item = Get-FirstMenuItem

switch ($item)
{
  1 {Manage-EventF1} # Linux 
  2 {Manage-EventF2} # Windows

  0 {Manage-EventF0} # Quit Azure

  Default {Manage-EventFD}
}

$item = Get-SecondMenuItem

switch ($item)
{
    1 {Manage-EventS4} # Play Hangman
    2 {Manage-EventS2} # Learn
    3 {Manage-EventS3} # Camera

    0 {Manage-EventS0} # Quit App

    Default {Manage-EventSD}
}

Write-Host "$indent CLOSING APPLICATION [...]$indent See you soon!"