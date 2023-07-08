---
layout: Benchmark

Data: 
  - Technique: Guid
    Time: 
      Ticks: 633721
      Days: 0
      Hours: 0
      Milliseconds: 63
      Minutes: 0
      Seconds: 0
      TotalDays: 7.3347337962963e-07
      TotalHours: 1.76033611111111e-05
      TotalMilliseconds: 63.3721
      TotalMinutes: 0.00105620166666667
      TotalSeconds: 0.0633721
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        GroupName: RandomLetters
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  [guid]::NewGuid()
              
        RepeatCount: 1024
    RelativeSpeed: 1
    GroupName: RandomLetters
    ClockSpeed: 2594
    FileName: Which Random Is Faster
    Throughput: 16158.530331171
    BenchmarkInput: 
      RepeatCount: 1024
      GroupName: RandomLetters
      FileName: Which Random Is Faster
  - Technique: [BitConverter] + [Random]
    Time: 
      Ticks: 714496
      Days: 0
      Hours: 0
      Milliseconds: 71
      Minutes: 0
      Seconds: 0
      TotalDays: 8.26962962962963e-07
      TotalHours: 1.98471111111111e-05
      TotalMilliseconds: 71.4496
      TotalMinutes: 0.00119082666666667
      TotalSeconds: 0.0714496
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        GroupName: RandomLetters
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes($([Random]::new().next())))
              
        RepeatCount: 1024
    RelativeSpeed: 1.12746145385745
    GroupName: RandomLetters
    ClockSpeed: 2594
    FileName: Which Random Is Faster
    Throughput: 14331.7807237549
    BenchmarkInput: 
      RepeatCount: 1024
      GroupName: RandomLetters
      FileName: Which Random Is Faster
  - Technique: [BitConverter] + Get-Random
    Time: 
      Ticks: 1168322
      Days: 0
      Hours: 0
      Milliseconds: 116
      Minutes: 0
      Seconds: 0
      TotalDays: 1.35222453703704e-06
      TotalHours: 3.24533888888889e-05
      TotalMilliseconds: 116.8322
      TotalMinutes: 0.00194720333333333
      TotalSeconds: 0.1168322
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        GroupName: RandomLetters
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes((Get-Random)))
              
        RepeatCount: 1024
    RelativeSpeed: 1.84359047593499
    GroupName: RandomLetters
    ClockSpeed: 2594
    FileName: Which Random Is Faster
    Throughput: 8764.70699002501
    BenchmarkInput: 
      RepeatCount: 1024
      GroupName: RandomLetters
      FileName: Which Random Is Faster
  - Technique: [Random]::new().Next()
    Time: 
      Ticks: 382100
      Days: 0
      Hours: 0
      Milliseconds: 38
      Minutes: 0
      Seconds: 0
      TotalDays: 4.4224537037037e-07
      TotalHours: 1.06138888888889e-05
      TotalMilliseconds: 38.21
      TotalMinutes: 0.000636833333333333
      TotalSeconds: 0.03821
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        GroupName: RandomNumbers
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  $([Random]::new().Next())
              
        RepeatCount: 1024
    RelativeSpeed: 1
    GroupName: RandomNumbers
    ClockSpeed: 2594
    FileName: Which Random Is Faster
    Throughput: 26799.2672075373
    BenchmarkInput: 
      RepeatCount: 1024
      GroupName: RandomNumbers
      FileName: Which Random Is Faster
  - Technique: Get-Random
    Time: 
      Ticks: 1028505
      Days: 0
      Hours: 0
      Milliseconds: 102
      Minutes: 0
      Seconds: 0
      TotalDays: 1.19039930555556e-06
      TotalHours: 2.85695833333333e-05
      TotalMilliseconds: 102.8505
      TotalMinutes: 0.001714175
      TotalSeconds: 0.1028505
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        GroupName: RandomNumbers
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  Get-Random
              
        RepeatCount: 1024
    RelativeSpeed: 2.69171682805548
    GroupName: RandomNumbers
    ClockSpeed: 2594
    FileName: Which Random Is Faster
    Throughput: 9956.19856004589
    BenchmarkInput: 
      RepeatCount: 1024
      GroupName: RandomNumbers
      FileName: Which Random Is Faster
FileName: Which Random Is Faster
ClockSpeed: 2594
---
Which Random Is Faster
----------------------
> @2594 Mhz


### RandomLetters


|Technique                  |Time           |RelativeSpeed|Throughput|
|---------------------------|---------------|-------------|----------|
|Guid                       |00:00:00.063372|1x           |16158.53/s|
|[BitConverter] + [Random]  |00:00:00.071449|1.13x        |14331.78/s|
|[BitConverter] + Get-Random|00:00:00.116832|1.84x        |8764.71/s |


### RandomNumbers


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::new().Next()|00:00:00.038210|1x           |26799.27/s|
|Get-Random            |00:00:00.102850|2.69x        |9956.2/s  |
