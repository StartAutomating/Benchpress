---
layout: Benchmark
title: Ways To Hash A File

Data: 
  - Technique: DotNet
    Time: 
      Ticks: 168787
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.95355324074074e-07
      TotalHours: 4.68852777777778e-06
      TotalMilliseconds: 16.8787
      TotalMinutes: 0.000281311666666667
      TotalSeconds: 0.0168787
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 100
        ScriptBlock: |
           
                  [BitConverter]::ToString([Security.Cryptography.SHA1]::Create().ComputeHash([IO.File]::ReadAllBytes("$myScript"))).Replace('-','').ToLower()
              
        FileName: Ways To Hash A File
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Ways To Hash A File
    RepeatCount: 100
    Throughput: 5924.62689662119
    BenchmarkInput: 
      FileName: Ways To Hash A File
      RepeatCount: 100
  - Technique: GetFileHash
    Time: 
      Ticks: 604318
      Days: 0
      Hours: 0
      Milliseconds: 60
      Minutes: 0
      Seconds: 0
      TotalDays: 6.9944212962963e-07
      TotalHours: 1.67866111111111e-05
      TotalMilliseconds: 60.4318
      TotalMinutes: 0.00100719666666667
      TotalSeconds: 0.0604318
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 100
        ScriptBlock: |
          
                  @(Get-FileHash "$myScript" -Algorithm SHA1).Hash
              
        FileName: Ways To Hash A File
    RelativeSpeed: 3.58035867691232
    ClockSpeed: 2095
    FileName: Ways To Hash A File
    RepeatCount: 100
    Throughput: 1654.75792546308
    BenchmarkInput: 
      FileName: Ways To Hash A File
      RepeatCount: 100
FileName: Ways To Hash A File
ClockSpeed: 2095
---




|Technique  |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------|-----------|---------------|-------------|----------|
|DotNet     |100        |00:00:00.016878|1x           |5924.63/s |
|GetFileHash|100        |00:00:00.060431|3.58x        |1654.76/s |
