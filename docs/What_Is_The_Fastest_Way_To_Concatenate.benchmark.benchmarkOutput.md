---
layout: Benchmark
title: What Is The Fastest Way To Concatenate

Data: 
  - Technique: AddStrings
    Time: 
      Ticks: 82220
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.5162037037037e-08
      TotalHours: 2.28388888888889e-06
      TotalMilliseconds: 8.222
      TotalMinutes: 0.000137033333333333
      TotalSeconds: 0.008222
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      'words ' + 'in ' + 'a ' + 'sentance.'
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 12162.4908781318
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: JoinStrings
    Time: 
      Ticks: 125498
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.45252314814815e-07
      TotalHours: 3.48605555555556e-06
      TotalMilliseconds: 12.5498
      TotalMinutes: 0.000209163333333333
      TotalSeconds: 0.0125498
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      'words', 'in', 'a', 'sentance.' -join ' '
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 1.52636828022379
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 7968.25447417489
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: StringBuilder
    Time: 
      Ticks: 195004
      Days: 0
      Hours: 0
      Milliseconds: 19
      Minutes: 0
      Seconds: 0
      TotalDays: 2.25699074074074e-07
      TotalHours: 5.41677777777778e-06
      TotalMilliseconds: 19.5004
      TotalMinutes: 0.000325006666666667
      TotalSeconds: 0.0195004
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
    RelativeSpeed: 2.37173437119922
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 5128.09993641156
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
FileName: What Is The Fastest Way To Concatenate
ClockSpeed: 2295
---
What Is The Fastest Way To Concatenate
--------------------------------------
> @2295 Mhz


### 


|Technique    |Time           |RelativeSpeed|Throughput|
|-------------|---------------|-------------|----------|
|AddStrings   |00:00:00.008222|1x           |12162.49/s|
|JoinStrings  |00:00:00.012549|1.53x        |7968.25/s |
|StringBuilder|00:00:00.019500|2.37x        |5128.1/s  |
