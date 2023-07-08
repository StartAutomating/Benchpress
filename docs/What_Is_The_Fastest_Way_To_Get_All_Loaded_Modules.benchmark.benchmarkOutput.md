---
layout: Benchmark

Data: 
  - Technique: foreach Get-Module
    Time: 
      Ticks: 23200
      Days: 0
      Hours: 0
      Milliseconds: 2
      Minutes: 0
      Seconds: 0
      TotalDays: 2.68518518518519e-08
      TotalHours: 6.44444444444444e-07
      TotalMilliseconds: 2.32
      TotalMinutes: 3.86666666666667e-05
      TotalSeconds: 0.00232
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Get All Loaded Modules
        ScriptBlock: |
          
                  $moduleNames = foreach ($_ in Get-Module) {
                      $_.Name
                  }
                  $moduleNames
              
        RepeatCount: 10
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 4310.34482758621
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
  - Technique: Get-Module -ExpandProperty Name
    Time: 
      Ticks: 34143
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 3.95173611111111e-08
      TotalHours: 9.48416666666667e-07
      TotalMilliseconds: 3.4143
      TotalMinutes: 5.6905e-05
      TotalSeconds: 0.0034143
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Get All Loaded Modules
        ScriptBlock: |
          
                  $moduleNames = Get-Module | Select-Object -ExpandProperty Name
                  $moduleNames
              
        RepeatCount: 10
    RelativeSpeed: 1.47168103448276
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 2928.85803825089
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
  - Technique: ExecutionContextAndArrayList
    Time: 
      Ticks: 76176
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.81666666666667e-08
      TotalHours: 2.116e-06
      TotalMilliseconds: 7.6176
      TotalMinutes: 0.00012696
      TotalSeconds: 0.0076176
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Get All Loaded Modules
        ScriptBlock: |
          
                      $cmds = $ExecutionContext.InvokeCommand.GetCommands('*', 'Function,Cmdlet,Alias', $true)
                      $moduleNames = [Collections.ArrayList]::new()
          
                      foreach ($_ in $cmds) {
                          if (-not $_.Module.Name) { continue } 
                          if ($moduleNames -notcontains $_.Module.Name) {
                              $null = $moduleNames.Add($_.Module.Name)
                          }
                      }
                      $moduleNames
              
        RepeatCount: 10
    RelativeSpeed: 3.28344827586207
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 1312.74942239025
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
  - Technique: ExecutionContextAndHashtable
    Time: 
      Ticks: 134887
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.56119212962963e-07
      TotalHours: 3.74686111111111e-06
      TotalMilliseconds: 13.4887
      TotalMinutes: 0.000224811666666667
      TotalSeconds: 0.0134887
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Get All Loaded Modules
        ScriptBlock: |
          
                  $cmds = $ExecutionContext.InvokeCommand.GetCommands('*', 'Function,Cmdlet,Alias', $true)
                  $cmdModules = @{}
          
                  foreach ($_ in $cmds) {
                      if (-not $_.Module) { continue } 
                      if (-not $cmdModules[$_.Module.Name]) {
                          $cmdModules[$_.Module.Name] = $_
                      }
                  }
          
                  $cmdModules.Keys
              
        RepeatCount: 10
    RelativeSpeed: 5.81409482758621
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 741.361287596284
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
FileName: What Is The Fastest Way To Get All Loaded Modules
ClockSpeed: 2594
---
What Is The Fastest Way To Get All Loaded Modules
-------------------------------------------------
> @2594 Mhz


### 


|Technique                      |Time           |RelativeSpeed|Throughput|
|-------------------------------|---------------|-------------|----------|
|foreach Get-Module             |00:00:00.002320|1x           |4310.34/s |
|Get-Module -ExpandProperty Name|00:00:00.003414|1.47x        |2928.86/s |
|ExecutionContextAndArrayList   |00:00:00.007617|3.28x        |1312.75/s |
|ExecutionContextAndHashtable   |00:00:00.013488|5.81x        |741.36/s  |
