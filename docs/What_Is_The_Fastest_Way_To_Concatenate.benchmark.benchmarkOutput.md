---
layout: Benchmark

Data: 
  - Technique: JoinStrings
    Time: 
      Ticks: 48767
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.6443287037037e-08
      TotalHours: 1.35463888888889e-06
      TotalMilliseconds: 4.8767
      TotalMinutes: 8.12783333333333e-05
      TotalSeconds: 0.0048767
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      'words', 'in', 'a', 'sentance.' -join ' '
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 20505.6698177046
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: AddStrings
    Time: 
      Ticks: 50309
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.82280092592593e-08
      TotalHours: 1.39747222222222e-06
      TotalMilliseconds: 5.0309
      TotalMinutes: 8.38483333333333e-05
      TotalSeconds: 0.0050309
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      'words ' + 'in ' + 'a ' + 'sentance.'
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 1.0316197428589
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 19877.1591564134
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: StringBuilder
    Time: 
      Ticks: 347110
      Days: 0
      Hours: 0
      Milliseconds: 34
      Minutes: 0
      Seconds: 0
      TotalDays: 4.01747685185185e-07
      TotalHours: 9.64194444444444e-06
      TotalMilliseconds: 34.711
      TotalMinutes: 0.000578516666666667
      TotalSeconds: 0.034711
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
    RelativeSpeed: 7.11772305042344
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 2880.93111693699
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
FileName: What Is The Fastest Way To Concatenate
ClockSpeed: 2793
---
What Is The Fastest Way To Concatenate
--------------------------------------
> @2793 Mhz


### 


|Technique    |Time           |RelativeSpeed|Throughput|
|-------------|---------------|-------------|----------|
|JoinStrings  |00:00:00.004876|1x           |20505.67/s|
|AddStrings   |00:00:00.005030|1.03x        |19877.16/s|
|StringBuilder|00:00:00.034711|7.12x        |2880.93/s |
