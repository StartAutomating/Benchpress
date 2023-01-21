#requires -Module Benchpress

bench -Technique @{
    "Guid" = {
        [guid]::NewGuid()
    }
    "[BitConverter] + [Random]" = {
        [BitConverter]::ToString([BitConverter]::GetBytes($([Random]::new().next())))
    }
    "[BitConverter] + Get-Random" = {
        [BitConverter]::ToString([BitConverter]::GetBytes((Get-Random)))
    }
} -RepeatCount 1kb -GroupName RandomLetters

bench -Technique ([Ordered]@{
    "[Random]::new().Next()" = {
        $([Random]::new().Next())
    }
    "Get-Random" = {
        Get-Random
    }
}) -GroupName RandomNumbers -RepeatCount 1kb


