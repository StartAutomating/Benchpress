#requires -Module Benchpress
#requires -Module PSDevOps
#requires -Module GitPub

Push-Location $PSScriptRoot

Import-BuildStep -ModuleName Benchpress
New-GitHubWorkflow -Name "Build, Test, and Publish" -On Demand, Push -Job PowerShellStaticAnalysis,
    TestPowerShellOnLinux, TagReleaseAndPublish, BuildBenchpress -OutputPath .\.github\workflows\RunPester.yml

Import-BuildStep -ModuleName GitPub
New-GitHubWorkflow -On Issue, Demand -Job RunGitPub -Name OnIssueChanged -OutputPath .\.github\workflows\OnIssue.yml

Pop-Location