---
layout: Benchmark
title: Best Way To Accumulate Pipeline Results

Data: 
  - Technique: Array
    Time: 
      Ticks: 272573
      Days: 0
      Hours: 0
      Milliseconds: 27
      Minutes: 0
      Seconds: 0
      TotalDays: 3.15478009259259e-07
      TotalHours: 7.57147222222222e-06
      TotalMilliseconds: 27.2573
      TotalMinutes: 0.000454288333333333
      TotalSeconds: 0.0272573
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $outArray = @()
                  & { 1..3 } | & { process { $outArray += $_; $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 3668.74195169734
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Arraylist
    Time: 
      Ticks: 279567
      Days: 0
      Hours: 0
      Milliseconds: 27
      Minutes: 0
      Seconds: 0
      TotalDays: 3.23572916666667e-07
      TotalHours: 7.76575e-06
      TotalMilliseconds: 27.9567
      TotalMinutes: 0.000465945
      TotalSeconds: 0.0279567
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $arrlist = [Collections.ArrayList]::new()
                  & { 1..3 } | & { process { $null = $arrlist.Add($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1.02565918121017
    ClockSpeed: 2295
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 3576.96008470241
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Tee-Object
    Time: 
      Ticks: 552817
      Days: 0
      Hours: 0
      Milliseconds: 55
      Minutes: 0
      Seconds: 0
      TotalDays: 6.39834490740741e-07
      TotalHours: 1.53560277777778e-05
      TotalMilliseconds: 55.2817
      TotalMinutes: 0.000921361666666667
      TotalSeconds: 0.0552817
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
           
                  & { 1..3 } | Tee-Object -Variable n 
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 2.02814291951147
    ClockSpeed: 2295
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 1808.91687484285
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Queue
    Time: 
      Ticks: 604056
      Days: 0
      Hours: 0
      Milliseconds: 60
      Minutes: 0
      Seconds: 0
      TotalDays: 6.99138888888889e-07
      TotalHours: 1.67793333333333e-05
      TotalMilliseconds: 60.4056
      TotalMinutes: 0.00100676
      TotalSeconds: 0.0604056
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $tq = [Collections.Queue]::new()
                  & { 1..3 } | & { process { $tq.Enqueue($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 2.21612558837449
    ClockSpeed: 2295
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 1655.47565126412
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
|Array     |00:00:00.027257|1x           |3668.74/s |
|Arraylist |00:00:00.027956|1.03x        |3576.96/s |
|Tee-Object|00:00:00.055281|2.03x        |1808.92/s |
|Queue     |00:00:00.060405|2.22x        |1655.48/s |
