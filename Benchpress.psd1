@{
    FormatsToProcess='Benchpress.format.ps1xml'
    ModuleVersion='1.3.8'
    CompanyName='Start-Automating'
    Description='Easy Benchmarking with PowerShell'
    PowerShellVersion='3.0'
    ModuleToProcess='Benchpress.psm1'
    Author='James Brundage'
    Copyright='Copyright 2019 Start-Automating'
    Guid='c649905c-d60b-44f2-90b6-6e2751d87d62'
    PrivateData=@{
        PSData=@{
            Tags='performance',
                'benchmarking'
            Category     = 'Performance'
            ProjectURI   = 'https://github.com/StartAutomating/Benchpress'
            LicenseURI   = 'https://github.com/StartAutomating/Benchpress/blob/master/LICENSE'
            ReleaseNotes = @'
### 1.3.8:

* Supporting Sponsorship (#51) (please show your support)
* New Benchmark : Hashtable vs Ordered (#42)
* Updating README (mentioning gallery) (#41)
* Upping RepeatCount for Namespace tests (#44)
* Updating Wasy to Hash a File (#45)
* Measure-Benchmark now includes .RepeatCount (#48)
* Improving Benchmark Output (#47 #48 #49 #50)

Thanks @NLZ @robinmalik !

---

### 1.3.7:

* New Benchmarks:
  * What is the Fastest Way to Read a File (Fixes #37)
  * Which Random Is Faster (Fixes #38)

---

### 1.3.6:
* New Benchmarks:
    * Checking if a File Exists (Fixes #29)
    * What Is The Quickest Way to Compare Types (Fixes #33)
* Show-Benchmark now includes a YAML header (Fixes #30)
* GitHub Action no longer rebases (Fixes #34)

---

### 1.3.5:
* New Benchmarks:
  * Best Way To Accumulate Pipeline Results (Fixes #21)
  * Comparing Command Lookup (Fixes #18)
  * Is Using Faster (Fixes #27)  

---

### 1.3.4:
* Show-Benchmark: Fixing run vs load logic (Fixes #24)
* Updating Action (preferring local bits) (Fixes #25)

---

### 1.3.3:
* Adding Show-Benchmark (Fixes #22)
* Adding markdown formatting (Fixes #19)
* Updating Action to check in files (Fixes #20)

---

### 1.3.2:
* Adding Benchmark for Multithreading (thanks @santysq)
* Autogenerating formatting (#15)
* Autogenerating docs (#16)

---

### 1.3.1:
Fixing #10 (crossplatform / core issues with CPU data).   Thanks @mklement0!

---

### 1.3:
Now including .ClockSpeed in results (fixes #7)
Formatting deserialized results (fixes #8)
'@
        }
    }

}
