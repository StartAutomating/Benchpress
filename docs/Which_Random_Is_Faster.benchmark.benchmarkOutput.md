---
layout: Benchmark
title: Which Random Is Faster

Data: 
  - Technique: Guid
    Time: 
      Ticks: 1008196
      Days: 0
      Hours: 0
      Milliseconds: 100
      Minutes: 0
      Seconds: 0
      TotalDays: 1.16689351851852e-06
      TotalHours: 2.80054444444444e-05
      TotalMilliseconds: 100.8196
      TotalMinutes: 0.00168032666666667
      TotalSeconds: 0.1008196
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        ScriptBlock: |
          
                  [guid]::NewGuid()
              
        GroupName: RandomLetters
        RepeatCount: 1024
        FileName: Which Random Is Faster
    RelativeSpeed: 1
    GroupName: RandomLetters
    ClockSpeed: 2295
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 10156.7552341013
    BenchmarkInput: 
      RepeatCount: 1024
      GroupName: RandomLetters
      FileName: Which Random Is Faster
  - Technique: [BitConverter] + [Random]
    Time: 
      Ticks: 1039481
      Days: 0
      Hours: 0
      Milliseconds: 103
      Minutes: 0
      Seconds: 0
      TotalDays: 1.20310300925926e-06
      TotalHours: 2.88744722222222e-05
      TotalMilliseconds: 103.9481
      TotalMinutes: 0.00173246833333333
      TotalSeconds: 0.1039481
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes($([Random]::new().next())))
              
        GroupName: RandomLetters
        RepeatCount: 1024
        FileName: Which Random Is Faster
    RelativeSpeed: 1.03103067260731
    GroupName: RandomLetters
    ClockSpeed: 2295
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 9851.06990892571
    BenchmarkInput: 
      RepeatCount: 1024
      GroupName: RandomLetters
      FileName: Which Random Is Faster
  - Technique: [BitConverter] + Get-Random
    Time: 
      Ticks: 2125209
      Days: 0
      Hours: 0
      Milliseconds: 212
      Minutes: 0
      Seconds: 0
      TotalDays: 2.45973263888889e-06
      TotalHours: 5.90335833333333e-05
      TotalMilliseconds: 212.5209
      TotalMinutes: 0.003542015
      TotalSeconds: 0.2125209
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes((Get-Random)))
              
        GroupName: RandomLetters
        RepeatCount: 1024
        FileName: Which Random Is Faster
    RelativeSpeed: 2.10793238616301
    GroupName: RandomLetters
    ClockSpeed: 2295
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 4818.34963055398
    BenchmarkInput: 
      RepeatCount: 1024
      GroupName: RandomLetters
      FileName: Which Random Is Faster
  - Technique: [Random]::new().Next()
    Time: 
      Ticks: 692142
      Days: 0
      Hours: 0
      Milliseconds: 69
      Minutes: 0
      Seconds: 0
      TotalDays: 8.01090277777778e-07
      TotalHours: 1.92261666666667e-05
      TotalMilliseconds: 69.2142
      TotalMinutes: 0.00115357
      TotalSeconds: 0.0692142
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        ScriptBlock: |
          
                  $([Random]::new().Next())
              
        GroupName: RandomNumbers
        RepeatCount: 1024
        FileName: Which Random Is Faster
    RelativeSpeed: 1
    GroupName: RandomNumbers
    ClockSpeed: 2295
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 14794.6519644813
    BenchmarkInput: 
      GroupName: RandomNumbers
      RepeatCount: 1024
      FileName: Which Random Is Faster
  - Technique: Get-Random
    Time: 
      Ticks: 2080375
      Days: 0
      Hours: 0
      Milliseconds: 208
      Minutes: 0
      Seconds: 0
      TotalDays: 2.40784143518519e-06
      TotalHours: 5.77881944444444e-05
      TotalMilliseconds: 208.0375
      TotalMinutes: 0.00346729166666667
      TotalSeconds: 0.2080375
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Random
              
        GroupName: RandomNumbers
        RepeatCount: 1024
        FileName: Which Random Is Faster
    RelativeSpeed: 3.00570547662185
    GroupName: RandomNumbers
    ClockSpeed: 2295
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 4922.18950910293
    BenchmarkInput: 
      GroupName: RandomNumbers
      RepeatCount: 1024
      FileName: Which Random Is Faster
FileName: Which Random Is Faster
ClockSpeed: 2295
---


### RandomLetters


|Technique                  |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------|-----------|---------------|-------------|----------|
|Guid                       |1024       |00:00:00.100819|1x           |10156.76/s|
|[BitConverter] + [Random]  |1024       |00:00:00.103948|1.03x        |9851.07/s |
|[BitConverter] + Get-Random|1024       |00:00:00.212520|2.11x        |4818.35/s |


### RandomNumbers


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|[Random]::new().Next()|1024       |00:00:00.069214|1x           |14794.65/s|
|Get-Random            |1024       |00:00:00.208037|3.01x        |4922.19/s |
