---
layout: Benchmark

Data: 
  - Technique: Quoted
    Time: 
      Ticks: 49104
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.68333333333333e-08
      TotalHours: 1.364e-06
      TotalMilliseconds: 4.9104
      TotalMinutes: 8.184e-05
      TotalSeconds: 0.0049104
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        FileName: ToString Or Not ToString
        ScriptBlock: |
          
                  "$pwd"
              
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: ToString Or Not ToString
    Throughput: 20364.9397197784
    BenchmarkInput: 
      FileName: ToString Or Not ToString
  - Technique: ToString
    Time: 
      Ticks: 54404
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.29675925925926e-08
      TotalHours: 1.51122222222222e-06
      TotalMilliseconds: 5.4404
      TotalMinutes: 9.06733333333333e-05
      TotalSeconds: 0.0054404
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        FileName: ToString Or Not ToString
        ScriptBlock: |
          
                  $PWD.ToString()
              
    RelativeSpeed: 1.10793418051483
    ClockSpeed: 2793
    FileName: ToString Or Not ToString
    Throughput: 18381.0013969561
    BenchmarkInput: 
      FileName: ToString Or Not ToString
FileName: ToString Or Not ToString
ClockSpeed: 2793
---
ToString Or Not ToString
------------------------
> @2793 Mhz


### 


|Technique|Time           |RelativeSpeed|Throughput|
|---------|---------------|-------------|----------|
|Quoted   |00:00:00.004910|1x           |20364.94/s|
|ToString |00:00:00.005440|1.11x        |18381/s   |
