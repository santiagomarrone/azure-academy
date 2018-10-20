function Set-AppColors {
<#
#>

    $Host.UI.RawUI.WindowTitle = "This is the Window Title"

    if ($psISE -eq $null) {
        $Host.UI.RawUI.BackgroundColor = "Black"
        $Host.UI.RawUI.ForegroundColor = "Green"
        $Host.UI.RawUI.CursorSize = 30
    }
    else {
        $psISE.Options.ConsolePaneBackgroundColor = "DarkCyan"
        $psISE.Options.ConsolePaneForegroundColor = "White"
        $psISE.Options.ConsolePaneTextBackgroundColor = "Black"
    }
}

function Set-HangmanLayout {
    
     $Global:winnerGraphic = "    
        ________________
          |         |
          |         |
          |
          |
          |        
          |        \0/
          |         |
       ___|____    //  ** "

     $Global:looserGraphic = "  
        ________________
          |         |
          |         |
          |         0
          |         ~
          |        /|\
          |        //
          |
          |         
       ___|____         "

}