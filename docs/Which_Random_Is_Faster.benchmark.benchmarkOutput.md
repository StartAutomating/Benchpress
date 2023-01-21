---
layout: Benchmark

Data: 
  - Technique: Guid
    Time: 
      Ticks: 381269
      Days: 0
      Hours: 0
      Milliseconds: 38
      Minutes: 0
      Seconds: 0
      TotalDays: 4.41283564814815e-07
      TotalHours: 1.05908055555556e-05
      TotalMilliseconds: 38.1269
      TotalMinutes: 0.000635448333333333
      TotalSeconds: 0.0381269
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        ScriptBlock: |
          
                  [guid]::NewGuid()
              
        RepeatCount: 1024
        FileName: Which Random Is Faster
        GroupName: RandomLetters
    RelativeSpeed: 1
    GroupName: RandomLetters
    ClockSpeed: 2793
    FileName: Which Random Is Faster
    Throughput: 26857.677912445
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomLetters
  - Technique: [BitConverter] + [Random]
    Time: 
      Ticks: 529303
      Days: 0
      Hours: 0
      Milliseconds: 52
      Minutes: 0
      Seconds: 0
      TotalDays: 6.12619212962963e-07
      TotalHours: 1.47028611111111e-05
      TotalMilliseconds: 52.9303
      TotalMinutes: 0.000882171666666667
      TotalSeconds: 0.0529303
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes($([Random]::new().next())))
              
        RepeatCount: 1024
        FileName: Which Random Is Faster
        GroupName: RandomLetters
    RelativeSpeed: 1.388266551962
    GroupName: RandomLetters
    ClockSpeed: 2793
    FileName: Which Random Is Faster
    Throughput: 19346.196790874
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomLetters
  - Technique: [BitConverter] + Get-Random
    Time: 
      Ticks: 1046192
      Days: 0
      Hours: 0
      Milliseconds: 104
      Minutes: 0
      Seconds: 0
      TotalDays: 1.21087037037037e-06
      TotalHours: 2.90608888888889e-05
      TotalMilliseconds: 104.6192
      TotalMinutes: 0.00174365333333333
      TotalSeconds: 0.1046192
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes((Get-Random)))
              
        RepeatCount: 1024
        FileName: Which Random Is Faster
        GroupName: RandomLetters
    RelativeSpeed: 2.74397341509538
    GroupName: RandomLetters
    ClockSpeed: 2793
    FileName: Which Random Is Faster
    Throughput: 9787.87832443758
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomLetters
  - Technique: [Random]::new().Next()
    Time: 
      Ticks: 496409
      Days: 0
      Hours: 0
      Milliseconds: 49
      Minutes: 0
      Seconds: 0
      TotalDays: 5.74547453703704e-07
      TotalHours: 1.37891388888889e-05
      TotalMilliseconds: 49.6409
      TotalMinutes: 0.000827348333333333
      TotalSeconds: 0.0496409
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        ScriptBlock: |
          
                  $([Random]::new().Next())
              
        RepeatCount: 1024
        FileName: Which Random Is Faster
        GroupName: RandomNumbers
    RelativeSpeed: 1
    GroupName: RandomNumbers
    ClockSpeed: 2793
    FileName: Which Random Is Faster
    Throughput: 20628.1513832344
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
  - Technique: Get-Random
    Time: 
      Ticks: 1088221
      Days: 0
      Hours: 0
      Milliseconds: 108
      Minutes: 0
      Seconds: 0
      TotalDays: 1.2595150462963e-06
      TotalHours: 3.02283611111111e-05
      TotalMilliseconds: 108.8221
      TotalMinutes: 0.00181370166666667
      TotalSeconds: 0.1088221
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Random
              
        RepeatCount: 1024
        FileName: Which Random Is Faster
        GroupName: RandomNumbers
    RelativeSpeed: 2.19218628187644
    GroupName: RandomNumbers
    ClockSpeed: 2793
    FileName: Which Random Is Faster
    Throughput: 9409.85332942481
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
FileName: Which Random Is Faster
ClockSpeed: 2793
---
Which Random Is Faster
----------------------
> @2793 Mhz


### RandomLetters


|Technique                  |Time           |RelativeSpeed|Throughput|
|---------------------------|---------------|-------------|----------|
|Guid                       |00:00:00.038126|1x           |26857.68/s|
|[BitConverter] + [Random]  |00:00:00.052930|1.39x        |19346.2/s |
|[BitConverter] + Get-Random|00:00:00.104619|2.74x        |9787.88/s |


### RandomNumbers


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::new().Next()|00:00:00.049640|1x           |20628.15/s|
|Get-Random            |00:00:00.108822|2.19x        |9409.85/s |
