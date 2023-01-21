---
layout: Benchmark

Data: 
  - Technique: Get-Module -ExpandProperty Name
    Time: 
      Ticks: 24008
      Days: 0
      Hours: 0
      Milliseconds: 2
      Minutes: 0
      Seconds: 0
      TotalDays: 2.7787037037037e-08
      TotalHours: 6.66888888888889e-07
      TotalMilliseconds: 2.4008
      TotalMinutes: 4.00133333333333e-05
      TotalSeconds: 0.0024008
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $moduleNames = Get-Module | Select-Object -ExpandProperty Name
                  $moduleNames
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Get All Loaded Modules
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 4165.27824058647
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
  - Technique: foreach Get-Module
    Time: 
      Ticks: 32822
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 3.79884259259259e-08
      TotalHours: 9.11722222222222e-07
      TotalMilliseconds: 3.2822
      TotalMinutes: 5.47033333333333e-05
      TotalSeconds: 0.0032822
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
    RelativeSpeed: 1.36712762412529
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 3046.73694473219
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
  - Technique: ExecutionContextAndHashtable
    Time: 
      Ticks: 72253
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.36261574074074e-08
      TotalHours: 2.00702777777778e-06
      TotalMilliseconds: 7.2253
      TotalMinutes: 0.000120421666666667
      TotalSeconds: 0.0072253
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
    RelativeSpeed: 3.00953848717094
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 1384.02557679266
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
  - Technique: ExecutionContextAndArrayList
    Time: 
      Ticks: 112355
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.30040509259259e-07
      TotalHours: 3.12097222222222e-06
      TotalMilliseconds: 11.2355
      TotalMinutes: 0.000187258333333333
      TotalSeconds: 0.0112355
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
    RelativeSpeed: 4.67989836721093
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 890.036046459882
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
FileName: What Is The Fastest Way To Get All Loaded Modules
ClockSpeed: 2793
---
What Is The Fastest Way To Get All Loaded Modules
-------------------------------------------------
> @2793 Mhz


### 


|Technique                      |Time           |RelativeSpeed|Throughput|
|-------------------------------|---------------|-------------|----------|
|Get-Module -ExpandProperty Name|00:00:00.002400|1x           |4165.28/s |
|foreach Get-Module             |00:00:00.003282|1.37x        |3046.74/s |
|ExecutionContextAndHashtable   |00:00:00.007225|3.01x        |1384.03/s |
|ExecutionContextAndArrayList   |00:00:00.011235|4.68x        |890.04/s  |
