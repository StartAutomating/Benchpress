---
layout: Benchmark

Data: 
  - Technique: ToString
    Time: 
      Ticks: 77266
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.94282407407407e-08
      TotalHours: 2.14627777777778e-06
      TotalMilliseconds: 7.7266
      TotalMinutes: 0.000128776666666667
      TotalSeconds: 0.0077266
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        FileName: ToString Or Not ToString
        ScriptBlock: |
          
                  $PWD.ToString()
              
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: ToString Or Not ToString
    Throughput: 12942.3032122797
    BenchmarkInput: 
      FileName: ToString Or Not ToString
  - Technique: Quoted
    Time: 
      Ticks: 79637
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 9.21724537037037e-08
      TotalHours: 2.21213888888889e-06
      TotalMilliseconds: 7.9637
      TotalMinutes: 0.000132728333333333
      TotalSeconds: 0.0079637
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        FileName: ToString Or Not ToString
        ScriptBlock: |
          
                  "$pwd"
              
    RelativeSpeed: 1.03068620091632
    ClockSpeed: 2295
    FileName: ToString Or Not ToString
    Throughput: 12556.9772844281
    BenchmarkInput: 
      FileName: ToString Or Not ToString
FileName: ToString Or Not ToString
ClockSpeed: 2295
---
ToString Or Not ToString
------------------------
> @2295 Mhz


### 


|Technique|Time           |RelativeSpeed|Throughput|
|---------|---------------|-------------|----------|
|ToString |00:00:00.007726|1x           |12942.3/s |
|Quoted   |00:00:00.007963|1.03x        |12556.98/s|
