---
layout: Benchmark
title: Which Random Is Faster

Data: 
  - Technique: [BitConverter] + [Random]
    Time: 
      Ticks: 371464
      Days: 0
      Hours: 0
      Milliseconds: 37
      Minutes: 0
      Seconds: 0
      TotalDays: 4.29935185185185e-07
      TotalHours: 1.03184444444444e-05
      TotalMilliseconds: 37.1464
      TotalMinutes: 0.000619106666666667
      TotalSeconds: 0.0371464
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes($([Random]::new().next())))
              
        FileName: Which Random Is Faster
        GroupName: RandomLetters
    RelativeSpeed: 1
    GroupName: RandomLetters
    ClockSpeed: 2793
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 27566.6013395645
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomLetters
  - Technique: Guid
    Time: 
      Ticks: 448872
      Days: 0
      Hours: 0
      Milliseconds: 44
      Minutes: 0
      Seconds: 0
      TotalDays: 5.19527777777778e-07
      TotalHours: 1.24686666666667e-05
      TotalMilliseconds: 44.8872
      TotalMinutes: 0.00074812
      TotalSeconds: 0.0448872
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
          
                  [guid]::NewGuid()
              
        FileName: Which Random Is Faster
        GroupName: RandomLetters
    RelativeSpeed: 1.20838627700127
    GroupName: RandomLetters
    ClockSpeed: 2793
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 22812.7394892085
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomLetters
  - Technique: [BitConverter] + Get-Random
    Time: 
      Ticks: 1012433
      Days: 0
      Hours: 0
      Milliseconds: 101
      Minutes: 0
      Seconds: 0
      TotalDays: 1.1717974537037e-06
      TotalHours: 2.81231388888889e-05
      TotalMilliseconds: 101.2433
      TotalMinutes: 0.00168738833333333
      TotalSeconds: 0.1012433
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes((Get-Random)))
              
        FileName: Which Random Is Faster
        GroupName: RandomLetters
    RelativeSpeed: 2.72552118105658
    GroupName: RandomLetters
    ClockSpeed: 2793
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 10114.2495355248
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomLetters
  - Technique: [Random]::new().Next()
    Time: 
      Ticks: 442505
      Days: 0
      Hours: 0
      Milliseconds: 44
      Minutes: 0
      Seconds: 0
      TotalDays: 5.12158564814815e-07
      TotalHours: 1.22918055555556e-05
      TotalMilliseconds: 44.2505
      TotalMinutes: 0.000737508333333333
      TotalSeconds: 0.0442505
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
          
                  $([Random]::new().Next())
              
        GroupName: RandomNumbers
        FileName: Which Random Is Faster
    RelativeSpeed: 1
    GroupName: RandomNumbers
    ClockSpeed: 2793
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 23140.9814578366
    BenchmarkInput: 
      RepeatCount: 1024
      GroupName: RandomNumbers
      FileName: Which Random Is Faster
  - Technique: Get-Random
    Time: 
      Ticks: 999353
      Days: 0
      Hours: 0
      Milliseconds: 99
      Minutes: 0
      Seconds: 0
      TotalDays: 1.15665856481481e-06
      TotalHours: 2.77598055555556e-05
      TotalMilliseconds: 99.9353
      TotalMinutes: 0.00166558833333333
      TotalSeconds: 0.0999353
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
          
                  Get-Random
              
        GroupName: RandomNumbers
        FileName: Which Random Is Faster
    RelativeSpeed: 2.25839934012045
    GroupName: RandomNumbers
    ClockSpeed: 2793
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 10246.6295693314
    BenchmarkInput: 
      RepeatCount: 1024
      GroupName: RandomNumbers
      FileName: Which Random Is Faster
FileName: Which Random Is Faster
ClockSpeed: 2793
---


### RandomLetters


|Technique                  |Time           |RelativeSpeed|Throughput|
|---------------------------|---------------|-------------|----------|
|[BitConverter] + [Random]  |00:00:00.037146|1x           |27566.6/s |
|Guid                       |00:00:00.044887|1.21x        |22812.74/s|
|[BitConverter] + Get-Random|00:00:00.101243|2.73x        |10114.25/s|


### RandomNumbers


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::new().Next()|00:00:00.044250|1x           |23140.98/s|
|Get-Random            |00:00:00.099935|2.26x        |10246.63/s|
