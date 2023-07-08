---
layout: Benchmark
title: What Is The Fastest Way To Get All Loaded Modules

Data: 
  - Technique: foreach Get-Module
    Time: 
      Ticks: 39281
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.54641203703704e-08
      TotalHours: 1.09113888888889e-06
      TotalMilliseconds: 3.9281
      TotalMinutes: 6.54683333333333e-05
      TotalSeconds: 0.0039281
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
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 2545.76003665894
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
  - Technique: Get-Module -ExpandProperty Name
    Time: 
      Ticks: 61644
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.13472222222222e-08
      TotalHours: 1.71233333333333e-06
      TotalMilliseconds: 6.1644
      TotalMinutes: 0.00010274
      TotalSeconds: 0.0061644
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $moduleNames = Get-Module | Select-Object -ExpandProperty Name
                  $moduleNames
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Get All Loaded Modules
    RelativeSpeed: 1.56930831699804
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 1622.21789630783
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
  - Technique: ExecutionContextAndHashtable
    Time: 
      Ticks: 104127
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.20517361111111e-07
      TotalHours: 2.89241666666667e-06
      TotalMilliseconds: 10.4127
      TotalMinutes: 0.000173545
      TotalSeconds: 0.0104127
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
    RelativeSpeed: 2.65082355337186
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 960.365707261325
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
  - Technique: ExecutionContextAndArrayList
    Time: 
      Ticks: 152979
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.77059027777778e-07
      TotalHours: 4.24941666666667e-06
      TotalMilliseconds: 15.2979
      TotalMinutes: 0.000254965
      TotalSeconds: 0.0152979
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
    RelativeSpeed: 3.89447824648049
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Get All Loaded Modules
    RepeatCount: 10
    Throughput: 653.684492642781
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
FileName: What Is The Fastest Way To Get All Loaded Modules
ClockSpeed: 2295
---




|Technique                      |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------------------------|-----------|---------------|-------------|----------|
|foreach Get-Module             |10         |00:00:00.003928|1x           |2545.76/s |
|Get-Module -ExpandProperty Name|10         |00:00:00.006164|1.57x        |1622.22/s |
|ExecutionContextAndHashtable   |10         |00:00:00.010412|2.65x        |960.37/s  |
|ExecutionContextAndArrayList   |10         |00:00:00.015297|3.89x        |653.68/s  |
