---
layout: Benchmark
title: Ways To Hash A File

Data: 
  - Technique: DotNet
    Time: 
      Ticks: 134600
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.55787037037037e-07
      TotalHours: 3.73888888888889e-06
      TotalMilliseconds: 13.46
      TotalMinutes: 0.000224333333333333
      TotalSeconds: 0.01346
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
    Throughput: 7429.42050520059
    BenchmarkInput: 
      RepeatCount: 100
      FileName: Ways To Hash A File
  - Technique: GetFileHash
    Time: 
      Ticks: 286664
      Days: 0
      Hours: 0
      Milliseconds: 28
      Minutes: 0
      Seconds: 0
      TotalDays: 3.31787037037037e-07
      TotalHours: 7.96288888888889e-06
      TotalMilliseconds: 28.6664
      TotalMinutes: 0.000477773333333333
      TotalSeconds: 0.0286664
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        FileName: Ways To Hash A File
        ScriptBlock: |
          
                  @(Get-FileHash "$myScript" -Algorithm SHA1).Hash
              
        RepeatCount: 100
    RelativeSpeed: 2.12974739970282
    ClockSpeed: 2095
    FileName: Ways To Hash A File
    RepeatCount: 100
    Throughput: 3488.40454329808
    BenchmarkInput: 
      RepeatCount: 100
      FileName: Ways To Hash A File
FileName: Ways To Hash A File
ClockSpeed: 2095
---




|Technique  |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------|-----------|---------------|-------------|----------|
|DotNet     |100        |00:00:00.013460|1x           |7429.42/s |
|GetFileHash|100        |00:00:00.028666|2.13x        |3488.4/s  |
