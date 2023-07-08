---
layout: Benchmark
title: What Is The Fastest Way To Get All Loaded Modules

Data: 
  - Technique: Get-Module -ExpandProperty Name
    Time: 
      Ticks: 26097
      Days: 0
      Hours: 0
      Milliseconds: 2
      Minutes: 0
      Seconds: 0
      TotalDays: 3.02048611111111e-08
      TotalHours: 7.24916666666667e-07
      TotalMilliseconds: 2.6097
      TotalMinutes: 4.3495e-05
      TotalSeconds: 0.0026097
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $moduleNames = Get-Module | Select-Object -ExpandProperty Name
                  $moduleNames
              
        FileName: What Is The Fastest Way To Get All Loaded Modules
        RepeatCount: 10
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 3831.85806797716
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
  - Technique: foreach Get-Module
    Time: 
      Ticks: 32904
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 3.80833333333333e-08
      TotalHours: 9.14e-07
      TotalMilliseconds: 3.2904
      TotalMinutes: 5.484e-05
      TotalSeconds: 0.0032904
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $moduleNames = foreach ($_ in Get-Module) {
                      $_.Name
                  }
                  $moduleNames
              
        FileName: What Is The Fastest Way To Get All Loaded Modules
        RepeatCount: 10
    RelativeSpeed: 1.26083457868721
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 3039.14417699976
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
  - Technique: ExecutionContextAndHashtable
    Time: 
      Ticks: 72612
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.40416666666667e-08
      TotalHours: 2.017e-06
      TotalMilliseconds: 7.2612
      TotalMinutes: 0.00012102
      TotalSeconds: 0.0072612
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
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
              
        FileName: What Is The Fastest Way To Get All Loaded Modules
        RepeatCount: 10
    RelativeSpeed: 2.78238878031958
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 1377.18283479315
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
  - Technique: ExecutionContextAndArrayList
    Time: 
      Ticks: 121396
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.4050462962963e-07
      TotalHours: 3.37211111111111e-06
      TotalMilliseconds: 12.1396
      TotalMinutes: 0.000202326666666667
      TotalSeconds: 0.0121396
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
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
              
        FileName: What Is The Fastest Way To Get All Loaded Modules
        RepeatCount: 10
    RelativeSpeed: 4.65172242020156
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 823.750370687667
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
FileName: What Is The Fastest Way To Get All Loaded Modules
ClockSpeed: 2594
---


### 


|Technique                      |Time           |RelativeSpeed|Throughput|
|-------------------------------|---------------|-------------|----------|
|Get-Module -ExpandProperty Name|00:00:00.002609|1x           |3831.86/s |
|foreach Get-Module             |00:00:00.003290|1.26x        |3039.14/s |
|ExecutionContextAndHashtable   |00:00:00.007261|2.78x        |1377.18/s |
|ExecutionContextAndArrayList   |00:00:00.012139|4.65x        |823.75/s  |
