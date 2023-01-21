---
layout: Benchmark

Data: 
  - Technique: DotNet
    Time: 
      Ticks: 129571
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.49966435185185e-07
      TotalHours: 3.59919444444444e-06
      TotalMilliseconds: 12.9571
      TotalMinutes: 0.000215951666666667
      TotalSeconds: 0.0129571
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
           
                  [BitConverter]::ToString([Security.Cryptography.SHA1]::Create().ComputeHash([IO.File]::ReadAllBytes("$myScript"))).Replace('-','').ToLower()
              
        RepeatCount: 100
        FileName: Ways To Hash A File
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Ways To Hash A File
    Throughput: 7717.77635427681
    BenchmarkInput: 
      RepeatCount: 100
      FileName: Ways To Hash A File
  - Technique: GetFileHash
    Time: 
      Ticks: 486983
      Days: 0
      Hours: 0
      Milliseconds: 48
      Minutes: 0
      Seconds: 0
      TotalDays: 5.63637731481481e-07
      TotalHours: 1.35273055555556e-05
      TotalMilliseconds: 48.6983
      TotalMinutes: 0.000811638333333333
      TotalSeconds: 0.0486983
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  @(Get-FileHash "$myScript" -Algorithm SHA1).Hash
              
        RepeatCount: 100
        FileName: Ways To Hash A File
    RelativeSpeed: 3.75842588233478
    ClockSpeed: 2793
    FileName: Ways To Hash A File
    Throughput: 2053.45977169634
    BenchmarkInput: 
      RepeatCount: 100
      FileName: Ways To Hash A File
FileName: Ways To Hash A File
ClockSpeed: 2793
---
Ways To Hash A File
-------------------
> @2793 Mhz


### 


|Technique  |Time           |RelativeSpeed|Throughput|
|-----------|---------------|-------------|----------|
|DotNet     |00:00:00.012957|1x           |7717.78/s |
|GetFileHash|00:00:00.048698|3.76x        |2053.46/s |
