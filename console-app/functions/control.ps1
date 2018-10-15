function Get-FirstMenuItem {

    Write-Host "$indent MAIN MENU"

    Write-Host "[1] Create Resource Group - Linux VM"
    Write-Host "[2] Create Resource Group - Windows VM"
    Write-Host "[0] Run away from Azure!"

    return Read-Host "Execute an action"
}

function Print-NewMessage ($from) {

    switch ($from) {

        1 {Write-Host "$indent Your deployment may take a while to end... $indent Why don't you do something else until then ?"}
        2 {Write-Host "$indent Your deployment may take a while to end... $indent Why don't you do something else until then ?"}

        0 {Write-Host "$indent Let's do something else !"}

        Default {Write-Host "$indent Loading emergency menu $load"}
    }

}

function Get-SecondMenuItem () {

    Write-Host "$indent NEW MENU"

    Write-Host "[1] Play a game !"
    Write-Host "[2] Learn something useful :)"
    Write-Host "[3] First, let me take a selfie"
    Write-Host "[0] Close this app"

    return Read-Host "$indent Come on, pick one option"
}