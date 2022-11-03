---
layout: Benchmark

Data: 
  - Technique: Quoted
    Time: 
      Ticks: 75299
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.71516203703704e-08
      TotalHours: 2.09163888888889e-06
      TotalMilliseconds: 7.5299
      TotalMinutes: 0.000125498333333333
      TotalSeconds: 0.0075299
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  "$pwd"
              
        FileName: ToString Or Not ToString
    RelativeSpeed: 1
    ClockSpeed: 2394
    FileName: ToString Or Not ToString
    Throughput: 13280.3888497855
    BenchmarkInput: 
      FileName: ToString Or Not ToString
  - Technique: ToString
    Time: 
      Ticks: 84161
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.74085648148148e-08
      TotalHours: 2.33780555555556e-06
      TotalMilliseconds: 8.4161
      TotalMinutes: 0.000140268333333333
      TotalSeconds: 0.0084161
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $PWD.ToString()
              
        FileName: ToString Or Not ToString
    RelativeSpeed: 1.1176908059868
    ClockSpeed: 2394
    FileName: ToString Or Not ToString
    Throughput: 11881.9880942479
    BenchmarkInput: 
      FileName: ToString Or Not ToString
FileName: ToString Or Not ToString
ClockSpeed: 2394
---
ToString Or Not ToString
------------------------
> @2394 Mhz


### 


|Technique|Time           |RelativeSpeed|Throughput|
|---------|---------------|-------------|----------|
|Quoted   |00:00:00.007529|1x           |13280.39/s|
|ToString |00:00:00.008416|1.12x        |11881.99/s|
