---
layout: Benchmark
title: Ways To Hash A File

Data: 
  - Technique: DotNet
    Time: 
      Ticks: 177778
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 2.05761574074074e-07
      TotalHours: 4.93827777777778e-06
      TotalMilliseconds: 17.7778
      TotalMinutes: 0.000296296666666667
      TotalSeconds: 0.0177778
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 100
        FileName: Ways To Hash A File
        ScriptBlock: |
           
                  [BitConverter]::ToString([Security.Cryptography.SHA1]::Create().ComputeHash([IO.File]::ReadAllBytes("$myScript"))).Replace('-','').ToLower()
              
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Ways To Hash A File
    RepeatCount: 100
    Throughput: 5624.99296875879
    BenchmarkInput: 
      RepeatCount: 100
      FileName: Ways To Hash A File
  - Technique: GetFileHash
    Time: 
      Ticks: 313972
      Days: 0
      Hours: 0
      Milliseconds: 31
      Minutes: 0
      Seconds: 0
      TotalDays: 3.63393518518519e-07
      TotalHours: 8.72144444444444e-06
      TotalMilliseconds: 31.3972
      TotalMinutes: 0.000523286666666667
      TotalSeconds: 0.0313972
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 100
        FileName: Ways To Hash A File
        ScriptBlock: |
          
                  @(Get-FileHash "$myScript" -Algorithm SHA1).Hash
              
    RelativeSpeed: 1.76609029238713
    ClockSpeed: 2095
    FileName: Ways To Hash A File
    RepeatCount: 100
    Throughput: 3184.99738830214
    BenchmarkInput: 
      RepeatCount: 100
      FileName: Ways To Hash A File
FileName: Ways To Hash A File
ClockSpeed: 2095
---




|Technique  |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------|-----------|---------------|-------------|----------|
|DotNet     |100        |00:00:00.017777|1x           |5624.99/s |
|GetFileHash|100        |00:00:00.031397|1.77x        |3185/s    |
