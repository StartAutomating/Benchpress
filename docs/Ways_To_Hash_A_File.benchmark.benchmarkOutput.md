---
layout: Benchmark

Data: 
  - Technique: GetFileHash
    Time: 
      Ticks: 276533
      Days: 0
      Hours: 0
      Milliseconds: 27
      Minutes: 0
      Seconds: 0
      TotalDays: 3.20061342592593e-07
      TotalHours: 7.68147222222222e-06
      TotalMilliseconds: 27.6533
      TotalMinutes: 0.000460888333333333
      TotalSeconds: 0.0276533
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        FileName: Ways To Hash A File
        ScriptBlock: |
          
                  @(Get-FileHash "$myScript" -Algorithm SHA1).Hash
              
        RepeatCount: 100
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Ways To Hash A File
    Throughput: 3616.20493756622
    BenchmarkInput: 
      RepeatCount: 100
      FileName: Ways To Hash A File
  - Technique: DotNet
    Time: 
      Ticks: 394368
      Days: 0
      Hours: 0
      Milliseconds: 39
      Minutes: 0
      Seconds: 0
      TotalDays: 4.56444444444444e-07
      TotalHours: 1.09546666666667e-05
      TotalMilliseconds: 39.4368
      TotalMinutes: 0.00065728
      TotalSeconds: 0.0394368
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        FileName: Ways To Hash A File
        ScriptBlock: |
           
                  [BitConverter]::ToString([Security.Cryptography.SHA1]::Create().ComputeHash([IO.File]::ReadAllBytes("$myScript"))).Replace('-','').ToLower()
              
        RepeatCount: 100
    RelativeSpeed: 1.42611550881812
    ClockSpeed: 2594
    FileName: Ways To Hash A File
    Throughput: 2535.70269393054
    BenchmarkInput: 
      RepeatCount: 100
      FileName: Ways To Hash A File
FileName: Ways To Hash A File
ClockSpeed: 2594
---
Ways To Hash A File
-------------------
> @2594 Mhz


### 


|Technique  |Time           |RelativeSpeed|Throughput|
|-----------|---------------|-------------|----------|
|GetFileHash|00:00:00.027653|1x           |3616.2/s  |
|DotNet     |00:00:00.039436|1.43x        |2535.7/s  |
