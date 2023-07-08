---
layout: Benchmark
title: Best Way To Accumulate Pipeline Results

Data: 
  - Technique: Queue
    Time: 
      Ticks: 190907
      Days: 0
      Hours: 0
      Milliseconds: 19
      Minutes: 0
      Seconds: 0
      TotalDays: 2.20957175925926e-07
      TotalHours: 5.30297222222222e-06
      TotalMilliseconds: 19.0907
      TotalMinutes: 0.000318178333333333
      TotalSeconds: 0.0190907
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $tq = [Collections.Queue]::new()
                  & { 1..3 } | & { process { $tq.Enqueue($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 5238.15260833809
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Arraylist
    Time: 
      Ticks: 263782
      Days: 0
      Hours: 0
      Milliseconds: 26
      Minutes: 0
      Seconds: 0
      TotalDays: 3.05303240740741e-07
      TotalHours: 7.32727777777778e-06
      TotalMilliseconds: 26.3782
      TotalMinutes: 0.000439636666666667
      TotalSeconds: 0.0263782
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $arrlist = [Collections.ArrayList]::new()
                  & { 1..3 } | & { process { $null = $arrlist.Add($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1.38173037133264
    ClockSpeed: 2095
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 3791.00924248053
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Array
    Time: 
      Ticks: 392830
      Days: 0
      Hours: 0
      Milliseconds: 39
      Minutes: 0
      Seconds: 0
      TotalDays: 4.54664351851852e-07
      TotalHours: 1.09119444444444e-05
      TotalMilliseconds: 39.283
      TotalMinutes: 0.000654716666666667
      TotalSeconds: 0.039283
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $outArray = @()
                  & { 1..3 } | & { process { $outArray += $_; $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 2.05770348913345
    ClockSpeed: 2095
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 2545.63042537484
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Tee-Object
    Time: 
      Ticks: 477339
      Days: 0
      Hours: 0
      Milliseconds: 47
      Minutes: 0
      Seconds: 0
      TotalDays: 5.52475694444444e-07
      TotalHours: 1.32594166666667e-05
      TotalMilliseconds: 47.7339
      TotalMinutes: 0.000795565
      TotalSeconds: 0.0477339
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
           
                  & { 1..3 } | Tee-Object -Variable n 
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 2.5003745279115
    ClockSpeed: 2095
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 2094.9471968559
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
FileName: Best Way To Accumulate Pipeline Results
ClockSpeed: 2095
---




|Technique |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------|-----------|---------------|-------------|----------|
|Queue     |100        |00:00:00.019090|1x           |5238.15/s |
|Arraylist |100        |00:00:00.026378|1.38x        |3791.01/s |
|Array     |100        |00:00:00.039283|2.06x        |2545.63/s |
|Tee-Object|100        |00:00:00.047733|2.5x         |2094.95/s |
