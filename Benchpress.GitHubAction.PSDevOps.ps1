#requires -Module Benchpress
#requires -Module PSDevOps
Import-BuildStep -ModuleName Benchpress
New-GitHubAction -Name "Benchmark with Benchpress" -Description 'Easy Benchmarking with PowerShell' -Action Benchpress -Icon watch |
    Set-Content .\action.yml -Encoding UTF8 -PassThru
