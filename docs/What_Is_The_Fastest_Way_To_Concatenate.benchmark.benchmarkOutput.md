---
layout: Benchmark
title: What Is The Fastest Way To Concatenate

Data: 
  - Technique: JoinStrings
    Time: 
      Ticks: 47376
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.48333333333333e-08
      TotalHours: 1.316e-06
      TotalMilliseconds: 4.7376
      TotalMinutes: 7.896e-05
      TotalSeconds: 0.0047376
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      'words', 'in', 'a', 'sentance.' -join ' '
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 21107.7338736913
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: AddStrings
    Time: 
      Ticks: 51671
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.98043981481482e-08
      TotalHours: 1.43530555555556e-06
      TotalMilliseconds: 5.1671
      TotalMinutes: 8.61183333333333e-05
      TotalSeconds: 0.0051671
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      'words ' + 'in ' + 'a ' + 'sentance.'
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 1.0906577169875
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 19353.2155367614
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: StringBuilder
    Time: 
      Ticks: 334614
      Days: 0
      Hours: 0
      Milliseconds: 33
      Minutes: 0
      Seconds: 0
      TotalDays: 3.87284722222222e-07
      TotalHours: 9.29483333333333e-06
      TotalMilliseconds: 33.4614
      TotalMinutes: 0.00055769
      TotalSeconds: 0.0334614
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      $sb = [text.stringbuilder]::new()
                      $_ = $sb.Append('words ')
                      $_ = $sb.Append('in ')
                      $_ = $sb.Append('a ')
                      $_ = $sb.Append('sentance.')
                      $sb.ToString()
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 7.06294326241135
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 2988.51811340828
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
FileName: What Is The Fastest Way To Concatenate
ClockSpeed: 2793
---
What Is The Fastest Way To Concatenate
--------------------------------------
> @2793 Mhz


### 


|Technique    |Time           |RelativeSpeed|Throughput|
|-------------|---------------|-------------|----------|
|JoinStrings  |00:00:00.004737|1x           |21107.73/s|
|AddStrings   |00:00:00.005167|1.09x        |19353.22/s|
|StringBuilder|00:00:00.033461|7.06x        |2988.52/s |
