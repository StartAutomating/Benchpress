---
layout: Benchmark
title: What Is The Fastest Way To Get All Loaded Modules

Data: 
  - Technique: Get-Module -ExpandProperty Name
    Time: 
      Ticks: 35501
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.10891203703704e-08
      TotalHours: 9.86138888888889e-07
      TotalMilliseconds: 3.5501
      TotalMinutes: 5.91683333333333e-05
      TotalSeconds: 0.0035501
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $moduleNames = Get-Module | Select-Object -ExpandProperty Name
                  $moduleNames
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Get All Loaded Modules
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 2816.82206135038
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
  - Technique: foreach Get-Module
    Time: 
      Ticks: 42676
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.93935185185185e-08
      TotalHours: 1.18544444444444e-06
      TotalMilliseconds: 4.2676
      TotalMinutes: 7.11266666666667e-05
      TotalSeconds: 0.0042676
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $moduleNames = foreach ($_ in Get-Module) {
                      $_.Name
                  }
                  $moduleNames
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Get All Loaded Modules
    RelativeSpeed: 1.20210698290189
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 2343.23741681507
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
  - Technique: ExecutionContextAndHashtable
    Time: 
      Ticks: 140424
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.62527777777778e-07
      TotalHours: 3.90066666666667e-06
      TotalMilliseconds: 14.0424
      TotalMinutes: 0.00023404
      TotalSeconds: 0.0140424
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
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Get All Loaded Modules
    RelativeSpeed: 3.95549421143066
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 712.128980801003
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
  - Technique: ExecutionContextAndArrayList
    Time: 
      Ticks: 461095
      Days: 0
      Hours: 0
      Milliseconds: 46
      Minutes: 0
      Seconds: 0
      TotalDays: 5.33674768518519e-07
      TotalHours: 1.28081944444444e-05
      TotalMilliseconds: 46.1095
      TotalMinutes: 0.000768491666666667
      TotalSeconds: 0.0461095
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
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Get All Loaded Modules
    RelativeSpeed: 12.9882256837836
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 216.875047441417
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
FileName: What Is The Fastest Way To Get All Loaded Modules
ClockSpeed: 2295
---




|Technique                      |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------------------------|-----------|---------------|-------------|----------|
|Get-Module -ExpandProperty Name|10         |00:00:00.003550|1x           |2816.82/s |
|foreach Get-Module             |10         |00:00:00.004267|1.2x         |2343.24/s |
|ExecutionContextAndHashtable   |10         |00:00:00.014042|3.96x        |712.13/s  |
|ExecutionContextAndArrayList   |10         |00:00:00.046109|12.99x       |216.88/s  |
