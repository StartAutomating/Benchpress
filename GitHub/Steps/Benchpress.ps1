<#
.Synopsis
    Benchpress Action
.Description
    Runs Benchmarks on your code.
#>
param(
# The path to the benchmark file.  
# If not provided, any benchmark files in your repository will be used
[string]
$BenchmarkPath,
# The path to the module.
[string]
$ModulePath
)

if (-not $BenchmarkPath) {
    $BenchmarkPath = 
        Get-ChildItem "$env:GITHUB_WORKSPACE" -Recurse | 
        Where-Object Name -Like '*.benchmark.*' | 
        Split-Path | 
        Select-Object -Unique
}

"::warning::Benchmark Path - $($BenchmarkPath | Out-String)"

if ($env:GITHUB_ACTION_PATH) {
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

$benchmarkOutputFiles = $BenchmarkPath | 
    Get-ChildItem -LiteralPath {$_ } -ErrorAction SilentlyContinue |
    Where-Object Name -Like '*.benchmark.*' |
    Checkpoint-Benchmark -OutputPath {
        $fileName = $_.Name
        $fileNameMinusExtension = $fileName.Substring(0, $fileName.IndexOf($_.Extension))
        $fileNameMinusExtension + '.benchmarkOutput.clixml'
    }

$benchmarkOutputFiles | Out-Host
$endTime = [DateTime]::Now
"::set-output name=TotalDuration::$(($endTime - $startTime).TotalSeconds)" | Out-Host
return

