---
layout: Benchmark
title: Ways To Hash A File

Data: 
  - Technique: DotNet
    Time: 
      Ticks: 204935
      Days: 0
      Hours: 0
      Milliseconds: 20
      Minutes: 0
      Seconds: 0
      TotalDays: 2.37193287037037e-07
      TotalHours: 5.69263888888889e-06
      TotalMilliseconds: 20.4935
      TotalMinutes: 0.000341558333333333
      TotalSeconds: 0.0204935
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        FileName: Ways To Hash A File
        ScriptBlock: |
           
                  [BitConverter]::ToString([Security.Cryptography.SHA1]::Create().ComputeHash([IO.File]::ReadAllBytes("$myScript"))).Replace('-','').ToLower()
              
        RepeatCount: 100
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: Ways To Hash A File
    RepeatCount: 100
    Throughput: 4879.59596945373
    BenchmarkInput: 
      FileName: Ways To Hash A File
      RepeatCount: 100
  - Technique: GetFileHash
    Time: 
      Ticks: 390320
      Days: 0
      Hours: 0
      Milliseconds: 39
      Minutes: 0
      Seconds: 0
      TotalDays: 4.51759259259259e-07
      TotalHours: 1.08422222222222e-05
      TotalMilliseconds: 39.032
      TotalMinutes: 0.000650533333333333
      TotalSeconds: 0.039032
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        FileName: Ways To Hash A File
        ScriptBlock: |
          
                  @(Get-FileHash "$myScript" -Algorithm SHA1).Hash
              
        RepeatCount: 100
    RelativeSpeed: 1.90460389879718
    ClockSpeed: 2295
    FileName: Ways To Hash A File
    RepeatCount: 100
    Throughput: 2562.00040992007
    BenchmarkInput: 
      FileName: Ways To Hash A File
      RepeatCount: 100
FileName: Ways To Hash A File
ClockSpeed: 2295
---




|Technique  |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------|-----------|---------------|-------------|----------|
|DotNet     |100        |00:00:00.020493|1x           |4879.6/s  |
|GetFileHash|100        |00:00:00.039032|1.9x         |2562/s    |
