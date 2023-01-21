#requires -Module Benchpress

$filePath = $MyInvocation.MyCommand.ScriptBlock.File

bench -technique ([Ordered]@{
    "Get-Content" = {
        Get-Content -Path $filePath
    }
    "Get-Content -Raw" = {
        Get-Content -Path $filePath -Raw
    }
    "[IO.File]::ReadAllBytes" = {
        [IO.File]::ReadAllBytes($filePath)
    }
    "[IO.File]::ReadAllText" = {
        [IO.File]::ReadAllText($filePath)
    }
    "[IO.StreamReader].ReadToEnd" = {
        $stream = [IO.File]::OpenRead($filePath)
        [IO.StreamReader]::new($stream).ReadToEnd()
        $stream.Close()
    }
})
