---
layout: Benchmark

Data: 
  - Technique: DotNet
    Time: 
      Ticks: 131439
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.52128472222222e-07
      TotalHours: 3.65108333333333e-06
      TotalMilliseconds: 13.1439
      TotalMinutes: 0.000219065
      TotalSeconds: 0.0131439
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
    Throughput: 7608.09196661569
    BenchmarkInput: 
      RepeatCount: 100
      FileName: Ways To Hash A File
  - Technique: GetFileHash
    Time: 
      Ticks: 520845
      Days: 0
      Hours: 0
      Milliseconds: 52
      Minutes: 0
      Seconds: 0
      TotalDays: 6.02829861111111e-07
      TotalHours: 1.44679166666667e-05
      TotalMilliseconds: 52.0845
      TotalMinutes: 0.000868075
      TotalSeconds: 0.0520845
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        FileName: Ways To Hash A File
        ScriptBlock: |
          
                  @(Get-FileHash "$myScript" -Algorithm SHA1).Hash
              
        RepeatCount: 100
    RelativeSpeed: 3.96263666035195
    ClockSpeed: 2594
    FileName: Ways To Hash A File
    Throughput: 1919.95699296336
    BenchmarkInput: 
      RepeatCount: 100
      FileName: Ways To Hash A File
FileName: Ways To Hash A File
ClockSpeed: 2594
---
Ways To Hash A File
-------------------
> @2594 Mhz


### 


|Technique  |Time           |RelativeSpeed|Throughput|
|-----------|---------------|-------------|----------|
|DotNet     |00:00:00.013143|1x           |7608.09/s |
|GetFileHash|00:00:00.052084|3.96x        |1919.96/s |
