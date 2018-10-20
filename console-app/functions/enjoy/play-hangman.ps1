function Play-Hangman {

    Set-HangmanLayout

    do {
 
        $targetWord = Read-Host "$indent Type word"
        $verif = read-host "$indent Type word again"

        if ($targetWord -ne $verif) {

            write-host "$indent Words not matching"
        }

    } until ($targetWord -eq $verif) 

    function Get-HangmanMenuItem {

        Write-Host "$indent LEVELS"
    
        Write-Host "[1] Easy"
        Write-Host "[2] Medium"
        Write-Host "[3] Hard"

        return Read-Host "$indent Choose your level"
    }

    $item = Get-HangmanMenuItem

    switch ($item)
    {
        1 {$life = 7} 
        2 {$life = 5} 
        3 {$life = 3}
     
        Default {$life = 5}
    }


    [Char[]]$wordProgress =  "_" * $targetWord.Length

    Write-Host "$indent GUESS THE WORD"

    Write-Host "$indent You got $life lives"

    $guesses=@() 

    do
    {
        do
        {
            Write-Host "`n [$($targetWord.Length)] $wordProgress"
            Write-Host "Lifes remaining " $life

            $guessLetter = Read-Host "Guess a letter"
        
            if ($guesses -contains $guessLetter)
            {
                "$indent Try another letter !"
            }
        } while ($guesses -contains $guessLetter) 

        $guesses+=$guessLetter
        $guesses -join ','

        $foundLetter = $false
        for($i=0;$i -lt $targetWord.Length; $i++)
        {
            if($guessLetter -like $targetWord[$i] )
            {
                $wordProgress[$i] = $guessLetter
                $foundLetter=$true
            }
        }

        if(!$foundLetter)
        {
            $life--
        }

        if($($wordProgress -join '') -like $targetWord)
        {
            Write-Host $targetWord;
            Write-Host "$indent YOU WIN ! :)"
            Write-Host -BackgroundColor "DarkCyan" $winnerGraphic
            break;
        }

    } while ($life -gt 0)

    if ($life -eq 0)
    {
        Write-Host "$indent YOU LOOSE :( hahaha"
        Write-Host -BackgroundColor "DarkCyan" $looserGraphic
    }
}
