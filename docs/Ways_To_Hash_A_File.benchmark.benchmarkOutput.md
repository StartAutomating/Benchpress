---
layout: Benchmark
title: Ways To Hash A File

Data: 
  - Technique: GetFileHash
    Time: 
      Ticks: 314016
      Days: 0
      Hours: 0
      Milliseconds: 31
      Minutes: 0
      Seconds: 0
      TotalDays: 3.63444444444444e-07
      TotalHours: 8.72266666666667e-06
      TotalMilliseconds: 31.4016
      TotalMinutes: 0.00052336
      TotalSeconds: 0.0314016
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 100
        FileName: Ways To Hash A File
        ScriptBlock: |
          
                  @(Get-FileHash "$myScript" -Algorithm SHA1).Hash
              
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Ways To Hash A File
    RepeatCount: 100
    Throughput: 3184.55110567614
    BenchmarkInput: 
      RepeatCount: 100
      FileName: Ways To Hash A File
  - Technique: DotNet
    Time: 
      Ticks: 415135
      Days: 0
      Hours: 0
      Milliseconds: 41
      Minutes: 0
      Seconds: 0
      TotalDays: 4.80480324074074e-07
      TotalHours: 1.15315277777778e-05
      TotalMilliseconds: 41.5135
      TotalMinutes: 0.000691891666666667
      TotalSeconds: 0.0415135
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 100
        FileName: Ways To Hash A File
        ScriptBlock: |
           
                  [BitConverter]::ToString([Security.Cryptography.SHA1]::Create().ComputeHash([IO.File]::ReadAllBytes("$myScript"))).Replace('-','').ToLower()
              
    RelativeSpeed: 1.32201862325487
    ClockSpeed: 2095
    FileName: Ways To Hash A File
    RepeatCount: 100
    Throughput: 2408.85495079914
    BenchmarkInput: 
      RepeatCount: 100
      FileName: Ways To Hash A File
FileName: Ways To Hash A File
ClockSpeed: 2095
---




|Technique  |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------|-----------|---------------|-------------|----------|
|GetFileHash|100        |00:00:00.031401|1x           |3184.55/s |
|DotNet     |100        |00:00:00.041513|1.32x        |2408.85/s |
