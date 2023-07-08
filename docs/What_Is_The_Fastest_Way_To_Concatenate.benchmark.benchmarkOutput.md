---
layout: Benchmark
title: What Is The Fastest Way To Concatenate

Data: 
  - Technique: JoinStrings
    Time: 
      Ticks: 49731
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.75590277777778e-08
      TotalHours: 1.38141666666667e-06
      TotalMilliseconds: 4.9731
      TotalMinutes: 8.2885e-05
      TotalSeconds: 0.0049731
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Concatenate
        ScriptBlock: |
          
                      'words', 'in', 'a', 'sentance.' -join ' '
                  
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 20108.1820192636
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: AddStrings
    Time: 
      Ticks: 49867
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.77164351851852e-08
      TotalHours: 1.38519444444444e-06
      TotalMilliseconds: 4.9867
      TotalMinutes: 8.31116666666667e-05
      TotalSeconds: 0.0049867
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Concatenate
        ScriptBlock: |
          
                      'words ' + 'in ' + 'a ' + 'sentance.'
                  
    RelativeSpeed: 1.00273471275462
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 20053.3418894259
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: StringBuilder
    Time: 
      Ticks: 97660
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.13032407407407e-07
      TotalHours: 2.71277777777778e-06
      TotalMilliseconds: 9.766
      TotalMinutes: 0.000162766666666667
      TotalSeconds: 0.009766
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
                  
    RelativeSpeed: 1.96376505600129
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 10239.6067990989
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
FileName: What Is The Fastest Way To Concatenate
ClockSpeed: 2594
---




|Technique    |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------|-----------|---------------|-------------|----------|
|JoinStrings  |100        |00:00:00.004973|1x           |20108.18/s|
|AddStrings   |100        |00:00:00.004986|1x           |20053.34/s|
|StringBuilder|100        |00:00:00.009766|1.96x        |10239.61/s|
