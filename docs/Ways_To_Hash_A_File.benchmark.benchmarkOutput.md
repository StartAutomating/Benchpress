---
layout: Benchmark
title: Ways To Hash A File

Data: 
  - Technique: DotNet
    Time: 
      Ticks: 131732
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.52467592592593e-07
      TotalHours: 3.65922222222222e-06
      TotalMilliseconds: 13.1732
      TotalMinutes: 0.000219553333333333
      TotalSeconds: 0.0131732
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 100
        FileName: Ways To Hash A File
        ScriptBlock: |
           
                  [BitConverter]::ToString([Security.Cryptography.SHA1]::Create().ComputeHash([IO.File]::ReadAllBytes("$myScript"))).Replace('-','').ToLower()
              
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Ways To Hash A File
    RepeatCount: 100
    Throughput: 7591.16995111287
    BenchmarkInput: 
      FileName: Ways To Hash A File
      RepeatCount: 100
  - Technique: GetFileHash
    Time: 
      Ticks: 280438
      Days: 0
      Hours: 0
      Milliseconds: 28
      Minutes: 0
      Seconds: 0
      TotalDays: 3.24581018518519e-07
      TotalHours: 7.78994444444444e-06
      TotalMilliseconds: 28.0438
      TotalMinutes: 0.000467396666666667
      TotalSeconds: 0.0280438
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 100
        FileName: Ways To Hash A File
        ScriptBlock: |
          
                  @(Get-FileHash "$myScript" -Algorithm SHA1).Hash
              
    RelativeSpeed: 2.12885251875019
    ClockSpeed: 2594
    FileName: Ways To Hash A File
    RepeatCount: 100
    Throughput: 3565.85056233463
    BenchmarkInput: 
      FileName: Ways To Hash A File
      RepeatCount: 100
FileName: Ways To Hash A File
ClockSpeed: 2594
---




|Technique  |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------|-----------|---------------|-------------|----------|
|DotNet     |100        |00:00:00.013173|1x           |7591.17/s |
|GetFileHash|100        |00:00:00.028043|2.13x        |3565.85/s |
