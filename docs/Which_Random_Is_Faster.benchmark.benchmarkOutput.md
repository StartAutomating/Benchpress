---
layout: Benchmark
title: Which Random Is Faster

Data: 
  - Technique: Guid
    Time: 
      Ticks: 769379
      Days: 0
      Hours: 0
      Milliseconds: 76
      Minutes: 0
      Seconds: 0
      TotalDays: 8.90484953703704e-07
      TotalHours: 2.13716388888889e-05
      TotalMilliseconds: 76.9379
      TotalMinutes: 0.00128229833333333
      TotalSeconds: 0.0769379
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        ScriptBlock: |
          
                  [guid]::NewGuid()
              
        RepeatCount: 1024
        FileName: Which Random Is Faster
        GroupName: RandomLetters
    RelativeSpeed: 1
    GroupName: RandomLetters
    ClockSpeed: 2397
    FileName: Which Random Is Faster
    Throughput: 13309.4352718231
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomLetters
  - Technique: [BitConverter] + [Random]
    Time: 
      Ticks: 832043
      Days: 0
      Hours: 0
      Milliseconds: 83
      Minutes: 0
      Seconds: 0
      TotalDays: 9.63012731481482e-07
      TotalHours: 2.31123055555556e-05
      TotalMilliseconds: 83.2043
      TotalMinutes: 0.00138673833333333
      TotalSeconds: 0.0832043
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes($([Random]::new().next())))
              
        RepeatCount: 1024
        FileName: Which Random Is Faster
        GroupName: RandomLetters
    RelativeSpeed: 1.08144750506577
    GroupName: RandomLetters
    ClockSpeed: 2397
    FileName: Which Random Is Faster
    Throughput: 12307.0562458911
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomLetters
  - Technique: [BitConverter] + Get-Random
    Time: 
      Ticks: 1743194
      Days: 0
      Hours: 0
      Milliseconds: 174
      Minutes: 0
      Seconds: 0
      TotalDays: 2.01758564814815e-06
      TotalHours: 4.84220555555556e-05
      TotalMilliseconds: 174.3194
      TotalMinutes: 0.00290532333333333
      TotalSeconds: 0.1743194
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes((Get-Random)))
              
        RepeatCount: 1024
        FileName: Which Random Is Faster
        GroupName: RandomLetters
    RelativeSpeed: 2.26571559660453
    GroupName: RandomLetters
    ClockSpeed: 2397
    FileName: Which Random Is Faster
    Throughput: 5874.27446400114
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomLetters
  - Technique: [Random]::new().Next()
    Time: 
      Ticks: 786583
      Days: 0
      Hours: 0
      Milliseconds: 78
      Minutes: 0
      Seconds: 0
      TotalDays: 9.10396990740741e-07
      TotalHours: 2.18495277777778e-05
      TotalMilliseconds: 78.6583
      TotalMinutes: 0.00131097166666667
      TotalSeconds: 0.0786583
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        ScriptBlock: |
          
                  $([Random]::new().Next())
              
        RepeatCount: 1024
        FileName: Which Random Is Faster
        GroupName: RandomNumbers
    RelativeSpeed: 1
    GroupName: RandomNumbers
    ClockSpeed: 2397
    FileName: Which Random Is Faster
    Throughput: 13018.3337295619
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
  - Technique: Get-Random
    Time: 
      Ticks: 1723414
      Days: 0
      Hours: 0
      Milliseconds: 172
      Minutes: 0
      Seconds: 0
      TotalDays: 1.99469212962963e-06
      TotalHours: 4.78726111111111e-05
      TotalMilliseconds: 172.3414
      TotalMinutes: 0.00287235666666667
      TotalSeconds: 0.1723414
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Random
              
        RepeatCount: 1024
        FileName: Which Random Is Faster
        GroupName: RandomNumbers
    RelativeSpeed: 2.19101353576164
    GroupName: RandomNumbers
    ClockSpeed: 2397
    FileName: Which Random Is Faster
    Throughput: 5941.69479881212
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
FileName: Which Random Is Faster
ClockSpeed: 2397
---


### RandomLetters


|Technique                  |Time           |RelativeSpeed|Throughput|
|---------------------------|---------------|-------------|----------|
|Guid                       |00:00:00.076937|1x           |13309.44/s|
|[BitConverter] + [Random]  |00:00:00.083204|1.08x        |12307.06/s|
|[BitConverter] + Get-Random|00:00:00.174319|2.27x        |5874.27/s |


### RandomNumbers


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::new().Next()|00:00:00.078658|1x           |13018.33/s|
|Get-Random            |00:00:00.172341|2.19x        |5941.69/s |
