---
layout: Benchmark
title: What Is The Fastest Way To Get All Loaded Modules

Data: 
  - Technique: Get-Module -ExpandProperty Name
    Time: 
      Ticks: 38024
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.40092592592593e-08
      TotalHours: 1.05622222222222e-06
      TotalMilliseconds: 3.8024
      TotalMinutes: 6.33733333333333e-05
      TotalSeconds: 0.0038024
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $moduleNames = Get-Module | Select-Object -ExpandProperty Name
                  $moduleNames
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Get All Loaded Modules
    RelativeSpeed: 1
    ClockSpeed: 2397
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 2629.91794656007
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
  - Technique: foreach Get-Module
    Time: 
      Ticks: 49872
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.77222222222222e-08
      TotalHours: 1.38533333333333e-06
      TotalMilliseconds: 4.9872
      TotalMinutes: 8.312e-05
      TotalSeconds: 0.0049872
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
    RelativeSpeed: 1.31159267830844
    ClockSpeed: 2397
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 2005.13314084055
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
  - Technique: ExecutionContextAndArrayList
    Time: 
      Ticks: 111621
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.29190972222222e-07
      TotalHours: 3.10058333333333e-06
      TotalMilliseconds: 11.1621
      TotalMinutes: 0.000186035
      TotalSeconds: 0.0111621
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
    RelativeSpeed: 2.93554071112981
    ClockSpeed: 2397
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 895.888766450758
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
  - Technique: ExecutionContextAndHashtable
    Time: 
      Ticks: 144328
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.67046296296296e-07
      TotalHours: 4.00911111111111e-06
      TotalMilliseconds: 14.4328
      TotalMinutes: 0.000240546666666667
      TotalSeconds: 0.0144328
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
    RelativeSpeed: 3.79570797391121
    ClockSpeed: 2397
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 692.866249099274
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
FileName: What Is The Fastest Way To Get All Loaded Modules
ClockSpeed: 2397
---


### 


|Technique                      |Time           |RelativeSpeed|Throughput|
|-------------------------------|---------------|-------------|----------|
|Get-Module -ExpandProperty Name|00:00:00.003802|1x           |2629.92/s |
|foreach Get-Module             |00:00:00.004987|1.31x        |2005.13/s |
|ExecutionContextAndArrayList   |00:00:00.011162|2.94x        |895.89/s  |
|ExecutionContextAndHashtable   |00:00:00.014432|3.8x         |692.87/s  |
