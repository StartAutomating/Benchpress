---
layout: Benchmark

Data: 
  - Technique: AddStrings
    Time: 
      Ticks: 71225
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.24363425925926e-08
      TotalHours: 1.97847222222222e-06
      TotalMilliseconds: 7.1225
      TotalMinutes: 0.000118708333333333
      TotalSeconds: 0.0071225
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      'words ' + 'in ' + 'a ' + 'sentance.'
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 14040.014040014
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: JoinStrings
    Time: 
      Ticks: 73156
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.46712962962963e-08
      TotalHours: 2.03211111111111e-06
      TotalMilliseconds: 7.3156
      TotalMinutes: 0.000121926666666667
      TotalSeconds: 0.0073156
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      'words', 'in', 'a', 'sentance.' -join ' '
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 1.02711126711127
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 13669.4187763136
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: StringBuilder
    Time: 
      Ticks: 122300
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.41550925925926e-07
      TotalHours: 3.39722222222222e-06
      TotalMilliseconds: 12.23
      TotalMinutes: 0.000203833333333333
      TotalSeconds: 0.01223
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
    RelativeSpeed: 1.71709371709372
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 8176.61488143908
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
|AddStrings   |00:00:00.007122|1x           |14040.01/s|
|JoinStrings  |00:00:00.007315|1.03x        |13669.42/s|
|StringBuilder|00:00:00.012230|1.72x        |8176.61/s |
