#requires -Module Benchpress
#requires -Module PSDevOps
Import-BuildStep -ModuleName Benchpress
New-GitHubWorkflow -Name "StaticAnalysisAndTests" -On Demand, Push -Job PowerShellStaticAnalysis,
    TestPowerShellOnLinux, RunBenchmarks, TagReleaseAndPublish, HelpOut, RunEZOut |
    Set-Content .\.github\workflows\RunPester.yml -Encoding UTF8
