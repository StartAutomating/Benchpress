---
layout: Benchmark
title: What Is The Fastest Way To Concatenate

Data: 
  - Technique: JoinStrings
    Time: 
      Ticks: 50785
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.87789351851852e-08
      TotalHours: 1.41069444444444e-06
      TotalMilliseconds: 5.0785
      TotalMinutes: 8.46416666666667e-05
      TotalSeconds: 0.0050785
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      'words', 'in', 'a', 'sentance.' -join ' '
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 19690.8535985035
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: AddStrings
    Time: 
      Ticks: 57796
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.68935185185185e-08
      TotalHours: 1.60544444444444e-06
      TotalMilliseconds: 5.7796
      TotalMinutes: 9.63266666666667e-05
      TotalSeconds: 0.0057796
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      'words ' + 'in ' + 'a ' + 'sentance.'
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 1.13805257457911
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 17302.23544882
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: StringBuilder
    Time: 
      Ticks: 93969
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.08760416666667e-07
      TotalHours: 2.61025e-06
      TotalMilliseconds: 9.3969
      TotalMinutes: 0.000156615
      TotalSeconds: 0.0093969
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
    RelativeSpeed: 1.85032982179778
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 10641.8074045696
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
FileName: What Is The Fastest Way To Concatenate
ClockSpeed: 2594
---


### 


|Technique    |Time           |RelativeSpeed|Throughput|
|-------------|---------------|-------------|----------|
|JoinStrings  |00:00:00.005078|1x           |19690.85/s|
|AddStrings   |00:00:00.005779|1.14x        |17302.24/s|
|StringBuilder|00:00:00.009396|1.85x        |10641.81/s|
