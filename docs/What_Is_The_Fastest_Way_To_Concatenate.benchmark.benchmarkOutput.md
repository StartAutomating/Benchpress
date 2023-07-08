---
layout: Benchmark
title: What Is The Fastest Way To Concatenate

Data: 
  - Technique: AddStrings
    Time: 
      Ticks: 75131
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.69571759259259e-08
      TotalHours: 2.08697222222222e-06
      TotalMilliseconds: 7.5131
      TotalMinutes: 0.000125218333333333
      TotalSeconds: 0.0075131
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
    Throughput: 13310.0850514435
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: JoinStrings
    Time: 
      Ticks: 76488
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.85277777777778e-08
      TotalHours: 2.12466666666667e-06
      TotalMilliseconds: 7.6488
      TotalMinutes: 0.00012748
      TotalSeconds: 0.0076488
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Concatenate
        ScriptBlock: |
          
                      'words', 'in', 'a', 'sentance.' -join ' '
                  
    RelativeSpeed: 1.01806178541481
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 13073.9462399331
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: StringBuilder
    Time: 
      Ticks: 131346
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.52020833333333e-07
      TotalHours: 3.6485e-06
      TotalMilliseconds: 13.1346
      TotalMinutes: 0.00021891
      TotalSeconds: 0.0131346
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
                  
    RelativeSpeed: 1.7482264311669
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 7613.47890304996
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
FileName: What Is The Fastest Way To Concatenate
ClockSpeed: 2295
---




|Technique    |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------|-----------|---------------|-------------|----------|
|AddStrings   |100        |00:00:00.007513|1x           |13310.09/s|
|JoinStrings  |100        |00:00:00.007648|1.02x        |13073.95/s|
|StringBuilder|100        |00:00:00.013134|1.75x        |7613.48/s |
