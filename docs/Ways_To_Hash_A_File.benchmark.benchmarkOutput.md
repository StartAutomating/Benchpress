---
layout: Benchmark

Data: 
  - Technique: DotNet
    Time: 
      Ticks: 149707
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.73271990740741e-07
      TotalHours: 4.15852777777778e-06
      TotalMilliseconds: 14.9707
      TotalMinutes: 0.000249511666666667
      TotalSeconds: 0.0149707
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
    Throughput: 6679.71437541331
    BenchmarkInput: 
      RepeatCount: 100
      FileName: Ways To Hash A File
  - Technique: GetFileHash
    Time: 
      Ticks: 316621
      Days: 0
      Hours: 0
      Milliseconds: 31
      Minutes: 0
      Seconds: 0
      TotalDays: 3.66459490740741e-07
      TotalHours: 8.79502777777778e-06
      TotalMilliseconds: 31.6621
      TotalMinutes: 0.000527701666666667
      TotalSeconds: 0.0316621
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 100
        FileName: Ways To Hash A File
        ScriptBlock: |
          
                  @(Get-FileHash "$myScript" -Algorithm SHA1).Hash
              
    RelativeSpeed: 2.11493784525774
    ClockSpeed: 2095
    FileName: Ways To Hash A File
    Throughput: 3158.35020418734
    BenchmarkInput: 
      RepeatCount: 100
      FileName: Ways To Hash A File
FileName: Ways To Hash A File
ClockSpeed: 2095
---
Ways To Hash A File
-------------------
> @2095 Mhz


### 


|Technique  |Time           |RelativeSpeed|Throughput|
|-----------|---------------|-------------|----------|
|DotNet     |00:00:00.014970|1x           |6679.71/s |
|GetFileHash|00:00:00.031662|2.11x        |3158.35/s |
