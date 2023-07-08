---
layout: Benchmark
title: Which Random Is Faster

Data: 
  - Technique: Guid
    Time: 
      Ticks: 485269
      Days: 0
      Hours: 0
      Milliseconds: 48
      Minutes: 0
      Seconds: 0
      TotalDays: 5.61653935185185e-07
      TotalHours: 1.34796944444444e-05
      TotalMilliseconds: 48.5269
      TotalMinutes: 0.000808781666666667
      TotalSeconds: 0.0485269
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        ScriptBlock: |
          
                  [guid]::NewGuid()
              
        FileName: Which Random Is Faster
        RepeatCount: 1024
        GroupName: RandomLetters
    RelativeSpeed: 1
    GroupName: RandomLetters
    ClockSpeed: 2594
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 21101.698233351
    BenchmarkInput: 
      FileName: Which Random Is Faster
      RepeatCount: 1024
      GroupName: RandomLetters
  - Technique: [BitConverter] + [Random]
    Time: 
      Ticks: 504368
      Days: 0
      Hours: 0
      Milliseconds: 50
      Minutes: 0
      Seconds: 0
      TotalDays: 5.83759259259259e-07
      TotalHours: 1.40102222222222e-05
      TotalMilliseconds: 50.4368
      TotalMinutes: 0.000840613333333333
      TotalSeconds: 0.0504368
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes($([Random]::new().next())))
              
        FileName: Which Random Is Faster
        RepeatCount: 1024
        GroupName: RandomLetters
    RelativeSpeed: 1.039357552203
    GroupName: RandomLetters
    ClockSpeed: 2594
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 20302.6361704153
    BenchmarkInput: 
      FileName: Which Random Is Faster
      RepeatCount: 1024
      GroupName: RandomLetters
  - Technique: [BitConverter] + Get-Random
    Time: 
      Ticks: 1152146
      Days: 0
      Hours: 0
      Milliseconds: 115
      Minutes: 0
      Seconds: 0
      TotalDays: 1.33350231481481e-06
      TotalHours: 3.20040555555556e-05
      TotalMilliseconds: 115.2146
      TotalMinutes: 0.00192024333333333
      TotalSeconds: 0.1152146
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes((Get-Random)))
              
        FileName: Which Random Is Faster
        RepeatCount: 1024
        GroupName: RandomLetters
    RelativeSpeed: 2.37424191530883
    GroupName: RandomLetters
    ClockSpeed: 2594
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 8887.76248843463
    BenchmarkInput: 
      FileName: Which Random Is Faster
      RepeatCount: 1024
      GroupName: RandomLetters
  - Technique: [Random]::new().Next()
    Time: 
      Ticks: 490428
      Days: 0
      Hours: 0
      Milliseconds: 49
      Minutes: 0
      Seconds: 0
      TotalDays: 5.67625e-07
      TotalHours: 1.3623e-05
      TotalMilliseconds: 49.0428
      TotalMinutes: 0.00081738
      TotalSeconds: 0.0490428
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        ScriptBlock: |
          
                  $([Random]::new().Next())
              
        FileName: Which Random Is Faster
        RepeatCount: 1024
        GroupName: RandomNumbers
    RelativeSpeed: 1
    GroupName: RandomNumbers
    ClockSpeed: 2594
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 20879.7213862178
    BenchmarkInput: 
      FileName: Which Random Is Faster
      RepeatCount: 1024
      GroupName: RandomNumbers
  - Technique: Get-Random
    Time: 
      Ticks: 1082985
      Days: 0
      Hours: 0
      Milliseconds: 108
      Minutes: 0
      Seconds: 0
      TotalDays: 1.25345486111111e-06
      TotalHours: 3.00829166666667e-05
      TotalMilliseconds: 108.2985
      TotalMinutes: 0.001804975
      TotalSeconds: 0.1082985
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Random
              
        FileName: Which Random Is Faster
        RepeatCount: 1024
        GroupName: RandomNumbers
    RelativeSpeed: 2.20824463529815
    GroupName: RandomNumbers
    ClockSpeed: 2594
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 9455.34795034095
    BenchmarkInput: 
      FileName: Which Random Is Faster
      RepeatCount: 1024
      GroupName: RandomNumbers
FileName: Which Random Is Faster
ClockSpeed: 2594
---


### RandomLetters


|Technique                  |Time           |RelativeSpeed|Throughput|
|---------------------------|---------------|-------------|----------|
|Guid                       |00:00:00.048526|1x           |21101.7/s |
|[BitConverter] + [Random]  |00:00:00.050436|1.04x        |20302.64/s|
|[BitConverter] + Get-Random|00:00:00.115214|2.37x        |8887.76/s |


### RandomNumbers


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::new().Next()|00:00:00.049042|1x           |20879.72/s|
|Get-Random            |00:00:00.108298|2.21x        |9455.35/s |
