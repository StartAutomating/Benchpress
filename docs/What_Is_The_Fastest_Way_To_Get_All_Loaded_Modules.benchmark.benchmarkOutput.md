---
layout: Benchmark

Data: 
  - Technique: Get-Module -ExpandProperty Name
    Time: 
      Ticks: 31223
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 3.61377314814815e-08
      TotalHours: 8.67305555555556e-07
      TotalMilliseconds: 3.1223
      TotalMinutes: 5.20383333333333e-05
      TotalSeconds: 0.0031223
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10
        FileName: What Is The Fastest Way To Get All Loaded Modules
        ScriptBlock: |
          
                  $moduleNames = Get-Module | Select-Object -ExpandProperty Name
                  $moduleNames
              
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 3202.7671908529
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
  - Technique: foreach Get-Module
    Time: 
      Ticks: 39532
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.57546296296296e-08
      TotalHours: 1.09811111111111e-06
      TotalMilliseconds: 3.9532
      TotalMinutes: 6.58866666666667e-05
      TotalSeconds: 0.0039532
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10
        FileName: What Is The Fastest Way To Get All Loaded Modules
        ScriptBlock: |
          
                  $moduleNames = foreach ($_ in Get-Module) {
                      $_.Name
                  }
                  $moduleNames
              
    RelativeSpeed: 1.26611792588797
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 2529.59627643428
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
  - Technique: ExecutionContextAndHashtable
    Time: 
      Ticks: 87793
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.01612268518519e-07
      TotalHours: 2.43869444444444e-06
      TotalMilliseconds: 8.7793
      TotalMinutes: 0.000146321666666667
      TotalSeconds: 0.0087793
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10
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
              
    RelativeSpeed: 2.81180539986548
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 1139.04297609149
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
  - Technique: ExecutionContextAndArrayList
    Time: 
      Ticks: 142531
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.64966435185185e-07
      TotalHours: 3.95919444444444e-06
      TotalMilliseconds: 14.2531
      TotalMinutes: 0.000237551666666667
      TotalSeconds: 0.0142531
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10
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
              
    RelativeSpeed: 4.56493610479454
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 701.601756810799
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
FileName: What Is The Fastest Way To Get All Loaded Modules
ClockSpeed: 2095
---
What Is The Fastest Way To Get All Loaded Modules
-------------------------------------------------
> @2095 Mhz


### 


|Technique                      |Time           |RelativeSpeed|Throughput|
|-------------------------------|---------------|-------------|----------|
|Get-Module -ExpandProperty Name|00:00:00.003122|1x           |3202.77/s |
|foreach Get-Module             |00:00:00.003953|1.27x        |2529.6/s  |
|ExecutionContextAndHashtable   |00:00:00.008779|2.81x        |1139.04/s |
|ExecutionContextAndArrayList   |00:00:00.014253|4.56x        |701.6/s   |
