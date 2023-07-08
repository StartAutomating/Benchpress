---
layout: Benchmark
title: Best Way To Accumulate Pipeline Results

Data: 
  - Technique: Queue
    Time: 
      Ticks: 182036
      Days: 0
      Hours: 0
      Milliseconds: 18
      Minutes: 0
      Seconds: 0
      TotalDays: 2.10689814814815e-07
      TotalHours: 5.05655555555556e-06
      TotalMilliseconds: 18.2036
      TotalMinutes: 0.000303393333333333
      TotalSeconds: 0.0182036
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
          
                  $tq = [Collections.Queue]::new()
                  & { 1..3 } | & { process { $tq.Enqueue($_); $_ } }
              
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 5493.41888417676
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Array
    Time: 
      Ticks: 193377
      Days: 0
      Hours: 0
      Milliseconds: 19
      Minutes: 0
      Seconds: 0
      TotalDays: 2.23815972222222e-07
      TotalHours: 5.37158333333333e-06
      TotalMilliseconds: 19.3377
      TotalMinutes: 0.000322295
      TotalSeconds: 0.0193377
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
          
                  $outArray = @()
                  & { 1..3 } | & { process { $outArray += $_; $_ } }
              
    RelativeSpeed: 1.06230086356545
    ClockSpeed: 2095
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 5171.24580482684
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Arraylist
    Time: 
      Ticks: 212382
      Days: 0
      Hours: 0
      Milliseconds: 21
      Minutes: 0
      Seconds: 0
      TotalDays: 2.458125e-07
      TotalHours: 5.8995e-06
      TotalMilliseconds: 21.2382
      TotalMinutes: 0.00035397
      TotalSeconds: 0.0212382
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
          
                  $arrlist = [Collections.ArrayList]::new()
                  & { 1..3 } | & { process { $null = $arrlist.Add($_); $_ } }
              
    RelativeSpeed: 1.16670328945923
    ClockSpeed: 2095
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 4708.49695360247
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Tee-Object
    Time: 
      Ticks: 626945
      Days: 0
      Hours: 0
      Milliseconds: 62
      Minutes: 0
      Seconds: 0
      TotalDays: 7.25630787037037e-07
      TotalHours: 1.74151388888889e-05
      TotalMilliseconds: 62.6945
      TotalMinutes: 0.00104490833333333
      TotalSeconds: 0.0626945
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
           
                  & { 1..3 } | Tee-Object -Variable n 
              
    RelativeSpeed: 3.4440715023402
    ClockSpeed: 2095
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 1595.03624719872
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
FileName: Best Way To Accumulate Pipeline Results
ClockSpeed: 2095
---




|Technique |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------|-----------|---------------|-------------|----------|
|Queue     |100        |00:00:00.018203|1x           |5493.42/s |
|Array     |100        |00:00:00.019337|1.06x        |5171.25/s |
|Arraylist |100        |00:00:00.021238|1.17x        |4708.5/s  |
|Tee-Object|100        |00:00:00.062694|3.44x        |1595.04/s |
