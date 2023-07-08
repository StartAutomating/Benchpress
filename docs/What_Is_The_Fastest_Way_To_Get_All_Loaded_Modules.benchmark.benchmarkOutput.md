---
layout: Benchmark
title: What Is The Fastest Way To Get All Loaded Modules

Data: 
  - Technique: Get-Module -ExpandProperty Name
    Time: 
      Ticks: 25278
      Days: 0
      Hours: 0
      Milliseconds: 2
      Minutes: 0
      Seconds: 0
      TotalDays: 2.92569444444444e-08
      TotalHours: 7.02166666666667e-07
      TotalMilliseconds: 2.5278
      TotalMinutes: 4.213e-05
      TotalSeconds: 0.0025278
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Get All Loaded Modules
        ScriptBlock: |
          
                  $moduleNames = Get-Module | Select-Object -ExpandProperty Name
                  $moduleNames
              
        RepeatCount: 10
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 3956.00917794129
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
  - Technique: foreach Get-Module
    Time: 
      Ticks: 33968
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 3.93148148148148e-08
      TotalHours: 9.43555555555556e-07
      TotalMilliseconds: 3.3968
      TotalMinutes: 5.66133333333333e-05
      TotalSeconds: 0.0033968
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
    RelativeSpeed: 1.3437771975631
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 2943.94724446538
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
  - Technique: ExecutionContextAndHashtable
    Time: 
      Ticks: 73775
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.53877314814815e-08
      TotalHours: 2.04930555555556e-06
      TotalMilliseconds: 7.3775
      TotalMinutes: 0.000122958333333333
      TotalSeconds: 0.0073775
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
    RelativeSpeed: 2.91854577102619
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 1355.47272111149
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
  - Technique: ExecutionContextAndArrayList
    Time: 
      Ticks: 114289
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.32278935185185e-07
      TotalHours: 3.17469444444444e-06
      TotalMilliseconds: 11.4289
      TotalMinutes: 0.000190481666666667
      TotalSeconds: 0.0114289
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
    RelativeSpeed: 4.52128332937732
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 874.974844473221
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
FileName: What Is The Fastest Way To Get All Loaded Modules
ClockSpeed: 2594
---




|Technique                      |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------------------------|-----------|---------------|-------------|----------|
|Get-Module -ExpandProperty Name|10         |00:00:00.002527|1x           |3956.01/s |
|foreach Get-Module             |10         |00:00:00.003396|1.34x        |2943.95/s |
|ExecutionContextAndHashtable   |10         |00:00:00.007377|2.92x        |1355.47/s |
|ExecutionContextAndArrayList   |10         |00:00:00.011428|4.52x        |874.97/s  |
