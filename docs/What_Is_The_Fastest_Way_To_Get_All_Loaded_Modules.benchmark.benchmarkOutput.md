---
layout: Benchmark

Data: 
  - Technique: Get-Module -ExpandProperty Name
    Time: 
      Ticks: 24622
      Days: 0
      Hours: 0
      Milliseconds: 2
      Minutes: 0
      Seconds: 0
      TotalDays: 2.84976851851852e-08
      TotalHours: 6.83944444444444e-07
      TotalMilliseconds: 2.4622
      TotalMinutes: 4.10366666666667e-05
      TotalSeconds: 0.0024622
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
    Throughput: 4061.40849646657
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
  - Technique: ExecutionContextAndArrayList
    Time: 
      Ticks: 76118
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.8099537037037e-08
      TotalHours: 2.11438888888889e-06
      TotalMilliseconds: 7.6118
      TotalMinutes: 0.000126863333333333
      TotalSeconds: 0.0076118
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
    RelativeSpeed: 3.09146291934043
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 1313.74970440632
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
  - Technique: ExecutionContextAndHashtable
    Time: 
      Ticks: 110003
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.27318287037037e-07
      TotalHours: 3.05563888888889e-06
      TotalMilliseconds: 11.0003
      TotalMinutes: 0.000183338333333333
      TotalSeconds: 0.0110003
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
    RelativeSpeed: 4.46767118836813
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 909.066116378644
    BenchmarkInput: 
      RepeatCount: 10
      FileName: What Is The Fastest Way To Get All Loaded Modules
  - Technique: foreach Get-Module
    Time: 
      Ticks: 146820
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.69930555555556e-07
      TotalHours: 4.07833333333333e-06
      TotalMilliseconds: 14.682
      TotalMinutes: 0.0002447
      TotalSeconds: 0.014682
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
    RelativeSpeed: 5.96295995451222
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 681.106116332925
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
|Get-Module -ExpandProperty Name|00:00:00.002462|1x           |4061.41/s |
|ExecutionContextAndArrayList   |00:00:00.007611|3.09x        |1313.75/s |
|ExecutionContextAndHashtable   |00:00:00.011000|4.47x        |909.07/s  |
|foreach Get-Module             |00:00:00.014682|5.96x        |681.11/s  |
