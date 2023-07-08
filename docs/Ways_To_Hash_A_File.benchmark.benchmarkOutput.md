---
layout: Benchmark
title: Ways To Hash A File

Data: 
  - Technique: DotNet
    Time: 
      Ticks: 128246
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.4843287037037e-07
      TotalHours: 3.56238888888889e-06
      TotalMilliseconds: 12.8246
      TotalMinutes: 0.000213743333333333
      TotalSeconds: 0.0128246
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 100
        ScriptBlock: |
           
                  [BitConverter]::ToString([Security.Cryptography.SHA1]::Create().ComputeHash([IO.File]::ReadAllBytes("$myScript"))).Replace('-','').ToLower()
              
        FileName: Ways To Hash A File
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Ways To Hash A File
    RepeatCount: 100
    Throughput: 7797.51415248819
    BenchmarkInput: 
      RepeatCount: 100
      FileName: Ways To Hash A File
  - Technique: GetFileHash
    Time: 
      Ticks: 256997
      Days: 0
      Hours: 0
      Milliseconds: 25
      Minutes: 0
      Seconds: 0
      TotalDays: 2.97450231481481e-07
      TotalHours: 7.13880555555556e-06
      TotalMilliseconds: 25.6997
      TotalMinutes: 0.000428328333333333
      TotalSeconds: 0.0256997
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 100
        ScriptBlock: |
          
                  @(Get-FileHash "$myScript" -Algorithm SHA1).Hash
              
        FileName: Ways To Hash A File
    RelativeSpeed: 2.00393774464701
    ClockSpeed: 2793
    FileName: Ways To Hash A File
    RepeatCount: 100
    Throughput: 3891.09600501173
    BenchmarkInput: 
      RepeatCount: 100
      FileName: Ways To Hash A File
FileName: Ways To Hash A File
ClockSpeed: 2793
---


### 


|Technique  |Time           |RelativeSpeed|Throughput|
|-----------|---------------|-------------|----------|
|DotNet     |00:00:00.012824|1x           |7797.51/s |
|GetFileHash|00:00:00.025699|2x           |3891.1/s  |
