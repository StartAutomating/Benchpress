---
layout: Benchmark
title: Ways To Hash A File

Data: 
  - Technique: DotNet
    Time: 
      Ticks: 144963
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.6778125e-07
      TotalHours: 4.02675e-06
      TotalMilliseconds: 14.4963
      TotalMinutes: 0.000241605
      TotalSeconds: 0.0144963
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
           
                  [BitConverter]::ToString([Security.Cryptography.SHA1]::Create().ComputeHash([IO.File]::ReadAllBytes("$myScript"))).Replace('-','').ToLower()
              
        FileName: Ways To Hash A File
        RepeatCount: 100
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Ways To Hash A File
    RepeatCount: 100
    Throughput: 6898.31198305775
    BenchmarkInput: 
      FileName: Ways To Hash A File
      RepeatCount: 100
  - Technique: GetFileHash
    Time: 
      Ticks: 257776
      Days: 0
      Hours: 0
      Milliseconds: 25
      Minutes: 0
      Seconds: 0
      TotalDays: 2.98351851851852e-07
      TotalHours: 7.16044444444444e-06
      TotalMilliseconds: 25.7776
      TotalMinutes: 0.000429626666666667
      TotalSeconds: 0.0257776
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  @(Get-FileHash "$myScript" -Algorithm SHA1).Hash
              
        FileName: Ways To Hash A File
        RepeatCount: 100
    RelativeSpeed: 1.77821926974469
    ClockSpeed: 2594
    FileName: Ways To Hash A File
    RepeatCount: 100
    Throughput: 3879.33709887654
    BenchmarkInput: 
      FileName: Ways To Hash A File
      RepeatCount: 100
FileName: Ways To Hash A File
ClockSpeed: 2594
---


### 


|Technique  |Time           |RelativeSpeed|Throughput|
|-----------|---------------|-------------|----------|
|DotNet     |00:00:00.014496|1x           |6898.31/s |
|GetFileHash|00:00:00.025777|1.78x        |3879.34/s |
