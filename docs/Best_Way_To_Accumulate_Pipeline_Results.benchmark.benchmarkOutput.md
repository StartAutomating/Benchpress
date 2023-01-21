---
layout: Benchmark

Data: 
  - Technique: Arraylist
    Time: 
      Ticks: 155114
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.79530092592593e-07
      TotalHours: 4.30872222222222e-06
      TotalMilliseconds: 15.5114
      TotalMinutes: 0.000258523333333333
      TotalSeconds: 0.0155114
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
          
                  $arrlist = [Collections.ArrayList]::new()
                  & { 1..3 } | & { process { $null = $arrlist.Add($_); $_ } }
              
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 6446.87133334193
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Array
    Time: 
      Ticks: 160427
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.85679398148148e-07
      TotalHours: 4.45630555555556e-06
      TotalMilliseconds: 16.0427
      TotalMinutes: 0.000267378333333333
      TotalSeconds: 0.0160427
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
          
                  $outArray = @()
                  & { 1..3 } | & { process { $outArray += $_; $_ } }
              
    RelativeSpeed: 1.03425222739405
    ClockSpeed: 2793
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 6233.3647079357
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Queue
    Time: 
      Ticks: 173702
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 2.01043981481481e-07
      TotalHours: 4.82505555555556e-06
      TotalMilliseconds: 17.3702
      TotalMinutes: 0.000289503333333333
      TotalSeconds: 0.0173702
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
          
                  $tq = [Collections.Queue]::new()
                  & { 1..3 } | & { process { $tq.Enqueue($_); $_ } }
              
    RelativeSpeed: 1.11983444434416
    ClockSpeed: 2793
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 5756.98610263555
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Tee-Object
    Time: 
      Ticks: 623774
      Days: 0
      Hours: 0
      Milliseconds: 62
      Minutes: 0
      Seconds: 0
      TotalDays: 7.21960648148148e-07
      TotalHours: 1.73270555555556e-05
      TotalMilliseconds: 62.3774
      TotalMinutes: 0.00103962333333333
      TotalSeconds: 0.0623774
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
           
                  & { 1..3 } | Tee-Object -Variable n 
              
    RelativeSpeed: 4.02139071908403
    ClockSpeed: 2793
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 1603.14472869982
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
FileName: Best Way To Accumulate Pipeline Results
ClockSpeed: 2793
---
Best Way To Accumulate Pipeline Results
---------------------------------------
> @2793 Mhz


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Arraylist |00:00:00.015511|1x           |6446.87/s |
|Array     |00:00:00.016042|1.03x        |6233.36/s |
|Queue     |00:00:00.017370|1.12x        |5756.99/s |
|Tee-Object|00:00:00.062377|4.02x        |1603.14/s |
