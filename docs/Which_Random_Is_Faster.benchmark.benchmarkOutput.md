---
layout: Benchmark
title: Which Random Is Faster

Data: 
  - Technique: [BitConverter] + [Random]
    Time: 
      Ticks: 666328
      Days: 0
      Hours: 0
      Milliseconds: 66
      Minutes: 0
      Seconds: 0
      TotalDays: 7.71212962962963e-07
      TotalHours: 1.85091111111111e-05
      TotalMilliseconds: 66.6328
      TotalMinutes: 0.00111054666666667
      TotalSeconds: 0.0666328
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        FileName: Which Random Is Faster
        GroupName: RandomLetters
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes($([Random]::new().next())))
              
        RepeatCount: 1024
    RelativeSpeed: 1
    GroupName: RandomLetters
    ClockSpeed: 2594
    FileName: Which Random Is Faster
    Throughput: 15367.8068458777
    BenchmarkInput: 
      GroupName: RandomLetters
      RepeatCount: 1024
      FileName: Which Random Is Faster
  - Technique: Guid
    Time: 
      Ticks: 692028
      Days: 0
      Hours: 0
      Milliseconds: 69
      Minutes: 0
      Seconds: 0
      TotalDays: 8.00958333333333e-07
      TotalHours: 1.9223e-05
      TotalMilliseconds: 69.2028
      TotalMinutes: 0.00115338
      TotalSeconds: 0.0692028
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        FileName: Which Random Is Faster
        GroupName: RandomLetters
        ScriptBlock: |
          
                  [guid]::NewGuid()
              
        RepeatCount: 1024
    RelativeSpeed: 1.03856959335342
    GroupName: RandomLetters
    ClockSpeed: 2594
    FileName: Which Random Is Faster
    Throughput: 14797.0891351217
    BenchmarkInput: 
      GroupName: RandomLetters
      RepeatCount: 1024
      FileName: Which Random Is Faster
  - Technique: [BitConverter] + Get-Random
    Time: 
      Ticks: 1429848
      Days: 0
      Hours: 0
      Milliseconds: 142
      Minutes: 0
      Seconds: 0
      TotalDays: 1.65491666666667e-06
      TotalHours: 3.9718e-05
      TotalMilliseconds: 142.9848
      TotalMinutes: 0.00238308
      TotalSeconds: 0.1429848
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        FileName: Which Random Is Faster
        GroupName: RandomLetters
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes((Get-Random)))
              
        RepeatCount: 1024
    RelativeSpeed: 2.14586209794576
    GroupName: RandomLetters
    ClockSpeed: 2594
    FileName: Which Random Is Faster
    Throughput: 7161.60039388802
    BenchmarkInput: 
      GroupName: RandomLetters
      RepeatCount: 1024
      FileName: Which Random Is Faster
  - Technique: [Random]::new().Next()
    Time: 
      Ticks: 649451
      Days: 0
      Hours: 0
      Milliseconds: 64
      Minutes: 0
      Seconds: 0
      TotalDays: 7.51679398148148e-07
      TotalHours: 1.80403055555556e-05
      TotalMilliseconds: 64.9451
      TotalMinutes: 0.00108241833333333
      TotalSeconds: 0.0649451
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        FileName: Which Random Is Faster
        GroupName: RandomNumbers
        ScriptBlock: |
          
                  $([Random]::new().Next())
              
        RepeatCount: 1024
    RelativeSpeed: 1
    GroupName: RandomNumbers
    ClockSpeed: 2594
    FileName: Which Random Is Faster
    Throughput: 15767.163342577
    BenchmarkInput: 
      GroupName: RandomNumbers
      RepeatCount: 1024
      FileName: Which Random Is Faster
  - Technique: Get-Random
    Time: 
      Ticks: 1335016
      Days: 0
      Hours: 0
      Milliseconds: 133
      Minutes: 0
      Seconds: 0
      TotalDays: 1.54515740740741e-06
      TotalHours: 3.70837777777778e-05
      TotalMilliseconds: 133.5016
      TotalMinutes: 0.00222502666666667
      TotalSeconds: 0.1335016
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        FileName: Which Random Is Faster
        GroupName: RandomNumbers
        ScriptBlock: |
          
                  Get-Random
              
        RepeatCount: 1024
    RelativeSpeed: 2.0556069664994
    GroupName: RandomNumbers
    ClockSpeed: 2594
    FileName: Which Random Is Faster
    Throughput: 7670.32005608922
    BenchmarkInput: 
      GroupName: RandomNumbers
      RepeatCount: 1024
      FileName: Which Random Is Faster
FileName: Which Random Is Faster
ClockSpeed: 2594
---


### RandomLetters


|Technique                  |Time           |RelativeSpeed|Throughput|
|---------------------------|---------------|-------------|----------|
|[BitConverter] + [Random]  |00:00:00.066632|1x           |15367.81/s|
|Guid                       |00:00:00.069202|1.04x        |14797.09/s|
|[BitConverter] + Get-Random|00:00:00.142984|2.15x        |7161.6/s  |


### RandomNumbers


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::new().Next()|00:00:00.064945|1x           |15767.16/s|
|Get-Random            |00:00:00.133501|2.06x        |7670.32/s |
