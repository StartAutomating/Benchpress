---
layout: Benchmark
title: What Is The Fastest Way To Get All Loaded Modules

Data: 
  - Technique: foreach Get-Module
    Time: 
      Ticks: 29048
      Days: 0
      Hours: 0
      Milliseconds: 2
      Minutes: 0
      Seconds: 0
      TotalDays: 3.36203703703704e-08
      TotalHours: 8.06888888888889e-07
      TotalMilliseconds: 2.9048
      TotalMinutes: 4.84133333333333e-05
      TotalSeconds: 0.0029048
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10
        FileName: What Is The Fastest Way To Get All Loaded Modules
        ScriptBlock: |
          
                  $moduleNames = foreach ($_ in Get-Module) {
                      $_.Name
                  }
                  $moduleNames
              
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 3442.57780225833
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
  - Technique: Get-Module -ExpandProperty Name
    Time: 
      Ticks: 40828
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.72546296296296e-08
      TotalHours: 1.13411111111111e-06
      TotalMilliseconds: 4.0828
      TotalMinutes: 6.80466666666667e-05
      TotalSeconds: 0.0040828
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10
        FileName: What Is The Fastest Way To Get All Loaded Modules
        ScriptBlock: |
          
                  $moduleNames = Get-Module | Select-Object -ExpandProperty Name
                  $moduleNames
              
    RelativeSpeed: 1.40553566510603
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 2449.2995003429
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
  - Technique: ExecutionContextAndArrayList
    Time: 
      Ticks: 87043
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.00744212962963e-07
      TotalHours: 2.41786111111111e-06
      TotalMilliseconds: 8.7043
      TotalMinutes: 0.000145071666666667
      TotalSeconds: 0.0087043
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10
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
              
    RelativeSpeed: 2.99652299641972
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 1148.85746125478
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
  - Technique: ExecutionContextAndHashtable
    Time: 
      Ticks: 131167
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.51813657407407e-07
      TotalHours: 3.64352777777778e-06
      TotalMilliseconds: 13.1167
      TotalMinutes: 0.000218611666666667
      TotalSeconds: 0.0131167
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10
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
              
    RelativeSpeed: 4.51552602588819
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 762.386880846554
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
FileName: What Is The Fastest Way To Get All Loaded Modules
ClockSpeed: 2095
---




|Technique                      |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------------------------|-----------|---------------|-------------|----------|
|foreach Get-Module             |10         |00:00:00.002904|1x           |3442.58/s |
|Get-Module -ExpandProperty Name|10         |00:00:00.004082|1.41x        |2449.3/s  |
|ExecutionContextAndArrayList   |10         |00:00:00.008704|3x           |1148.86/s |
|ExecutionContextAndHashtable   |10         |00:00:00.013116|4.52x        |762.39/s  |
