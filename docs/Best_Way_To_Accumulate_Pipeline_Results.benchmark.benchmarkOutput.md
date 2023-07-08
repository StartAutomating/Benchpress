---
layout: Benchmark
title: Best Way To Accumulate Pipeline Results

Data: 
  - Technique: Arraylist
    Time: 
      Ticks: 184877
      Days: 0
      Hours: 0
      Milliseconds: 18
      Minutes: 0
      Seconds: 0
      TotalDays: 2.13978009259259e-07
      TotalHours: 5.13547222222222e-06
      TotalMilliseconds: 18.4877
      TotalMinutes: 0.000308128333333333
      TotalSeconds: 0.0184877
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
          
                  $arrlist = [Collections.ArrayList]::new()
                  & { 1..3 } | & { process { $null = $arrlist.Add($_); $_ } }
              
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 5409.00166056351
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Array
    Time: 
      Ticks: 202351
      Days: 0
      Hours: 0
      Milliseconds: 20
      Minutes: 0
      Seconds: 0
      TotalDays: 2.34202546296296e-07
      TotalHours: 5.62086111111111e-06
      TotalMilliseconds: 20.2351
      TotalMinutes: 0.000337251666666667
      TotalSeconds: 0.0202351
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
          
                  $outArray = @()
                  & { 1..3 } | & { process { $outArray += $_; $_ } }
              
    RelativeSpeed: 1.09451689501669
    ClockSpeed: 2095
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 4941.90787295343
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Queue
    Time: 
      Ticks: 261334
      Days: 0
      Hours: 0
      Milliseconds: 26
      Minutes: 0
      Seconds: 0
      TotalDays: 3.02469907407407e-07
      TotalHours: 7.25927777777778e-06
      TotalMilliseconds: 26.1334
      TotalMinutes: 0.000435556666666667
      TotalSeconds: 0.0261334
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
          
                  $tq = [Collections.Queue]::new()
                  & { 1..3 } | & { process { $tq.Enqueue($_); $_ } }
              
    RelativeSpeed: 1.4135560399617
    ClockSpeed: 2095
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 3826.52085071212
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Tee-Object
    Time: 
      Ticks: 671008
      Days: 0
      Hours: 0
      Milliseconds: 67
      Minutes: 0
      Seconds: 0
      TotalDays: 7.7662962962963e-07
      TotalHours: 1.86391111111111e-05
      TotalMilliseconds: 67.1008
      TotalMinutes: 0.00111834666666667
      TotalSeconds: 0.0671008
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
           
                  & { 1..3 } | Tee-Object -Variable n 
              
    RelativeSpeed: 3.6294833862514
    ClockSpeed: 2095
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 1490.29519767275
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
FileName: Best Way To Accumulate Pipeline Results
ClockSpeed: 2095
---




|Technique |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------|-----------|---------------|-------------|----------|
|Arraylist |100        |00:00:00.018487|1x           |5409/s    |
|Array     |100        |00:00:00.020235|1.09x        |4941.91/s |
|Queue     |100        |00:00:00.026133|1.41x        |3826.52/s |
|Tee-Object|100        |00:00:00.067100|3.63x        |1490.3/s  |
