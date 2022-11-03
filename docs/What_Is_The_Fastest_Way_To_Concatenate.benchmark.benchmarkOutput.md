---
layout: Benchmark

Data: 
  - Technique: AddStrings
    Time: 
      Ticks: 71899
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.32164351851852e-08
      TotalHours: 1.99719444444444e-06
      TotalMilliseconds: 7.1899
      TotalMinutes: 0.000119831666666667
      TotalSeconds: 0.0071899
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Concatenate
        ScriptBlock: |
          
                      'words ' + 'in ' + 'a ' + 'sentance.'
                  
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 13908.3992823266
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: JoinStrings
    Time: 
      Ticks: 75269
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.71168981481482e-08
      TotalHours: 2.09080555555556e-06
      TotalMilliseconds: 7.5269
      TotalMinutes: 0.000125448333333333
      TotalSeconds: 0.0075269
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Concatenate
        ScriptBlock: |
          
                      'words', 'in', 'a', 'sentance.' -join ' '
                  
    RelativeSpeed: 1.04687130558144
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 13285.6820204865
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: StringBuilder
    Time: 
      Ticks: 139457
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.61408564814815e-07
      TotalHours: 3.87380555555556e-06
      TotalMilliseconds: 13.9457
      TotalMinutes: 0.000232428333333333
      TotalSeconds: 0.0139457
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
                  
    RelativeSpeed: 1.93962363871542
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 7170.66909513327
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
|AddStrings   |00:00:00.007189|1x           |13908.4/s |
|JoinStrings  |00:00:00.007526|1.05x        |13285.68/s|
|StringBuilder|00:00:00.013945|1.94x        |7170.67/s |
