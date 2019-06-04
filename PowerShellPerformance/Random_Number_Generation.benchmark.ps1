$global:QuickRandom = [Random]::new()
bench -Technique @{
    'GetRandom' = {
        Get-Random
    }
    '[Random]::New().Next()' = {
        [Random]::new().Next()
    }
    'QuickRandom' = {
        $global:QuickRandom.Next()        
    }
} -GroupName '(AnyRandomNumber)'

bench -Technique @{
    'GetRandom' = {
        Get-Random -Minimum 10 -Maximum 100 
    }
    '[Random]::New().Next()' = {
        [Random]::new().Next(10,100)
    }
    'QuickRandom' = {
        $global:QuickRandom.Next(10,100)        
    }
} -GroupName '(Min and Max)'

bench -Technique @{   
    'GetRandom' = {
        $buff = @(foreach ($n in 1..1kb) { Get-Random -Minimum 0 -Maximum 255}) -as [byte[]]        
    }
    '[Random]::New().Next()' = {
        $buff = [byte[]]::new(1kb)
        [random]::new().NextBytes($buff)
        $buff = $null
    }
    'QuickRandom' = {
        $buff = [byte[]]::new(1kb)
        $global:QuickRandom.NextBytes($buff)
        $buff = $null
    }
} -GroupName '(Random Byte Buffer)' -RepeatCount 10