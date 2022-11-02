#requires -Module Benchpress
#requires -Module PSDevOps
Import-BuildStep -ModuleName Benchpress
New-GitHubWorkflow -Name "Build, Test, and Publish" -On Demand, Push -Job PowerShellStaticAnalysis,
    TestPowerShellOnLinux, TagReleaseAndPublish, BuildBenchpress -OutputPath .\.github\workflows\RunPester.yml
    
