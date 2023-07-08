---
layout: Benchmark
title: What Is The Fastest Way To Concatenate

Data: 
  - Technique: AddStrings
    Time: 
      Ticks: 77664
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.98888888888889e-08
      TotalHours: 2.15733333333333e-06
      TotalMilliseconds: 7.7664
      TotalMinutes: 0.00012944
      TotalSeconds: 0.0077664
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      'words ' + 'in ' + 'a ' + 'sentance.'
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 12875.9785743717
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: StringBuilder
    Time: 
      Ticks: 135591
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.56934027777778e-07
      TotalHours: 3.76641666666667e-06
      TotalMilliseconds: 13.5591
      TotalMinutes: 0.000225985
      TotalSeconds: 0.0135591
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
    RelativeSpeed: 1.74586681087763
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 7375.12076760257
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: JoinStrings
    Time: 
      Ticks: 414469
      Days: 0
      Hours: 0
      Milliseconds: 41
      Minutes: 0
      Seconds: 0
      TotalDays: 4.79709490740741e-07
      TotalHours: 1.15130277777778e-05
      TotalMilliseconds: 41.4469
      TotalMinutes: 0.000690781666666667
      TotalSeconds: 0.0414469
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      'words', 'in', 'a', 'sentance.' -join ' '
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 5.33669396374124
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 2412.72568032832
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
FileName: What Is The Fastest Way To Concatenate
ClockSpeed: 2295
---




|Technique    |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------|-----------|---------------|-------------|----------|
|AddStrings   |100        |00:00:00.007766|1x           |12875.98/s|
|StringBuilder|100        |00:00:00.013559|1.75x        |7375.12/s |
|JoinStrings  |100        |00:00:00.041446|5.34x        |2412.73/s |
