---
layout: Benchmark
title: Which Random Is Faster

Data: 
  - Technique: Guid
    Time: 
      Ticks: 634340
      Days: 0
      Hours: 0
      Milliseconds: 63
      Minutes: 0
      Seconds: 0
      TotalDays: 7.34189814814815e-07
      TotalHours: 1.76205555555556e-05
      TotalMilliseconds: 63.434
      TotalMinutes: 0.00105723333333333
      TotalSeconds: 0.063434
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        ScriptBlock: |
          
                  [guid]::NewGuid()
              
        GroupName: RandomLetters
        FileName: Which Random Is Faster
        RepeatCount: 1024
    RelativeSpeed: 1
    GroupName: RandomLetters
    ClockSpeed: 2594
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 16142.7625563578
    BenchmarkInput: 
      GroupName: RandomLetters
      FileName: Which Random Is Faster
      RepeatCount: 1024
  - Technique: [BitConverter] + [Random]
    Time: 
      Ticks: 710649
      Days: 0
      Hours: 0
      Milliseconds: 71
      Minutes: 0
      Seconds: 0
      TotalDays: 8.22510416666667e-07
      TotalHours: 1.974025e-05
      TotalMilliseconds: 71.0649
      TotalMinutes: 0.001184415
      TotalSeconds: 0.0710649
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes($([Random]::new().next())))
              
        GroupName: RandomLetters
        FileName: Which Random Is Faster
        RepeatCount: 1024
    RelativeSpeed: 1.12029668631964
    GroupName: RandomLetters
    ClockSpeed: 2594
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 14409.3638350297
    BenchmarkInput: 
      GroupName: RandomLetters
      FileName: Which Random Is Faster
      RepeatCount: 1024
  - Technique: [BitConverter] + Get-Random
    Time: 
      Ticks: 1336473
      Days: 0
      Hours: 0
      Milliseconds: 133
      Minutes: 0
      Seconds: 0
      TotalDays: 1.54684375e-06
      TotalHours: 3.712425e-05
      TotalMilliseconds: 133.6473
      TotalMinutes: 0.002227455
      TotalSeconds: 0.1336473
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes((Get-Random)))
              
        GroupName: RandomLetters
        FileName: Which Random Is Faster
        RepeatCount: 1024
    RelativeSpeed: 2.10687170917804
    GroupName: RandomLetters
    ClockSpeed: 2594
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 7661.95800438916
    BenchmarkInput: 
      GroupName: RandomLetters
      FileName: Which Random Is Faster
      RepeatCount: 1024
  - Technique: [Random]::new().Next()
    Time: 
      Ticks: 624366
      Days: 0
      Hours: 0
      Milliseconds: 62
      Minutes: 0
      Seconds: 0
      TotalDays: 7.22645833333333e-07
      TotalHours: 1.73435e-05
      TotalMilliseconds: 62.4366
      TotalMinutes: 0.00104061
      TotalSeconds: 0.0624366
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        ScriptBlock: |
          
                  $([Random]::new().Next())
              
        GroupName: RandomNumbers
        FileName: Which Random Is Faster
        RepeatCount: 1024
    RelativeSpeed: 1
    GroupName: RandomNumbers
    ClockSpeed: 2594
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 16400.636805976
    BenchmarkInput: 
      GroupName: RandomNumbers
      FileName: Which Random Is Faster
      RepeatCount: 1024
  - Technique: Get-Random
    Time: 
      Ticks: 1136917
      Days: 0
      Hours: 0
      Milliseconds: 113
      Minutes: 0
      Seconds: 0
      TotalDays: 1.31587615740741e-06
      TotalHours: 3.15810277777778e-05
      TotalMilliseconds: 113.6917
      TotalMinutes: 0.00189486166666667
      TotalSeconds: 0.1136917
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Random
              
        GroupName: RandomNumbers
        FileName: Which Random Is Faster
        RepeatCount: 1024
    RelativeSpeed: 1.82091433550193
    GroupName: RandomNumbers
    ClockSpeed: 2594
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 9006.81404183419
    BenchmarkInput: 
      GroupName: RandomNumbers
      FileName: Which Random Is Faster
      RepeatCount: 1024
FileName: Which Random Is Faster
ClockSpeed: 2594
---


### RandomLetters


|Technique                  |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------|-----------|---------------|-------------|----------|
|Guid                       |1024       |00:00:00.063434|1x           |16142.76/s|
|[BitConverter] + [Random]  |1024       |00:00:00.071064|1.12x        |14409.36/s|
|[BitConverter] + Get-Random|1024       |00:00:00.133647|2.11x        |7661.96/s |


### RandomNumbers


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|[Random]::new().Next()|1024       |00:00:00.062436|1x           |16400.64/s|
|Get-Random            |1024       |00:00:00.113691|1.82x        |9006.81/s |
