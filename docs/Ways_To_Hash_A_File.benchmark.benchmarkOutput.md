---
layout: Benchmark
title: Ways To Hash A File

Data: 
  - Technique: DotNet
    Time: 
      Ticks: 125696
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.45481481481481e-07
      TotalHours: 3.49155555555556e-06
      TotalMilliseconds: 12.5696
      TotalMinutes: 0.000209493333333333
      TotalSeconds: 0.0125696
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
    Throughput: 7955.70264765784
    BenchmarkInput: 
      FileName: Ways To Hash A File
      RepeatCount: 100
  - Technique: GetFileHash
    Time: 
      Ticks: 259171
      Days: 0
      Hours: 0
      Milliseconds: 25
      Minutes: 0
      Seconds: 0
      TotalDays: 2.99966435185185e-07
      TotalHours: 7.19919444444444e-06
      TotalMilliseconds: 25.9171
      TotalMinutes: 0.000431951666666667
      TotalSeconds: 0.0259171
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 100
        ScriptBlock: |
          
                  @(Get-FileHash "$myScript" -Algorithm SHA1).Hash
              
        FileName: Ways To Hash A File
    RelativeSpeed: 2.06188741089613
    ClockSpeed: 2793
    FileName: Ways To Hash A File
    Throughput: 3858.45638593824
    BenchmarkInput: 
      FileName: Ways To Hash A File
      RepeatCount: 100
FileName: Ways To Hash A File
ClockSpeed: 2793
---
Ways To Hash A File
-------------------
> @2793 Mhz


### 


|Technique  |Time           |RelativeSpeed|Throughput|
|-----------|---------------|-------------|----------|
|DotNet     |00:00:00.012569|1x           |7955.7/s  |
|GetFileHash|00:00:00.025917|2.06x        |3858.46/s |
