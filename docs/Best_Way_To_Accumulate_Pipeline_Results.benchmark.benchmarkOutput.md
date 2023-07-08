---
layout: Benchmark
title: Best Way To Accumulate Pipeline Results

Data: 
  - Technique: Array
    Time: 
      Ticks: 220821
      Days: 0
      Hours: 0
      Milliseconds: 22
      Minutes: 0
      Seconds: 0
      TotalDays: 2.55579861111111e-07
      TotalHours: 6.13391666666667e-06
      TotalMilliseconds: 22.0821
      TotalMinutes: 0.000368035
      TotalSeconds: 0.0220821
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
          
                  $outArray = @()
                  & { 1..3 } | & { process { $outArray += $_; $_ } }
              
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 4528.55480230594
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Queue
    Time: 
      Ticks: 226470
      Days: 0
      Hours: 0
      Milliseconds: 22
      Minutes: 0
      Seconds: 0
      TotalDays: 2.62118055555556e-07
      TotalHours: 6.29083333333333e-06
      TotalMilliseconds: 22.647
      TotalMinutes: 0.00037745
      TotalSeconds: 0.022647
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
          
                  $tq = [Collections.Queue]::new()
                  & { 1..3 } | & { process { $tq.Enqueue($_); $_ } }
              
    RelativeSpeed: 1.02558180607823
    ClockSpeed: 2295
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 4415.59588466464
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Tee-Object
    Time: 
      Ticks: 538388
      Days: 0
      Hours: 0
      Milliseconds: 53
      Minutes: 0
      Seconds: 0
      TotalDays: 6.23134259259259e-07
      TotalHours: 1.49552222222222e-05
      TotalMilliseconds: 53.8388
      TotalMinutes: 0.000897313333333333
      TotalSeconds: 0.0538388
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
           
                  & { 1..3 } | Tee-Object -Variable n 
              
    RelativeSpeed: 2.43811956290389
    ClockSpeed: 2295
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 1857.39652443962
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Arraylist
    Time: 
      Ticks: 625628
      Days: 0
      Hours: 0
      Milliseconds: 62
      Minutes: 0
      Seconds: 0
      TotalDays: 7.24106481481481e-07
      TotalHours: 1.73785555555556e-05
      TotalMilliseconds: 62.5628
      TotalMinutes: 0.00104271333333333
      TotalSeconds: 0.0625628
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
          
                  $arrlist = [Collections.ArrayList]::new()
                  & { 1..3 } | & { process { $null = $arrlist.Add($_); $_ } }
              
    RelativeSpeed: 2.83319068385706
    ClockSpeed: 2295
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 1598.39393377534
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
FileName: Best Way To Accumulate Pipeline Results
ClockSpeed: 2295
---




|Technique |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------|-----------|---------------|-------------|----------|
|Array     |100        |00:00:00.022082|1x           |4528.55/s |
|Queue     |100        |00:00:00.022647|1.03x        |4415.6/s  |
|Tee-Object|100        |00:00:00.053838|2.44x        |1857.4/s  |
|Arraylist |100        |00:00:00.062562|2.83x        |1598.39/s |
