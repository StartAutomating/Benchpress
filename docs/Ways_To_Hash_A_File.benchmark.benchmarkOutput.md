---
layout: Benchmark
title: Ways To Hash A File

Data: 
  - Technique: DotNet
    Time: 
      Ticks: 187949
      Days: 0
      Hours: 0
      Milliseconds: 18
      Minutes: 0
      Seconds: 0
      TotalDays: 2.17533564814815e-07
      TotalHours: 5.22080555555556e-06
      TotalMilliseconds: 18.7949
      TotalMinutes: 0.000313248333333333
      TotalSeconds: 0.0187949
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
           
                  [BitConverter]::ToString([Security.Cryptography.SHA1]::Create().ComputeHash([IO.File]::ReadAllBytes("$myScript"))).Replace('-','').ToLower()
              
        RepeatCount: 100
        FileName: Ways To Hash A File
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: Ways To Hash A File
    RepeatCount: 100
    Throughput: 5320.59228833354
    BenchmarkInput: 
      FileName: Ways To Hash A File
      RepeatCount: 100
  - Technique: GetFileHash
    Time: 
      Ticks: 362361
      Days: 0
      Hours: 0
      Milliseconds: 36
      Minutes: 0
      Seconds: 0
      TotalDays: 4.19399305555556e-07
      TotalHours: 1.00655833333333e-05
      TotalMilliseconds: 36.2361
      TotalMinutes: 0.000603935
      TotalSeconds: 0.0362361
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  @(Get-FileHash "$myScript" -Algorithm SHA1).Hash
              
        RepeatCount: 100
        FileName: Ways To Hash A File
    RelativeSpeed: 1.92797514219283
    ClockSpeed: 2295
    FileName: Ways To Hash A File
    RepeatCount: 100
    Throughput: 2759.67888376509
    BenchmarkInput: 
      FileName: Ways To Hash A File
      RepeatCount: 100
FileName: Ways To Hash A File
ClockSpeed: 2295
---




|Technique  |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------|-----------|---------------|-------------|----------|
|DotNet     |100        |00:00:00.018794|1x           |5320.59/s |
|GetFileHash|100        |00:00:00.036236|1.93x        |2759.68/s |
