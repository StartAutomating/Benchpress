---
layout: Benchmark
title: Which Random Is Faster

Data: 
  - Technique: Guid
    Time: 
      Ticks: 762015
      Days: 0
      Hours: 0
      Milliseconds: 76
      Minutes: 0
      Seconds: 0
      TotalDays: 8.81961805555556e-07
      TotalHours: 2.11670833333333e-05
      TotalMilliseconds: 76.2015
      TotalMinutes: 0.001270025
      TotalSeconds: 0.0762015
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        RepeatCount: 1024
        GroupName: RandomLetters
        ScriptBlock: |
          
                  [guid]::NewGuid()
              
        FileName: Which Random Is Faster
    RelativeSpeed: 1
    GroupName: RandomLetters
    ClockSpeed: 2095
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 13438.0556813186
    BenchmarkInput: 
      RepeatCount: 1024
      GroupName: RandomLetters
      FileName: Which Random Is Faster
  - Technique: [BitConverter] + [Random]
    Time: 
      Ticks: 853030
      Days: 0
      Hours: 0
      Milliseconds: 85
      Minutes: 0
      Seconds: 0
      TotalDays: 9.87303240740741e-07
      TotalHours: 2.36952777777778e-05
      TotalMilliseconds: 85.303
      TotalMinutes: 0.00142171666666667
      TotalSeconds: 0.085303
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        RepeatCount: 1024
        GroupName: RandomLetters
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes($([Random]::new().next())))
              
        FileName: Which Random Is Faster
    RelativeSpeed: 1.1194399060386
    GroupName: RandomLetters
    ClockSpeed: 2095
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 12004.2671418356
    BenchmarkInput: 
      RepeatCount: 1024
      GroupName: RandomLetters
      FileName: Which Random Is Faster
  - Technique: [BitConverter] + Get-Random
    Time: 
      Ticks: 1587110
      Days: 0
      Hours: 0
      Milliseconds: 158
      Minutes: 0
      Seconds: 0
      TotalDays: 1.83693287037037e-06
      TotalHours: 4.40863888888889e-05
      TotalMilliseconds: 158.711
      TotalMinutes: 0.00264518333333333
      TotalSeconds: 0.158711
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        RepeatCount: 1024
        GroupName: RandomLetters
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes((Get-Random)))
              
        FileName: Which Random Is Faster
    RelativeSpeed: 2.08278052269312
    GroupName: RandomLetters
    ClockSpeed: 2095
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 6451.97875383559
    BenchmarkInput: 
      RepeatCount: 1024
      GroupName: RandomLetters
      FileName: Which Random Is Faster
  - Technique: [Random]::new().Next()
    Time: 
      Ticks: 761476
      Days: 0
      Hours: 0
      Milliseconds: 76
      Minutes: 0
      Seconds: 0
      TotalDays: 8.81337962962963e-07
      TotalHours: 2.11521111111111e-05
      TotalMilliseconds: 76.1476
      TotalMinutes: 0.00126912666666667
      TotalSeconds: 0.0761476
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        RepeatCount: 1024
        GroupName: RandomNumbers
        ScriptBlock: |
          
                  $([Random]::new().Next())
              
        FileName: Which Random Is Faster
    RelativeSpeed: 1
    GroupName: RandomNumbers
    ClockSpeed: 2095
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 13447.5676186774
    BenchmarkInput: 
      RepeatCount: 1024
      GroupName: RandomNumbers
      FileName: Which Random Is Faster
  - Technique: Get-Random
    Time: 
      Ticks: 1614816
      Days: 0
      Hours: 0
      Milliseconds: 161
      Minutes: 0
      Seconds: 0
      TotalDays: 1.869e-06
      TotalHours: 4.4856e-05
      TotalMilliseconds: 161.4816
      TotalMinutes: 0.00269136
      TotalSeconds: 0.1614816
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        RepeatCount: 1024
        GroupName: RandomNumbers
        ScriptBlock: |
          
                  Get-Random
              
        FileName: Which Random Is Faster
    RelativeSpeed: 2.12063938981662
    GroupName: RandomNumbers
    ClockSpeed: 2095
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 6341.27974951945
    BenchmarkInput: 
      RepeatCount: 1024
      GroupName: RandomNumbers
      FileName: Which Random Is Faster
FileName: Which Random Is Faster
ClockSpeed: 2095
---


### RandomLetters


|Technique                  |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------|-----------|---------------|-------------|----------|
|Guid                       |1024       |00:00:00.076201|1x           |13438.06/s|
|[BitConverter] + [Random]  |1024       |00:00:00.085303|1.12x        |12004.27/s|
|[BitConverter] + Get-Random|1024       |00:00:00.158711|2.08x        |6451.98/s |


### RandomNumbers


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|[Random]::new().Next()|1024       |00:00:00.076147|1x           |13447.57/s|
|Get-Random            |1024       |00:00:00.161481|2.12x        |6341.28/s |
