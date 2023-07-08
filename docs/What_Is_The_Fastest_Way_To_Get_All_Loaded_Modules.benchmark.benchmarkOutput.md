---
layout: Benchmark
title: What Is The Fastest Way To Get All Loaded Modules

Data: 
  - Technique: Get-Module -ExpandProperty Name
    Time: 
      Ticks: 38903
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.50266203703704e-08
      TotalHours: 1.08063888888889e-06
      TotalMilliseconds: 3.8903
      TotalMinutes: 6.48383333333333e-05
      TotalSeconds: 0.0038903
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
    Throughput: 2570.4958486492
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
  - Technique: foreach Get-Module
    Time: 
      Ticks: 45783
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.29895833333333e-08
      TotalHours: 1.27175e-06
      TotalMilliseconds: 4.5783
      TotalMinutes: 7.6305e-05
      TotalSeconds: 0.0045783
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
    RelativeSpeed: 1.17685011438707
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 2184.21684904877
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
  - Technique: ExecutionContextAndHashtable
    Time: 
      Ticks: 116849
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.35241898148148e-07
      TotalHours: 3.24580555555556e-06
      TotalMilliseconds: 11.6849
      TotalMinutes: 0.000194748333333333
      TotalSeconds: 0.0116849
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
    RelativeSpeed: 3.00359869418811
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 855.805355629916
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
  - Technique: ExecutionContextAndArrayList
    Time: 
      Ticks: 555226
      Days: 0
      Hours: 0
      Milliseconds: 55
      Minutes: 0
      Seconds: 0
      TotalDays: 6.42622685185185e-07
      TotalHours: 1.54229444444444e-05
      TotalMilliseconds: 55.5226
      TotalMinutes: 0.000925376666666667
      TotalSeconds: 0.0555226
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
    RelativeSpeed: 14.272061280621
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 180.106839377119
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
FileName: What Is The Fastest Way To Get All Loaded Modules
ClockSpeed: 2295
---
What Is The Fastest Way To Get All Loaded Modules
-------------------------------------------------
> @2295 Mhz


### 


|Technique                      |Time           |RelativeSpeed|Throughput|
|-------------------------------|---------------|-------------|----------|
|Get-Module -ExpandProperty Name|00:00:00.003890|1x           |2570.5/s  |
|foreach Get-Module             |00:00:00.004578|1.18x        |2184.22/s |
|ExecutionContextAndHashtable   |00:00:00.011684|3x           |855.81/s  |
|ExecutionContextAndArrayList   |00:00:00.055522|14.27x       |180.11/s  |
