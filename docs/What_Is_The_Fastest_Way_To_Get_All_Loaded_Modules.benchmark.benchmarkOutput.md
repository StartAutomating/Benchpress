---
layout: Benchmark
title: What Is The Fastest Way To Get All Loaded Modules

Data: 
  - Technique: Get-Module -ExpandProperty Name
    Time: 
      Ticks: 30226
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 3.49837962962963e-08
      TotalHours: 8.39611111111111e-07
      TotalMilliseconds: 3.0226
      TotalMinutes: 5.03766666666667e-05
      TotalSeconds: 0.0030226
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Get All Loaded Modules
        ScriptBlock: |
          
                  $moduleNames = Get-Module | Select-Object -ExpandProperty Name
                  $moduleNames
              
        RepeatCount: 10
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 3308.40997816449
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
  - Technique: foreach Get-Module
    Time: 
      Ticks: 39650
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.58912037037037e-08
      TotalHours: 1.10138888888889e-06
      TotalMilliseconds: 3.965
      TotalMinutes: 6.60833333333333e-05
      TotalSeconds: 0.003965
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
    RelativeSpeed: 1.31178455634222
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 2522.06809583859
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
  - Technique: ExecutionContextAndHashtable
    Time: 
      Ticks: 124737
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.44371527777778e-07
      TotalHours: 3.46491666666667e-06
      TotalMilliseconds: 12.4737
      TotalMinutes: 0.000207895
      TotalSeconds: 0.0124737
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
    RelativeSpeed: 4.12681135446304
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 801.686748919727
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
  - Technique: ExecutionContextAndArrayList
    Time: 
      Ticks: 436264
      Days: 0
      Hours: 0
      Milliseconds: 43
      Minutes: 0
      Seconds: 0
      TotalDays: 5.04935185185185e-07
      TotalHours: 1.21184444444444e-05
      TotalMilliseconds: 43.6264
      TotalMinutes: 0.000727106666666667
      TotalSeconds: 0.0436264
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
    RelativeSpeed: 14.4334017071395
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 229.219005006143
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
FileName: What Is The Fastest Way To Get All Loaded Modules
ClockSpeed: 2095
---




|Technique                      |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------------------------|-----------|---------------|-------------|----------|
|Get-Module -ExpandProperty Name|10         |00:00:00.003022|1x           |3308.41/s |
|foreach Get-Module             |10         |00:00:00.003965|1.31x        |2522.07/s |
|ExecutionContextAndHashtable   |10         |00:00:00.012473|4.13x        |801.69/s  |
|ExecutionContextAndArrayList   |10         |00:00:00.043626|14.43x       |229.22/s  |
