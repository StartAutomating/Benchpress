---
layout: Benchmark
title: What Is The Fastest Way To Concatenate

Data: 
  - Technique: JoinStrings
    Time: 
      Ticks: 48296
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.58981481481481e-08
      TotalHours: 1.34155555555556e-06
      TotalMilliseconds: 4.8296
      TotalMinutes: 8.04933333333333e-05
      TotalSeconds: 0.0048296
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      'words', 'in', 'a', 'sentance.' -join ' '
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 20705.648500911
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: StringBuilder
    Time: 
      Ticks: 91363
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.05744212962963e-07
      TotalHours: 2.53786111111111e-06
      TotalMilliseconds: 9.1363
      TotalMinutes: 0.000152271666666667
      TotalSeconds: 0.0091363
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
    RelativeSpeed: 1.89173016398874
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 10945.3498681085
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: AddStrings
    Time: 
      Ticks: 305417
      Days: 0
      Hours: 0
      Milliseconds: 30
      Minutes: 0
      Seconds: 0
      TotalDays: 3.53491898148148e-07
      TotalHours: 8.48380555555556e-06
      TotalMilliseconds: 30.5417
      TotalMinutes: 0.000509028333333333
      TotalSeconds: 0.0305417
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      'words ' + 'in ' + 'a ' + 'sentance.'
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 6.32385704820275
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 3274.21197903195
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
FileName: What Is The Fastest Way To Concatenate
ClockSpeed: 2095
---




|Technique    |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------|-----------|---------------|-------------|----------|
|JoinStrings  |100        |00:00:00.004829|1x           |20705.65/s|
|StringBuilder|100        |00:00:00.009136|1.89x        |10945.35/s|
|AddStrings   |100        |00:00:00.030541|6.32x        |3274.21/s |
