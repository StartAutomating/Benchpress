@{
    FormatsToProcess='Benchpress.format.ps1xml'
    PrivateData=@{
        PSData=@{
            Tags='performance',
                'benchmarking'
            Category     = 'Performance'
            ProjectURI   = 'https://github.com/StartAutomating/Benchpress'
            LicenseURI   = 'https://github.com/StartAutomating/Benchpress/blob/master/LICENSE'
            ReleaseNotes = @'
### 1.3.2:
* Adding Benchmark for Multithreading (thanks @santysq)
* Autogenerating formatting (#15)
* Autogenerating docs (#16)
---

### 1.3.1:
---
Fixing #10 (crossplatform / core issues with CPU data).   Thanks @mklement0!

### 1.3:
---
Now including .ClockSpeed in results (fixes #7)
Formatting deserialized results (fixes #8)            
'@
        }
    }
    ModuleVersion='1.3.2'
    CompanyName='Start-Automating'
    Description='Easy Benchmarking with PowerShell'
    PowerShellVersion='3.0'
    ModuleToProcess='Benchpress.psm1'
    Author='James Brundage'
    Copyright='Copyright 2019 Start-Automating'
    Guid='c649905c-d60b-44f2-90b6-6e2751d87d62'
}
