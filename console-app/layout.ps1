function Set-AppColors {
<#
#>

    # Main layout set
    $Host.UI.RawUI.WindowTitle = "This is the Window Title"

    # Layout set for CLI
    if ($psISE -eq $null) {
        $Host.UI.RawUI.BackgroundColor = "Black"
        $Host.UI.RawUI.ForegroundColor = "Green"
        $Host.UI.RawUI.CursorSize = 30
    }
    # Layout set for ISE
    else {
        $psISE.Options.ConsolePaneBackgroundColor = "Black"
        $psISE.Options.ConsolePaneForegroundColor = "Green"
        $psISE.Options.ConsolePaneTextBackgroundColor = "DarkGray"
    }
}
