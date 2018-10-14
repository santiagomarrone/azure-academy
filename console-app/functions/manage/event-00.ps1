$defaultMessage = "$indent Option not valid for deployment $indent Let's do something else !"
$zeroMessage = "$indent OK! Here you have a B Plan !"
$errorMessage = "$indent XXXXX $indent MENU FAILURE $indent Handling error [...] $indent Loading new options [...] $indent XXXXX"

function Set-WelcomeMessage ($from){

    if ($from -eq "Default"){
        Write-Host $defaultMessage
    }
    else {
        if ($from -eq "0") {
            Write-Host $zeroMessage
        }
        else {
            Write-Host $errorMessage
        }
    }
}

function Manage-Event00 ($from) {
    
    Set-WelcomeMessage $from

    Write-Host "$indent Managing Event 00"
}

