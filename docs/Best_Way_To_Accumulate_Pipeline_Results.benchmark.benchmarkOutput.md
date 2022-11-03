---
layout: Benchmark

Data: 
  - Technique: Queue
    Time: 
      Ticks: 239763
      Days: 0
      Hours: 0
      Milliseconds: 23
      Minutes: 0
      Seconds: 0
      TotalDays: 2.77503472222222e-07
      TotalHours: 6.66008333333333e-06
      TotalMilliseconds: 23.9763
      TotalMinutes: 0.000399605
      TotalSeconds: 0.0239763
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
          
                  $tq = [Collections.Queue]::new()
                  & { 1..3 } | & { process { $tq.Enqueue($_); $_ } }
              
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 4170.78531716737
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Arraylist
    Time: 
      Ticks: 240396
      Days: 0
      Hours: 0
      Milliseconds: 24
      Minutes: 0
      Seconds: 0
      TotalDays: 2.78236111111111e-07
      TotalHours: 6.67766666666667e-06
      TotalMilliseconds: 24.0396
      TotalMinutes: 0.00040066
      TotalSeconds: 0.0240396
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
          
                  $arrlist = [Collections.ArrayList]::new()
                  & { 1..3 } | & { process { $null = $arrlist.Add($_); $_ } }
              
    RelativeSpeed: 1.00264010710577
    ClockSpeed: 2295
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 4159.80299173031
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Array
    Time: 
      Ticks: 359969
      Days: 0
      Hours: 0
      Milliseconds: 35
      Minutes: 0
      Seconds: 0
      TotalDays: 4.16630787037037e-07
      TotalHours: 9.99913888888889e-06
      TotalMilliseconds: 35.9969
      TotalMinutes: 0.000599948333333333
      TotalSeconds: 0.0359969
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
          
                  $outArray = @()
                  & { 1..3 } | & { process { $outArray += $_; $_ } }
              
    RelativeSpeed: 1.50135341983542
    ClockSpeed: 2295
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 2778.01699590798
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Tee-Object
    Time: 
      Ticks: 830463
      Days: 0
      Hours: 0
      Milliseconds: 83
      Minutes: 0
      Seconds: 0
      TotalDays: 9.61184027777778e-07
      TotalHours: 2.30684166666667e-05
      TotalMilliseconds: 83.0463
      TotalMinutes: 0.001384105
      TotalSeconds: 0.0830463
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
           
                  & { 1..3 } | Tee-Object -Variable n 
              
    RelativeSpeed: 3.46368288685077
    ClockSpeed: 2295
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 1204.1475658759
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
FileName: Best Way To Accumulate Pipeline Results
ClockSpeed: 2295
---
Best Way To Accumulate Pipeline Results
---------------------------------------
> @2295 Mhz


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Queue     |00:00:00.023976|1x           |4170.79/s |
|Arraylist |00:00:00.024039|1x           |4159.8/s  |
|Array     |00:00:00.035996|1.5x         |2778.02/s |
|Tee-Object|00:00:00.083046|3.46x        |1204.15/s |
