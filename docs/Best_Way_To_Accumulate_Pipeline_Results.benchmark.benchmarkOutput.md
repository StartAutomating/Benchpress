---
layout: Benchmark

Data: 
  - Technique: Array
    Time: 
      Ticks: 174856
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 2.0237962962963e-07
      TotalHours: 4.85711111111111e-06
      TotalMilliseconds: 17.4856
      TotalMinutes: 0.000291426666666667
      TotalSeconds: 0.0174856
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $outArray = @()
                  & { 1..3 } | & { process { $outArray += $_; $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 5718.99162739626
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Arraylist
    Time: 
      Ticks: 227004
      Days: 0
      Hours: 0
      Milliseconds: 22
      Minutes: 0
      Seconds: 0
      TotalDays: 2.62736111111111e-07
      TotalHours: 6.30566666666667e-06
      TotalMilliseconds: 22.7004
      TotalMinutes: 0.00037834
      TotalSeconds: 0.0227004
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $arrlist = [Collections.ArrayList]::new()
                  & { 1..3 } | & { process { $null = $arrlist.Add($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1.29823397538546
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 4405.2087187891
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Queue
    Time: 
      Ticks: 361099
      Days: 0
      Hours: 0
      Milliseconds: 36
      Minutes: 0
      Seconds: 0
      TotalDays: 4.17938657407407e-07
      TotalHours: 1.00305277777778e-05
      TotalMilliseconds: 36.1099
      TotalMinutes: 0.000601831666666667
      TotalSeconds: 0.0361099
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $tq = [Collections.Queue]::new()
                  & { 1..3 } | & { process { $tq.Enqueue($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 2.06512215766116
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 2769.32364808543
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Tee-Object
    Time: 
      Ticks: 393141
      Days: 0
      Hours: 0
      Milliseconds: 39
      Minutes: 0
      Seconds: 0
      TotalDays: 4.55024305555556e-07
      TotalHours: 1.09205833333333e-05
      TotalMilliseconds: 39.3141
      TotalMinutes: 0.000655235
      TotalSeconds: 0.0393141
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
           
                  & { 1..3 } | Tee-Object -Variable n 
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 2.24837008738619
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 2543.61666679385
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
FileName: Best Way To Accumulate Pipeline Results
ClockSpeed: 2594
---
Best Way To Accumulate Pipeline Results
---------------------------------------
> @2594 Mhz


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Array     |00:00:00.017485|1x           |5718.99/s |
|Arraylist |00:00:00.022700|1.3x         |4405.21/s |
|Queue     |00:00:00.036109|2.07x        |2769.32/s |
|Tee-Object|00:00:00.039314|2.25x        |2543.62/s |
