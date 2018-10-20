function Learn-Letters {

    for ($index = 0; $index -lt 26; $index++) {
        
            $ascii = 65 + $index
            Write-Host -NoNewline ([char] ($ascii)) ""
        }
}

function Learn-Numbers {

    for ($index = 1; $index -le 100; $index++) {
        
    if ($index -ne 100) {
            
        Write-Host -NoNewline "0" # Adds a 0 if not 100

        if ($index -lt 10) {
            Write-Host -NoNewline "0" # And other 0 if less than 10
        }
    }

    Write-Host -NoNewline $index ""

    if ($index -ne 0) {
        if ($index % 10 -eq 0) { Write-Host -NoNewline "`n"}
    }
    }
}