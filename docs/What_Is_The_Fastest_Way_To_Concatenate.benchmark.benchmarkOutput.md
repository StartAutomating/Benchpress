---
layout: Benchmark

Data: 
  - Technique: AddStrings
    Time: 
      Ticks: 73304
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.48425925925926e-08
      TotalHours: 2.03622222222222e-06
      TotalMilliseconds: 7.3304
      TotalMinutes: 0.000122173333333333
      TotalSeconds: 0.0073304
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      'words ' + 'in ' + 'a ' + 'sentance.'
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 1
    ClockSpeed: 2394
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 13641.8203645094
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: JoinStrings
    Time: 
      Ticks: 81588
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.44305555555556e-08
      TotalHours: 2.26633333333333e-06
      TotalMilliseconds: 8.1588
      TotalMinutes: 0.00013598
      TotalSeconds: 0.0081588
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      'words', 'in', 'a', 'sentance.' -join ' '
                  
        FileName: What Is The Fastest Way To Concatenate
    RelativeSpeed: 1.1130088398996
    ClockSpeed: 2394
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 12256.7044173163
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
  - Technique: StringBuilder
    Time: 
      Ticks: 119910
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.38784722222222e-07
      TotalHours: 3.33083333333333e-06
      TotalMilliseconds: 11.991
      TotalMinutes: 0.00019985
      TotalSeconds: 0.011991
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
    RelativeSpeed: 1.63579067990833
    ClockSpeed: 2394
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 8339.5880243516
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Concatenate
FileName: What Is The Fastest Way To Concatenate
ClockSpeed: 2394
---
What Is The Fastest Way To Concatenate
--------------------------------------
> @2394 Mhz


### 


|Technique    |Time           |RelativeSpeed|Throughput|
|-------------|---------------|-------------|----------|
|AddStrings   |00:00:00.007330|1x           |13641.82/s|
|JoinStrings  |00:00:00.008158|1.11x        |12256.7/s |
|StringBuilder|00:00:00.011991|1.64x        |8339.59/s |
