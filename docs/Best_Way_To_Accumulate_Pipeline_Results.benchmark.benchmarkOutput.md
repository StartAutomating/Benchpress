---
layout: Benchmark
title: Best Way To Accumulate Pipeline Results

Data: 
  - Technique: Arraylist
    Time: 
      Ticks: 148414
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.71775462962963e-07
      TotalHours: 4.12261111111111e-06
      TotalMilliseconds: 14.8414
      TotalMinutes: 0.000247356666666667
      TotalSeconds: 0.0148414
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
    RepeatCount: 100
    Throughput: 6737.90882261781
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Queue
    Time: 
      Ticks: 197218
      Days: 0
      Hours: 0
      Milliseconds: 19
      Minutes: 0
      Seconds: 0
      TotalDays: 2.28261574074074e-07
      TotalHours: 5.47827777777778e-06
      TotalMilliseconds: 19.7218
      TotalMinutes: 0.000328696666666667
      TotalSeconds: 0.0197218
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
          
                  $tq = [Collections.Queue]::new()
                  & { 1..3 } | & { process { $tq.Enqueue($_); $_ } }
              
    RelativeSpeed: 1.32883690217904
    ClockSpeed: 2793
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 5070.5310874261
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Array
    Time: 
      Ticks: 422240
      Days: 0
      Hours: 0
      Milliseconds: 42
      Minutes: 0
      Seconds: 0
      TotalDays: 4.88703703703704e-07
      TotalHours: 1.17288888888889e-05
      TotalMilliseconds: 42.224
      TotalMinutes: 0.000703733333333333
      TotalSeconds: 0.042224
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
          
                  $outArray = @()
                  & { 1..3 } | & { process { $outArray += $_; $_ } }
              
    RelativeSpeed: 2.84501462126214
    ClockSpeed: 2793
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 2368.32133383858
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Tee-Object
    Time: 
      Ticks: 427268
      Days: 0
      Hours: 0
      Milliseconds: 42
      Minutes: 0
      Seconds: 0
      TotalDays: 4.94523148148148e-07
      TotalHours: 1.18685555555556e-05
      TotalMilliseconds: 42.7268
      TotalMinutes: 0.000712113333333333
      TotalSeconds: 0.0427268
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
           
                  & { 1..3 } | Tee-Object -Variable n 
              
    RelativeSpeed: 2.87889282682227
    ClockSpeed: 2793
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 2340.4514262711
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
FileName: Best Way To Accumulate Pipeline Results
ClockSpeed: 2793
---


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Arraylist |00:00:00.014841|1x           |6737.91/s |
|Queue     |00:00:00.019721|1.33x        |5070.53/s |
|Array     |00:00:00.042224|2.85x        |2368.32/s |
|Tee-Object|00:00:00.042726|2.88x        |2340.45/s |
