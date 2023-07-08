---
layout: Benchmark
title: What Is The Fastest Way To Concatenate

Data: 
  - Technique: AddStrings
    Time: 
      Ticks: 61085
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.07002314814815e-08
      TotalHours: 1.69680555555556e-06
      TotalMilliseconds: 6.1085
      TotalMinutes: 0.000101808333333333
      TotalSeconds: 0.0061085
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Concatenate
        ScriptBlock: |
          
                      'words ' + 'in ' + 'a ' + 'sentance.'
                  
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 16370.6310878284
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: StringBuilder
    Time: 
      Ticks: 113552
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.31425925925926e-07
      TotalHours: 3.15422222222222e-06
      TotalMilliseconds: 11.3552
      TotalMinutes: 0.000189253333333333
      TotalSeconds: 0.0113552
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
                  
    RelativeSpeed: 1.85891790128509
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 8806.53797379174
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: JoinStrings
    Time: 
      Ticks: 439742
      Days: 0
      Hours: 0
      Milliseconds: 43
      Minutes: 0
      Seconds: 0
      TotalDays: 5.08960648148148e-07
      TotalHours: 1.22150555555556e-05
      TotalMilliseconds: 43.9742
      TotalMinutes: 0.000732903333333333
      TotalSeconds: 0.0439742
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Concatenate
        ScriptBlock: |
          
                      'words', 'in', 'a', 'sentance.' -join ' '
                  
    RelativeSpeed: 7.19885405582385
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 2274.06069922818
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
FileName: What Is The Fastest Way To Concatenate
ClockSpeed: 2095
---




|Technique    |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------|-----------|---------------|-------------|----------|
|AddStrings   |100        |00:00:00.006108|1x           |16370.63/s|
|StringBuilder|100        |00:00:00.011355|1.86x        |8806.54/s |
|JoinStrings  |100        |00:00:00.043974|7.2x         |2274.06/s |
