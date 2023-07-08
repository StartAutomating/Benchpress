---
layout: Benchmark
title: What Is The Fastest Way To Get All Loaded Modules

Data: 
  - Technique: Get-Module -ExpandProperty Name
    Time: 
      Ticks: 25330
      Days: 0
      Hours: 0
      Milliseconds: 2
      Minutes: 0
      Seconds: 0
      TotalDays: 2.93171296296296e-08
      TotalHours: 7.03611111111111e-07
      TotalMilliseconds: 2.533
      TotalMinutes: 4.22166666666667e-05
      TotalSeconds: 0.002533
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10
        FileName: What Is The Fastest Way To Get All Loaded Modules
        ScriptBlock: |
          
                  $moduleNames = Get-Module | Select-Object -ExpandProperty Name
                  $moduleNames
              
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 3947.88787998421
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
  - Technique: foreach Get-Module
    Time: 
      Ticks: 34608
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.00555555555556e-08
      TotalHours: 9.61333333333333e-07
      TotalMilliseconds: 3.4608
      TotalMinutes: 5.768e-05
      TotalSeconds: 0.0034608
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
              
    RelativeSpeed: 1.36628503750493
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 2889.50531668978
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
  - Technique: ExecutionContextAndArrayList
    Time: 
      Ticks: 79186
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 9.1650462962963e-08
      TotalHours: 2.19961111111111e-06
      TotalMilliseconds: 7.9186
      TotalMinutes: 0.000131976666666667
      TotalSeconds: 0.0079186
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
              
    RelativeSpeed: 3.1261744966443
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 1262.84949359735
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
  - Technique: ExecutionContextAndHashtable
    Time: 
      Ticks: 111660
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.29236111111111e-07
      TotalHours: 3.10166666666667e-06
      TotalMilliseconds: 11.166
      TotalMinutes: 0.0001861
      TotalSeconds: 0.011166
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
              
    RelativeSpeed: 4.40821160679037
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 895.575855274942
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
FileName: What Is The Fastest Way To Get All Loaded Modules
ClockSpeed: 2793
---


### 


|Technique                      |Time           |RelativeSpeed|Throughput|
|-------------------------------|---------------|-------------|----------|
|Get-Module -ExpandProperty Name|00:00:00.002533|1x           |3947.89/s |
|foreach Get-Module             |00:00:00.003460|1.37x        |2889.51/s |
|ExecutionContextAndArrayList   |00:00:00.007918|3.13x        |1262.85/s |
|ExecutionContextAndHashtable   |00:00:00.011166|4.41x        |895.58/s  |
