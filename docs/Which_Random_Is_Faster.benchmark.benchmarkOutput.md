---
layout: Benchmark
title: Which Random Is Faster

Data: 
  - Technique: Guid
    Time: 
      Ticks: 520332
      Days: 0
      Hours: 0
      Milliseconds: 52
      Minutes: 0
      Seconds: 0
      TotalDays: 6.02236111111111e-07
      TotalHours: 1.44536666666667e-05
      TotalMilliseconds: 52.0332
      TotalMinutes: 0.00086722
      TotalSeconds: 0.0520332
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  [guid]::NewGuid()
              
        GroupName: RandomLetters
    RelativeSpeed: 1
    GroupName: RandomLetters
    ClockSpeed: 2594
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 19679.7429333579
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomLetters
  - Technique: [BitConverter] + [Random]
    Time: 
      Ticks: 533590
      Days: 0
      Hours: 0
      Milliseconds: 53
      Minutes: 0
      Seconds: 0
      TotalDays: 6.17581018518519e-07
      TotalHours: 1.48219444444444e-05
      TotalMilliseconds: 53.359
      TotalMinutes: 0.000889316666666667
      TotalSeconds: 0.053359
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes($([Random]::new().next())))
              
        GroupName: RandomLetters
    RelativeSpeed: 1.02547988591899
    GroupName: RandomLetters
    ClockSpeed: 2594
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 19190.764444611
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomLetters
  - Technique: [BitConverter] + Get-Random
    Time: 
      Ticks: 1169486
      Days: 0
      Hours: 0
      Milliseconds: 116
      Minutes: 0
      Seconds: 0
      TotalDays: 1.35357175925926e-06
      TotalHours: 3.24857222222222e-05
      TotalMilliseconds: 116.9486
      TotalMinutes: 0.00194914333333333
      TotalSeconds: 0.1169486
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes((Get-Random)))
              
        GroupName: RandomLetters
    RelativeSpeed: 2.24757654728135
    GroupName: RandomLetters
    ClockSpeed: 2594
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 8755.98339783461
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomLetters
  - Technique: [Random]::new().Next()
    Time: 
      Ticks: 521167
      Days: 0
      Hours: 0
      Milliseconds: 52
      Minutes: 0
      Seconds: 0
      TotalDays: 6.03202546296296e-07
      TotalHours: 1.44768611111111e-05
      TotalMilliseconds: 52.1167
      TotalMinutes: 0.000868611666666667
      TotalSeconds: 0.0521167
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  $([Random]::new().Next())
              
        GroupName: RandomNumbers
    RelativeSpeed: 1
    GroupName: RandomNumbers
    ClockSpeed: 2594
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 19648.2125690997
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
  - Technique: Get-Random
    Time: 
      Ticks: 1113832
      Days: 0
      Hours: 0
      Milliseconds: 111
      Minutes: 0
      Seconds: 0
      TotalDays: 1.28915740740741e-06
      TotalHours: 3.09397777777778e-05
      TotalMilliseconds: 111.3832
      TotalMinutes: 0.00185638666666667
      TotalSeconds: 0.1113832
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  Get-Random
              
        GroupName: RandomNumbers
    RelativeSpeed: 2.13718827170561
    GroupName: RandomNumbers
    ClockSpeed: 2594
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 9193.48698906119
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
FileName: Which Random Is Faster
ClockSpeed: 2594
---


### RandomLetters


|Technique                  |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------|-----------|---------------|-------------|----------|
|Guid                       |1024       |00:00:00.052033|1x           |19679.74/s|
|[BitConverter] + [Random]  |1024       |00:00:00.053359|1.03x        |19190.76/s|
|[BitConverter] + Get-Random|1024       |00:00:00.116948|2.25x        |8755.98/s |


### RandomNumbers


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|[Random]::new().Next()|1024       |00:00:00.052116|1x           |19648.21/s|
|Get-Random            |1024       |00:00:00.111383|2.14x        |9193.49/s |
