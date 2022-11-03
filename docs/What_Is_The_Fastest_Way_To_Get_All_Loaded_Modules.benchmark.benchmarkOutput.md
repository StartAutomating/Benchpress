---
layout: Benchmark

Data: 
  - Technique: foreach Get-Module
    Time: 
      Ticks: 38816
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.49259259259259e-08
      TotalHours: 1.07822222222222e-06
      TotalMilliseconds: 3.8816
      TotalMinutes: 6.46933333333333e-05
      TotalSeconds: 0.0038816
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
    Throughput: 2576.2572135202
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
  - Technique: Get-Module -ExpandProperty Name
    Time: 
      Ticks: 59832
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.925e-08
      TotalHours: 1.662e-06
      TotalMilliseconds: 5.9832
      TotalMinutes: 9.972e-05
      TotalSeconds: 0.0059832
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $moduleNames = Get-Module | Select-Object -ExpandProperty Name
                  $moduleNames
              
        RepeatCount: 10
        FileName: What Is The Fastest Way To Get All Loaded Modules
    RelativeSpeed: 1.5414262159934
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 1671.3464366894
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
  - Technique: ExecutionContextAndArrayList
    Time: 
      Ticks: 153762
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.77965277777778e-07
      TotalHours: 4.27116666666667e-06
      TotalMilliseconds: 15.3762
      TotalMinutes: 0.00025627
      TotalSeconds: 0.0153762
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
    RelativeSpeed: 3.96130461665293
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 650.355744592292
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Get All Loaded Modules
      RepeatCount: 10
  - Technique: ExecutionContextAndHashtable
    Time: 
      Ticks: 273509
      Days: 0
      Hours: 0
      Milliseconds: 27
      Minutes: 0
      Seconds: 0
      TotalDays: 3.16561342592593e-07
      TotalHours: 7.59747222222222e-06
      TotalMilliseconds: 27.3509
      TotalMinutes: 0.000455848333333333
      TotalSeconds: 0.0273509
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
    RelativeSpeed: 7.04629534212696
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 365.618681652158
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
|foreach Get-Module             |00:00:00.003881|1x           |2576.26/s |
|Get-Module -ExpandProperty Name|00:00:00.005983|1.54x        |1671.35/s |
|ExecutionContextAndArrayList   |00:00:00.015376|3.96x        |650.36/s  |
|ExecutionContextAndHashtable   |00:00:00.027350|7.05x        |365.62/s  |
