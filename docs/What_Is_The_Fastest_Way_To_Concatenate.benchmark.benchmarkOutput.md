---
layout: Benchmark
title: What Is The Fastest Way To Concatenate

Data: 
  - Technique: JoinStrings
    Time: 
      Ticks: 58202
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.73634259259259e-08
      TotalHours: 1.61672222222222e-06
      TotalMilliseconds: 5.8202
      TotalMinutes: 9.70033333333333e-05
      TotalSeconds: 0.0058202
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
    Throughput: 17181.5401532593
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: AddStrings
    Time: 
      Ticks: 58442
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.76412037037037e-08
      TotalHours: 1.62338888888889e-06
      TotalMilliseconds: 5.8442
      TotalMinutes: 9.74033333333333e-05
      TotalSeconds: 0.0058442
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      'words ' + 'in ' + 'a ' + 'sentance.'
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 1.00412356963678
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 17110.9818281373
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: StringBuilder
    Time: 
      Ticks: 108968
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.2612037037037e-07
      TotalHours: 3.02688888888889e-06
      TotalMilliseconds: 10.8968
      TotalMinutes: 0.000181613333333333
      TotalSeconds: 0.0108968
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
    RelativeSpeed: 1.87223806742036
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 9177.00609353205
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
FileName: What Is The Fastest Way To Concatenate
ClockSpeed: 2095
---




|Technique    |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------|-----------|---------------|-------------|----------|
|JoinStrings  |100        |00:00:00.005820|1x           |17181.54/s|
|AddStrings   |100        |00:00:00.005844|1x           |17110.98/s|
|StringBuilder|100        |00:00:00.010896|1.87x        |9177.01/s |
