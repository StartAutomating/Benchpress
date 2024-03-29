﻿<#
.Synopsis
    Benchpress Action
.Description
    Runs Benchmarks on your code.
#>
param(
# The path to the benchmark file.  
# If not provided, any benchmark files in your repository will be used
[string[]]
$BenchmarkPath,

# The path to the module.
[string]
$ModulePath,

# The output path for the benchmark files.  By default "docs"
[string]
$OutputPath = "docs",

# If provided, will commit any remaining changes made to the workspace with this commit message.
# If no commit message is provided, changes will not be committed.
[string]
$CommitMessage,

# The user email associated with a git commit.
[string]
$UserEmail,

# The user name associated with a git commit.
[string]
$UserName
)

"::group::Parameters" | Out-Host
[PSCustomObject]$PSBoundParameters | Format-List | Out-Host
"::endgroup::" | Out-Host


$gitHubEvent = if ($env:GITHUB_EVENT_PATH) {
    [IO.File]::ReadAllText($env:GITHUB_EVENT_PATH) | ConvertFrom-Json
} else { $null }

@"
::group::GitHubEvent
$($gitHubEvent | ConvertTo-Json -Depth 100)
::endgroup::
"@ | Out-Host

# Check to ensure we are on a branch
$branchName = git rev-parse --abrev-ref HEAD
# If we were not, return.
if (-not $branchName) {
    "::warning::Not on a branch" | Out-Host
    return
}

$anyFilesChanged = $false
$processScriptOutput = { process { 
    $out = $_
    $outItem = Get-Item -Path $out -ErrorAction SilentlyContinue
    $fullName, $shouldCommit = 
        if ($out -is [IO.FileInfo]) {
            $out.FullName, (git status $out.Fullname -s)
        } elseif ($outItem) {
            $outItem.FullName, (git status $outItem.Fullname -s)
        }
    if ($shouldCommit) {
        git add $fullName
        if ($out.Message) {
            git commit -m "$($out.Message)"
        } elseif ($out.CommitMessage) {
            git commit -m "$($out.CommitMessage)"
        }  elseif ($gitHubEvent.head_commit.message) {
            git commit -m "$($gitHubEvent.head_commit.message)"
        }  
        $anyFilesChanged = $true
    }
    $out
} }

if (-not $UserName)  {
    $UserName =  
        if ($env:GITHUB_TOKEN) {
            Invoke-RestMethod -uri "https://api.github.com/user" -Headers @{
                Authorization = "token $env:GITHUB_TOKEN"
            } |
                Select-Object -First 1 -ExpandProperty name
        } else {
            $env:GITHUB_ACTOR
        }
}

if (-not $UserEmail) { 
    $GitHubUserEmail = 
        if ($env:GITHUB_TOKEN) {
            Invoke-RestMethod -uri "https://api.github.com/user/emails" -Headers @{
                Authorization = "token $env:GITHUB_TOKEN"
            } |
                Select-Object -First 1 -ExpandProperty email
        } else {''}
    $UserEmail = 
        if ($GitHubUserEmail) {
            $GitHubUserEmail
        } else {
            "$UserName@github.com"
        }    
}
git config --global user.email $UserEmail
git config --global user.name  $UserName

if (-not $BenchmarkPath) {
    $BenchmarkPath = 
        Get-ChildItem "$env:GITHUB_WORKSPACE" -Recurse | 
        Where-Object Name -Like '*.benchmark.*' | 
        Split-Path | 
        Select-Object -Unique
}

"::warning::Benchmark Path - $($BenchmarkPath | Out-String)"

$PSD1Found = Get-ChildItem -Recurse -Filter "*.psd1" |
    Where-Object Name -eq 'Benchpress.psd1' | 
    Select-Object -First 1

if ($PSD1Found) {
    $BenchpressPath = $PSD1Found
    Import-Module $PSD1Found -Force -PassThru | Out-Host
} elseif ($env:GITHUB_ACTION_PATH) {
    $benchPressPath = Join-Path $env:GITHUB_ACTION_PATH 'Benchpress.psd1'
    if (Test-path $benchPressPath) {
        Import-Module $benchPressPath -Force -PassThru | Out-String
    } else {
        throw "Benchmark not found"
    }
} else {
    dir env: | Out-String
    throw "Action Path not found"
}

"::notice title=ModuleLoaded::Benchpress Loaded from Path - $($BenchpressPath)" | Out-Host

if (-not $ModulePath) {
    Get-ChildItem -ErrorAction SilentlyContinue -Path $BenchmarkPath -Filter *.psd1
} elseif (-not (Test-Path $ModulePath) -and $env:GITHUB_WORKSPACE) {
    $ModulePath = Join-Path (Join-Path $env:GITHUB_WORKSPACE "RepositoryToBenchmark") $ModulePath
}

if ($modulePath -and (Test-Path $ModulePath -ErrorAction SilentlyContinue )) {
    Import-Module $ModulePath -Force -PassThru | Out-String
}

$benchpressModule = Get-Module Benchpress
if (-not $benchpressModule) { throw "Benchpress not loaded" }
$startTime = [DateTime]::Now

if (-not (Test-Path $OutputPath)) {
    $createOutputPath = New-Item -ItemType Directory -Path $OutputPath    
    if (-not $createOutputPath) {
        throw "Could not create -OutputPath $outputPath"
    }
}

$benchmarkOutputFiles = $BenchmarkPath | 
    Get-ChildItem -LiteralPath {$_ } -ErrorAction SilentlyContinue |
    Where-Object Name -Like '*.benchmark.*' |
    Where-Object Name -NotLike '*.benchmarkOutput.*' |
    ForEach-Object { 
        "::notice title=FoundBenchmarkFile::$($_.FullName)" | Out-Host
        $_        
    } |
    Checkpoint-Benchmark -OutputPath {
        $fileInfo = $_
        $fileName = $fileInfo.Name        
        $fileNameMinusExtension = $fileName.Substring(0, $fileName.IndexOf($fileInfo.Extension))
        "$(Join-Path $OutputPath ($fileNameMinusExtension + '.benchmarkOutput.clixml'))"
    }

$filesToCheckin =
    foreach ($benchOutFile in $benchmarkOutputFiles) {
        $newName = $benchOutFile.Fullname -replace '\.clixml$', '.md'
        Show-Benchmark -BenchmarkPath $benchOutFile.Fullname  |
            Set-Content -Path $newName
        
        Get-Item $newName
    }

$filesToCheckin | 
    . $processScriptOutput |
    Out-Host

$benchmarkOutputFiles | 
    Import-Clixml |
    Out-Host

git pull | Out-Host

$endTime = [DateTime]::Now
"::set-output name=TotalDuration::$(($endTime - $startTime).TotalSeconds)" | Out-Host

if ($CommitMessage -or $anyFilesChanged) {
    if ($CommitMessage) {
        dir $env:GITHUB_WORKSPACE -Recurse |
            ForEach-Object {
                $gitStatusOutput = git status $_.Fullname -s
                if ($gitStatusOutput) {
                    git add $_.Fullname
                }
            }

        git commit -m $ExecutionContext.SessionState.InvokeCommand.ExpandString($CommitMessage)
    }    

    $checkDetached = git symbolic-ref -q HEAD
    if (-not $LASTEXITCODE) {
        "::notice::Pulling Changes" | Out-Host
        git pull | Out-Host
        "::notice::Pushing Changes" | Out-Host
        git push        
        "Git Push Output: $($gitPushed  | Out-String)"
    } else {
        "::notice::Not pushing changes (on detached head)" | Out-Host
        $LASTEXITCODE = 0
        exit 0
    }
}

return

