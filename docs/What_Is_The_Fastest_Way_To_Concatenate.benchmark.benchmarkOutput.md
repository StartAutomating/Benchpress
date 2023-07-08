---
layout: Benchmark
title: What Is The Fastest Way To Concatenate

Data: 
  - Technique: JoinStrings
    Time: 
      Ticks: 47767
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.52858796296296e-08
      TotalHours: 1.32686111111111e-06
      TotalMilliseconds: 4.7767
      TotalMinutes: 7.96116666666667e-05
      TotalSeconds: 0.0047767
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Concatenate
        ScriptBlock: |
          
                      'words', 'in', 'a', 'sentance.' -join ' '
                  
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 20934.9550945213
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: StringBuilder
    Time: 
      Ticks: 87402
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.01159722222222e-07
      TotalHours: 2.42783333333333e-06
      TotalMilliseconds: 8.7402
      TotalMinutes: 0.00014567
      TotalSeconds: 0.0087402
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
                  
    RelativeSpeed: 1.82975694517135
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 11441.3857806458
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: AddStrings
    Time: 
      Ticks: 321558
      Days: 0
      Hours: 0
      Milliseconds: 32
      Minutes: 0
      Seconds: 0
      TotalDays: 3.72173611111111e-07
      TotalHours: 8.93216666666667e-06
      TotalMilliseconds: 32.1558
      TotalMinutes: 0.00053593
      TotalSeconds: 0.0321558
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Concatenate
        ScriptBlock: |
          
                      'words ' + 'in ' + 'a ' + 'sentance.'
                  
    RelativeSpeed: 6.73180229028409
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 3109.85887460427
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
FileName: What Is The Fastest Way To Concatenate
ClockSpeed: 2793
---


### 


|Technique    |Time           |RelativeSpeed|Throughput|
|-------------|---------------|-------------|----------|
|JoinStrings  |00:00:00.004776|1x           |20934.96/s|
|StringBuilder|00:00:00.008740|1.83x        |11441.39/s|
|AddStrings   |00:00:00.032155|6.73x        |3109.86/s |
