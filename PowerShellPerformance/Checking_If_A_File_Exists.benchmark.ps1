$fileToCheck = $MyInvocation.MyCommand.ScriptBlock.File
$badFile     = "$(Join-Path $PSScriptRoot ".\aFileThatShouldNotExist.ps1")"

bench -Technique @{
    "Test-Path" = {
        Test-path $fileToCheck
    }
    "Get Resolved Path" = {
        try{$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($fileToCheck)} catch {}
    }
    "[IO.File]::Exists" = {
        [IO.File]::Exists($fileToCheck) # only works with full paths
    }    
} -GroupName "(Found Path)"


bench -Technique @{
    "Test-Path" = {
        Test-path $badFile
    }
    "Get Resolved Path" = {
        try {$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($badFile)} catch {}
    }
    "[IO.File]::Exists" = {
        [IO.File]::Exists($badFile)    # only works with full paths
    }    
} -GroupName "(Missing Path)"


