---
layout: Benchmark

Data: 
  - Technique: DotNet
    Time: 
      Ticks: 188384
      Days: 0
      Hours: 0
      Milliseconds: 18
      Minutes: 0
      Seconds: 0
      TotalDays: 2.18037037037037e-07
      TotalHours: 5.23288888888889e-06
      TotalMilliseconds: 18.8384
      TotalMinutes: 0.000313973333333333
      TotalSeconds: 0.0188384
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
    Throughput: 5308.30643791405
    BenchmarkInput: 
      FileName: Ways To Hash A File
      RepeatCount: 100
  - Technique: GetFileHash
    Time: 
      Ticks: 367954
      Days: 0
      Hours: 0
      Milliseconds: 36
      Minutes: 0
      Seconds: 0
      TotalDays: 4.25872685185185e-07
      TotalHours: 1.02209444444444e-05
      TotalMilliseconds: 36.7954
      TotalMinutes: 0.000613256666666667
      TotalSeconds: 0.0367954
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  @(Get-FileHash "$myScript" -Algorithm SHA1).Hash
              
        RepeatCount: 100
        FileName: Ways To Hash A File
    RelativeSpeed: 1.95321258705623
    ClockSpeed: 2295
    FileName: Ways To Hash A File
    Throughput: 2717.73102072542
    BenchmarkInput: 
      FileName: Ways To Hash A File
      RepeatCount: 100
FileName: Ways To Hash A File
ClockSpeed: 2295
---
Ways To Hash A File
-------------------
> @2295 Mhz


### 


|Technique  |Time           |RelativeSpeed|Throughput|
|-----------|---------------|-------------|----------|
|DotNet     |00:00:00.018838|1x           |5308.31/s |
|GetFileHash|00:00:00.036795|1.95x        |2717.73/s |
