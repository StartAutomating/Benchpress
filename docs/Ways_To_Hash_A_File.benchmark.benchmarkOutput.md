---
layout: Benchmark

Data: 
  - Technique: DotNet
    Time: 
      Ticks: 140600
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.62731481481481e-07
      TotalHours: 3.90555555555556e-06
      TotalMilliseconds: 14.06
      TotalMinutes: 0.000234333333333333
      TotalSeconds: 0.01406
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
    Throughput: 7112.37553342816
    BenchmarkInput: 
      RepeatCount: 100
      FileName: Ways To Hash A File
  - Technique: GetFileHash
    Time: 
      Ticks: 240469
      Days: 0
      Hours: 0
      Milliseconds: 24
      Minutes: 0
      Seconds: 0
      TotalDays: 2.78320601851852e-07
      TotalHours: 6.67969444444444e-06
      TotalMilliseconds: 24.0469
      TotalMinutes: 0.000400781666666667
      TotalSeconds: 0.0240469
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  @(Get-FileHash "$myScript" -Algorithm SHA1).Hash
              
        RepeatCount: 100
        FileName: Ways To Hash A File
    RelativeSpeed: 1.71030583214794
    ClockSpeed: 2793
    FileName: Ways To Hash A File
    Throughput: 4158.54018605309
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
|DotNet     |00:00:00.014060|1x           |7112.38/s |
|GetFileHash|00:00:00.024046|1.71x        |4158.54/s |
