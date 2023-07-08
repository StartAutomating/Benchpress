---
layout: Benchmark
title: Ways To Hash A File

Data: 
  - Technique: DotNet
    Time: 
      Ticks: 136696
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.58212962962963e-07
      TotalHours: 3.79711111111111e-06
      TotalMilliseconds: 13.6696
      TotalMinutes: 0.000227826666666667
      TotalSeconds: 0.0136696
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        FileName: Ways To Hash A File
        ScriptBlock: |
           
                  [BitConverter]::ToString([Security.Cryptography.SHA1]::Create().ComputeHash([IO.File]::ReadAllBytes("$myScript"))).Replace('-','').ToLower()
              
        RepeatCount: 100
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Ways To Hash A File
    Throughput: 7315.50301398724
    BenchmarkInput: 
      RepeatCount: 100
      FileName: Ways To Hash A File
  - Technique: GetFileHash
    Time: 
      Ticks: 280453
      Days: 0
      Hours: 0
      Milliseconds: 28
      Minutes: 0
      Seconds: 0
      TotalDays: 3.2459837962963e-07
      TotalHours: 7.79036111111111e-06
      TotalMilliseconds: 28.0453
      TotalMinutes: 0.000467421666666667
      TotalSeconds: 0.0280453
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        FileName: Ways To Hash A File
        ScriptBlock: |
          
                  @(Get-FileHash "$myScript" -Algorithm SHA1).Hash
              
        RepeatCount: 100
    RelativeSpeed: 2.05165476678176
    ClockSpeed: 2594
    FileName: Ways To Hash A File
    Throughput: 3565.65984318228
    BenchmarkInput: 
      RepeatCount: 100
      FileName: Ways To Hash A File
FileName: Ways To Hash A File
ClockSpeed: 2594
---


### 


|Technique  |Time           |RelativeSpeed|Throughput|
|-----------|---------------|-------------|----------|
|DotNet     |00:00:00.013669|1x           |7315.5/s  |
|GetFileHash|00:00:00.028045|2.05x        |3565.66/s |
