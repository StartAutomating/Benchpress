---
layout: Benchmark

Data: 
  - Technique: foreach Get-Module
    Time: 
      Ticks: 34300
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 3.96990740740741e-08
      TotalHours: 9.52777777777778e-07
      TotalMilliseconds: 3.43
      TotalMinutes: 5.71666666666667e-05
      TotalSeconds: 0.00343
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
    ClockSpeed: 2394
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 2915.45189504373
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
  - Technique: Get-Module -ExpandProperty Name
    Time: 
      Ticks: 46272
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.35555555555556e-08
      TotalHours: 1.28533333333333e-06
      TotalMilliseconds: 4.6272
      TotalMinutes: 7.712e-05
      TotalSeconds: 0.0046272
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $moduleNames = Get-Module | Select-Object -ExpandProperty Name
                  $moduleNames
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Get All Loaded Modules
    RelativeSpeed: 1.34903790087464
    ClockSpeed: 2394
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 2161.13416320885
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
  - Technique: ExecutionContextAndArrayList
    Time: 
      Ticks: 95711
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.1077662037037e-07
      TotalHours: 2.65863888888889e-06
      TotalMilliseconds: 9.5711
      TotalMinutes: 0.000159518333333333
      TotalSeconds: 0.0095711
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
    RelativeSpeed: 2.79040816326531
    ClockSpeed: 2394
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 1044.8119860831
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
  - Technique: ExecutionContextAndHashtable
    Time: 
      Ticks: 133737
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.54788194444444e-07
      TotalHours: 3.71491666666667e-06
      TotalMilliseconds: 13.3737
      TotalMinutes: 0.000222895
      TotalSeconds: 0.0133737
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
    RelativeSpeed: 3.89903790087464
    ClockSpeed: 2394
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 747.73622856801
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
FileName: What Is The Fastest Way To Get All Loaded Modules
ClockSpeed: 2394
---
What Is The Fastest Way To Get All Loaded Modules
-------------------------------------------------
> @2394 Mhz


### 


|Technique                      |Time           |RelativeSpeed|Throughput|
|-------------------------------|---------------|-------------|----------|
|foreach Get-Module             |00:00:00.003430|1x           |2915.45/s |
|Get-Module -ExpandProperty Name|00:00:00.004627|1.35x        |2161.13/s |
|ExecutionContextAndArrayList   |00:00:00.009571|2.79x        |1044.81/s |
|ExecutionContextAndHashtable   |00:00:00.013373|3.9x         |747.74/s  |
