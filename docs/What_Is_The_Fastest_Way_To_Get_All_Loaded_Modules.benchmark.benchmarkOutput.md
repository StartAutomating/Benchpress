---
layout: Benchmark
title: What Is The Fastest Way To Get All Loaded Modules

Data: 
  - Technique: Get-Module -ExpandProperty Name
    Time: 
      Ticks: 23946
      Days: 0
      Hours: 0
      Milliseconds: 2
      Minutes: 0
      Seconds: 0
      TotalDays: 2.77152777777778e-08
      TotalHours: 6.65166666666667e-07
      TotalMilliseconds: 2.3946
      TotalMinutes: 3.991e-05
      TotalSeconds: 0.0023946
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10
        ScriptBlock: |
          
                  $moduleNames = Get-Module | Select-Object -ExpandProperty Name
                  $moduleNames
              
        FileName: What Is The Fastest Way To Get All Loaded Modules
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 4176.06280798463
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
  - Technique: foreach Get-Module
    Time: 
      Ticks: 31672
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 3.66574074074074e-08
      TotalHours: 8.79777777777778e-07
      TotalMilliseconds: 3.1672
      TotalMinutes: 5.27866666666667e-05
      TotalSeconds: 0.0031672
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10
        ScriptBlock: |
          
                  $moduleNames = foreach ($_ in Get-Module) {
                      $_.Name
                  }
                  $moduleNames
              
        FileName: What Is The Fastest Way To Get All Loaded Modules
    RelativeSpeed: 1.32264261254489
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 3157.36297044708
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
  - Technique: ExecutionContextAndHashtable
    Time: 
      Ticks: 131051
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.51679398148148e-07
      TotalHours: 3.64030555555556e-06
      TotalMilliseconds: 13.1051
      TotalMinutes: 0.000218418333333333
      TotalSeconds: 0.0131051
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
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
              
        FileName: What Is The Fastest Way To Get All Loaded Modules
    RelativeSpeed: 5.47277207049194
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 763.061708800391
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
  - Technique: ExecutionContextAndArrayList
    Time: 
      Ticks: 203946
      Days: 0
      Hours: 0
      Milliseconds: 20
      Minutes: 0
      Seconds: 0
      TotalDays: 2.36048611111111e-07
      TotalHours: 5.66516666666667e-06
      TotalMilliseconds: 20.3946
      TotalMinutes: 0.00033991
      TotalSeconds: 0.0203946
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
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
              
        FileName: What Is The Fastest Way To Get All Loaded Modules
    RelativeSpeed: 8.51691305437234
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 490.325870573583
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
FileName: What Is The Fastest Way To Get All Loaded Modules
ClockSpeed: 2793
---


### 


|Technique                      |Time           |RelativeSpeed|Throughput|
|-------------------------------|---------------|-------------|----------|
|Get-Module -ExpandProperty Name|00:00:00.002394|1x           |4176.06/s |
|foreach Get-Module             |00:00:00.003167|1.32x        |3157.36/s |
|ExecutionContextAndHashtable   |00:00:00.013105|5.47x        |763.06/s  |
|ExecutionContextAndArrayList   |00:00:00.020394|8.52x        |490.33/s  |
