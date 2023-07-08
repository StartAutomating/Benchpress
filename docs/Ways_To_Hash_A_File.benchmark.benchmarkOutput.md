---
layout: Benchmark
title: Ways To Hash A File

Data: 
  - Technique: DotNet
    Time: 
      Ticks: 146028
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.69013888888889e-07
      TotalHours: 4.05633333333333e-06
      TotalMilliseconds: 14.6028
      TotalMinutes: 0.00024338
      TotalSeconds: 0.0146028
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        FileName: Ways To Hash A File
        ScriptBlock: |
           
                  [BitConverter]::ToString([Security.Cryptography.SHA1]::Create().ComputeHash([IO.File]::ReadAllBytes("$myScript"))).Replace('-','').ToLower()
              
        RepeatCount: 100
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Ways To Hash A File
    RepeatCount: 100
    Throughput: 6848.00175308845
    BenchmarkInput: 
      FileName: Ways To Hash A File
      RepeatCount: 100
  - Technique: GetFileHash
    Time: 
      Ticks: 516227
      Days: 0
      Hours: 0
      Milliseconds: 51
      Minutes: 0
      Seconds: 0
      TotalDays: 5.97484953703704e-07
      TotalHours: 1.43396388888889e-05
      TotalMilliseconds: 51.6227
      TotalMinutes: 0.000860378333333333
      TotalSeconds: 0.0516227
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        FileName: Ways To Hash A File
        ScriptBlock: |
          
                  @(Get-FileHash "$myScript" -Algorithm SHA1).Hash
              
        RepeatCount: 100
    RelativeSpeed: 3.53512340099159
    ClockSpeed: 2594
    FileName: Ways To Hash A File
    RepeatCount: 100
    Throughput: 1937.13230807377
    BenchmarkInput: 
      FileName: Ways To Hash A File
      RepeatCount: 100
FileName: Ways To Hash A File
ClockSpeed: 2594
---




|Technique  |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------|-----------|---------------|-------------|----------|
|DotNet     |100        |00:00:00.014602|1x           |6848/s    |
|GetFileHash|100        |00:00:00.051622|3.54x        |1937.13/s |
