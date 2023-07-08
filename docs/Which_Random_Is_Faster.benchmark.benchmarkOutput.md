---
layout: Benchmark

Data: 
  - Technique: Guid
    Time: 
      Ticks: 741337
      Days: 0
      Hours: 0
      Milliseconds: 74
      Minutes: 0
      Seconds: 0
      TotalDays: 8.58028935185185e-07
      TotalHours: 2.05926944444444e-05
      TotalMilliseconds: 74.1337
      TotalMinutes: 0.00123556166666667
      TotalSeconds: 0.0741337
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
    ClockSpeed: 2295
    FileName: Which Random Is Faster
    Throughput: 13812.8813211805
    BenchmarkInput: 
      GroupName: RandomLetters
      FileName: Which Random Is Faster
      RepeatCount: 1024
  - Technique: [BitConverter] + [Random]
    Time: 
      Ticks: 801116
      Days: 0
      Hours: 0
      Milliseconds: 80
      Minutes: 0
      Seconds: 0
      TotalDays: 9.27217592592593e-07
      TotalHours: 2.22532222222222e-05
      TotalMilliseconds: 80.1116
      TotalMinutes: 0.00133519333333333
      TotalSeconds: 0.0801116
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        GroupName: RandomLetters
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes($([Random]::new().next())))
              
        RepeatCount: 1024
    RelativeSpeed: 1.08063674145497
    GroupName: RandomLetters
    ClockSpeed: 2295
    FileName: Which Random Is Faster
    Throughput: 12782.1688744202
    BenchmarkInput: 
      GroupName: RandomLetters
      FileName: Which Random Is Faster
      RepeatCount: 1024
  - Technique: [BitConverter] + Get-Random
    Time: 
      Ticks: 1729546
      Days: 0
      Hours: 0
      Milliseconds: 172
      Minutes: 0
      Seconds: 0
      TotalDays: 2.00178935185185e-06
      TotalHours: 4.80429444444444e-05
      TotalMilliseconds: 172.9546
      TotalMinutes: 0.00288257666666667
      TotalSeconds: 0.1729546
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        GroupName: RandomLetters
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes((Get-Random)))
              
        RepeatCount: 1024
    RelativeSpeed: 2.3330091442893
    GroupName: RandomLetters
    ClockSpeed: 2295
    FileName: Which Random Is Faster
    Throughput: 5920.62888179904
    BenchmarkInput: 
      GroupName: RandomLetters
      FileName: Which Random Is Faster
      RepeatCount: 1024
  - Technique: [Random]::new().Next()
    Time: 
      Ticks: 739335
      Days: 0
      Hours: 0
      Milliseconds: 73
      Minutes: 0
      Seconds: 0
      TotalDays: 8.55711805555556e-07
      TotalHours: 2.05370833333333e-05
      TotalMilliseconds: 73.9335
      TotalMinutes: 0.001232225
      TotalSeconds: 0.0739335
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
    ClockSpeed: 2295
    FileName: Which Random Is Faster
    Throughput: 13850.2843771768
    BenchmarkInput: 
      GroupName: RandomNumbers
      FileName: Which Random Is Faster
      RepeatCount: 1024
  - Technique: Get-Random
    Time: 
      Ticks: 1628245
      Days: 0
      Hours: 0
      Milliseconds: 162
      Minutes: 0
      Seconds: 0
      TotalDays: 1.88454282407407e-06
      TotalHours: 4.52290277777778e-05
      TotalMilliseconds: 162.8245
      TotalMinutes: 0.00271374166666667
      TotalSeconds: 0.1628245
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        GroupName: RandomNumbers
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  Get-Random
              
        RepeatCount: 1024
    RelativeSpeed: 2.20231018415197
    GroupName: RandomNumbers
    ClockSpeed: 2295
    FileName: Which Random Is Faster
    Throughput: 6288.97985254062
    BenchmarkInput: 
      GroupName: RandomNumbers
      FileName: Which Random Is Faster
      RepeatCount: 1024
FileName: Which Random Is Faster
ClockSpeed: 2295
---
Which Random Is Faster
----------------------
> @2295 Mhz


### RandomLetters


|Technique                  |Time           |RelativeSpeed|Throughput|
|---------------------------|---------------|-------------|----------|
|Guid                       |00:00:00.074133|1x           |13812.88/s|
|[BitConverter] + [Random]  |00:00:00.080111|1.08x        |12782.17/s|
|[BitConverter] + Get-Random|00:00:00.172954|2.33x        |5920.63/s |


### RandomNumbers


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::new().Next()|00:00:00.073933|1x           |13850.28/s|
|Get-Random            |00:00:00.162824|2.2x         |6288.98/s |
