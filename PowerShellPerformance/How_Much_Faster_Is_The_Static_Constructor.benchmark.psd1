@{
    Technique = 
        @{
            StaticConstructor = '
                $b = [byte[]]::new(1kb)
                $b = $null
            '
            'New-Object' = '
                $b = New-Object Byte[] 1kb
                $b = $null
            '
        } 
    RepeatCount = 10kb
}
