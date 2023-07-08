---
layout: Benchmark
title: Ways To Hash A File

Data: 
  - Technique: DotNet
    Time: 
      Ticks: 277584
      Days: 0
      Hours: 0
      Milliseconds: 27
      Minutes: 0
      Seconds: 0
      TotalDays: 3.21277777777778e-07
      TotalHours: 7.71066666666667e-06
      TotalMilliseconds: 27.7584
      TotalMinutes: 0.00046264
      TotalSeconds: 0.0277584
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
    Throughput: 3602.51311314773
    BenchmarkInput: 
      FileName: Ways To Hash A File
      RepeatCount: 100
  - Technique: GetFileHash
    Time: 
      Ticks: 379498
      Days: 0
      Hours: 0
      Milliseconds: 37
      Minutes: 0
      Seconds: 0
      TotalDays: 4.39233796296296e-07
      TotalHours: 1.05416111111111e-05
      TotalMilliseconds: 37.9498
      TotalMinutes: 0.000632496666666667
      TotalSeconds: 0.0379498
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  @(Get-FileHash "$myScript" -Algorithm SHA1).Hash
              
        RepeatCount: 100
        FileName: Ways To Hash A File
    RelativeSpeed: 1.36714652141334
    ClockSpeed: 2295
    FileName: Ways To Hash A File
    Throughput: 2635.06000031621
    BenchmarkInput: 
      FileName: Ways To Hash A File
      RepeatCount: 100
FileName: Ways To Hash A File
ClockSpeed: 2295
---
Ways To Hash A File
-------------------
> @2295 Mhz


### 


|Technique  |Time           |RelativeSpeed|Throughput|
|-----------|---------------|-------------|----------|
|DotNet     |00:00:00.027758|1x           |3602.51/s |
|GetFileHash|00:00:00.037949|1.37x        |2635.06/s |
