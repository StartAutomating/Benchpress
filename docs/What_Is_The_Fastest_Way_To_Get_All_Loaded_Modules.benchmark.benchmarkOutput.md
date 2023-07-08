---
layout: Benchmark
title: What Is The Fastest Way To Get All Loaded Modules

Data: 
  - Technique: foreach Get-Module
    Time: 
      Ticks: 26314
      Days: 0
      Hours: 0
      Milliseconds: 2
      Minutes: 0
      Seconds: 0
      TotalDays: 3.04560185185185e-08
      TotalHours: 7.30944444444444e-07
      TotalMilliseconds: 2.6314
      TotalMinutes: 4.38566666666667e-05
      TotalSeconds: 0.0026314
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Get All Loaded Modules
        RepeatCount: 10
        ScriptBlock: |
          
                  $moduleNames = foreach ($_ in Get-Module) {
                      $_.Name
                  }
                  $moduleNames
              
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 3800.2584175724
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
  - Technique: Get-Module -ExpandProperty Name
    Time: 
      Ticks: 60080
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 6.9537037037037e-08
      TotalHours: 1.66888888888889e-06
      TotalMilliseconds: 6.008
      TotalMinutes: 0.000100133333333333
      TotalSeconds: 0.006008
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Get All Loaded Modules
        RepeatCount: 10
        ScriptBlock: |
          
                  $moduleNames = Get-Module | Select-Object -ExpandProperty Name
                  $moduleNames
              
    RelativeSpeed: 2.28319525727749
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 1664.44740346205
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
  - Technique: ExecutionContextAndArrayList
    Time: 
      Ticks: 78287
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 9.06099537037037e-08
      TotalHours: 2.17463888888889e-06
      TotalMilliseconds: 7.8287
      TotalMinutes: 0.000130478333333333
      TotalSeconds: 0.0078287
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Get All Loaded Modules
        RepeatCount: 10
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
              
    RelativeSpeed: 2.9751083073649
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 1277.35128437672
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
  - Technique: ExecutionContextAndHashtable
    Time: 
      Ticks: 112494
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.30201388888889e-07
      TotalHours: 3.12483333333333e-06
      TotalMilliseconds: 11.2494
      TotalMinutes: 0.00018749
      TotalSeconds: 0.0112494
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Get All Loaded Modules
        RepeatCount: 10
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
              
    RelativeSpeed: 4.27506270426389
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 888.936298824826
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
FileName: What Is The Fastest Way To Get All Loaded Modules
ClockSpeed: 2594
---




|Technique                      |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------------------------|-----------|---------------|-------------|----------|
|foreach Get-Module             |10         |00:00:00.002631|1x           |3800.26/s |
|Get-Module -ExpandProperty Name|10         |00:00:00.006008|2.28x        |1664.45/s |
|ExecutionContextAndArrayList   |10         |00:00:00.007828|2.98x        |1277.35/s |
|ExecutionContextAndHashtable   |10         |00:00:00.011249|4.28x        |888.94/s  |
