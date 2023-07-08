---
layout: Benchmark
title: What Is The Fastest Way To Concatenate

Data: 
  - Technique: AddStrings
    Time: 
      Ticks: 51174
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.92291666666667e-08
      TotalHours: 1.4215e-06
      TotalMilliseconds: 5.1174
      TotalMinutes: 8.529e-05
      TotalSeconds: 0.0051174
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Concatenate
        ScriptBlock: |
          
                      'words ' + 'in ' + 'a ' + 'sentance.'
                  
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 19541.1732520421
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: StringBuilder
    Time: 
      Ticks: 94950
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.09895833333333e-07
      TotalHours: 2.6375e-06
      TotalMilliseconds: 9.495
      TotalMinutes: 0.00015825
      TotalSeconds: 0.009495
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
                  
    RelativeSpeed: 1.85543440028139
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 10531.8588730911
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: JoinStrings
    Time: 
      Ticks: 322737
      Days: 0
      Hours: 0
      Milliseconds: 32
      Minutes: 0
      Seconds: 0
      TotalDays: 3.73538194444444e-07
      TotalHours: 8.96491666666667e-06
      TotalMilliseconds: 32.2737
      TotalMinutes: 0.000537895
      TotalSeconds: 0.0322737
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Concatenate
        ScriptBlock: |
          
                      'words', 'in', 'a', 'sentance.' -join ' '
                  
    RelativeSpeed: 6.3066596318443
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Concatenate
    RepeatCount: 100
    Throughput: 3098.49815794284
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
FileName: What Is The Fastest Way To Concatenate
ClockSpeed: 2594
---


### 


|Technique    |Time           |RelativeSpeed|Throughput|
|-------------|---------------|-------------|----------|
|AddStrings   |00:00:00.005117|1x           |19541.17/s|
|StringBuilder|00:00:00.009495|1.86x        |10531.86/s|
|JoinStrings  |00:00:00.032273|6.31x        |3098.5/s  |
