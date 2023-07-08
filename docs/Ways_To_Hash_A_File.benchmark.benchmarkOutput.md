---
layout: Benchmark

Data: 
  - Technique: DotNet
    Time: 
      Ticks: 222929
      Days: 0
      Hours: 0
      Milliseconds: 22
      Minutes: 0
      Seconds: 0
      TotalDays: 2.58019675925926e-07
      TotalHours: 6.19247222222222e-06
      TotalMilliseconds: 22.2929
      TotalMinutes: 0.000371548333333333
      TotalSeconds: 0.0222929
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
           
                  [BitConverter]::ToString([Security.Cryptography.SHA1]::Create().ComputeHash([IO.File]::ReadAllBytes("$myScript"))).Replace('-','').ToLower()
              
        FileName: Ways To Hash A File
        RepeatCount: 100
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: Ways To Hash A File
    Throughput: 4485.73312579341
    BenchmarkInput: 
      RepeatCount: 100
      FileName: Ways To Hash A File
  - Technique: GetFileHash
    Time: 
      Ticks: 758574
      Days: 0
      Hours: 0
      Milliseconds: 75
      Minutes: 0
      Seconds: 0
      TotalDays: 8.77979166666667e-07
      TotalHours: 2.10715e-05
      TotalMilliseconds: 75.8574
      TotalMinutes: 0.00126429
      TotalSeconds: 0.0758574
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  @(Get-FileHash "$myScript" -Algorithm SHA1).Hash
              
        FileName: Ways To Hash A File
        RepeatCount: 100
    RelativeSpeed: 3.40276052016561
    ClockSpeed: 2295
    FileName: Ways To Hash A File
    Throughput: 1318.26295127436
    BenchmarkInput: 
      RepeatCount: 100
      FileName: Ways To Hash A File
FileName: Ways To Hash A File
ClockSpeed: 2295
---
Ways To Hash A File
-------------------
> @2295 Mhz


### 


|Technique  |Time           |RelativeSpeed|Throughput|
|-----------|---------------|-------------|----------|
|DotNet     |00:00:00.022292|1x           |4485.73/s |
|GetFileHash|00:00:00.075857|3.4x         |1318.26/s |
