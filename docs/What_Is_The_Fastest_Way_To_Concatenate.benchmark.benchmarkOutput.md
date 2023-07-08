---
layout: Benchmark
title: What Is The Fastest Way To Concatenate

Data: 
  - Technique: AddStrings
    Time: 
      Ticks: 52001
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.01863425925926e-08
      TotalHours: 1.44447222222222e-06
      TotalMilliseconds: 5.2001
      TotalMinutes: 8.66683333333333e-05
      TotalSeconds: 0.0052001
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      'words ' + 'in ' + 'a ' + 'sentance.'
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 19230.3994153959
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: StringBuilder
    Time: 
      Ticks: 94877
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.09811342592593e-07
      TotalHours: 2.63547222222222e-06
      TotalMilliseconds: 9.4877
      TotalMinutes: 0.000158128333333333
      TotalSeconds: 0.0094877
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
    RelativeSpeed: 1.82452260533451
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 10539.9622669351
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: JoinStrings
    Time: 
      Ticks: 320286
      Days: 0
      Hours: 0
      Milliseconds: 32
      Minutes: 0
      Seconds: 0
      TotalDays: 3.70701388888889e-07
      TotalHours: 8.89683333333333e-06
      TotalMilliseconds: 32.0286
      TotalMinutes: 0.00053381
      TotalSeconds: 0.0320286
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      'words', 'in', 'a', 'sentance.' -join ' '
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 6.15922770715948
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 3122.20952523682
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
FileName: What Is The Fastest Way To Concatenate
ClockSpeed: 2594
---




|Technique    |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------|-----------|---------------|-------------|----------|
|AddStrings   |100        |00:00:00.005200|1x           |19230.4/s |
|StringBuilder|100        |00:00:00.009487|1.82x        |10539.96/s|
|JoinStrings  |100        |00:00:00.032028|6.16x        |3122.21/s |
