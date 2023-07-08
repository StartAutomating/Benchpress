---
layout: Benchmark
title: Ways To Hash A File

Data: 
  - Technique: DotNet
    Time: 
      Ticks: 210127
      Days: 0
      Hours: 0
      Milliseconds: 21
      Minutes: 0
      Seconds: 0
      TotalDays: 2.43202546296296e-07
      TotalHours: 5.83686111111111e-06
      TotalMilliseconds: 21.0127
      TotalMinutes: 0.000350211666666667
      TotalSeconds: 0.0210127
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
           
                  [BitConverter]::ToString([Security.Cryptography.SHA1]::Create().ComputeHash([IO.File]::ReadAllBytes("$myScript"))).Replace('-','').ToLower()
              
        RepeatCount: 100
        FileName: Ways To Hash A File
    RelativeSpeed: 1
    ClockSpeed: 2397
    FileName: Ways To Hash A File
    Throughput: 4759.02668386262
    BenchmarkInput: 
      FileName: Ways To Hash A File
      RepeatCount: 100
  - Technique: GetFileHash
    Time: 
      Ticks: 623286
      Days: 0
      Hours: 0
      Milliseconds: 62
      Minutes: 0
      Seconds: 0
      TotalDays: 7.21395833333333e-07
      TotalHours: 1.73135e-05
      TotalMilliseconds: 62.3286
      TotalMinutes: 0.00103881
      TotalSeconds: 0.0623286
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  @(Get-FileHash "$myScript" -Algorithm SHA1).Hash
              
        RepeatCount: 100
        FileName: Ways To Hash A File
    RelativeSpeed: 2.966234705678
    ClockSpeed: 2397
    FileName: Ways To Hash A File
    Throughput: 1604.39990630305
    BenchmarkInput: 
      FileName: Ways To Hash A File
      RepeatCount: 100
FileName: Ways To Hash A File
ClockSpeed: 2397
---


### 


|Technique  |Time           |RelativeSpeed|Throughput|
|-----------|---------------|-------------|----------|
|DotNet     |00:00:00.021012|1x           |4759.03/s |
|GetFileHash|00:00:00.062328|2.97x        |1604.4/s  |
