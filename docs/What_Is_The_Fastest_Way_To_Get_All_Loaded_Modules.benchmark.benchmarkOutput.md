---
layout: Benchmark
title: What Is The Fastest Way To Get All Loaded Modules

Data: 
  - Technique: Get-Module -ExpandProperty Name
    Time: 
      Ticks: 25808
      Days: 0
      Hours: 0
      Milliseconds: 2
      Minutes: 0
      Seconds: 0
      TotalDays: 2.98703703703704e-08
      TotalHours: 7.16888888888889e-07
      TotalMilliseconds: 2.5808
      TotalMinutes: 4.30133333333333e-05
      TotalSeconds: 0.0025808
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
    Throughput: 3874.76751394916
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
  - Technique: foreach Get-Module
    Time: 
      Ticks: 34019
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 3.93738425925926e-08
      TotalHours: 9.44972222222222e-07
      TotalMilliseconds: 3.4019
      TotalMinutes: 5.66983333333333e-05
      TotalSeconds: 0.0034019
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
    RelativeSpeed: 1.31815716057037
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 2939.53378994092
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
  - Technique: ExecutionContextAndArrayList
    Time: 
      Ticks: 78772
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 9.11712962962963e-08
      TotalHours: 2.18811111111111e-06
      TotalMilliseconds: 7.8772
      TotalMinutes: 0.000131286666666667
      TotalSeconds: 0.0078772
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
    RelativeSpeed: 3.05223186608803
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 1269.48661961103
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
  - Technique: ExecutionContextAndHashtable
    Time: 
      Ticks: 408140
      Days: 0
      Hours: 0
      Milliseconds: 40
      Minutes: 0
      Seconds: 0
      TotalDays: 4.72384259259259e-07
      TotalHours: 1.13372222222222e-05
      TotalMilliseconds: 40.814
      TotalMinutes: 0.000680233333333333
      TotalSeconds: 0.040814
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
    RelativeSpeed: 15.8144761314321
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 245.01396579605
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
FileName: What Is The Fastest Way To Get All Loaded Modules
ClockSpeed: 2793
---
What Is The Fastest Way To Get All Loaded Modules
-------------------------------------------------
> @2793 Mhz


### 


|Technique                      |Time           |RelativeSpeed|Throughput|
|-------------------------------|---------------|-------------|----------|
|Get-Module -ExpandProperty Name|00:00:00.002580|1x           |3874.77/s |
|foreach Get-Module             |00:00:00.003401|1.32x        |2939.53/s |
|ExecutionContextAndArrayList   |00:00:00.007877|3.05x        |1269.49/s |
|ExecutionContextAndHashtable   |00:00:00.040814|15.81x       |245.01/s  |
