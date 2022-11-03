---
layout: Benchmark

Data: 
  - Technique: DotNet
    Time: 
      Ticks: 186745
      Days: 0
      Hours: 0
      Milliseconds: 18
      Minutes: 0
      Seconds: 0
      TotalDays: 2.16140046296296e-07
      TotalHours: 5.18736111111111e-06
      TotalMilliseconds: 18.6745
      TotalMinutes: 0.000311241666666667
      TotalSeconds: 0.0186745
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
           
                  [BitConverter]::ToString([Security.Cryptography.SHA1]::Create().ComputeHash([IO.File]::ReadAllBytes("$myScript"))).Replace('-','').ToLower()
              
        RepeatCount: 100
        FileName: Ways To Hash A File
    RelativeSpeed: 1
    ClockSpeed: 2394
    FileName: Ways To Hash A File
    Throughput: 5354.89571340598
    BenchmarkInput: 
      FileName: Ways To Hash A File
      RepeatCount: 100
  - Technique: GetFileHash
    Time: 
      Ticks: 367381
      Days: 0
      Hours: 0
      Milliseconds: 36
      Minutes: 0
      Seconds: 0
      TotalDays: 4.25209490740741e-07
      TotalHours: 1.02050277777778e-05
      TotalMilliseconds: 36.7381
      TotalMinutes: 0.000612301666666667
      TotalSeconds: 0.0367381
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  @(Get-FileHash "$myScript" -Algorithm SHA1).Hash
              
        RepeatCount: 100
        FileName: Ways To Hash A File
    RelativeSpeed: 1.9672869420868
    ClockSpeed: 2394
    FileName: Ways To Hash A File
    Throughput: 2721.96983513029
    BenchmarkInput: 
      FileName: Ways To Hash A File
      RepeatCount: 100
FileName: Ways To Hash A File
ClockSpeed: 2394
---
Ways To Hash A File
-------------------
> @2394 Mhz


### 


|Technique  |Time           |RelativeSpeed|Throughput|
|-----------|---------------|-------------|----------|
|DotNet     |00:00:00.018674|1x           |5354.9/s  |
|GetFileHash|00:00:00.036738|1.97x        |2721.97/s |
