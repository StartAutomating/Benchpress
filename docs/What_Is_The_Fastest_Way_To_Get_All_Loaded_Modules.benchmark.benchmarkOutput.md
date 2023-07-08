---
layout: Benchmark
title: What Is The Fastest Way To Get All Loaded Modules

Data: 
  - Technique: foreach Get-Module
    Time: 
      Ticks: 20128
      Days: 0
      Hours: 0
      Milliseconds: 2
      Minutes: 0
      Seconds: 0
      TotalDays: 2.32962962962963e-08
      TotalHours: 5.59111111111111e-07
      TotalMilliseconds: 2.0128
      TotalMinutes: 3.35466666666667e-05
      TotalSeconds: 0.0020128
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
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 4968.20349761526
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
  - Technique: Get-Module -ExpandProperty Name
    Time: 
      Ticks: 34762
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.02337962962963e-08
      TotalHours: 9.65611111111111e-07
      TotalMilliseconds: 3.4762
      TotalMinutes: 5.79366666666667e-05
      TotalSeconds: 0.0034762
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Get All Loaded Modules
        ScriptBlock: |
          
                  $moduleNames = Get-Module | Select-Object -ExpandProperty Name
                  $moduleNames
              
        RepeatCount: 10
    RelativeSpeed: 1.72704689984102
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 2876.70444738508
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
  - Technique: ExecutionContextAndArrayList
    Time: 
      Ticks: 76626
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.86875e-08
      TotalHours: 2.1285e-06
      TotalMilliseconds: 7.6626
      TotalMinutes: 0.00012771
      TotalSeconds: 0.0076626
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
    RelativeSpeed: 3.80693561208267
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 1305.04006472999
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
  - Technique: ExecutionContextAndHashtable
    Time: 
      Ticks: 105574
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.2219212962963e-07
      TotalHours: 2.93261111111111e-06
      TotalMilliseconds: 10.5574
      TotalMinutes: 0.000175956666666667
      TotalSeconds: 0.0105574
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
    RelativeSpeed: 5.24513116057234
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 947.202909807339
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
FileName: What Is The Fastest Way To Get All Loaded Modules
ClockSpeed: 2095
---




|Technique                      |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------------------------|-----------|---------------|-------------|----------|
|foreach Get-Module             |10         |00:00:00.002012|1x           |4968.2/s  |
|Get-Module -ExpandProperty Name|10         |00:00:00.003476|1.73x        |2876.7/s  |
|ExecutionContextAndArrayList   |10         |00:00:00.007662|3.81x        |1305.04/s |
|ExecutionContextAndHashtable   |10         |00:00:00.010557|5.25x        |947.2/s   |
