---
layout: Benchmark

Data: 
  - Technique: JoinStrings
    Time: 
      Ticks: 47945
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.54918981481481e-08
      TotalHours: 1.33180555555556e-06
      TotalMilliseconds: 4.7945
      TotalMinutes: 7.99083333333333e-05
      TotalSeconds: 0.0047945
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Concatenate
        ScriptBlock: |
          
                      'words', 'in', 'a', 'sentance.' -join ' '
                  
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 20857.2322452811
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: AddStrings
    Time: 
      Ticks: 48420
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.60416666666667e-08
      TotalHours: 1.345e-06
      TotalMilliseconds: 4.842
      TotalMinutes: 8.07e-05
      TotalSeconds: 0.004842
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Concatenate
        ScriptBlock: |
          
                      'words ' + 'in ' + 'a ' + 'sentance.'
                  
    RelativeSpeed: 1.00990718531651
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 20652.6228831062
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: StringBuilder
    Time: 
      Ticks: 87544
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.01324074074074e-07
      TotalHours: 2.43177777777778e-06
      TotalMilliseconds: 8.7544
      TotalMinutes: 0.000145906666666667
      TotalSeconds: 0.0087544
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
                  
    RelativeSpeed: 1.82592553968088
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 11422.8273782327
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
|JoinStrings  |00:00:00.004794|1x           |20857.23/s|
|AddStrings   |00:00:00.004842|1.01x        |20652.62/s|
|StringBuilder|00:00:00.008754|1.83x        |11422.83/s|
