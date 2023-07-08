---
layout: Benchmark
title: What Is The Fastest Way To Concatenate

Data: 
  - Technique: AddStrings
    Time: 
      Ticks: 63550
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.35532407407407e-08
      TotalHours: 1.76527777777778e-06
      TotalMilliseconds: 6.355
      TotalMinutes: 0.000105916666666667
      TotalSeconds: 0.006355
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Concatenate
        ScriptBlock: |
          
                      'words ' + 'in ' + 'a ' + 'sentance.'
                  
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 15735.64122738
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: JoinStrings
    Time: 
      Ticks: 75286
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.71365740740741e-08
      TotalHours: 2.09127777777778e-06
      TotalMilliseconds: 7.5286
      TotalMinutes: 0.000125476666666667
      TotalSeconds: 0.0075286
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Concatenate
        ScriptBlock: |
          
                      'words', 'in', 'a', 'sentance.' -join ' '
                  
    RelativeSpeed: 1.18467348544453
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 13282.6820391573
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: StringBuilder
    Time: 
      Ticks: 123068
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.42439814814815e-07
      TotalHours: 3.41855555555556e-06
      TotalMilliseconds: 12.3068
      TotalMinutes: 0.000205113333333333
      TotalSeconds: 0.0123068
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
                  
    RelativeSpeed: 1.9365538945712
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 8125.58910521013
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
FileName: What Is The Fastest Way To Concatenate
ClockSpeed: 2295
---




|Technique    |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------|-----------|---------------|-------------|----------|
|AddStrings   |100        |00:00:00.006355|1x           |15735.64/s|
|JoinStrings  |100        |00:00:00.007528|1.18x        |13282.68/s|
|StringBuilder|100        |00:00:00.012306|1.94x        |8125.59/s |
