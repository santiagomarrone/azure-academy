function Get-FirstMenuItem {

    Write-Host "$indent MAIN MENU"

    Write-Host "[1] Create Resource Group - Linux VM"
    Write-Host "[2] Create Resource Group - Windows VM"
    Write-Host "[0] Run away from Azure!"

    return Read-Host "Execute an action"
}

function Select-Message ($deploymentDenied) {
    
    if ($deploymentDenied -eq $true) {
        Write-Host $deniedMessage
    }
    else {
        if ($deploymentDenied -eq $false) {
            Write-Host $deployingMessage
        }
        else {
            Write-Host "Error"
        }
    }
}

function Print-NewMessage ($from, $deploymentDenied = $false) {
    
    $deployingMessage = "$indent Your deployment may take a while to end... $indent Let´s do something else until then"
    $deniedMessage = "$indent Stop thinking about deployments ! $indent Let´s do something else..."
    $quitMessage = "$indent Let's do something else !"
    $errorMessage = "$indent Loading emergency menu $load"

    switch ($from) {

        1 {Select-Message $deploymentDenied}
        2 {Select-Message $deploymentDenied}

        0 {Write-Host $quitMessage}

        Default {Write-Host $errorMessage}
    }
}

function Get-SecondMenuItem () {

    Write-Host "$indent NEW MENU"

    Write-Host "[1] Play Hangman !"
    Write-Host "[2] Learn something useful :)"
    Write-Host "[3] First, let me take a selfie"

    Write-Host "[0] Close this app"

    return Read-Host "$indent Come on, pick one option"
}