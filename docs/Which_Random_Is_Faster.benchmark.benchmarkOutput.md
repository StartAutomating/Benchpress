---
layout: Benchmark
title: Which Random Is Faster

Data: 
  - Technique: Guid
    Time: 
      Ticks: 837513
      Days: 0
      Hours: 0
      Milliseconds: 83
      Minutes: 0
      Seconds: 0
      TotalDays: 9.6934375e-07
      TotalHours: 2.326425e-05
      TotalMilliseconds: 83.7513
      TotalMinutes: 0.001395855
      TotalSeconds: 0.0837513
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        ScriptBlock: |
          
                  [guid]::NewGuid()
              
        RepeatCount: 1024
        GroupName: RandomLetters
        FileName: Which Random Is Faster
    RelativeSpeed: 1
    GroupName: RandomLetters
    ClockSpeed: 2295
    FileName: Which Random Is Faster
    Throughput: 12226.675884434
    BenchmarkInput: 
      RepeatCount: 1024
      GroupName: RandomLetters
      FileName: Which Random Is Faster
  - Technique: [BitConverter] + [Random]
    Time: 
      Ticks: 943474
      Days: 0
      Hours: 0
      Milliseconds: 94
      Minutes: 0
      Seconds: 0
      TotalDays: 1.0919837962963e-06
      TotalHours: 2.62076111111111e-05
      TotalMilliseconds: 94.3474
      TotalMinutes: 0.00157245666666667
      TotalSeconds: 0.0943474
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes($([Random]::new().next())))
              
        RepeatCount: 1024
        GroupName: RandomLetters
        FileName: Which Random Is Faster
    RelativeSpeed: 1.1265186331436
    GroupName: RandomLetters
    ClockSpeed: 2295
    FileName: Which Random Is Faster
    Throughput: 10853.5052370283
    BenchmarkInput: 
      RepeatCount: 1024
      GroupName: RandomLetters
      FileName: Which Random Is Faster
  - Technique: [BitConverter] + Get-Random
    Time: 
      Ticks: 1782445
      Days: 0
      Hours: 0
      Milliseconds: 178
      Minutes: 0
      Seconds: 0
      TotalDays: 2.0630150462963e-06
      TotalHours: 4.95123611111111e-05
      TotalMilliseconds: 178.2445
      TotalMinutes: 0.00297074166666667
      TotalSeconds: 0.1782445
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes((Get-Random)))
              
        RepeatCount: 1024
        GroupName: RandomLetters
        FileName: Which Random Is Faster
    RelativeSpeed: 2.12825950164356
    GroupName: RandomLetters
    ClockSpeed: 2295
    FileName: Which Random Is Faster
    Throughput: 5744.9177955
    BenchmarkInput: 
      RepeatCount: 1024
      GroupName: RandomLetters
      FileName: Which Random Is Faster
  - Technique: [Random]::new().Next()
    Time: 
      Ticks: 818805
      Days: 0
      Hours: 0
      Milliseconds: 81
      Minutes: 0
      Seconds: 0
      TotalDays: 9.47690972222222e-07
      TotalHours: 2.27445833333333e-05
      TotalMilliseconds: 81.8805
      TotalMinutes: 0.001364675
      TotalSeconds: 0.0818805
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        ScriptBlock: |
          
                  $([Random]::new().Next())
              
        RepeatCount: 1024
        GroupName: RandomNumbers
        FileName: Which Random Is Faster
    RelativeSpeed: 1
    GroupName: RandomNumbers
    ClockSpeed: 2295
    FileName: Which Random Is Faster
    Throughput: 12506.0301292738
    BenchmarkInput: 
      RepeatCount: 1024
      GroupName: RandomNumbers
      FileName: Which Random Is Faster
  - Technique: Get-Random
    Time: 
      Ticks: 1671024
      Days: 0
      Hours: 0
      Milliseconds: 167
      Minutes: 0
      Seconds: 0
      TotalDays: 1.93405555555556e-06
      TotalHours: 4.64173333333333e-05
      TotalMilliseconds: 167.1024
      TotalMinutes: 0.00278504
      TotalSeconds: 0.1671024
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Random
              
        RepeatCount: 1024
        GroupName: RandomNumbers
        FileName: Which Random Is Faster
    RelativeSpeed: 2.04080825104878
    GroupName: RandomNumbers
    ClockSpeed: 2295
    FileName: Which Random Is Faster
    Throughput: 6127.97901167189
    BenchmarkInput: 
      RepeatCount: 1024
      GroupName: RandomNumbers
      FileName: Which Random Is Faster
FileName: Which Random Is Faster
ClockSpeed: 2295
---
Which Random Is Faster
----------------------
> @2295 Mhz


### RandomLetters


|Technique                  |Time           |RelativeSpeed|Throughput|
|---------------------------|---------------|-------------|----------|
|Guid                       |00:00:00.083751|1x           |12226.68/s|
|[BitConverter] + [Random]  |00:00:00.094347|1.13x        |10853.51/s|
|[BitConverter] + Get-Random|00:00:00.178244|2.13x        |5744.92/s |


### RandomNumbers


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::new().Next()|00:00:00.081880|1x           |12506.03/s|
|Get-Random            |00:00:00.167102|2.04x        |6127.98/s |
