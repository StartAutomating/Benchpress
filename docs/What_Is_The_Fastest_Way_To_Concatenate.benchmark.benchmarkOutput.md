---
layout: Benchmark
title: What Is The Fastest Way To Concatenate

Data: 
  - Technique: JoinStrings
    Time: 
      Ticks: 56643
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.55590277777778e-08
      TotalHours: 1.57341666666667e-06
      TotalMilliseconds: 5.6643
      TotalMinutes: 9.4405e-05
      TotalSeconds: 0.0056643
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Concatenate
        ScriptBlock: |
          
                      'words', 'in', 'a', 'sentance.' -join ' '
                  
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 17654.4321451901
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: AddStrings
    Time: 
      Ticks: 57077
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.60613425925926e-08
      TotalHours: 1.58547222222222e-06
      TotalMilliseconds: 5.7077
      TotalMinutes: 9.51283333333333e-05
      TotalSeconds: 0.0057077
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Concatenate
        ScriptBlock: |
          
                      'words ' + 'in ' + 'a ' + 'sentance.'
                  
    RelativeSpeed: 1.00766202355101
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 17520.1920213046
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: StringBuilder
    Time: 
      Ticks: 102615
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.18767361111111e-07
      TotalHours: 2.85041666666667e-06
      TotalMilliseconds: 10.2615
      TotalMinutes: 0.000171025
      TotalSeconds: 0.0102615
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
                  
    RelativeSpeed: 1.81160955457868
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 9745.16396238367
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
FileName: What Is The Fastest Way To Concatenate
ClockSpeed: 2095
---




|Technique    |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------|-----------|---------------|-------------|----------|
|JoinStrings  |100        |00:00:00.005664|1x           |17654.43/s|
|AddStrings   |100        |00:00:00.005707|1.01x        |17520.19/s|
|StringBuilder|100        |00:00:00.010261|1.81x        |9745.16/s |
