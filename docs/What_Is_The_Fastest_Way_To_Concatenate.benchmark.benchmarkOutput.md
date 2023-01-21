---
layout: Benchmark

Data: 
  - Technique: JoinStrings
    Time: 
      Ticks: 57127
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.6119212962963e-08
      TotalHours: 1.58686111111111e-06
      TotalMilliseconds: 5.7127
      TotalMinutes: 9.52116666666667e-05
      TotalSeconds: 0.0057127
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      'words', 'in', 'a', 'sentance.' -join ' '
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 17504.8575979834
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: AddStrings
    Time: 
      Ticks: 57427
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.64664351851852e-08
      TotalHours: 1.59519444444444e-06
      TotalMilliseconds: 5.7427
      TotalMinutes: 9.57116666666667e-05
      TotalSeconds: 0.0057427
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      'words ' + 'in ' + 'a ' + 'sentance.'
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 1.0052514572794
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 17413.4118097759
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: StringBuilder
    Time: 
      Ticks: 106283
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.23012731481481e-07
      TotalHours: 2.95230555555556e-06
      TotalMilliseconds: 10.6283
      TotalMinutes: 0.000177138333333333
      TotalSeconds: 0.0106283
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
    RelativeSpeed: 1.86046878008647
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 9408.84243011582
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
FileName: What Is The Fastest Way To Concatenate
ClockSpeed: 2095
---
What Is The Fastest Way To Concatenate
--------------------------------------
> @2095 Mhz


### 


|Technique    |Time           |RelativeSpeed|Throughput|
|-------------|---------------|-------------|----------|
|JoinStrings  |00:00:00.005712|1x           |17504.86/s|
|AddStrings   |00:00:00.005742|1.01x        |17413.41/s|
|StringBuilder|00:00:00.010628|1.86x        |9408.84/s |
