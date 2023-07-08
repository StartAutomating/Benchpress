---
layout: Benchmark
title: Ways To Hash A File

Data: 
  - Technique: DotNet
    Time: 
      Ticks: 125645
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.45422453703704e-07
      TotalHours: 3.49013888888889e-06
      TotalMilliseconds: 12.5645
      TotalMinutes: 0.000209408333333333
      TotalSeconds: 0.0125645
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        FileName: Ways To Hash A File
        ScriptBlock: |
           
                  [BitConverter]::ToString([Security.Cryptography.SHA1]::Create().ComputeHash([IO.File]::ReadAllBytes("$myScript"))).Replace('-','').ToLower()
              
        RepeatCount: 100
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Ways To Hash A File
    RepeatCount: 100
    Throughput: 7958.9319113375
    BenchmarkInput: 
      FileName: Ways To Hash A File
      RepeatCount: 100
  - Technique: GetFileHash
    Time: 
      Ticks: 526838
      Days: 0
      Hours: 0
      Milliseconds: 52
      Minutes: 0
      Seconds: 0
      TotalDays: 6.09766203703704e-07
      TotalHours: 1.46343888888889e-05
      TotalMilliseconds: 52.6838
      TotalMinutes: 0.000878063333333333
      TotalSeconds: 0.0526838
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        FileName: Ways To Hash A File
        ScriptBlock: |
          
                  @(Get-FileHash "$myScript" -Algorithm SHA1).Hash
              
        RepeatCount: 100
    RelativeSpeed: 4.19306777030523
    ClockSpeed: 2095
    FileName: Ways To Hash A File
    RepeatCount: 100
    Throughput: 1898.11668862155
    BenchmarkInput: 
      FileName: Ways To Hash A File
      RepeatCount: 100
FileName: Ways To Hash A File
ClockSpeed: 2095
---




|Technique  |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------|-----------|---------------|-------------|----------|
|DotNet     |100        |00:00:00.012564|1x           |7958.93/s |
|GetFileHash|100        |00:00:00.052683|4.19x        |1898.12/s |
