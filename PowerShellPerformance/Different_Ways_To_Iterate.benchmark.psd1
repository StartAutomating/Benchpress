@{
    Technique = @{
        "Foreach-Object" = '1..100 | ForEach-Object { $_ }'
        'Pipe to ScriptBlock' = '1..100 | . { process { $_ }}'
        "Foreach Statement" = ' foreach ($n in 1..100) { $n }'
        "Foreach _" = 'foreach ($_ in 1..100) { $_ }'
        'For loop' = 'for ( $i =1; $i -le 100; $i++) { $i } '
        'For _'= 'for ( $_ =1; $_ -le 100; $_++) { $_ } '
    }
} 
