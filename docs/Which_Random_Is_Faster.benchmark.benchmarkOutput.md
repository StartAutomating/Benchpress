---
layout: Benchmark

Data: 
  - Technique: Guid
    Time: 
      Ticks: 645830
      Days: 0
      Hours: 0
      Milliseconds: 64
      Minutes: 0
      Seconds: 0
      TotalDays: 7.47488425925926e-07
      TotalHours: 1.79397222222222e-05
      TotalMilliseconds: 64.583
      TotalMinutes: 0.00107638333333333
      TotalSeconds: 0.064583
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        GroupName: RandomLetters
        ScriptBlock: |
          
                  [guid]::NewGuid()
              
        RepeatCount: 1024
        FileName: Which Random Is Faster
    RelativeSpeed: 1
    GroupName: RandomLetters
    ClockSpeed: 2793
    FileName: Which Random Is Faster
    Throughput: 15855.5657061456
    BenchmarkInput: 
      GroupName: RandomLetters
      RepeatCount: 1024
      FileName: Which Random Is Faster
  - Technique: [BitConverter] + [Random]
    Time: 
      Ticks: 662919
      Days: 0
      Hours: 0
      Milliseconds: 66
      Minutes: 0
      Seconds: 0
      TotalDays: 7.67267361111111e-07
      TotalHours: 1.84144166666667e-05
      TotalMilliseconds: 66.2919
      TotalMinutes: 0.001104865
      TotalSeconds: 0.0662919
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        GroupName: RandomLetters
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes($([Random]::new().next())))
              
        RepeatCount: 1024
        FileName: Which Random Is Faster
    RelativeSpeed: 1.02646052366722
    GroupName: RandomLetters
    ClockSpeed: 2793
    FileName: Which Random Is Faster
    Throughput: 15446.8343794642
    BenchmarkInput: 
      GroupName: RandomLetters
      RepeatCount: 1024
      FileName: Which Random Is Faster
  - Technique: [BitConverter] + Get-Random
    Time: 
      Ticks: 1202330
      Days: 0
      Hours: 0
      Milliseconds: 120
      Minutes: 0
      Seconds: 0
      TotalDays: 1.39158564814815e-06
      TotalHours: 3.33980555555556e-05
      TotalMilliseconds: 120.233
      TotalMinutes: 0.00200388333333333
      TotalSeconds: 0.120233
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        GroupName: RandomLetters
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes((Get-Random)))
              
        RepeatCount: 1024
        FileName: Which Random Is Faster
    RelativeSpeed: 1.86168186674512
    GroupName: RandomLetters
    ClockSpeed: 2793
    FileName: Which Random Is Faster
    Throughput: 8516.79655335889
    BenchmarkInput: 
      GroupName: RandomLetters
      RepeatCount: 1024
      FileName: Which Random Is Faster
  - Technique: [Random]::new().Next()
    Time: 
      Ticks: 651303
      Days: 0
      Hours: 0
      Milliseconds: 65
      Minutes: 0
      Seconds: 0
      TotalDays: 7.53822916666667e-07
      TotalHours: 1.809175e-05
      TotalMilliseconds: 65.1303
      TotalMinutes: 0.001085505
      TotalSeconds: 0.0651303
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        GroupName: RandomNumbers
        ScriptBlock: |
          
                  $([Random]::new().Next())
              
        RepeatCount: 1024
        FileName: Which Random Is Faster
    RelativeSpeed: 1
    GroupName: RandomNumbers
    ClockSpeed: 2793
    FileName: Which Random Is Faster
    Throughput: 15722.3289313883
    BenchmarkInput: 
      GroupName: RandomNumbers
      RepeatCount: 1024
      FileName: Which Random Is Faster
  - Technique: Get-Random
    Time: 
      Ticks: 1162622
      Days: 0
      Hours: 0
      Milliseconds: 116
      Minutes: 0
      Seconds: 0
      TotalDays: 1.34562731481481e-06
      TotalHours: 3.22950555555556e-05
      TotalMilliseconds: 116.2622
      TotalMinutes: 0.00193770333333333
      TotalSeconds: 0.1162622
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        GroupName: RandomNumbers
        ScriptBlock: |
          
                  Get-Random
              
        RepeatCount: 1024
        FileName: Which Random Is Faster
    RelativeSpeed: 1.78507085028013
    GroupName: RandomNumbers
    ClockSpeed: 2793
    FileName: Which Random Is Faster
    Throughput: 8807.67781789782
    BenchmarkInput: 
      GroupName: RandomNumbers
      RepeatCount: 1024
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
|Guid                       |00:00:00.064583|1x           |15855.57/s|
|[BitConverter] + [Random]  |00:00:00.066291|1.03x        |15446.83/s|
|[BitConverter] + Get-Random|00:00:00.120233|1.86x        |8516.8/s  |


### RandomNumbers


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::new().Next()|00:00:00.065130|1x           |15722.33/s|
|Get-Random            |00:00:00.116262|1.79x        |8807.68/s |
