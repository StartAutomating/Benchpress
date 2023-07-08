---
layout: Benchmark
title: What Is The Fastest Way To Concatenate

Data: 
  - Technique: JoinStrings
    Time: 
      Ticks: 40518
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.68958333333333e-08
      TotalHours: 1.1255e-06
      TotalMilliseconds: 4.0518
      TotalMinutes: 6.753e-05
      TotalSeconds: 0.0040518
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Concatenate
        ScriptBlock: |
          
                      'words', 'in', 'a', 'sentance.' -join ' '
                  
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 24680.3889629301
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: AddStrings
    Time: 
      Ticks: 50881
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.88900462962963e-08
      TotalHours: 1.41336111111111e-06
      TotalMilliseconds: 5.0881
      TotalMinutes: 8.48016666666667e-05
      TotalSeconds: 0.0050881
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Concatenate
        ScriptBlock: |
          
                      'words ' + 'in ' + 'a ' + 'sentance.'
                  
    RelativeSpeed: 1.25576287082284
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 19653.7017747293
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: StringBuilder
    Time: 
      Ticks: 82805
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.58391203703704e-08
      TotalHours: 2.30013888888889e-06
      TotalMilliseconds: 8.2805
      TotalMinutes: 0.000138008333333333
      TotalSeconds: 0.0082805
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Concatenate
        ScriptBlock: |
          
                      $sb = [text.stringbuilder]::new()
                      $_ = $sb.Append('words ')
                      $_ = $sb.Append('in ')
                      $_ = $sb.Append('a ')
                      $_ = $sb.Append('sentance.')
                      $sb.ToString()
                  
    RelativeSpeed: 2.04365960807542
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 12076.5654247932
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
FileName: What Is The Fastest Way To Concatenate
ClockSpeed: 2095
---




|Technique    |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------|-----------|---------------|-------------|----------|
|JoinStrings  |100        |00:00:00.004051|1x           |24680.39/s|
|AddStrings   |100        |00:00:00.005088|1.26x        |19653.7/s |
|StringBuilder|100        |00:00:00.008280|2.04x        |12076.57/s|
