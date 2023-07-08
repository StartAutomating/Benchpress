---
layout: Benchmark
title: Ways To Hash A File

Data: 
  - Technique: DotNet
    Time: 
      Ticks: 144174
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.66868055555556e-07
      TotalHours: 4.00483333333333e-06
      TotalMilliseconds: 14.4174
      TotalMinutes: 0.00024029
      TotalSeconds: 0.0144174
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 100
        FileName: Ways To Hash A File
        ScriptBlock: |
           
                  [BitConverter]::ToString([Security.Cryptography.SHA1]::Create().ComputeHash([IO.File]::ReadAllBytes("$myScript"))).Replace('-','').ToLower()
              
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Ways To Hash A File
    Throughput: 6936.06336787493
    BenchmarkInput: 
      RepeatCount: 100
      FileName: Ways To Hash A File
  - Technique: GetFileHash
    Time: 
      Ticks: 246702
      Days: 0
      Hours: 0
      Milliseconds: 24
      Minutes: 0
      Seconds: 0
      TotalDays: 2.85534722222222e-07
      TotalHours: 6.85283333333333e-06
      TotalMilliseconds: 24.6702
      TotalMinutes: 0.00041117
      TotalSeconds: 0.0246702
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 100
        FileName: Ways To Hash A File
        ScriptBlock: |
          
                  @(Get-FileHash "$myScript" -Algorithm SHA1).Hash
              
    RelativeSpeed: 1.71114070498148
    ClockSpeed: 2793
    FileName: Ways To Hash A File
    Throughput: 4053.47342137478
    BenchmarkInput: 
      RepeatCount: 100
      FileName: Ways To Hash A File
FileName: Ways To Hash A File
ClockSpeed: 2793
---


### 


|Technique  |Time           |RelativeSpeed|Throughput|
|-----------|---------------|-------------|----------|
|DotNet     |00:00:00.014417|1x           |6936.06/s |
|GetFileHash|00:00:00.024670|1.71x        |4053.47/s |
