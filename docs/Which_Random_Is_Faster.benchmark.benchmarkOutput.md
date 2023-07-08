---
layout: Benchmark
title: Which Random Is Faster

Data: 
  - Technique: Guid
    Time: 
      Ticks: 634335
      Days: 0
      Hours: 0
      Milliseconds: 63
      Minutes: 0
      Seconds: 0
      TotalDays: 7.34184027777778e-07
      TotalHours: 1.76204166666667e-05
      TotalMilliseconds: 63.4335
      TotalMinutes: 0.001057225
      TotalSeconds: 0.0634335
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        GroupName: RandomLetters
        RepeatCount: 1024
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  [guid]::NewGuid()
              
    RelativeSpeed: 1
    GroupName: RandomLetters
    ClockSpeed: 2594
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 16142.8897979774
    BenchmarkInput: 
      GroupName: RandomLetters
      RepeatCount: 1024
      FileName: Which Random Is Faster
  - Technique: [BitConverter] + [Random]
    Time: 
      Ticks: 649892
      Days: 0
      Hours: 0
      Milliseconds: 64
      Minutes: 0
      Seconds: 0
      TotalDays: 7.52189814814815e-07
      TotalHours: 1.80525555555556e-05
      TotalMilliseconds: 64.9892
      TotalMinutes: 0.00108315333333333
      TotalSeconds: 0.0649892
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        GroupName: RandomLetters
        RepeatCount: 1024
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes($([Random]::new().next())))
              
    RelativeSpeed: 1.02452489615109
    GroupName: RandomLetters
    ClockSpeed: 2594
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 15756.4641509666
    BenchmarkInput: 
      GroupName: RandomLetters
      RepeatCount: 1024
      FileName: Which Random Is Faster
  - Technique: [BitConverter] + Get-Random
    Time: 
      Ticks: 1392525
      Days: 0
      Hours: 0
      Milliseconds: 139
      Minutes: 0
      Seconds: 0
      TotalDays: 1.61171875e-06
      TotalHours: 3.868125e-05
      TotalMilliseconds: 139.2525
      TotalMinutes: 0.002320875
      TotalSeconds: 0.1392525
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        GroupName: RandomLetters
        RepeatCount: 1024
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes((Get-Random)))
              
    RelativeSpeed: 2.19525172030552
    GroupName: RandomLetters
    ClockSpeed: 2594
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 7353.54841026193
    BenchmarkInput: 
      GroupName: RandomLetters
      RepeatCount: 1024
      FileName: Which Random Is Faster
  - Technique: [Random]::new().Next()
    Time: 
      Ticks: 630866
      Days: 0
      Hours: 0
      Milliseconds: 63
      Minutes: 0
      Seconds: 0
      TotalDays: 7.30168981481482e-07
      TotalHours: 1.75240555555556e-05
      TotalMilliseconds: 63.0866
      TotalMinutes: 0.00105144333333333
      TotalSeconds: 0.0630866
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        GroupName: RandomNumbers
        RepeatCount: 1024
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  $([Random]::new().Next())
              
    RelativeSpeed: 1
    GroupName: RandomNumbers
    ClockSpeed: 2594
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 16231.6561678708
    BenchmarkInput: 
      GroupName: RandomNumbers
      RepeatCount: 1024
      FileName: Which Random Is Faster
  - Technique: Get-Random
    Time: 
      Ticks: 1291333
      Days: 0
      Hours: 0
      Milliseconds: 129
      Minutes: 0
      Seconds: 0
      TotalDays: 1.49459837962963e-06
      TotalHours: 3.58703611111111e-05
      TotalMilliseconds: 129.1333
      TotalMinutes: 0.00215222166666667
      TotalSeconds: 0.1291333
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        GroupName: RandomNumbers
        RepeatCount: 1024
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  Get-Random
              
    RelativeSpeed: 2.04692121623292
    GroupName: RandomNumbers
    ClockSpeed: 2594
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 7929.79037939865
    BenchmarkInput: 
      GroupName: RandomNumbers
      RepeatCount: 1024
      FileName: Which Random Is Faster
FileName: Which Random Is Faster
ClockSpeed: 2594
---


### RandomLetters


|Technique                  |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------|-----------|---------------|-------------|----------|
|Guid                       |1024       |00:00:00.063433|1x           |16142.89/s|
|[BitConverter] + [Random]  |1024       |00:00:00.064989|1.02x        |15756.46/s|
|[BitConverter] + Get-Random|1024       |00:00:00.139252|2.2x         |7353.55/s |


### RandomNumbers


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|[Random]::new().Next()|1024       |00:00:00.063086|1x           |16231.66/s|
|Get-Random            |1024       |00:00:00.129133|2.05x        |7929.79/s |
