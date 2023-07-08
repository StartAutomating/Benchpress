---
layout: Benchmark
title: Which Random Is Faster

Data: 
  - Technique: Guid
    Time: 
      Ticks: 364991
      Days: 0
      Hours: 0
      Milliseconds: 36
      Minutes: 0
      Seconds: 0
      TotalDays: 4.22443287037037e-07
      TotalHours: 1.01386388888889e-05
      TotalMilliseconds: 36.4991
      TotalMinutes: 0.000608318333333333
      TotalSeconds: 0.0364991
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
          
                  [guid]::NewGuid()
              
        GroupName: RandomLetters
        FileName: Which Random Is Faster
    RelativeSpeed: 1
    GroupName: RandomLetters
    ClockSpeed: 2793
    FileName: Which Random Is Faster
    Throughput: 28055.4862996622
    BenchmarkInput: 
      RepeatCount: 1024
      GroupName: RandomLetters
      FileName: Which Random Is Faster
  - Technique: [BitConverter] + [Random]
    Time: 
      Ticks: 382173
      Days: 0
      Hours: 0
      Milliseconds: 38
      Minutes: 0
      Seconds: 0
      TotalDays: 4.42329861111111e-07
      TotalHours: 1.06159166666667e-05
      TotalMilliseconds: 38.2173
      TotalMinutes: 0.000636955
      TotalSeconds: 0.0382173
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes($([Random]::new().next())))
              
        GroupName: RandomLetters
        FileName: Which Random Is Faster
    RelativeSpeed: 1.04707513335945
    GroupName: RandomLetters
    ClockSpeed: 2793
    FileName: Which Random Is Faster
    Throughput: 26794.148199899
    BenchmarkInput: 
      RepeatCount: 1024
      GroupName: RandomLetters
      FileName: Which Random Is Faster
  - Technique: [BitConverter] + Get-Random
    Time: 
      Ticks: 1362325
      Days: 0
      Hours: 0
      Milliseconds: 136
      Minutes: 0
      Seconds: 0
      TotalDays: 1.5767650462963e-06
      TotalHours: 3.78423611111111e-05
      TotalMilliseconds: 136.2325
      TotalMinutes: 0.00227054166666667
      TotalSeconds: 0.1362325
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes((Get-Random)))
              
        GroupName: RandomLetters
        FileName: Which Random Is Faster
    RelativeSpeed: 3.73248929425657
    GroupName: RandomLetters
    ClockSpeed: 2793
    FileName: Which Random Is Faster
    Throughput: 7516.56176022608
    BenchmarkInput: 
      RepeatCount: 1024
      GroupName: RandomLetters
      FileName: Which Random Is Faster
  - Technique: [Random]::new().Next()
    Time: 
      Ticks: 361671
      Days: 0
      Hours: 0
      Milliseconds: 36
      Minutes: 0
      Seconds: 0
      TotalDays: 4.18600694444444e-07
      TotalHours: 1.00464166666667e-05
      TotalMilliseconds: 36.1671
      TotalMinutes: 0.000602785
      TotalSeconds: 0.0361671
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
    Throughput: 28313.0248209008
    BenchmarkInput: 
      RepeatCount: 1024
      GroupName: RandomNumbers
      FileName: Which Random Is Faster
  - Technique: Get-Random
    Time: 
      Ticks: 1263457
      Days: 0
      Hours: 0
      Milliseconds: 126
      Minutes: 0
      Seconds: 0
      TotalDays: 1.46233449074074e-06
      TotalHours: 3.50960277777778e-05
      TotalMilliseconds: 126.3457
      TotalMinutes: 0.00210576166666667
      TotalSeconds: 0.1263457
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
          
                  Get-Random
              
        GroupName: RandomNumbers
        FileName: Which Random Is Faster
    RelativeSpeed: 3.49338763683016
    GroupName: RandomNumbers
    ClockSpeed: 2793
    FileName: Which Random Is Faster
    Throughput: 8104.74752999113
    BenchmarkInput: 
      RepeatCount: 1024
      GroupName: RandomNumbers
      FileName: Which Random Is Faster
FileName: Which Random Is Faster
ClockSpeed: 2793
---
Which Random Is Faster
----------------------
> @2793 Mhz


### RandomLetters


|Technique                  |Time           |RelativeSpeed|Throughput|
|---------------------------|---------------|-------------|----------|
|Guid                       |00:00:00.036499|1x           |28055.49/s|
|[BitConverter] + [Random]  |00:00:00.038217|1.05x        |26794.15/s|
|[BitConverter] + Get-Random|00:00:00.136232|3.73x        |7516.56/s |


### RandomNumbers


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::new().Next()|00:00:00.036167|1x           |28313.02/s|
|Get-Random            |00:00:00.126345|3.49x        |8104.75/s |
