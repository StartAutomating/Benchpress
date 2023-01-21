---
layout: Benchmark

Data: 
  - Technique: Arraylist
    Time: 
      Ticks: 174213
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 2.01635416666667e-07
      TotalHours: 4.83925e-06
      TotalMilliseconds: 17.4213
      TotalMinutes: 0.000290355
      TotalSeconds: 0.0174213
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $arrlist = [Collections.ArrayList]::new()
                  & { 1..3 } | & { process { $null = $arrlist.Add($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 5740.09976293388
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Queue
    Time: 
      Ticks: 187641
      Days: 0
      Hours: 0
      Milliseconds: 18
      Minutes: 0
      Seconds: 0
      TotalDays: 2.17177083333333e-07
      TotalHours: 5.21225e-06
      TotalMilliseconds: 18.7641
      TotalMinutes: 0.000312735
      TotalSeconds: 0.0187641
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $tq = [Collections.Queue]::new()
                  & { 1..3 } | & { process { $tq.Enqueue($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1.07707805961668
    ClockSpeed: 2095
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 5329.32568042166
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Tee-Object
    Time: 
      Ticks: 444523
      Days: 0
      Hours: 0
      Milliseconds: 44
      Minutes: 0
      Seconds: 0
      TotalDays: 5.14494212962963e-07
      TotalHours: 1.23478611111111e-05
      TotalMilliseconds: 44.4523
      TotalMinutes: 0.000740871666666667
      TotalSeconds: 0.0444523
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
           
                  & { 1..3 } | Tee-Object -Variable n 
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 2.55160636691866
    ClockSpeed: 2095
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 2249.60238277884
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Array
    Time: 
      Ticks: 508777
      Days: 0
      Hours: 0
      Milliseconds: 50
      Minutes: 0
      Seconds: 0
      TotalDays: 5.88862268518519e-07
      TotalHours: 1.41326944444444e-05
      TotalMilliseconds: 50.8777
      TotalMinutes: 0.000847961666666667
      TotalSeconds: 0.0508777
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $outArray = @()
                  & { 1..3 } | & { process { $outArray += $_; $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 2.92043073708621
    ClockSpeed: 2095
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 1965.49765417855
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
FileName: Best Way To Accumulate Pipeline Results
ClockSpeed: 2095
---
Best Way To Accumulate Pipeline Results
---------------------------------------
> @2095 Mhz


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Arraylist |00:00:00.017421|1x           |5740.1/s  |
|Queue     |00:00:00.018764|1.08x        |5329.33/s |
|Tee-Object|00:00:00.044452|2.55x        |2249.6/s  |
|Array     |00:00:00.050877|2.92x        |1965.5/s  |
