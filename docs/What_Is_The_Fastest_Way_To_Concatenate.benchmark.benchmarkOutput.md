---
layout: Benchmark
title: What Is The Fastest Way To Concatenate

Data: 
  - Technique: JoinStrings
    Time: 
      Ticks: 48511
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.61469907407407e-08
      TotalHours: 1.34752777777778e-06
      TotalMilliseconds: 4.8511
      TotalMinutes: 8.08516666666667e-05
      TotalSeconds: 0.0048511
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      'words', 'in', 'a', 'sentance.' -join ' '
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 20613.8813877265
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: AddStrings
    Time: 
      Ticks: 50527
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.84803240740741e-08
      TotalHours: 1.40352777777778e-06
      TotalMilliseconds: 5.0527
      TotalMinutes: 8.42116666666667e-05
      TotalSeconds: 0.0050527
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      'words ' + 'in ' + 'a ' + 'sentance.'
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 1.04155758487766
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 19791.3986581432
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: StringBuilder
    Time: 
      Ticks: 91414
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.05803240740741e-07
      TotalHours: 2.53927777777778e-06
      TotalMilliseconds: 9.1414
      TotalMinutes: 0.000152356666666667
      TotalSeconds: 0.0091414
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
    RelativeSpeed: 1.88439735317763
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 10939.2434419236
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
FileName: What Is The Fastest Way To Concatenate
ClockSpeed: 2793
---


### 


|Technique    |Time           |RelativeSpeed|Throughput|
|-------------|---------------|-------------|----------|
|JoinStrings  |00:00:00.004851|1x           |20613.88/s|
|AddStrings   |00:00:00.005052|1.04x        |19791.4/s |
|StringBuilder|00:00:00.009141|1.88x        |10939.24/s|
