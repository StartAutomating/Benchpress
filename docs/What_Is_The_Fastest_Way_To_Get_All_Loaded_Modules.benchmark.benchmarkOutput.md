---
layout: Benchmark

Data: 
  - Technique: foreach Get-Module
    Time: 
      Ticks: 35195
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.07349537037037e-08
      TotalHours: 9.77638888888889e-07
      TotalMilliseconds: 3.5195
      TotalMinutes: 5.86583333333333e-05
      TotalSeconds: 0.0035195
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $moduleNames = foreach ($_ in Get-Module) {
                      $_.Name
                  }
                  $moduleNames
              
        FileName: What Is The Fastest Way To Get All Loaded Modules
        RepeatCount: 10
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 2841.31268646114
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
  - Technique: Get-Module -ExpandProperty Name
    Time: 
      Ticks: 48240
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.58333333333333e-08
      TotalHours: 1.34e-06
      TotalMilliseconds: 4.824
      TotalMinutes: 8.04e-05
      TotalSeconds: 0.004824
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $moduleNames = Get-Module | Select-Object -ExpandProperty Name
                  $moduleNames
              
        FileName: What Is The Fastest Way To Get All Loaded Modules
        RepeatCount: 10
    RelativeSpeed: 1.37064923994886
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 2072.96849087894
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
  - Technique: ExecutionContextAndHashtable
    Time: 
      Ticks: 90175
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.04369212962963e-07
      TotalHours: 2.50486111111111e-06
      TotalMilliseconds: 9.0175
      TotalMinutes: 0.000150291666666667
      TotalSeconds: 0.0090175
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
              
        FileName: What Is The Fastest Way To Get All Loaded Modules
        RepeatCount: 10
    RelativeSpeed: 2.56215371501634
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 1108.95481009149
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
  - Technique: ExecutionContextAndArrayList
    Time: 
      Ticks: 149877
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.7346875e-07
      TotalHours: 4.16325e-06
      TotalMilliseconds: 14.9877
      TotalMinutes: 0.000249795
      TotalSeconds: 0.0149877
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
              
        FileName: What Is The Fastest Way To Get All Loaded Modules
        RepeatCount: 10
    RelativeSpeed: 4.25847421508737
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 667.21378196788
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
FileName: What Is The Fastest Way To Get All Loaded Modules
ClockSpeed: 2295
---
What Is The Fastest Way To Get All Loaded Modules
-------------------------------------------------
> @2295 Mhz


### 


|Technique                      |Time           |RelativeSpeed|Throughput|
|-------------------------------|---------------|-------------|----------|
|foreach Get-Module             |00:00:00.003519|1x           |2841.31/s |
|Get-Module -ExpandProperty Name|00:00:00.004824|1.37x        |2072.97/s |
|ExecutionContextAndHashtable   |00:00:00.009017|2.56x        |1108.95/s |
|ExecutionContextAndArrayList   |00:00:00.014987|4.26x        |667.21/s  |
