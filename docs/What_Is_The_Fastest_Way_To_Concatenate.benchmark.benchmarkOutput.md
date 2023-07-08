---
layout: Benchmark
title: What Is The Fastest Way To Concatenate

Data: 
  - Technique: JoinStrings
    Time: 
      Ticks: 50997
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.90243055555556e-08
      TotalHours: 1.41658333333333e-06
      TotalMilliseconds: 5.0997
      TotalMinutes: 8.4995e-05
      TotalSeconds: 0.0050997
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      'words', 'in', 'a', 'sentance.' -join ' '
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 19608.9966076436
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: StringBuilder
    Time: 
      Ticks: 91066
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.05400462962963e-07
      TotalHours: 2.52961111111111e-06
      TotalMilliseconds: 9.1066
      TotalMinutes: 0.000151776666666667
      TotalSeconds: 0.0091066
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
    RelativeSpeed: 1.78571288507167
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 10981.0467133727
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: AddStrings
    Time: 
      Ticks: 329168
      Days: 0
      Hours: 0
      Milliseconds: 32
      Minutes: 0
      Seconds: 0
      TotalDays: 3.80981481481481e-07
      TotalHours: 9.14355555555556e-06
      TotalMilliseconds: 32.9168
      TotalMinutes: 0.000548613333333333
      TotalSeconds: 0.0329168
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      'words ' + 'in ' + 'a ' + 'sentance.'
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 6.45465419534482
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 3037.96237787391
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
FileName: What Is The Fastest Way To Concatenate
ClockSpeed: 2594
---




|Technique    |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------|-----------|---------------|-------------|----------|
|JoinStrings  |100        |00:00:00.005099|1x           |19609/s   |
|StringBuilder|100        |00:00:00.009106|1.79x        |10981.05/s|
|AddStrings   |100        |00:00:00.032916|6.45x        |3037.96/s |
