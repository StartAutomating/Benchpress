---
layout: Benchmark
title: Ways To Hash A File

Data: 
  - Technique: DotNet
    Time: 
      Ticks: 147873
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.71149305555556e-07
      TotalHours: 4.10758333333333e-06
      TotalMilliseconds: 14.7873
      TotalMinutes: 0.000246455
      TotalSeconds: 0.0147873
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        FileName: Ways To Hash A File
        RepeatCount: 100
        ScriptBlock: |
           
                  [BitConverter]::ToString([Security.Cryptography.SHA1]::Create().ComputeHash([IO.File]::ReadAllBytes("$myScript"))).Replace('-','').ToLower()
              
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Ways To Hash A File
    RepeatCount: 100
    Throughput: 6762.55976412192
    BenchmarkInput: 
      RepeatCount: 100
      FileName: Ways To Hash A File
  - Technique: GetFileHash
    Time: 
      Ticks: 262505
      Days: 0
      Hours: 0
      Milliseconds: 26
      Minutes: 0
      Seconds: 0
      TotalDays: 3.03825231481481e-07
      TotalHours: 7.29180555555556e-06
      TotalMilliseconds: 26.2505
      TotalMinutes: 0.000437508333333333
      TotalSeconds: 0.0262505
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        FileName: Ways To Hash A File
        RepeatCount: 100
        ScriptBlock: |
          
                  @(Get-FileHash "$myScript" -Algorithm SHA1).Hash
              
    RelativeSpeed: 1.77520575088082
    ClockSpeed: 2594
    FileName: Ways To Hash A File
    RepeatCount: 100
    Throughput: 3809.45124854765
    BenchmarkInput: 
      RepeatCount: 100
      FileName: Ways To Hash A File
FileName: Ways To Hash A File
ClockSpeed: 2594
---




|Technique  |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------|-----------|---------------|-------------|----------|
|DotNet     |100        |00:00:00.014787|1x           |6762.56/s |
|GetFileHash|100        |00:00:00.026250|1.78x        |3809.45/s |
