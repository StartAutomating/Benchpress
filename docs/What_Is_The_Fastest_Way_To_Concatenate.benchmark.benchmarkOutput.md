---
layout: Benchmark

Data: 
  - Technique: JoinStrings
    Time: 
      Ticks: 50487
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.84340277777778e-08
      TotalHours: 1.40241666666667e-06
      TotalMilliseconds: 5.0487
      TotalMinutes: 8.4145e-05
      TotalSeconds: 0.0050487
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      'words', 'in', 'a', 'sentance.' -join ' '
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 19807.0790500525
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: AddStrings
    Time: 
      Ticks: 51058
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.90949074074074e-08
      TotalHours: 1.41827777777778e-06
      TotalMilliseconds: 5.1058
      TotalMinutes: 8.50966666666667e-05
      TotalSeconds: 0.0051058
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      'words ' + 'in ' + 'a ' + 'sentance.'
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 1.01130984213758
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 19585.5693525011
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: StringBuilder
    Time: 
      Ticks: 91418
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.0580787037037e-07
      TotalHours: 2.53938888888889e-06
      TotalMilliseconds: 9.1418
      TotalMinutes: 0.000152363333333333
      TotalSeconds: 0.0091418
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
    RelativeSpeed: 1.8107235525977
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 10938.7647946794
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
FileName: What Is The Fastest Way To Concatenate
ClockSpeed: 2594
---
What Is The Fastest Way To Concatenate
--------------------------------------
> @2594 Mhz


### 


|Technique    |Time           |RelativeSpeed|Throughput|
|-------------|---------------|-------------|----------|
|JoinStrings  |00:00:00.005048|1x           |19807.08/s|
|AddStrings   |00:00:00.005105|1.01x        |19585.57/s|
|StringBuilder|00:00:00.009141|1.81x        |10938.76/s|
