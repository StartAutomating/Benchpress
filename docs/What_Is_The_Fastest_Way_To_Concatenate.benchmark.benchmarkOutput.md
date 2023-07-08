---
layout: Benchmark
title: What Is The Fastest Way To Concatenate

Data: 
  - Technique: AddStrings
    Time: 
      Ticks: 70660
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.17824074074074e-08
      TotalHours: 1.96277777777778e-06
      TotalMilliseconds: 7.066
      TotalMinutes: 0.000117766666666667
      TotalSeconds: 0.007066
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      'words ' + 'in ' + 'a ' + 'sentance.'
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 1
    ClockSpeed: 2397
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 14152.2785168412
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: JoinStrings
    Time: 
      Ticks: 87873
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.01704861111111e-07
      TotalHours: 2.44091666666667e-06
      TotalMilliseconds: 8.7873
      TotalMinutes: 0.000146455
      TotalSeconds: 0.0087873
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      'words', 'in', 'a', 'sentance.' -join ' '
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 1.24360317011039
    ClockSpeed: 2397
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 11380.0598591149
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: StringBuilder
    Time: 
      Ticks: 124640
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.44259259259259e-07
      TotalHours: 3.46222222222222e-06
      TotalMilliseconds: 12.464
      TotalMinutes: 0.000207733333333333
      TotalSeconds: 0.012464
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
    RelativeSpeed: 1.76393999433909
    ClockSpeed: 2397
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 8023.10654685494
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
FileName: What Is The Fastest Way To Concatenate
ClockSpeed: 2397
---


### 


|Technique    |Time           |RelativeSpeed|Throughput|
|-------------|---------------|-------------|----------|
|AddStrings   |00:00:00.007066|1x           |14152.28/s|
|JoinStrings  |00:00:00.008787|1.24x        |11380.06/s|
|StringBuilder|00:00:00.012464|1.76x        |8023.11/s |
