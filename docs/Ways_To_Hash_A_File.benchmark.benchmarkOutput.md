---
layout: Benchmark
title: Ways To Hash A File

Data: 
  - Technique: DotNet
    Time: 
      Ticks: 222197
      Days: 0
      Hours: 0
      Milliseconds: 22
      Minutes: 0
      Seconds: 0
      TotalDays: 2.57172453703704e-07
      TotalHours: 6.17213888888889e-06
      TotalMilliseconds: 22.2197
      TotalMinutes: 0.000370328333333333
      TotalSeconds: 0.0222197
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
    Throughput: 4500.51080797671
    BenchmarkInput: 
      FileName: Ways To Hash A File
      RepeatCount: 100
  - Technique: GetFileHash
    Time: 
      Ticks: 376704
      Days: 0
      Hours: 0
      Milliseconds: 37
      Minutes: 0
      Seconds: 0
      TotalDays: 4.36e-07
      TotalHours: 1.0464e-05
      TotalMilliseconds: 37.6704
      TotalMinutes: 0.00062784
      TotalSeconds: 0.0376704
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  @(Get-FileHash "$myScript" -Algorithm SHA1).Hash
              
        RepeatCount: 100
        FileName: Ways To Hash A File
    RelativeSpeed: 1.69536042340806
    ClockSpeed: 2295
    FileName: Ways To Hash A File
    RepeatCount: 100
    Throughput: 2654.60414542983
    BenchmarkInput: 
      FileName: Ways To Hash A File
      RepeatCount: 100
FileName: Ways To Hash A File
ClockSpeed: 2295
---




|Technique  |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------|-----------|---------------|-------------|----------|
|DotNet     |100        |00:00:00.022219|1x           |4500.51/s |
|GetFileHash|100        |00:00:00.037670|1.7x         |2654.6/s  |
